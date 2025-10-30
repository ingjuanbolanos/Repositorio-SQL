
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Juan Camilo Bolaños Zabaleta>
-- Create date: <Create Date: 29-09-2025>
-- Description:	<Description: Se crea sp para calculo y guardado de registros para envio de notificaciones EDS de los epleados sin consignar>
-- PBI 74777
-- =============================================
ALTER   PROCEDURE [dbo].[Usp_NotificacionEmpleadosSinConsignar]
						 @EmpresaID INT 
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @JSONVALOR				NVARCHAR(MAX),
			@NotificarEDS			BIT,
			@MontoMinimoConsignar	MONEY,
			@EstacionesValidarPS	NVARCHAR(MAX),
			@EstacionID				INT,
			@FechaIni				DATETIME,
			@FechaFin				DATETIME;

	SET @JSONVALOR = (
	    SELECT Valor
	    FROM dbo.ConfiguracionEmpresa
	    WHERE EmpresaID = @EmpresaID
	      AND Codigo = 429
	);

	SET @FechaFin = GETDATE();
	
	SELECT @NotificarEDS         =  NotificarEDS,
		   @MontoMinimoConsignar =  MontoMinimoConsignar
	FROM OPENJSON(@JSONVALOR)
	WITH (
	    NotificarEDS			BIT				'$.NotificarEDS',
	    MontoMinimoConsignar	DECIMAL(18,2)	'$.MontoMinimoConsignar'
	)
	BEGIN TRY
		IF @NotificarEDS = 1
		BEGIN
			DECLARE @EstacionProsegur TABLE (EstacionID INT)
 
			INSERT @EstacionProsegur
			SELECT EstacionID 
			FROM dbo.ConfiguracionEstacion WHERE Tipo = 'SERVICE_STATION_PROSEGUR'

			DROP TABLE IF EXISTS #EmpleadoEstacionVentas
			CREATE TABLE #EmpleadoEstacionVentas
						(EstacionID			INT,
						 EmpleadoID			INT,
						 ValorVentas        MONEY,
						 PCC                VARCHAR(6),
						 SurtidorID			INT)

			 DECLARE @EmpleadoEstacionConsignar  TABLE
						(EstacionID			INT,
						 EmpleadoID			INT,
						 ValorVentas		MONEY,
						 DebeConsignar		BIT)

			INSERT INTO #EmpleadoEstacionVentas
			SELECT EstacionID,
				   EmpleadoID,
				   SUM(ValorEfectivo) AS ValorVentas,
				   PCC,
				   SurtidorID
			FROM dbo.EmpleadoVentaEfectivo
			WHERE EstacionID in (SELECT EstacionID FROM @EstacionProsegur)
			GROUP BY EstacionID, EmpleadoID, PCC, SurtidorID

			INSERT INTO @EmpleadoEstacionConsignar
			SELECT EstacionID,
				   EmpleadoID,
				   SUM(ValorVentas) AS ValorVentas,
				   CASE WHEN SUM(ValorVentas) > @MontoMinimoConsignar THEN 1 ELSE 0 END AS DebeConsignar
			FROM #EmpleadoEstacionVentas
			WHERE EstacionID in (SELECT EstacionID FROM @EstacionProsegur)
			GROUP BY EstacionID, EmpleadoID, PCC, SurtidorID

			DECLARE EstacionesCursor CURSOR FOR
			SELECT DISTINCT EstacionID
			FROM @EmpleadoEstacionConsignar
			WHERE DebeConsignar = 1;
			
			OPEN EstacionesCursor;
			FETCH NEXT FROM EstacionesCursor INTO @EstacionID;
			
			WHILE @@FETCH_STATUS = 0
			BEGIN
			    SET @FechaIni = DATEADD(HOUR,-4,@FechaFin);
			
			    BEGIN TRY
			        -- 🔹 Genera un solo IUIDNotificacion para esta estación
			        DECLARE @IUIDNotificacion UNIQUEIDENTIFIER = NEWID();
			
			        -- Aquí se mantiene toda la lógica existente del servicio remoto (sp_OAMethod)
			        DECLARE @Uri NVARCHAR(500),
			                @ResponseText VARCHAR(8000);
			
			        SELECT @Uri = Parametro
			        FROM dbo.ConfiguracionAplicacion
			        WHERE Tipo = 'TRANSPORTER_TRANSACTIONS_ROUTE' AND Estado = 1;
			
			        IF (@Uri IS NOT NULL AND LTRIM(RTRIM(@Uri)) <> '')
			        BEGIN
			            DECLARE @Url NVARCHAR(1000) = @Uri +
			                '?estacionId=' + CAST(@EstacionID AS VARCHAR) +
			                '&fechaInicio=' + CONVERT(VARCHAR(33), @FechaIni, 126) +
			                '&fechaFin=' + CONVERT(VARCHAR(33), @FechaFin, 126);
			
			            DECLARE @Object INT;
			
			            EXEC sp_OACreate 'MSXML2.XMLHTTP', @Object OUT;
			            EXEC sp_OAMethod @Object, 'open', NULL, 'get', @Url, 'false';
			            EXEC sp_OAMethod @Object, 'setRequestHeader', null, 'EmpresaID', @EmpresaID;
			            EXEC sp_OAMethod @Object, 'setRequestHeader', null, 'Content-Type', 'application/json';
			            EXEC sp_OAMethod @Object, 'send';
			            EXEC sp_OAMethod @Object, 'responseText', @ResponseText OUTPUT;
			            EXEC sp_OADestroy @Object;
			
			            PRINT 'Respuesta del servicio para estación ' + CAST(@EstacionID AS VARCHAR) + ':';
			            PRINT @ResponseText;
			        END
			        ELSE
			        BEGIN
			            RAISERROR('No se encontró la URL en ConfiguracionAplicacion con el código TRANSPORTER_TRANSACTIONS_ROUTE', 16, 1);
			        END
			
			        INSERT INTO NotificacionEmpleadosPorConsignar
			        (
			            IUIDNotificacion,
			            Estacion,
			            EstacionID,
			            Celular,
			            NombreVendedor,
			            EmpleadoID,
			            EstadoEnvio,
			            Enviado,
			            Intentos,
			            FechaCreacion,
			            FechaEnvio,
			            RespuestaApi,
			            EmpresaID
			        )
			        SELECT 
			            @IUIDNotificacion AS IUIDNotificacion,
			            ES.Nombre AS Estacion,
			            EEC.EstacionID,
			            ES.Telefono AS Celular,
			            EM.Nombre AS NombreVendedor,
			            EEC.EmpleadoID,
			            'Pendiente' AS EstadoEnvio,
			            0 AS Enviado,
			            0 AS Intentos,
			            GETDATE() AS FechaCreacion,
			            NULL AS FechaEnvio,
			            NULL AS RespuestaApi,
			            @EmpresaID AS EmpresaID
			        FROM @EmpleadoEstacionConsignar AS EEC
			        INNER JOIN dbo.Estacion AS ES ON EEC.EstacionID = ES.EstacionID 
			        INNER JOIN dbo.Empleado AS EM ON EEC.EmpleadoID = EM.EmpleadoID
			        WHERE EEC.EstacionID = @EstacionID
			          AND EEC.DebeConsignar = 1
			          AND NOT EXISTS (
			                SELECT 1 
			                FROM dbo.ConsignacionesSurtidor AS CS 
			                WHERE CS.EmpleadoID = EEC.EmpleadoID 
			                  AND CS.EstacionID = EEC.EstacionID
			                  AND CS.Fecha >= @FechaIni
			                  AND CS.NumeroConsignacion IS NULL
			            );
			
			    END TRY
			    BEGIN CATCH
			        PRINT 'Error durante la ejecución para estación ' + CAST(@EstacionID AS VARCHAR) + ':';
			        PRINT ERROR_MESSAGE();
			    END CATCH;
			
			    FETCH NEXT FROM EstacionesCursor INTO @EstacionID;
			END;

		SELECT 'Proceso ejecutado correctamente' AS Mensaje;
	   END
	END TRY
	BEGIN CATCH
	  DECLARE 
            @ExecutionDate DATETIME = GETDATE(),
            @Details VARCHAR(MAX) = ERROR_MESSAGE(),
            @Source VARCHAR(MAX) = ERROR_PROCEDURE(),
            @LineNumber INT = ERROR_LINE(),
            @Message VARCHAR(MAX) = 'Error en Usp_AgregarTranaccionesTransportadora';

       
        EXEC Usp_InsertLogInformacion 
            0, 'DB', @ExecutionDate, @Source, @LineNumber, @Message, @Details, @EmpresaID;

	END CATCH
END