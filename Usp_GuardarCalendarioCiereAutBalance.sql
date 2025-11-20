
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Juan Camilo Bolaños Zabaleta>
-- Create date: <20-11-2025>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE Usp_GuardarCalendarioCiereAutBalance
	
	@JsonCalendario VARCHAR(MAX),
	@EmpresaID		INT

AS
BEGIN

	SET NOCOUNT ON;
	DECLARE @Regional INT,
			@Calendario VARCHAR(MAX);

	SET  @Regional =  JSON_VALUE(@JsonCalendario,'$.regionalId')
	SET  @Calendario =  JSON_VALUE(@JsonCalendario,'$.horarios')


	IF @Regional IS NOT NULL
		BEGIN

			DECLARE @ContadorEstaciones INT,
					@NumeroEstacionAplicada INT

			DROP TABLE IF EXISTS #EstacionesRegional
			CREATE TABLE #EstacionesRegional
			(
				Id INT IDENTITY(1,1) PRIMARY KEY,
				EstacionID INT
			)

			INSERT INTO #EstacionesRegional
			SELECT
				EstacionID
			FROM
			Estacion
			WHERE RegionalID = @Regional

			SET @ContadorEstaciones = (SELECT COUNT(EstacionID) FROM #EstacionesRegional)
			SET @NumeroEstacionAplicada = 1

			WHILE(@NumeroEstacionAplicada <= @ContadorEstaciones)
			BEGIN
			    DECLARE @Estacion INT;
			
			    SELECT @Estacion = EstacionID
			    FROM #EstacionesRegional
			    WHERE ID = @NumeroEstacionAplicada;
			
				INSERT INTO 
					ConfiguracionEstacion 
				VALUES 
					(	@Estacion, 
						'AUTOMATIC_BALANCE_CLOSING_CALENDAR', 
						@Calendario,
						1
					)

			    SET @NumeroEstacionAplicada += 1;
			END;
		END
		ELSE
		BEGIN
			INSERT INTO 
				ConfiguracionEmpresa
			VALUES 
				(
				@EmpresaID,
				103,
				'Calendario Cierre Automatico de Balance',
				@Calendario,
				NULL,
				NULL,
				NULL,
				NULL
				)
		END

		DROP TABLE IF EXISTS #EstacionesRegional

END
GO
