
-- =======================================================================================================================================
-- Author:			<Juan Camilo Bolaños Zabaleta>
-- Create:			<31 Octubre 2025>
-- Modification:	<Se crea sp que realiza revision del detalle de la lista de precios para validar si requiere o no aprobacion mediante WF>
-- PBI:				<81585>
-- ========================================================================================================================================

CREATE OR ALTER PROCEDURE dbo.Usp_InformeSalidaManualParqueadero
@FechaInicial DATE,
@FechaFinal DATE,
@EstacionID INT

AS
BEGIN
	--DECLARE
	--@EstacionID INT = 820, 
	--@FechaInicial DATE = '2025-10-01',
	--@FechaFinal DATE = '2025-10-31'
	
	SET @FechaFinal = DATEADD(DAY,1,@FechaFinal)
	
	SELECT 
		Est.Nombre AS NombreParqueadero,
		Amp.FechaApertura AS FechaApertura,
		Emp.Nombre AS NombreEmpleado,
		Te.CodigoMFC AS CodigoMFC,
		Dp.Codigo AS CodigoDispositivo,
		Amp.Placa AS Placa,
		Amp.UrlImagen AS UrlImagen
	FROM fcspos.AperturaManualParqueadero Amp
		INNER JOIN dbo.Empleado Emp ON Amp.EmpleadoID = Emp.EmpleadoID
		INNER JOIN dbo.Estacion Est ON Amp.EstacionID = Est.EstacionID
		INNER JOIN fcspos.TerminalEstacion Te ON Amp.TerminalEstacionID = Te.TerminalEstacionID
		INNER JOIN fcspos.DispositivoPOS Dp ON Amp.DispositivoPOSID = Dp.DispositivoPOSID
	WHERE Amp.EstacionId = @EstacionID
		AND Amp.FechaApertura between @FechaInicial AND @FechaFinal
	
END

