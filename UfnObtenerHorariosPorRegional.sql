
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Juan Camilo Bolaños Zabaleta>
-- Create date: <20-11-2025 >
-- Description:	<Se crea Fn para consultar la parametrizacion de calendario de cierre automatico de balance 
--               por regionales o empresas>
-- =============================================

CREATE OR ALTER FUNCTION UfnObtenerHorariosPorRegional
(
	@RegionalID INT,
	@EmpresaID INT
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	
	DECLARE  @ParametroConfEstacion VARCHAR(100),
			 @CalendarioCierreAutomatico VARCHAR(MAX)

	SET @ParametroConfEstacion = 'AUTOMATIC_BALANCE_CLOSING_CALENDAR'

	IF @RegionalID IS NOT NULL
	BEGIN
		SET @CalendarioCierreAutomatico =
		(
		SELECT TOP 1 Parametros 
		FROM ConfiguracionEstacion
		WHERE Tipo = @ParametroConfEstacion
		AND EstacionID IN ( SELECT TOP 1 EstacionID
							FROM Estacion
							WHERE RegionalID = @RegionalID
							AND Estado = 1
							AND EmpresaID = @EmpresaID)
		)
	END
	ELSE
	BEGIN 
		SET @CalendarioCierreAutomatico =
		(
		SELECT Valor 
		FROM ConfiguracionEmpresa
		WHERE Codigo = 103
		AND EmpresaID = @EmpresaID
		)
	END

	RETURN @CalendarioCierreAutomatico

END
GO

