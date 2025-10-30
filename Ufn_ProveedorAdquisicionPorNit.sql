GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =======================================================================================================================================================================================
-- Author:		<Juan Camilo Bolaños Zabaleta>
-- Create date: <09 Octubre 2025>
-- Description:	<Se usa para consultar los proveedores por NIT y empresa.>
-- PBI Critico:	<79654>
-- =======================================================================================================================================================================================

CREATE OR ALTER FUNCTION dbo.Ufn_ProveedorAdquisicionPorNit
(
    @Nit VARCHAR(50),
    @EmpresaID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        ProveedorAdquisicionID,
        FE_TipoIdentificacionID,
        Nit,
        DigitoVerificacion,
        Nombre,
        Direccion,
        CiudadID,
        Telefono,
        Email,
        EsDeclarante,
        EmpresaID,
        PaisID,
        ActividadEconomicaID,
		EstadoID,
		DistritoID,
		BarrioID
    FROM ProveedorAdquisicion
    WHERE Nit = @Nit
      AND EmpresaID = @EmpresaID
)
GO


