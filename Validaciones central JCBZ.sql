------VALIDACIONES------------

/*
ESTE ES UN GRUPO DE CONSULTAS DE DIFERENTES TIPOS ACUMULADAS DURANTE MI TIEMPO EN EL AREA DE SOPORTE
LAS CUALES REALIZABA PARA EJERCICIO DE MIS LABORES, DE CONSULTA DE INFORMACION GENERAL Y ESPECIFICA O 
IDENTIFICACION DE INCIDENCIAS.
*/

-----Consultar estacion----

select * from PromocionesLubesEDS where ListaPreciosID=219



select * from ClientesEstacion where ClienteID=72083 and EstacionID=177

select * from EncabezadoFacturaVentas where NumeroFactura=49243 and EstacionID=31
select * from detalleFacturaVentas where NumeroFactura=49243 and EstacionID=31

select * from encabezadofacturaventas  where estacionid=279 and aprobada=0 order by 1 desc

select top 50 * from lecturasurtidor where estacionid=659 and numerolectura=8333 order by numerolectura desc 
select * from lecturasurtidor where estacionid=333 and numerolectura=30448


select * from lecturasurtidor where estacionid=625 order by 1 desc

select top 7 e.nombre, * from lecturasurtidor l join empleado e on l.empleadoid=e.empleadoid where estacionid=112 and surtidorid=641 and mangueraid=2222 order by fechaini desc


select * from Encabezadoremisionventas where numero=7194  and estacionid=515
select * from detalleremisionventas where numero=7194  and estacionid=515 and prefijo='R NC'
select * from ventasporsurtidor where fecha='2023-03-02 16:29:12.870'

--update detalleremisionventas set cantidad=49.003 where numero=7194  and estacionid=515 and prefijo='R NC'


select top 3 * from recibocaja where estacionid=112 order by 1 desc

select * from EncabezadoComprasOrdinarias where NumeroFactura='FE36068' and EstacionID=2
select * from DetalleComprasOrdinarias where NumeroFactura='FE36068' and EstacionID=2

SELECT * FROM EMPRESA WHERE RAZONSOCIAL LIKE 'DISTRACOM%'


select * from empleadoestacion where estacionid=320--544
select top 1 * from empleado where empleadoid in (select empleadoid from empleadoestacion where estacionid=320 and estado=1 )

SELECT eslocal, * FROM estacion WHERE regionalid=9
SELECT * FROM CONFIGPCCESTACION WHERE ESTACIONID=116

select * from aforo where aforoid=1907
select * from detalleaforo where aforoid=1907

select top 100 * from fcspos.logs order by 1 desc

select * from LecturaSurtidor where CONVERT(date,fechaini)='20221124' and estacionid=89 

select top 50 * from InvTanquesCombustible where EstacionID=172 and  order by 1 desc
select top 100 * from vrinventario where EstacionID=116  order by 1 desc
select * from tanque where EstacionID=116 and estado=1 ---9685 5400   
select  tienesonda, * from tanque where EstacionID=35 and tanqueid in (765, 766, 767, 768)
--update tanque set tienesonda=0 where EstacionID=256 and tanqueid in (765, 766, 767, 768)

Select TOP 100 * from tramalog ORDER BY 1 DESC
Select TOP 100 * from tramalog where trama like '%MFC050;%' ORDER BY 1 DESC

select * from encabezadoremisionventas where prefijo='RECL' and numero in (8834, 3850) and estacionid=172
select * from detalleremisionventas where prefijo='RECL' and numero in (8834, 3850) and estacionid=172

select * from VentasporSurtidor where prefijo='RECL' and factura in (7989, 8024) and estacionid=172

select * from encabezadoremisionventas where prefijo='RECL' and numero in (8022, 7944) and estacionid=172
select * from detalleremisionventas where prefijo='RECL' and numero in (8022, 7944) and estacionid=172

select * from VentasporSurtidor where prefijo='RECL' and factura in (8022, 7944) and estacionid=172

SELECT * FROM CONFIGPCCESTACION WHERE PCC='MFA001'

SELECT * FROM CHIP WHERE CHIPsID='35000001BA8B79'
SELECT * FROM DETALLETRAMALOG WHERE TRAMALOGID=45327275


SELECT * FROM empleado WHERE NIT='70508347' AND EMPRESAID=3

From fcspos.DispositivoPOS
Where estacionid=256
And DispositivoPOSID=443


--update fcspos.DispositivoPOS 
--Set Direccion= '192.168.1.37:10001'
--Where estacionid=256
--And DispositivoPOSID=443

select top 100 * from tramalog where Trama like '%;F1;%%;ES3%' order by 1 desc

select * from encabezadofacturaventas where NumeroFactura=52212 and	prefijo='EGB6' and EstacionID=33
select * from DetalleFacturaVentas where NumeroFactura=52212 and	prefijo='EGB6' and EstacionID=33
select * from encabezadofacturaventas where NumeroFactura=52572 and	prefijo='EGB6' and EstacionID=33
select * from DetalleFacturaVentas where NumeroFactura=52572 and	prefijo='EGB6' and EstacionID=33
select * from facturanotacredito where NumeroFactura=52572 and	prefijo='EGB6' and EstacionID=33
select * from notacredito where estacionid=33 and numeronotacredito=25884--2023-06-10
--update notacredito set fecha='2023-06-09' where estacionid=33 and numeronotacredito=25884

select ventamanuallub, lectoroficina, empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%primero de may%'
select ventamanuallub, lectoroficina, empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%litoral%'
select ventamanuallub, lectoroficina, empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%san bernardo%'
select top 20 * from fcspos.loginformation where estacionid=751 order by 1 desc
select top 1000 * from tramalog where Trama like '%;ES284%' order by 1 desc

select * from ventasporsurtidor where estacionid=807 order by 1 desc


select * from NotaCredito where NumeroNotaCredito in  (6055) and EstacionID = 214
--update NotaCredito set Fecha = '2024-04-03' where NumeroNotaCredito in  (6055) and EstacionID = 214

select * from RedencionTurno where EstacionID=26  and NumeroLectura=45200  order by 1 desc
select top 100 * from DetalleRedencionTurno where EstacionID=26  order by 1 desc


select * from lecturasurtidor where estacionid=22 order by 1 desc

select * from precioproductoprogramado where estacionid=793 order by 1 desc

select top 12 * from lecturasurtidor where surtidorid=954 and estacionid=38 order by 1 desc --44855
select * from cierreturno where fechaini='2023-05-12 12:00:45.000' order by volumenini desc

select * from  balance  where estacionid=76 and BalanceID=4497451
--update balance set cerrado=0 where BalanceID=4497451

--update ConfiguracionEmpresa set Valor=Valor + ';154' from ConfiguracionEmpresa where Codigo=99 and  empresaid=3



select * from producto order by 1 desc

select * from CLIENTE where nombre like '%DISTRACOM%'

select * from restriccionvale where placa='' order by 1 desc

select * from producto where nombre like '%pro%' and empresaid=30

select * from menuroles where MenuID=149

select top 50 * from empresa where empresaid=60  order by 1 desc

select top 500 * from tramalog order by 1 desc

select * from cliente where nombre like '%plasticos santua%'



select top 50 eselectronica, prefijo, * from encabezadofacturaventas where estacionid=634 and eselectronica=1 order by numerofactura desc

select top 100 * from tramalog order by 1 desc


select * from vale where codigovale='3QY9JTJQ'
--update vale set consumo=0, FechaUltimaConsulta=NULL where codigovale='3QY9JTJQ' AND ValeID=198506


SELECT * FROM CLIENTE WHERE CLIENTEID IN (101704, 171)
SELECT * FROM CLIENTE WHERE CLIENTEID=171

select top 50 * from fe_documentosgenerados where DOCUMENTOESTACIONID=634 order by 1 desc


select top 50 * from dbo.FE_DocumentosGenerados as a
where not exists(select top 1 1 from dbo.FE_DocumentosGeneradosDIAN as b where b.FE_DocumentosGeneradosID = a.FE_DocumentosGeneradosID )
or exists(select top 1 1 from dbo.FE_DocumentosGeneradosDIAN as b 
where b.FE_DocumentosGeneradosID = a.FE_DocumentosGeneradosID and b.enviado = 0 and b.recibidadian = 0) and a.fecha between '2023-03-01 00:00:00.00' and getdate() --and empresaid=40
order by Fecha desc

select top 10 * from vale where estado=1 and saldo>0 and estacionid is not null order by 1 desc
select top 50 * from encabezadoremisionventas where clienteid=34865 and placa='3QY9JTJQ' order by 1 desc


  select em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=383 AND CargoID=3
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%river%'
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%chinau%'
select * from tipoestacion
select * from empleado where nombre like '%nayibe%'

select * from empresa where empresaid=22N
select * from estacion where empresaid=22
select * from PrecioProductoProgramado where EstacionID=872
select * from estacionresolucionfacturacion where EstacionID=872

SELECT top 100 * FROM TRAMALOG WHERE TRAMA LIKE 'MFC427;%' order by 1 desc

select 'insert into PrecioProductoProgramado  values (',EstacionID, PCC, GETDATE(), CodigoManguera, '$$',Posicion,CaraEq, MangueraEq, 87, ')'   from ConfigPCCEstacion a join manguera b on a.mangueraid=b.MangueraID where EstacionID=872 

select top 10 * from estacionresolucionfacturacion order by 1 desc

insert into estacionresolucionfacturacion values (872,	'99966688745214',	1,	100000,	'2023-12-01 00:00:00.000',	'2023-12-01 00:00:00.000',	'2025-12-31 23:59:59.997',	'GRN1',	0,	1,	'2023-12-01',	1,	0,	NULL)

insert into PrecioProductoProgramado  values (872,	'MFA512',	'2023-12-13 13:52:33.890',	41578,	1000,	1,	1,	1,	87)

select top 50 * from InvTanquesCombustible where EstacionID=170  order by 1 desc --2700   --
select top 50 * from vrinventario where EstacionID=170 order by 1 desc
select top 50 * from tanque where EstacionID=170 and estado=1
select  tienesonda, * from tanque where tanqueid in (236, 237)
--update tanque set tienesonda=0 where tanqueid in (236, 237)

SELECT TOP 5 * FROM EstacionResolucionFacturacion WHERE EstacionID=137 and FacturaElectronica=1 ORDER BY 1 DESC
--update EstacionResolucionFacturacion set RangoInicial=7663 WHERE EstacionID=137 and EstacionResolucionFacturacionID=5444
selec

select * from configpccestacion where SurtidorID=34
select * from estacion where estacionid=696

SELECT TOP 100 * FROM EstacionResolucionFacturacion WHERE EstacionID=137 AND Activo=1 ORDER BY 1 DESC
select * from lecturasurtidor where estacionid=55 and numerolectura=24959 

select top 1000 * from tramalog where trama like 'MFC467;%' order by 1 desc

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%mota%' --237880
select * from estacion where nombre like '%nueva term%'
select top 50 * from InvTanquesCombustible where EstacionID=257  order by 1 desc --2700 
delete from InvTanquesCombustible where InvTanqueID in (5313540, 5313545, 5313543, 5313541, 5313544, 5313542, 5313540)
select top 50 * from vrinventario where EstacionID=135 order by 1 desc
select top 50 * from tanque where EstacionID=257 and estado=1
select  tienesonda, * from tanque where tanqueid in (236, 237)
--update tanque set tienesonda=0 where tanqueid in (236, 237)

delete from 

select * from empleado where cedula='1067916440'

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%tasajera%'
select top 50 * from InvTanquesCombustible where EstacionID=177 order by 1 desc
select top 50 * from tanque where EstacionID=177 and estado=1
select * from vrinventario where EstacionID=177 
select * from tanque where EstacionID=247 and estado=1
--update tanque set tienesonda=1 where tanqueid in (67, 68, 69, 70) --Veeder madrid sin internet

select ComunidadID, * from Cliente where Nit='92192376'


select * from Punto_programa_cliente where ClienteId=230411

select * from precioproductoprogramado order by 1 desc

select * from cliente where comunidadid=127

--HANDPO
select  tienesonda, * from tanque where tanqueid in (236, 237)

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%nuestro%' --las mercedes no llamar divino niño
select top 50 * from InvTanquesCombustible where EstacionID=329 order by 1 desc
select top 50 * from tanque where EstacionID=416 and estado=1

select * from pcc where pcc='MFA179'
SELECT * FROM CONFIGPCCESTACION WHERE PCC='MFA179'

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%CATAMA%'


select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%triangu%'
 select * from LecturaMecanica where EstacionID=91  order by 1 desc -- and NumeroLectura=19546


 select top 20 PCC, Nombre, * from LecturaMecanica L join Empleado E on L.EmpleadoID=E.EmpleadoID 
 JOIN ConfigPCCEstacion C on c.surtidorid=l.surtidorid  where l.EstacionID=318 order by FechaIni desc

 SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20230422' and a.EstacionID=513 and b.ProductoID>=1 and b.precio=12300
 order by incremento desc --/and pcc= 'MFC196'/ 


 select top 50 PCC, Nombre, * from LecturaMecanica L join Empleado E on L.EmpleadoID=E.EmpleadoID JOIN ConfigPCCEstacion C on c.surtidorid=l.surtidorid  where l.EstacionID=91 order by FechaIni desc

  select * from lecturasurtidor where estacionid=77 and numerolectura in (31129,31131)
  select (61469091-61568153)
  select (61579025-61568153)

--UPDATE LecturaSurtidor SET ValorUnitario=3850,  LecturaInicial = 61469091, LecturaFinal = 61568153, ValorIni = 193037048, ValorFin = 193418437 WHERE LecturaSurtidorID = 24782816 and estacionid=77								
--UPDATE LecturaSurtidor SET ValorUnitario=3850,  LecturaInicial = 61568153, LecturaFinal = 61579025, ValorIni = 193418437, ValorFin = 193460294 WHERE LecturaSurtidorID = 24784601 and estacionid=77									


 select * from lecturasurtidor where estacionid=26 and numerolectura=44721
 select * from empresa where empresaid=19
 select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%viole%'

 select * from turnocentroalterno where estacionid=856 order by 1 desc

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%olas%'
select * from fcspos.terminalestacion where estacionid=140

select * from encabezadofacturaventas where estacionid=516 and numerofactura=7151 
select * from cliente where clienteid=100129
select * from notacredito where estacionid=516 and NumeroNotaCredito=3635
select * from detallenotacredito where estacionid=516 and NumeroNotaCredito=3635
select * from InfoCarteraSaldosClienteEds where clienteid=100129
select * from conceptonotacredito where conceptoid=75

select * from detallenotacredito where estacionid=103 and documento=1368 
select * from procesfcoremovimeinto where estacionid=103 order by 1 desc

select * from balance where estacionid=140 order by 1 desc

select * from recibocaja where estacionid=513 and NumeroRecibo=7409
--update recibocaja set anulado=1, fechaanulado=getdate(), usuarioanulacion='soporteit1' where estacionid=513 and NumeroRecibo=7409

select * from precioproductoprogramado where estacionid=144 order by 1 desc

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%mota%'

select * from cliente where nit='830003273' and empresaid=3

select * from clientevehiculo where clienteid=62432


--update cliente set PermiteFacturaManual=1 where ClienteID=39761

select * from cliente where clienteid=8030
select * from clientesestacion where clienteid=8030


insert into lecturamecanica values	(8824,	7119,	99,	411,	1377,	2,	9340,	'2023-04-21 04:03:31.000',	'2023-04-21 12:51:06.000',	87045900,	87045900,	3,	NULL)
insert into lecturamecanica values	(8824,	7119,	99,	411,	1376,	1,	11710,	'2023-04-21 04:03:31.000',	'2023-04-21 12:51:06.000',  31337890,   31337890,	3,	NULL)
insert into lecturamecanica values	(8824,	7119,	99,	411,	1375,	2,	9340,	'2023-04-21 04:03:31.000',	'2023-04-21 12:51:06.000',  26170,	    26170,  	3,	NULL)
insert into lecturamecanica values	(8824,	7119,	99,	411,	1374,	1,	11710,	'2023-04-21 04:03:31.000',	'2023-04-21 12:51:06.000',	84526270,	84526270,	3,	NULL)


select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%cañas%'

select * from lecturasurtidor where estacionid=154 and numerolectura=26810 order by 1 desc--2022-08-20 13:52:13.000     2022-08-20 21:55:21.000  2022-08-21 05:42:30.000
select * from lecturamecanica where estacionid=154 and surtidorid=1569 order by 1 desc 

select top 100 * from lecturamecanica where estacionid=215 and surtidorid=541 order by numerolectura desc
select * from configpccestacion where pcc='MFC416'

INSERT INTO LecturaMecanica(NumeroLectura,EmpleadoID, EstacionID,SurtidorID,MangueraID,ProductoID,ValorUnitario,FechaIni,
  FechaFin,LecturaInicial,LecturaFinal,EmpresaID,ProcessFCCoreMovimientoID) VALUES (14124,4450,154,1569,5659,9447,3850,'2022-09-07 06:00:00.000','2022-09-07 06:01:00.000',131000,131000,3,NULL)


select * from lecturasurtidor where estacionid=215 order by 1 desc --19575

select * from lecturamecanica where estacionid=214 and fechaini='2022-08-21 05:45:06.000' order by 1 desc 

select saldocaja, * from balance where balanceid=3373674 and numerobalance=3969 and estacionid=115
--update balance set saldocaja=-$ 21629292 where balanceid=3373674 and numerobalance=3969 and estacionid=115


Select ListaPreciosID, * from cliente where nit='811015169' and Estado=1 and EmpresaID=3
select * from ClientesEstacion where ClienteID=159751 and EstacionID=416

select * from Tanque where TanqueID in (632, 631, 630)


select * from tramalog order by 1 desc


SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni)='20221124'  and l.EstacionID=325 --and pcc='MFC095 ' 
order BY l.FechaIni DESC --2022-11-24 04:55:28.000	2022-11-24 12:50:28.000


select * from EncabezadoTransaccionPse where ClienteId=33055
 select * from Cliente where ClienteID=21066

 select * from InfoCarteraSaldosClienteEds where clienteid=33055

select C.PCC, CaraEq,MangueraEq, M.MangueraID,M.CodigoManguera,T.ProductoID
from ConfigPCCEstacion C
JOIN Manguera M ON M.MangueraID = C.MangueraID
JOIN Tanque T ON T.TanqueID = M.TanqueID  
where C.EstacionID = 228 and t.Estado = 1 
order by pcc desc



select * from pcc where pcc='MFA011'
select * from configpccestacion where pcc='MFA011'

select * from  RestriccionesConsumo where vehiculoid=25537  order by fechavigencia desc ---- consultar restricciones de consumo de un vehiculo por vehiculoid

select * from lecturamecanica where estacionid=159 and 

select * from plantaestacion where plantaid=6

select * from plantaestacion where estacionid=434

SELECT * FROM LECTURASURTIDOR WHERE LecturaSurtidorID=28967858 and EstacionID=247

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%costa de o%'
select top 20 * from PrecioProductoProgramado where EstacionId=751 order by 1 desc

SELECT * FROM VEHICULO WHERE PLACA='TSX883'

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%angeles medel%'
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%virgen del car%'

select top 10 * from recibocaja where estacionid=293 order by 1 desc
select top 100 * from recibocaja where estacionid=185 and usuariocreador='EDS VIRGENDEL CARMEN' order by 1 desc


select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%yumb%'
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%fortaleza%'
SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=784 AND NUMEROLECTURA=3813  AND PRODUCTOID=39783

select * from processfcscore where estaciondestinoid=523 order by 1 desc

SELECT TOP 10 * FROM TRAMALOG WHERE TRAMA LIKE 'MFA366;F1;%' ORDER BY 1 DESC

--6631160 credito
--quenia   1322208  credito

select * from facturanotacredito where estacionid=686 and numeronotacredito=1400

select * from CLIENTE where clienteid=338
select * from clientesestacion where estacionid=379 and clienteid=338


select top 50 * from PrecioProductoProgramado where EstacionID=434 order by fechaprogramacion desc

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where estacionid=195
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%OFI. CENTRAL SERVICAUCA%' --510
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%OFI. CENTRAL IBC%'  --509

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%portal del n%'


select top 10 * from consignaciones where estacionid=187 order by 1 desc
select sum(valor) from detalleconsignaciones where estacionid=187 and numeroconsignacion in ('20230507',
'2023050602',
'2023050601',
'20230506')



select * from empleado where cedula='1118563106' --414
select * from empleadoestacion where estacionid=414 and empleadoid=13874

select TOP 3 * from VentasporSurtidorDetPago  where EstacionID=490 AND PCC='MFC797' ORDER BY 1 DESC--where NumeroLectura in (7000, 7002, 7003)
SELECT * FROM RedencionTurno where EstacionID=490 and NumeroLectura in (7002, 7006)


select * from ControlVersion 

select * from configpccestacion where estacionid=163
select * from manguera where mangueraid=5650

select * from detallelistaprecios where listapreciosid=91 and productoid=9447
select * from empresa where empresaid=32
select * from

select * from precioproductoprogramado where estacionid=741 order by fechaprogramacion desc

select facturaconvertida, * from encabezadofacturaventas where prefijo='eawy' and numerofactura=13636
select facturaconvertida, * from encabezadofacturaventas where prefijo='eawy' and numerofactura=13637
select * from detallefacturaventas where prefijo='eawy' and numerofactura=13636
select * from detallefacturaventas where prefijo='eawy' and numerofactura=13637



select aprobada, * from encabezadofacturaventas where estacionid=118 and fecha between '2022-07-18 14:59:00.000' and '2022-07-18 15:10:00.000'
select * from tramalog order by 1 desc

select  * from lecturasurtidor where estacionid=524 and PRODUCTOID=9447 ORDER BY 1 DESC


select * from empleado where empleadoid=8172
select * from empresa where empresaid=49

select * from empresa where razonsocial like '%dino oil%'


select C.PCC,C.Estado [Estado MFC],C.SurtidorID, CaraEq,MangueraEq, M.MangueraID,M.CodigoManguera,T.TanqueID,T.CodigoTanque,T.ProductoID,T.Estado [Estado Tanque]
from ConfigPCCEstacion C
JOIN Manguera M ON M.MangueraID = C.MangueraID
JOIN Tanque T ON T.TanqueID = M.TanqueID  
where   c.EstacionID=746 


select * from NotaCredito where  estacionid=451 and NotaCreditoID=2762635 and NumeroNotaCredito=2825
select * from DetalleNotaCredito where estacionid=451 and NotaCreditoID=2762635 and detallenotacreditoid=4209432

select * from configpccestacion where estacionid=746


select * from ReciboCaja where EstacionID = 185 and ClienteID = 191441 order by 1 desc

select * from lecturasurtidor where estacionid=746 and convert(Date,fechaini)='20220822' order by fechaini desc

select * from lecturamecanica where estacionid=86 order by 1 desc
select * from empleado where empleadoid=13462

select * from usuario where nombre like '%auditor%'

select * from CLIENTE where clienteid=338
select * from vehiculo where vehiculoid in (select * from vehiculo where chipid='8F00000080076D06')

select * from restriccionconsumo where vehiculoid=288471

select * from CLIENTE where contrato like '%pintada%' 

select comentario, contrato, permitefacturamanual, * from CLIENTE where nit='900334071 ' and empresaid=3 

select * from solicitud where clienteid=42537 order by 1 desc

select * from tramalog where trama like '%MFC445;%' ORDER BY 1 DESC
--MFC445;F3;104800000195225501;07CUPO INSUFICIENTE1;1E0;Z10;

  select * from lecturamecanica where estacionid=746 and numerolectura=1 and mangueraid=5617
  --update lecturamecanica set LecturaInicial= 254000, LecturaFinal= 254000 where estacionid=746 and numerolectura=1 and mangueraid=5617

  select * from lecturamecanica where estacionid=746 and numerolectura=3 and mangueraid=5627
  --update lecturamecanica set LecturaInicial= 292000, LecturaFinal= 292000 where estacionid=746 and numerolectura=3 and mangueraid=5627

  SELECT TOP 500 * FROM TRAMALOG ORDER BY 1 DESC  --31569751


  select * from empleado where UsuarioID=335
    select * from empleado where UsuarioID=434
	
 select  * from estacion where nombre like '%catama%' --8699
  select * from empleadoestacion where empleadoid=8406
   select * from empleado where UsuarioID=335
     select * from usuario where nombre like '%catama%'


select * from empleado where empleadoid in (2528)
select * from empleado where empleadoid in (8699)
select  * from estacion where nombre like '%avenida colo%' --8699
select * from usuario where usuarioid=8406
select * from empleadoestacion where empleadoid=8406

select * from cliente where contrato like '%OC 125993%'
select * from clientesestacion where clienteid in (343572, 343573) and estacionid=105
--646700
select * from EmpleadoEstacion where EmpleadoID=2528
--9E0000001990D1901
select * FROM VEHICULO WHERE PLACA='38-1638'

select * from kmvehiculo where vehiculoid in (164621) --(select vehiculoid from clientevehiculo where clienteid in (select clienteid from clientesestacion where clienteid in (343572, 343573) and estacionid=105)) order by kilometraje desc
update kmvehiculo set Kilometraje=82211 where vehiculoid in (164621)

select * from encabezadoremisionventas where chipid='9e000001990d0901' order by 1 desc
select * from encabezadoremisionventas where  PLACA='38-1638' order by 1 desc

select * from tramalog order by 1 desc
select * from configuracionempresa where codigo=338

  select * from configpccestacion where estacionid=41
  select * from lecturasurtidor where estacionid=41 and numerolectura=25139
  select top 100 * from lecturamecanica where estacionid=41 and surtidorid=1690 order by 1 desc
  select top 100 * from lecturamecanica where estacionid=41  order by fechaini desc


select regionalid, EsLocal, CentroCostos,  * from estacion where nombre like '%gabrie%' --284
select * from encabezadofacturaventas where estacionid=476 and convert(date,fecha)='20220923' and aprobada=0
--218723  andaquies

select regionalid, EsLocal, CentroCostos,  * from estacion where nombre like '%SAN RAFAEL%' --284

select * from lecturasurtidor where estacionid=91 and numerolectura=162669

select top 5 * from InvTanquesCombustible where estacionid=94 order by fecha desc
select top 5 * from InvTanquesCombustible where estacionid=359 order by fecha desc
SELECT TOP 10 * FROM VRINVENTARIO where estacionid=195  ORDER BY 1 DESC


select * from balance where NumeroBalance=800 and EstacionID=610
select * from usuario where nombre like '%turbo%'

select * from EncabezadoFacturaVentas where Prefijo='EFM1' and numerofactura=931594
SELECT * FROM CLIENTE WHERE NIT='78590075'
select * from EncabezadoFacturaVentas where CLIENTEID=198520

select * from EncabezadoFacturaVentas where CLIENTEID=198520
select * from EncabezadoFacturaVentas where CLIENTEID=194838
 

select top 1000 * from tramalog order by 1 desc

select Estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=132 and ProcessFCCoreMovimientoID in (273499) 

select top 100 Estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=132 and estatus=3 order by fechaoperacion desc

select  * from encabezadofacturaventas e join detallefacturaventas d on e.numerofactura=d.numerofactura where clienteid=4276 and eselectronica=1 and e.estacionid=132 order by e.numerofactura desc 

select * from tramalog where empresaid=3 order by 1 desc


select * from empresa where empresaid=49

select top 100 * from lecturasurtidor where estacionid=549 order by numerolectura desc

select * from lecturasurtidor where lecturasurtidorid in (22952191, 22952190, 22952189, 22952187)
update lecturasurtidor set numerolectura=(select top 1 (numerolectura+1) from lecturasurtidor where estacionid=549 order by numerolectura desc) where lecturasurtidorid in (22952191, 22952190, 22952189, 22952187)

select (select top 1 (numerolectura+1) from lecturasurtidor where estacionid=549 order by numerolectura desc)

SELECT	COUNT(*) Cerados, Fecha
FROM	Balance
WHERE	EstacionID = 161 and Cerrado = 1 
GROUP	BY Fecha
HAVING	COUNT(*) > 1
ORDER	BY Fecha ASC


SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20220906' and a.EstacionID=409 and b.ProductoID>=1 order by NumeroFactura --/and pcc= 'MFC196'/ 



select * from LecturaMecanica where EstacionID=148 and convert(date,FechaIni)='20220815' order by fechaini desc


select regionalid, EsLocal, CentroCostos, * from estacion where ESTACIONID IN (171, 185, 416)


select regionalid, EsLocal, CentroCostos, * from estacion where estacionid=76

select * from configpccestacion where estacionid=516 



select top 50 * from LecturaMecanica where estacionid=215 order by 1 desc

INSERT INTO LecturaMecanica(NumeroLectura,EmpleadoID, EstacionID,SurtidorID,MangueraID,ProductoID,ValorUnitario,FechaIni,
  FechaFin,LecturaInicial,LecturaFinal,EmpresaID,ProcessFCCoreMovimientoID) VALUES (13394,12962,215,541,1833,1,9550,'2022-09-17 06:00:00.000','2022-09-17 06:01:00.000',215270,215270,3,NULL)


select top 50 * from InvTanquesCombustible where EstacionID=38 order by Fecha desc

select * from EncabezadoFacturaVentas where estacionid=717 and  CONVERT (date,Fecha)='20220615' and aprobada=0 

select * from LecturaMecanica where estacionid=26 and FechaIni='2022-06-16 05:58:47.000'

select regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%corocora%'



select * from InvTanquesCombustible where EstacionID=90 order by 1 desc

select * from Tanque where TanqueID in (1101, 1100, 1098)
--update Tanque set TieneSonda=0 where TanqueID in (1101, 1100, 1098)

select regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%progre%' --CBAE000508   000508 	$ 170,507

select top 50 * from precioproductoprogramado where estacionid=337 order by 1 desc

select * from encabezadofacturaventas where estacionid=233 and numerofactura=000508
select * from encabezadofacturaventas where estacionid=233 and prefijo='CBAE' and numerofactura=000508
select * from encabezadofacturaventas where estacionid=233 and prefijo='CBAE' and numerofactura=000513
select * from encabezadofacturaventas where estacionid=233 and prefijo='CBA1' and numerofactura=007897

select * from cliente where clienteid=33055
select * from cliente where clienteid=114740
select * from cliente where clienteid=43625

select * from GnvSuic where ChipId='BF00000062B9C706'
update GnvSuic set FechaUltimaRevision='2023-05-04', FechaProximaRevision='2024-05-04' where ChipId='BF00000062B9C706'


select empresaid, EsLocal, CentroCostos, * from estacion where nombre like '%fortale%'
select top 10 * from estacionresolucionfacturacion where estacionid=514 and facturaelectronica=1 order by 1 desc
select top 100 * from tramalog where trama like '%;ES514' order by 1 desc
select top 2 * from detalletramalog where TramaLogID=172296843 order by 1 desc 
select  top 10 estacionresolucionfacturacionid, * from encabezadofacturaventas where estacionid=514 and estacionresolucionfacturacionid=6750 order by numerofactura desc 
--Se corrige inconsistencia con balance día 03/05/2024, el cual cuadra y cierra correctamente 
select * from clientesestacion where estacionid=134 and clienteid=140969 --2248

select * from listaprecios where listapreciosid=2248

select ContadoBalanceCerrado,* from NotaCredito where NumeroNotaCredito in  (110202,110205,110203,110204) and EstacionID = 76

select regionalid, EsLocal, empresaid, CentroCostos, * from estacion where nombre like '%avenida colo%'
select regionalid, EsLocal, empresaid, CentroCostos, * from estacion where nombre like '%MOVIT%' 

 select * from ProcessFCCoreMovimiento where EstacionDestinoID=256  order by 1 desc

 select * from cliente where nombre like '% inversiones animal pet%'

 select * from encabezadoegreso where estacionid=252 order by 1 desc



select top 20 PCC, Nombre, * from LecturaMecanica L join Empleado E on L.EmpleadoID=E.EmpleadoID JOIN ConfigPCCEstacion C on c.surtidorid=l.surtidorid  where l.EstacionID=38 and c.pcc='MFC861' order by FechaIni desc

select top 2 * from LecturaSurtidor where EstacionID=139 and ProductoID=9447 order by 1 desc

select * from restriccionvale where placa='tpv508' order by 1 desc
select * from vehiculo where placa='CTUTANQ'
select * from chips where chipid = '35000001BA8D7901'
select * from clientechip where chipid='C20000015689FA01'
select * from cliente where clienteid in (27099)

select * from VEHICULO where chipid = '35000001BA8D7901'
select * from clientevehiculo where vehiculoid=341781

--MFC177;F3;12TPV508;07NO AUT.IDENTIFICAR POR PLACA;1E0;Z10;

select * from configpccestacion where estacionid=144

select top 100 * from tramalog where trama like '%MFC177;%' order by 1 desc
select * from detalletramalog where tramalogid=44153677

select top 100  e.FacturaID, es.nombre, e.NumeroFactura, Fecha, PCC, Cara, MangueraID, e.Prefijo, e.NumeroFactura, REPLACE(p.ProductoID, '5', 'GNV'  )ProductoID
from EncabezadoFacturaVentas E JOIN DetalleFacturaVentas d on d.NumeroFactura=e.NumeroFactura join Estacion es on es.EstacionID=e.EstacionID join Producto p on p.ProductoID=d.ProductoID
where p.ProductoID=5 and e.estacionid=329 order by 1 desc

--MFC643;F3;1068000001607F1101;07CARTERA VENCIDA;1E0;Z10;
select top 1000 * from tramalog where trama like '%MFC643;F3;%' order by 1 desc

select * from configpccestacion where estacionid=19 
--MFC977;F3;10EF00000108F9B101;07ESTACION NO AUTORIZADA;1E0;Z10;

select * from pcc where pcc='MFC092'

select top 100 * from fcspos.logs order by 1 desc

select * from controlconsecutivo where estacionid=37 order by 1 desc

select * from regional where regionalid=30   
select * from controlversion
select   * from EstacionResolucionFacturacion where EstacionID=690  order by 1 desc ----consultar resolucion de facturacion de una estacion

select * from empresa where empresaid=27

select * from tramalog order by 1 desc

 select * from listaprecios where ListaPreciosId=6633
  select * from DetalleListaPrecios where ListaPreciosId=6633  --9510,00

  

----------Medidas de tanques---------

select top 100 * from InvTanquesCombustible where EstacionID=38 order by 1 desc

 

select * from DetalleRemisionFacturado where RemisionPrefijo='REPL' and RemisionNumero=527 and RemisionEstacionID=161 -- REMM 87609


select automatica, * from encabezadoremisionventas where prefijo='REPI' and numero=9794

---------Trama por MFC y EmpresaID-------

select top (100) * from LecturaMecanica TramaLog where EmpresaID=3 order by 1 desc  

---------ProcessFCCoreMovimiento-----------mfc698
900071465
 select top 100 * from ProcessFCCoreMovimiento where EstacionDestinoID=89 and estatus=3 order by 1 desc

  select * from Lecturasurtidor where EstacionID=202 and NumeroLectura=35347 order by fechaini desc -- and NumeroLectura=19546

 select * from LecturaMecanica where EstacionID=556  order by fechaini desc -- and NumeroLectura=19546

 SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni) in ('20220621', '20220622')  and l.EstacionID=202 and pcc='MFC445' 
order BY l.FechaIni DESC

select Estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=132 

 select top 500 * from ProcessFCCoreMovimiento where EstacionDestinoID=3  order by fechaoperacion desc

 select * from  where estacionid=121 and FechaIni='2022-06-14 20:35:13.000'
 select * from LecturaMecanica where estacionid=121 and  CONVERT(Date,fechaini)='20220614'
select  * from EncabezadoFacturaVentas where ProcessFCCoreMovimientoID=210667  --factura por processfccore de lasn notas
 select * from EncabezadoFacturaVentas where estacionid=103 and prefijo='EBB8' and numerofactura=1370   
  select * from detalleFacturaVentas where estacionid=103 and prefijo='EBB8' and numerofactura=1370

   select * from EncabezadoFacturaVentas where placa='JRP104' order by 1 desc
   select top 10 * from EncabezadoremisionVentas where placa='JRP104' order by 1 desc --
   select top 10 * from EncabezadoremisionVentas where prefijo='R NC' and numero=10143 and estacionid=515
   update EncabezadoremisionVentas set kilometros='43671' where prefijo='R NC' and numero=10143 and estacionid=515
   select * from vehiculo where placa='JRP104'
   select * from kmvehiculo where vehiculoid=342734

   update EncabezadoremisionVentas set kilometros='43671' where prefijo='R NC' and numero=10143 and estacionid=515
   update kmvehiculo set kilometraje='43671' where vehiculoid=342734


  select * from detalleFacturaVentas where estacionid=140 and prefijo='ECE4' and numerofactura=420654


 select top 10 estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=103  order by fechaoperacion desc
 select * from detallenotacredito where estacionid=103 and prefijo='EBB8' and documento=1369
 select * from facturanotacredito where estacionid=103 and numeronotacredito=795

= select Estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=165 and ProcessFCCoreMovimientoID in (245048) 

  --update ProcessFCCoreMovimiento set Estatus=1, Log=NULL, FechaEjecucion=NULL where EstacionDestinoID=165 and ProcessFCCoreMovimientoID in (245048) 

------consulta ip de de pcc en estacion central para descolgar mangueras-----

select * from PCC where EstacionID=113

-----Validacion de clientes y saldos-----

14/06/2022 1:55:45 p. m.	MFC528	Entrada MFC528;F3;10A3000001A2F60801;1B0;0E1;D11;0F1;Z2202206141355445- SalidaMFC528;F3;10A3000001A2F60801;07CLIENTE NO IDENTIFICADO;1E0;Z10;	Tiempo consulta cliente 423CLIENTE NO IDENTIFICADO
PLACA.: N/A
	OK


select * from Cliente where clienteid = 35240

select * from Cliente where clienteid = 22126

 select top 500 * from LecturaSurtidor where EstacionID=152  order by 1 desc  --and  CONVERT(date,fechaini)='20220815'
  select top 50 * from LecturaSurtidor where EstacionID=152 and mangueraid in (787)  order by 1 desc  --and  CONVERT(date,fechaini)='20220815'


 select * from estacion where estacionid=183
select * from Cliente where nombre like  '%acesco%'
select * from Cliente where nit='900142448' -- like  '%urimar%'


select * from restriccionvale where placa='THERMO' order by 1 desc





select * from tramalog where empresaid=3 order by 1 desc


select LecturaSurtidorID, NumeroLectura, EmpleadoID, MangueraID, ProductoID, ValorUnitario, FechaIni, FechaFin, LecturaInicial, LecturaFinal, ValorIni, ValorFin
 From LecturaSurtidor where CONVERT(date,FechaIni)='20220901' and EstacionID=50  order by FechaIni,LecturaInicial asc

--CIERRE TURNO 

 select ID, PCC, Producto, FechaIni, FechaFin, VolumenIni, VolumenFin, ValorIni, ValorFin, PrecioUnitario, Cierre, Prefijo
From CierreTurno where CONVERT(date,FechaIni)='20220901' and prefijo='CRH4' order by FechaIni,VolumenIni asc



SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20220901' and a.EstacionID=50 and b.ProductoID>=1 order by NumeroFactura --/and pcc= 'MFC196'/ 

select * from  EncabezadoRemisionVentas where EstacionID= 406 and Prefijo='RBDV' and Numero=14615

select * from  EncabezadoFacturaVentas  where EstacionID= 406 and Prefijo='BDV4' and NumeroFactura=3973
select * from Tanque where TanqueID in (995, 994, 993, 992)

select * from Cliente where nombre  like '%vida sinu%' order by vigenciacupo desc
select * from Cliente where Nit='900298552'
select listapreciosid, * from Cliente where clienteid=140969
select * from Cliente where clienteid=2574
select top 5 * from solicitud where clienteid=2574 order by 1 desc
select top 5 * from respuesta where clienteid=2574 order by 1 desc
select * from solicitud where solicitudid=717967000
select * from InfoCarteraSaldosClienteEds where clienteid=221580
28483
48958
--7516
--146076
--146082

select * from Cliente where contrato like '%007-046-2022%'
select * from Cliente where clienteid = 2108
select * from clientesestacion where clienteid = 135613
select * from listaprecios where listapreciosid=7646
  select * from InfoCarteraSaldosClienteEds where ClienteID= 338 order by fecha desc
192349 -----saldo de un cliente, comparar con el saldo que aparece en local  40895
select * from encabezadofacturaventas where clienteid=119661 order by 1 desc


select (cantidad*(precio-descuento)) costo, * from detallefacturaventas where prefijo in ('EDWP', 'EEM4') and numerofactura in (10812,
3479,
10832)


select * from clientesestacion where clienteid=35240

select * from detallelistaprecios where listapreciosid=77

select TOP 100 * from  tramalog where tramarespuesta like '%MFA135' 


SELECT CI.NOMBRE, * FROM CLIENTESESTACION C JOIN ESTACION E ON C.ESTACIONID=E.ESTACIONID JOIN CIUDAD CI ON CI.CIUDADID=E.CIUDADID WHERE CLIENTEID=58673
select * from restriccionvale where placa='GIR766' order by 1 desc

SELECT * FROM VEHICULO WHERE PLACA='G1041'

select * from vale where CODIGOVALE='W3U0F3Q3'
select * from solicitud where clienteid=2088 order by 1 desc
select * from Cliente where Contrato like '%OC 84420%'----cliente por orden de contra o contrato
select * from Cliente where nombre like '%sodex%' and empresaid=3 and estado=1----cliente por orden de contra o contrato

select * from Cliente where nit=' ' --and empresaid=30 --cliente por clienteid
select * from clientetipoestacionfe where clienteid=104029
select * from clientetipoestacionfe where clienteid=35211
select LISTAPRECIOSID, * from Cliente where clienteid=51150
insert into clientetipoestacionfe (clienteid, tipoestacionid) values (35211, 4)

select * from balance where estacionid=185 order by 1 desc
select * from Cliente where ClienteID=134983      --cliente por clienteid
select * from clientetipoestacionfe where clienteid=35211

select * from detalleremisionventas where prefijo='REFG' and numero=11956	
select * from detalleremisionventas where prefijo='REFG' and numero=11957	

SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20220' and a.EstacionID=751 and b.ProductoID>5 order by NumeroFactura --/and pcc= 'MFC196'/ 


DIAN DIRECION

select * from estacion where estacionid=14

select * from configuracion where 


  select * from Cliente where ClienteID=190505 --cliente por clienteid
  select * from InfoCarteraSaldosClienteEds where ClienteID= 128154 --saldo de un cliente, comparar con el saldo que aparece en local  40895
  select * from solicitud where clienteid=8557  order by fechainicio desc

 
    select * from EncabezadoFacturaVentas where clienteid=140273 order by 1 desc
	    select * from encabezadoremisionventas where clienteid=140273 order by 1 desc

	

	select * from tramalog order by 1 desc
  

  select * from tiposolicitud 

select * from detallefacturaventas where estacionid=50 and prefijo='CRH4' and numerofactura in (711449, 711121) where placa='JTZ518' order by 1 desc --SYD36E

select * from restriccionvale where placa='LCS 669' ORDER BY 1 DESC ------consultar condicion express

select * from  RestriccionesConsumo where VEHICULOID=288471 order by fechavigencia desc ---- consultar restricciones de consumo de un vehiculo por vehiculoid

select * from ClientesEstacion where estacionid=207 order by 1 desc   -----CONSULTAR CLIENTES EXTENDIDOS A UNA ESTACION

select  * from clientesestacion where clienteid in (49814)   ----- CONSULTAR ESTACIONES A LAS QUE ESTA EXTENDIDA UN CLIENTE

select * from GnvSuic where placa='KNL010' -----consultar certificacion GNV SUIC
2012-09-01	2022-05-06	2023-05-06

select * from DetalleRemisionFacturado where RemisionPrefijo='REPD' and RemisionNumero=21488 and RemisionEstacionID=1 -- REMM 87609

select * from ClienteChip where ChipID='54000001569E3501' 

select * from vehiculo where ChipID='4800000195225501'

select * from vehiculo where placa='LCS669'

SELECT * FROM TRAMALOG WHERE TRAMA LIKE '%MFC280;F3;%' ORDER BY 1 DESC
MFC280;F3;109F00000115928201;07RESERVA ACTIVA,INTENTE EN 10MINUTOS;1E0;Z10;
select * from clientevehiculo where VEHICULOID=296594

WHN468	2B00000L44060A01
SLH942	960000019D6E0A01


select * from ClientesEstacion where ClienteID=145175 and EstacionID=657
MFA256;F3;10D900000132E66701;07CLIENTE NO IDENTIFICADO;1E0;Z10;
---- CHIP -----
-- KPP620, KPP619, KPP618
select * from ClienteVehiculo where VehiculoID=313495 ----- con vehiculoid validas el cliente si es el correcto 
Select * from cliente where ClienteID=58301 
Select * from Vehiculo where  ChipId='8C0000161395BB01'  -- vehiculoid por chipid, de hay pasas a cliente vehiculo donde sale el cliente id
select * from Chips where ChipId='8C0000161395BB01' ----info del chip si esta creado o no
select * from ClienteChip where ChipId='8C0000161395BB01' --chipId='CF00000105276601'  ------ si el chip esta asociado a un cliente
Select * from cliente where ClienteID=213124 
select * from ClienteVehiculo where VehiculoID=108468 ----- con vehiculoid validas el cliente si es el correcto 
select * from RESTRICCIONCONSUMO where VehiculoID=143015 ----- con vehiculoid validas el cliente si es el correcto 

select * from RestriccionesConsumo where VehiculoID=6223 AND ESTACIONID=212 order by estacionid desc

select * from encabezadofacturaventas where validador='I;59000001393AC601' order by 1 desc
select * from encabezadoremisionventas where validador='I;59000001393AC601' order by 1 desc


178125 --58559
193251  --67892

select * from ClientesEstacion where ClienteID=48856 and EstacionID=210

select * from DetalleListaPrecios where ListaPreciosId=219 and ProductoID>5 order by FechaModificacion desc
select * from encabezadofacturaventas where estacionid=638 and prefijo='CO2' and numerofactura=144290 --164021
select * from encabezadofacturaventas where estacionid=638 and prefijo='CO3' and numerofactura=4580 --103063

select * from Cliente where ClienteID=103063
select * from Cliente where ClienteID=164021


select * from Tanque where TanqueID in (995, 994, 993, 992)

select * from Balance where Fecha between '2022-08-31' and '2022-09-01' and EstacionID=461


 select * from EncabezadoFacturaVentas where estacionid=279 and Prefijo='EFI4' and NumeroFactura=7113
 select * from detallenotacredito where estacionid=279 and Prefijo='EFI4' and DetalleNotaCreditoID in (4457968, 4457969)
  update detallenotacredito set documento=7114 where estacionid=279 and Prefijo='EFI4' and documento=7113
  update EncabezadoFacturaVentas set ConceptoFacturaVentaID=2 where estacionid=279 and Prefijo='EFI4' and NumeroFactura=7113
  update detallenotacredito set documento=7113 where estacionid=279 and Prefijo='EFI4' and documento=7113


 select * from EncabezadoFacturaVentas where estacionid=279 and Prefijo='EFI4' and NumeroFactura=6980
 select * from detallenotacredito where estacionid=279 and Prefijo='EFI4' and DetalleNotaCreditoID=4448098
   update detallenotacredito set documento=6981 where estacionid=279 and Prefijo='EFI4' and DetalleNotaCreditoID=4448098
   update EncabezadoFacturaVentas set ConceptoFacturaVentaID=2 where estacionid=279 and Prefijo='EFI4' and NumeroFactura=6980
   update detallenotacredito set documento=6980 where estacionid=279 and Prefijo='EFI4' and DetalleNotaCreditoID=4448098

 select Fecha,EmpleadoID,EsElectronica,Pcc,cara,Manguera,ConceptoFacturaVentaID,automatica,a.Prefijo,A.Numerofactura,anulado,b.ProductoID,b.Precio,incremento,b.Descuento,cast(Cantidad as float) Cantidad,(cast(Cantidad as float)* Precio) Valor --,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID ) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE,a.FECHA) between '2024-05-25' and '2024-05-31' and a.estacionId=432 --and empleadoid=13347
and (SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) is null
order by fecha desc

select * from solicitud where estacionid=638 order by 1 desc
select * from usuario where usuarioid=1052

select top 1000 * from encabezadofacturaventas where estacionid=669 and clienteid in (147
,2271
,8458
,8459
,8460
,8461
,8462
,8463
,9940
,7354
,32253) order by fecha desc   

EFD2 43808  PLACA ODS137 Y REENVIAR AL CLIENTE Y A LA EDS DONDE LA PODRIA DESCARGAR 

select * from encabezadofacturaventas where estacionid=139 and prefijo='EFD2' and numerofactura=43808 
update encabezadofacturaventas set placa='ODS137 ' where estacionid=139 and prefijo='EFD2' and numerofactura=43808 

select * from vehiculo where placa='ODS137'
select * from cliente where clienteid=204735

--Se generó nota crédito N° : 34915 y solicitud pendiente de aprobación #718187302
Select  * from EncabezadoFacturaVentas where NumeroFactura =788252 and Prefijo = 'DA7M' and EstacionID=144	
update  EncabezadoFacturaVentas set Anulado=1 where  NumeroFactura =788252 and Prefijo = 'DA7M' and EstacionID=144	
 
	
Select * from Solicitud where SolicitudID=718187302
update Solicitud set EstadoID= 'A' where SolicitudID=718187302

select * from NotaCredito where EstacionID=144 and NumeroNotaCredito in (34915)
update NotaCredito set EstadoLiberacion='A' where EstacionID=144 and NumeroNotaCredito in (34915)


--EBL6 28187  	
select * from detallenotacredito where estacionid=195 and prefijo='ECYR' and documento=20184 
select * from notacredito where estacionid=195 and numeronotacredito=10609 

select * from facturanotacredito where estacionid=195 and numeronotacredito=10609

select FacturaConvertida, Anulado, * from EncabezadoFacturaVentas where estacionid=247 and Prefijo='INDP' and NumeroFactura=687088
select FacturaConvertida, Anulado, * from EncabezadoFacturaVentas where estacionid=247 and Prefijo='EEV2' and NumeroFactura=19024
select * from facturanotacredito where estacionid=247 and numeronotacredito=24983

select * from EstacionResolucionFacturacion where EstacionID=441 and Activo=1 order by 1 desc

select * from ESTACION where estacionid=85
select * from balance where estacionid=18 and BalanceID=4831839
--update balance set cerrado=0 where estacionid=18 and BalanceID=4831839
--000301846

select * from producto where nombre='CHEVRON HAVOLINE 50 CUARTO' and empresaid=3 

declare @estacion int=41
select N.EstacionID,N.Fecha FechaNota,E.Fecha
FechaFactura,EstadoLiberacion, Observacion, contadobalancecerrado,descuento,incremento,ConceptoNotaCreditoID, e.anulado, n.eselectronica, N.NumeroNotaCredito,D.Prefijo,D.Documento,
PCC,FacturaConvertida,ProductoID,Cantidad,D.Valor,(CAST(DF.Cantidad as float) * Precio) Valor 
from NotaCredito N
join DetalleNotaCredito D on N.NumeroNotaCredito=D.NumeroNotaCredito and N.EstacionID=D.EstacionID
join EncabezadoFacturaVentas E on E.Prefijo=D.Prefijo and E.NumeroFactura=D.Documento and e.EstacionID = d.EstacionID
join DetalleFacturaVentas DF on DF.Prefijo=E.Prefijo and DF.NumeroFactura=E.NumeroFactura and  e.EstacionID = DF.EstacionID
where e.empresaid=3  and CONVERT(date,n.Fecha) between '2024-09-01' and '2024-09-08' and e.estacionid=@estacion and ConceptoNotaCreditoID <> 1 and ProductoID=2 --AND ProductoID<>9447
--and Observacion not like 'Anulación de factura de contado a fidelizado%'--and cantidad=2.5218234724 --and valor>200000000-- and ConceptoNotaCreditoID = 8 --9447 --
--and EstadoLiberacion='A'  --and ProductoID=205 and Documento = 385462
order by e.Fecha desc--$ 7,544,945 --$ 9,215,0455

select * from facturanotacredito where estacionid=41 and numeronotacredito in (5649,
5650,
5653,
5668,
5672,
5692,
5690,
5691)


--update notacredito set ContadoBalanceCerrado=NULL, Fecha='2024-06-21' where estacionid=37 and numeronotacredito=16976

update notacredito set estadoliberacion='A' where estacionid=37 and numeronotacredito=16976

select anulado, * from encabezadofacturaventas where estacionid=37 and prefijo='EAS7' and numerofactura in (406321)
update encabezadofacturaventas set anulado=1 where estacionid=37 and prefijo='EAS7' and numerofactura in (406321)
select * from detallefacturaventas where estacionid=37 and prefijo='EAS7' and numerofactura in (406321)

select anulado, * from encabezadofacturaventas where estacionid=37 and prefijo='EAS7' and numerofactura in (397434)
update encabezadofacturaventas set anulado=NULL where estacionid=37 and prefijo='EAS7' and numerofactura in (397434)



select * from encabezadofacturaventas where estacionid=37 and prefijo='EAS7' and numerofactura in (406321)

select * from facturanotacredito    where numeronotacredito in (
12808) and estacionid=2

select * from empleado where empleadoid=10411

 select * from EncabezadoRemisionVentas where Prefijo='REAS' and Numero=216279 and EstacionID=37
  select * from DetalleRemisionVentas where Prefijo='REAS' and Numero=216279 and EstacionID=37
  UPDATE DetalleRemisionVentas SET MangueraID=527 where Prefijo='REAS' and Numero=216279 and EstacionID=37
  --527
  SELECT * FROM CONFIGPCCESTACION WHERE PCC='MFC279'

select * from empleado    where  EmpleadoID=15604 order by 1 desc

  select em.EmpleadoID, em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=37 AND CargoID=3

 


  select 15420-16971
  select * from lecturasurtidor where estacionid=37 and numerolectura=49629 and productoid=1

    select * from EncabezadoRemisionVentas a join detalleremisionventas b on a.prefijo=b.prefijo and a.estacionid=b.estacionid and a.numero=b.numero where manguera=0 order by 1 desc 



 select top 10 estatus, * from ProcessFCCoreMovimiento where EstacionDestinoID=173  order by fechaoperacion desc


SELECT * FROM CONCEPTONOTACREDITO WHERE EMPRESAID=72 ORDER BY 1 DESC
 --DUPLICACION DE FACTURA POR WEB

 --update NotaCredito set Fecha='2024-04-01' where EstacionID= 913 and NumeroNotaCredito=39 --2024-04-03

update notacredito set contadobalancecerrado=NULL where estacionid=68 and numeronotacredito  in (39132)
update notacredito set contadobalancecerrado=NULL where estacionid=68 and numeronotacredito  in (39130)

select * from  NotaCredito  where numeronotacredito in (2624) and estacionid=432
--Observacion
-- prefijo: DGME número: 38645. Motivo Anulación: Conversion desde isla
Update NotaCredito set  contadobalancecerrado=1 where numeronotacredito in (24881,
24882,
24883,
24884) and estacionid=187

select * from  NotaCredito  where EstacionID= 521 and NumeroNotaCredito=1088 
update NotaCredito set fecha='2024-05-03', contadobalancecerrado=NULL  where EstacionID= 521 and NumeroNotaCredito=1088

select * from facturanotacredito    where NUMEROFACTURA in (29271) and estacionid=521
update facturanotacredito set numeronotacredito=1088 where NUMEROFACTURA in (29271) and estacionid=521
INSERT INTO facturanotacredito VALUES (521, 'FE', 29271, 1088, 521, 0,'2024-05-03 17:58:13.040')

select anulado, * from encabezadofacturaventas where estacionid=521 and prefijo='FE' and numerofactura in (29214)

select * from facturanotacredito    where numeronotacredito in (1088) and estacionid=521

select * from encabezadofacturaventas where estacionid=68 and prefijo='EBX6' and numerofactura in (33000, 33004)
select * from detallefacturaventas where estacionid=68 and prefijo='EBX6' and numerofactura in (33000,33004)



 select * from GenerarDetalleSolicitudNotaCredito where  NumeroNotaCredito in  (19615,19616,19617) and EstacionID = 203
 delete from GenerarDetalleSolicitudNotaCredito where  NumeroNotaCredito in  (19615,19616,19617) and EstacionID = 203



select * from conceptonotacredito where empresaid=89
--995	Facturas Contado
--989	Anulación de facturas

select * from notacredito where NumeroNotaCredito in (19595, 19596, 19598) and EstacionID=203
 --update NotaCredito set Fecha='2024-05-03' where NumeroNotaCredito in (19595, 19596, 19598) and EstacionID=203
  update NotaCredito set contadobalancecerrado=1 where NumeroNotaCredito in (19595, 19596, 19598) and EstacionID=203

 select * from GenerarDetalleSolicitudNotaCredito where NumeroNotaCredito in (19595, 19596, 19598) and EstacionID=203
 select * from  NotaCredito  where numeronotacredito in (1085,
1086,
1087) and estacionid=521

Update NotaCredito set fecha='2024-05-04' where numeronotacredito in (1085,
1086,
1087) and estacionid=521


select anulado, facturaconvertida, * from encabezadofacturaventas where estacionid=769 and prefijo='GRA1' and numerofactura in (362831)
select anulado, facturaconvertida, * from encabezadofacturaventas where estacionid=769 and prefijo='GDAE' and numerofactura in (10493)

select automatica, * from encabezadoremisionventas where estacionid=18 and  prefijo='RELV' and numero=44796
select  * from detalleremisionventas where estacionid=18 and  prefijo='RELV' and numero=44796


declare @estacion int=1
select N.EstacionID,N.Fecha FechaNota,E.Fecha
FechaFactura,EstadoLiberacion,descuento,incremento,ConceptoNotaCreditoID,N.NumeroNotaCredito,D.Prefijo,D.Documento, N.ProcessFCCoreMovimientoID,
PCC,FacturaConvertida,ProductoID,Cantidad,D.Valor,(CAST(DF.Cantidad as float) * Precio) Valor 
from NotaCredito N
join DetalleNotaCredito D on N.NumeroNotaCredito=D.NumeroNotaCredito and N.EstacionID=D.EstacionID
join EncabezadoFacturaVentas E on E.Prefijo=D.Prefijo and E.NumeroFactura=D.Documento and e.EstacionID = d.EstacionID
join DetalleFacturaVentas DF on DF.Prefijo=E.Prefijo and DF.NumeroFactura=E.NumeroFactura and e.EstacionID = DF.EstacionID
where N.EstacionID=@estacion  and CONVERT(date,N.Fecha)>='20240319'  AND ConceptoNotaCreditoID=14
--and documento=426705 -- and EstadoLiberacion='A'  --and ProductoID=205 and Documento = 385462
order by n.Fecha desc

 update NotaCredito set Fecha='2024-03-29' where EstacionID= 913 and NumeroNotaCredito=30 --2024-04-02


select * from facturanotacredito    where NumeroNotaCredito=17339 and EstacionID=146
select * from encabezadofacturaventas where estacionid=14 and prefijo='QPOS' and numerofactura in (204, 205)
select * from detallefacturaventas where estacionid=14 and prefijo='QPOS' and numerofactura in (204, 205)

select * from encabezadofaturave


update  DetalleNotaCredito set documento=79764 where NumeroNotaCredito=42126 and EstacionID=18
update detallefacturaventas set descuento=0 where estacionid=18 and prefijo='ELV5' and numerofactura in (79763)
update  DetalleNotaCredito set documento=79763 where NumeroNotaCredito=42126 and EstacionID=18


select * from EncabezadoFacturaVentas where NumeroFactura=42 and Prefijo='EAP6' and EstacionID=39
 select * from NotaCredito where NumeroNotaCredito=9217 and EstacionID=39

 update NotaCredito set Fecha='2024-04-03' where EstacionID= 913 and NumeroNotaCredito=42
 update NotaCredito set EstadoLiberacion='A' where EstacionID= 913 and NumeroNotaCredito=42
 update NotaCredito set Fecha='2024-03-24' where EstacionID= 913 and NumeroNotaCredito=42


  select * from NotaCredito where NumeroNotaCredito=42 and EstacionID=913

  3147006513
select * from cliente where clienteid=313828
select * from combustible

select c.Nombre, A.EstacionID, SurtidorID, MangueraID, A.PCC, NumeroComunicacion [P;#], b.Direccion from ConfigPCCEstacion a join PCC b on a.PCC=b.PCC 
join Estacion c on a.EstacionID=c.EstacionID
where a.EstacionID  IN (select EstacionID from Estacion where Nombre like '%playa rica%') order by EstacionID desc


select * from facturanotacredito where NumeroNotaCredito=42126 and EstacionID=18
--Se valida que la factura se anula correctamente, afectando la NC correspondiente y generando la remisión 1400

select ConceptoFacturaVentaID,* from EncabezadoFacturaVentas where NumeroFactura in (75630) and Prefijo='ELV5' and EstacionID=18

select FacturaConvertida,anulado,* from EncabezadoFacturaVentas where NumeroFactura in (39172) and Prefijo='ECH8' and EstacionID=171
select FacturaConvertida,anulado,* from EncabezadoFacturaVentas where NumeroFactura in (39215) and Prefijo='ECH8' and EstacionID=171


select * from notacredito where estacionid=18 and numeronotacredito in (41898) 
select * from solicitud where SolicitudID=718201884
select * from respuesta where SolicitudID=718201884
UPDATE LecturaSurtidor SET ValorUnitario=3850,  LecturaInicial = 217729931, LecturaFinal = 217974096, ValorIni = 727806104, ValorFin = 728746091 WHERE estacionid = 18 and LecturaSurtidorID = 28917882									


select * from cliente where ClienteID=282324

select * from lecturasurtidor where estacionid=18 and numerolectura in (39892) order by fechaini 

select top 10* from DetalleNotaCredito where EstacionID=745 and Documento =895 and Prefijo='PPYU' order by 1 desc
 select * from NotaCredito where EstacionID=745 and NumeroNotaCredito=30
 

 select FacturaConvertida,anulado,* from EncabezadoFacturaVentas where NumeroFactura in (895) and Prefijo='PPYU' and EstacionID=745
 update EncabezadoFacturaVentas set anulado=1 where NumeroFactura in (895) and Prefijo='PPYU' and EstacionID=745

select * from encabezadofacturaventas where estacionid=657 and prefijo='DSEV' and numerofactura in (610959,
610960,
610961,
610962,
610963,
610965,
610966,
610967,
801121)  

--update notacredito set  where estacionid=228 and numeronotacredito in (14742) 
select * from detallenotacredito where estacionid=312 and documento=16963 and prefijo='EGH3'  


select * from facturanotacredito where estacionid=84 and numeronotacredito in (26541, 26545, 26546) 


select * from solicitud where estacionid=312 order by 1 desc

select anulado, * from encabezadofacturaventas where estacionid=595 and prefijo='SMRI' and numerofactura=364839 --NC 1729
select * from encabezadofacturaventas where estacionid=595 and prefijo='SMRE' and numerofactura=10778  --NC 1730
select FechaCreacion, * from notacredito where estacionid=595 and numeronotacredito in (1729, 1730)

select EstadoLiberacion, * from NotaCredito where estacionid=172 and numeronotacredito=7036

select eselectronica,  * from EncabezadoFacturaVentas where estacionID =689 and NumeroFactura in (13220,13216) and prefijo = 'TECA' --756306+
select * from NotaCredito where NumeroNotaCredito in (1497,1499)and estacionID = 689
--select * from facturanotacredito where numeronotacredito=15849 and estacionid=165

select * from configpccestacion where pcc='MFC347'
select * from PCC where pcc='MFC347'


select * from estacion where estacionid=441

select  top 100 estatus, * from processfccoremovimiento where estaciondestinoid=329 order by 1 desc
update ProcessFCCoreMovimiento set Estatus=1, Log=null, FechaEjecucion=null where  ProcessFCCoreMovimientoID in (374856)
select * from facturanotacredito where estacionid=441 and numeronotacredito=947

declare @estacion int = 490
select df.Descuento,df.Incremento, n.NotaCreditoID, N.EstacionID,n.ConceptoNotaCreditoID Concepto, e.PCC, N.Fecha,E.Fecha,EstadoLiberacion Estado,N.NumeroNotaCredito,
D.Prefijo,D.Documento,FacturaConvertida Convertida, e.anulado,D.Valor,(CAST(DF.Cantidad as float) * Precio) Valor, DF.productoid
from NotaCredito N
join DetalleNotaCredito D on N.NumeroNotaCredito=D.NumeroNotaCredito and N.EstacionID=D.EstacionID
join EncabezadoFacturaVentas E on E.Prefijo=D.Prefijo and E.NumeroFactura=D.Documento and E.EstacionID = n.EstacionID ---
left join DetalleFacturaVentas DF on DF.Prefijo=E.Prefijo and DF.NumeroFactura=E.NumeroFactura
where CONVERT(date,n.Fecha)>='20230814' and N.EstacionID=@estacion --and ConceptoNotaCreditoID=14
order by N.Fecha, D.Documento

select * from EncabezadoFacturaVentas where EstacionID=333 and Prefijo='SMIG' and NumeroFactura in (652244) 
select * from detallefacturaventas where EstacionID=333 and Prefijo='SMIG' and NumeroFactura in (652244) 

select * from conceptonotacredito where empresaid=7

select * from facturanotacredito where estacionid=571 and numeronotacredito=1278
select * from facturanotacredito where estacionid=571 and numeronotacredito=1277


select * from  EncabezadoFacturaVentas where estacionid=73 and prefijo='EDBP' and numerofactura=71365
select * from  DetalleFacturaVentas where estacionid=73 and prefijo='EDBP' and numerofactura=71365


select * from encabezadofacturaventas where estacionid=73 and prefijo='EDBP' and numerofactura=70712
select * from detallefacturaventas where estacionid=73 and prefijo='EDBP' and numerofactura=70712


select EstadoLiberacion, * from NotaCredito where NumeroNotaCredito=15497 and EstacionID=165
update NotaCredito set Fecha='2023-02-27' where NumeroNotaCredito=15497 and EstacionID=165

select * from NotaCredito where EstacionID=73 and numeronotacredito=26056
select * from DetalleNotaCredito where EstacionID=73 and numeronotacredito=26056 
update DetalleNotaCredito set valor=9509 where EstacionID=73 and numeronotacredito=26056 

select * from process where prefijo='' and 

select * from balance where fecha in ('2023-01-18', '2023-01-19') and estacionid=26
select * from balance where estacionid=26 and balanceid in (4390497, 4391194)
update balance set cerrado=0 where estacionid=26 and balanceid in (4390497, 4391194)

select * from empleado where empleadoid=15880
select * from empleado where nombre like '%Julian Andres Torres%'
select * from empleadoestacion where empleadoid=15880 and estacionid=374

Se generó nota crédito N° : 5276.
. Se programó exitosamente la creación de la factura . Número del Movimiento: 224166

select * from empleado where empleadoid=14517



update NotaCredito set Anulado=1, FechaAnulado=GETDATE(), UsuarioAnulacion='' where EstacionID=165 and numeronotacredito=15031

delete DetalleNotaCredito where  EstacionID=165 and numeronotacredito=15031 and DetalleNotaCreditoID=4439753 


select EstadoLiberacion, * from NotaCredito where NumeroNotaCredito=15497 and EstacionID=165
update NotaCredito set FechaNota='2023-02-27' where NumeroNotaCredito=7713 and EstacionID=212

  select em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=639 AND CargoID=3

 select ConceptoFacturaVentaID, * from EncabezadoFacturaVentas where estacionid=639 and Prefijo='SUME' and NumeroFactura=222149 
 select * from DetalleNotaCredito where  Documento=222149

update DetalleNotaCredito set Documento=222150 where DetalleNotaCreditoID=4428124 and EstacionID=639
update EncabezadoFacturaVentas set ConceptoFacturaVentaID=2, empleadoid=14660 where estacionid=639 and Prefijo='SUME' and NumeroFactura=222149 
update DetalleNotaCredito set Documento=222149 where DetalleNotaCreditoID=4428124 and EstacionID=639

 update EncabezadoFacturaVentas set ConceptoFacturaVentaID=2, empleadoid=14660 where estacionid=639 and Prefijo='SUME' and NumeroFactura=222149 

  select ConceptoFacturaVentaID, * from EncabezadoFacturaVentas where estacionid=670 and Prefijo='MOTA' and NumeroFactura=484210 


  SELECT TOP 50 * FROM TRAMALOG WHERE TRAMA LIKE '%MFC539%' ORDER BY 1 DESC
  MFC539;F3;104100000146269501;07CLIENTE NO IDENTIFICADO;1E0;Z10;
  MFC539;F3;104100000146269501;07CLIENTE NO IDENTIFICADO;1E0;Z10;
 
 select Fecha, clienteid, EmpleadoID,EsElectronica,automatica, facturaconvertida, Pcc,cara,Manguera,ConceptoFacturaVentaID,automatica,a.Prefijo,A.Numerofactura,anulado,b.ProductoID,b.Precio,incremento,b.Descuento,cast(Cantidad as float) Cantidad,(cast(Cantidad as float)* Precio) Valor --,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID ) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE,a.FECHA) between '20221230' and '20221231' and a.estacionId=639  --and empleadoid=13347
and (SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) is null and ConceptoFacturaVentaID=3
order by fecha desc
 

  select * from cliente where nit='901574165'

 select * from cliente where clienteid=212793

 select * from detallefacturaventas where estacionid=54 and Prefijo='EMM8' and NumeroFactura=855540  

select * from lecturasurtidor where estacionid=54 and numerolectura=57749 and productoid=2

select ConceptoFacturaVentaID, * from EncabezadoFacturaVentas where estacionid=218 and Prefijo='EEI3' and NumeroFactura=5543

select TOP 100 * from EncabezadoFacturaVentas where estacionid=218 AND ESELECTRONICA=1 ORDER BY 1 DESC

select top 10 * from solicitud where estacionid=16 order by 1 desc

select * from usuario where usuarioid=75

--821677

select 26623490-1190 =26622300

select 0.595*9680 =5759
select 61717681-5759


select * from NotaCredito where estacionid=132 and NumeroNotaCredito=100241
update NotaCredito set fecha='2022-12-31' where estacionid=132 and NumeroNotaCredito=100241

select * from lecturasurtidor where estacionid=144 and  numerolectura=76142 and productoid=1

select ConceptoFacturaVentaID, FormaPagoID,  * from EncabezadoFacturaVentas where Prefijo='ECG8' and NumeroFactura=459327

select * from detallefacturacredito where estacionid=203 and prefijo='EDX1' and numerofactura=591708

select * from ConceptoNotaCredito where ConceptoNotaCreditoID=14  

select * from NotaCredito where estacionid=154 and NumeroNotaCredito=5808
update NotaCredito set fecha='2022-09-23' where estacionid=154 and NumeroNotaCredito=5808


select * from detallenotacredito where estacionid=185 and NumeroNotaCredito=146889


select estadoliberacion, * from NotaCredito where EstacionID=2 and NumeroNotaCredito=9591 and notacreditoid=2813784
--update NotaCredito set estadoliberacion='A' where EstacionID=2 and NumeroNotaCredito=9591 and notacreditoid=2813784

eaop 5904 y eap 5906
 
 



select TOP 1 * from MANGUERA ORDER BY 1 DESC

select * from encabezadofacturaventas where estacionid=439 and prefijo='LDFE' and numerofactura=67711
select * from detallefacturaventas where estacionid=439 and prefijo='LDFE' and numerofactura=67711

declare @placa varchar='ABC123'
select * from vehiculo where placa=@placa
select top 5 * from restriccionvale where placa=@placa order by 1 desc


SELECT * FROM notacredito where numeronotacredito=2825 and estacionid=451
select * from detallenotacredito where numeronotacredito=146889 and estacionid=185

select * from NotaCredito where  estacionid=451 and NotaCreditoID=2762635 and NumeroNotaCredito=2825
--update NotaCredito set Anulado=1, FechaAnulado=GETDATE(), UsuarioAnulacion='soporte16' where  estacionid=451 and NotaCreditoID=2762635 and NumeroNotaCredito=2825

select * from DetalleNotaCredito where estacionid=451 and NotaCreditoID=2762635 and detallenotacreditoid=4209432
--delete DetalleNotaCredito where estacionid=451 and NotaCreditoID=2762635 and detallenotacreditoid=4209432

select * from PrecioProductoProgramado where EstacionID=157 order by 1 desc


select * from NotaCredito where EstacionID=514 and NumeroNotaCredito in (5647, 5644, 5643, 5645, 5646) 

--update NotaCredito set fecha='2022-08-17' where EstacionID=514 and NumeroNotaCredito in (5647, 5644, 5643, 5645, 5646)

select * from NotaCredito where EstacionID=514 and NumeroNotaCredito in (5652) 

--update NotaCredito set fecha='2022-08-16' where EstacionID=514 and NumeroNotaCredito in (5652)

select * from encabezadofacturaventas where estacionid=279 and convert(date,fecha)='20220815' and aprobada=0

select EstadoLiberacion, * from NotaCredito where EstacionID=689 and NumeroNotaCredito=587 and notacreditoid=2739954

select * from lecturasurtidor where estacionid=50 and convert(date,fechaini)='20220901'

select prefijo, EstacionResolucionFacturacionID, * from encabezadofacturaventas where estacionid=233 and FacturaID=190179005
--delete from encabezadofacturaventas where estacionid=233 and FacturaID=190179005

select 883260+331784
--5692	1	520582
--5693	1	189517
--5696	1	33017
--5694	1	25754
--5695	1	6626
--5697	1	307633
--5699	1	56924

--15502 falta 35460
--15507 sobra -35080

declare @estacion int =39
declare @lectura int =23203
declare @producto int =2
select e.nombre Empleado, pcc.pcc, p.nombre, ls.fechaini, ls.fechafin, ls.numerolectura NumeroLSurtidor, (ls.lecturafinal-ls.lecturainicial) LSIni,  lm.numerolectura NumeroLMecanica,  (lm.lecturafinal-lm.lecturainicial) LMIni, ((lm.lecturafinal-lm.lecturainicial)- (ls.lecturafinal-ls.lecturainicial)) DifeLec from lecturasurtidor ls join lecturamecanica lm on ls.fechaini=lm.fechaini and ls.estacionid=lm.estacionid 
join empleado e on ls.empleadoid=e.empleadoid join configpccestacion pcc on pcc.surtidorid=ls.surtidorid join producto p on p.productoid=ls.productoid where lm.estacionid=@estacion and ls.numerolectura=@lectura and ls.productoid=@producto
group by ls.numerolectura, e.nombre, pcc.pcc , p.nombre, ls.fechaini, ls.fechafin, ls.lecturafinal, ls.lecturainicial, lm.numerolectura,
lm.lecturafinal, lm.lecturainicial

--1812	40608	3277	0	-3277 PONER
--1767	40608	73521	77000	3479 QUITAR 

select * from lecturasurtidor where estacionid=39 and numerolectura=23206  order by 1 desc
select * from lecturasurtidor where estacionid=39 and fechaini='2024-08-07 06:31:32.000'
select * from lecturamecanica where estacionid=39 and fechaini='2024-08-07 06:31:32.000'

--1148	40608	34680	55000	20320 quitar
--1152	40608	85290	67000	-18290 poner
select * from lecturasurtidor where numerolectura in (1148, 1152) and estacionid=690


select * from lecturamecanica where numerolectura=18440 and estacionid=325
select * from lecturamecanica where numerolectura=17450 and estacionid=325 
SELECT * FROM Cliente WHERE ClienteID=199720
select * from lecturasurtidor where numerolectura=25144 and productoid=1 and estacionid=325

select * from cierreturno where  producto=1 and fechaini='2022-10-05 12:51:56.000'

--25141
--25144
 select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%30%'
 select * from enca

select * from ProcessFCCoreMovimiento where movimientoid=209740
select * from encabezadoremisionventas where  ProcessFCCoreMovimientoID=293293

 select empresaid, EsLocal, CentroCostos, * from estacion where nombre like '%vegas%'
 select * from EncabezadoRemisionVentas where  estacionid=31 and Prefijo='RESN' AND  numero  in (1109)
 select * from detalleremisionventas where  estacionid=31 and Prefijo='RESN' AND  numero  in (1109)

  select top 5 * from EncabezadoRemisionVentas where  estacionid=31 and clienteid=89768 order by fecha desc

  select top 50 * from Calibraciones where EstacionID=571 order by 1 desc
  select top 10 * from balance where estacionid=38 order by 1 desc
select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%pastran%'

select * from lecturasurtidor where estacionid=144 and numerolectura in (91842) order by mangueraid

--93128951544

select top 5 * from lecturasurtidor where mangueraid=293 order by 1 desc
select top 5 * from lecturasurtidor where mangueraid=292 order by 1 desc


--UPDATE LecturaSurtidor SET ValorUnitario=9610,  LecturaInicial = 126692270, LecturaFinal = 126752070, ValorIni = 1153155407, ValorFin = 1153748527 WHERE EstacionID= 410 and LecturaSurtidorID = 28849540


select * from lecturamecanica where fechaini='2023-01-12 14:05:00.000'

select * from cliente where nombre like '%BENJAMIN OBANDO DELGADO%'

select * from ConfiguracionEmpresa where EmpresaID=3 and Parametro like '%endp%'

select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%califor%'

select * from entregadinero where estacionid=442 order by 1 desc
select * from pcc where pcc='MFC905'
select * from RemisionDocumentoGenerado where EstacionID=148 order by 1 desc
select * from parametrizacionflujoestacion a join estacion b on a.estacionid=b.estacionid order by a.estacionid
select * from estacion where estacionid=148

select * from configpccestacion where estacionid=209
select top 100 * from tramalog where trama like '%MFC540;%' order by 1 desc
select * from detalletramalog where tramalogid=46370430
select * from cliente where clienteid=210237
select * from producto where nombre like '%fly%'
Consulta Central Exitosa: Tiempo:1544{ "DatosClientes" : {"ClienteID":"210237","VehiculoID":"146543","EstadoCliente":"1","ConceptoBloqueo":"0","Fidelizado":"0","Placa":"OSK416","EstadoVehiculo":"1","VerificarKilometraje":"1","ClienteCHipID":"0","CarteraVencida":"0","CupoDisponible":"0.0000","NombreCliente":"FISCALIA GENERAL DE LA NACION SEC. SANTA","Nit":"800187569","Direccion":"CARRERA 19 No. 24-61 PISO 3","Plazo":"30","IdentificarConNit":"0","IdentificarConPlaca":"0","IdentificarConChip":"1","IdentificarConCID":"0","VigenciaCupo":"2022-12-31","KmVehiculo":"49760","ClientesEstacion":"185-0;209-0;","PreciosCliente":"1-9525;2-8784;","ExigeListaPrecio":"0","kmgps":"0","EstadoIdentificador":"1","Puntos":"0","CantidadMaxRedimir":"0","Punto_ProgramaID":"0","Punto_Factor":"0.00000000","Punto_PremioID":"0","Punto_ProductoID":"0","kmgpsvo":"0","InicioVigencia":"2022-11-29","Mensajeerror":"RESERVA ACTIVA,INTENTE EN 10MINUTOS","RestriccionesChip":"Vacio","RestriccionesConsumo":"468228|0|1|DLMWJVS|00-24|G|12.00|12.00|1|-1.00|D|C|2022-12-31 23:59:59|0|*|2022-12-07 11:53:08","ControlVehicular":"0|146543|0.000|0.000|0|2022-12-07 11:56:35.893|1","ClienteIDPadre":"0","CarteraVencidaPadre":"0","CupoDisponiblePadre":"0.0000","RestriccionValeID":"0","CantidadCondicionExpress":"0.00","ClienteDependenciaID":"0","IsVale":"0","FacturaElectronicamente":"1","PermiteRemision":"1","ClienteTipoEstacionFE":"210237|4","Autorizacion":"0","TipoAutorizacionUsuarioID":"0","EstacionIDExpress":"0","RestriccionMaestro":"0|0|0|0|-1.00|-1.00|V|2021-01-01 00:00:00|2090-12-31 00:00:00|1|0|2000000.00|10000000.00|2000000.00|50000000.00|Bloqueo Maestro consumo diario permitido|Bloqueo Maestro consumo Mes permitido|-1.00|-1.00|0.00|0.00|0.00|*|*|-1.00|-1|*|*","FacturaParqueadero":"0","TipoTarjetaParqueaderoID":"0","ProductoIDExpress":"0","ValorReservaActivas":"1788211.0000","ProductosVehiculo":"-"}}

--32866    1
--32862    2

select * from cliente where ClienteID=158579

select top 1000 * from tramalog order by 1 desc

declare @estacion int =38
--declare @lectura int =2835 
--declare @producto int =12909
select e.nombre Empleado, pcc.pcc, p.nombre, ls.fechaini, ls.fechafin, ls.numerolectura NumeroLSurtidor, (ls.lecturafinal-ls.lecturainicial) LSIni,  lm.numerolectura NumeroLMecanica,  (lm.lecturafinal-lm.lecturainicial) LMIni, ((lm.lecturafinal-lm.lecturainicial)- (ls.lecturafinal-ls.lecturainicial)) DifeLec from lecturasurtidor ls join lecturamecanica lm on ls.fechaini=lm.fechaini and ls.estacionid=lm.estacionid 
join empleado e on ls.empleadoid=e.empleadoid join configpccestacion pcc on pcc.surtidorid=ls.surtidorid join producto p on p.productoid=ls.productoid where lm.estacionid=@estacion and convert(date,ls.fechaini)='20230505'
group by ls.numerolectura, e.nombre, pcc.pcc , p.nombre, ls.fechaini, ls.fechafin, ls.lecturafinal, ls.lecturainicial, lm.numerolectura,
lm.lecturafinal, lm.lecturainicial

select * from GnvSuic where FechaUltimaRevision='2023-02-08' and FechaProximaRevision='2024-02-08'

select * from empleado where empleadoid in (1290, 8489, 9068, 9764)
30058   1290  PEDRO ADALBERTO CARDOZO GONZALEZ
30059   8489  JHOVANNY DEL CRISTO RUIZ GUERRA
30060   9068  WILMER JOSE ORTIZ RUIZ 
30061   9764  GERMAN DARIO HOYOS GUERRERO

select * from lecturamecanica where estacionid=38 and convert(date,fechaini)='20230505' order by 1 desc
select * from lecturamecanica where fechaini='2023-01-12 21:29:56.000' and estacionid=121-- and productoid=1
select * from lecturasurtidor where numerolectura=72012  and estacionid=121 --and productoid=1
select * from lecturamecanica where fechaini='2023-01-12 21:29:56.000' and estacionid=121 --and productoid=1

select * from lecturamecanica where estacionid=121 and surtidorid in (45, 48) and fechaini>='2023-01-12 21:00:56.000' 
delete from lecturamecanica where estacionid=121 and surtidorid in (45, 48) and fechaini>='2023-01-12 21:29:56.000' 
 
select * from DetalleFacturaVentas where EstacionID=91 and Prefijo='EFT8' and NumeroFactura in (9952, 9953) --1410,00
select * from balance where EstacionID=217 and Fecha='2023-01-25'

select (lecturafinal-lecturainicial) d, * from lecturasurtidor where estacionid=669 and surtidorid=1432 and fechaini>='2023-04-30 00:00:00.000' order by fechaini desc

SELECT * FROM EncabezadoRemisionVentas WHERE Prefijo='RECL' AND Numero=7945 AND EstacionID=172
SELECT * FROM detalleremisionventas WHERE Prefijo='RECL' AND Numero=7945 AND EstacionID=172

--SELECT * FROM lecturasurtidor WHERE ESTACIONID=81 AND numerolectura in (37708, 37764)


declare @estacion int =65
declare @lectura int =31526
declare @producto int =1
select e.nombre Empleado, pcc.pcc, p.nombre, ls.fechaini, ls.fechafin, ls.numerolectura NumeroLSurtidor, (ls.lecturafinal-ls.lecturainicial) LSIni,  lm.numerolectura NumeroLMecanica,  (lm.lecturafinal-lm.lecturainicial) LMIni, ((lm.lecturafinal-lm.lecturainicial)- (ls.lecturafinal-ls.lecturainicial)) DifeLec from lecturasurtidor ls join lecturamecanica lm on ls.fechaini=lm.fechaini and ls.estacionid=lm.estacionid 
join empleado e on ls.empleadoid=e.empleadoid join configpccestacion pcc on pcc.surtidorid=ls.surtidorid join producto p on p.productoid=ls.productoid where lm.estacionid=@estacion and ls.numerolectura=@lectura and ls.productoid=@producto
group by ls.numerolectura, e.nombre, pcc.pcc , p.nombre, ls.fechaini, ls.fechafin, ls.lecturafinal, ls.lecturainicial, lm.numerolectura,
lm.lecturafinal, lm.lecturainicial

declare @estacion int =416
declare @lectura int =28683
declare @producto int =1
select e.nombre Empleado, pcc.pcc, p.nombre, ls.fechaini, ls.fechafin, ls.numerolectura NumeroLSurtidor, (ls.lecturafinal-ls.lecturainicial) LSIni,  lm.numerolectura NumeroLMecanica,  (lm.lecturafinal-lm.lecturainicial) LMIni, ((lm.lecturafinal-lm.lecturainicial)- (ls.lecturafinal-ls.lecturainicial)) DifeLec from lecturasurtidor ls join lecturamecanica lm on ls.fechaini=lm.fechaini and ls.estacionid=lm.estacionid 
join empleado e on ls.empleadoid=e.empleadoid join configpccestacion pcc on pcc.surtidorid=ls.surtidorid join producto p on p.productoid=ls.productoid where lm.estacionid=@estacion and ls.numerolectura=@lectura and ls.productoid=@producto
group by ls.numerolectura, e.nombre, pcc.pcc , p.nombre, ls.fechaini, ls.fechafin, ls.lecturafinal, ls.lecturainicial, lm.numerolectura,
lm.lecturafinal, lm.lecturainicial

--28676	-5950	1
--28683	6420	1

select * from lecturamecanica where estacionid=65 and numerolectura in (30493, 30495) --and productoid=1 --and MangueraID=5769
delete from lecturamecanica where estacionid=65 and numerolectura in (30493, 30495)
update lecturamecanica set lecturafinal=lecturainicial where estacionid=65 and numerolectura in (30493) --and productoid=1
select * from lecturamecanica where estacionid=416 and numerolectura in (27928) and productoid=1 --and MangueraID=5769
update lecturamecanica set lecturainicial=1449297000 where estacionid=416 and numerolectura in (27928) and productoid=1



select * from lecturamecanica where estacionid=769 and numerolectura in (3541) and productoid=1 and MangueraID=5769
--update lecturamecanica set lecturainicial=898824000+1000 where estacionid=769 and numerolectura in (3541) and productoid=1 and MangueraID=5769
select * from lecturamecanica where estacionid=903 and numerolectura in (4) and productoid=2 and MangueraID=6660
--update lecturamecanica set fechafin='2024-03-08 04:05:53.000' where estacionid=903 and numerolectura in (4)-- and productoid=2 and MangueraID=6660


SELECT        *
FROM            EstacionResolucionFacturacion
WHERE        (EstacionID IN ( 859))

select * from lecturasurtidor where numerolectura=18625 and estacionid=418 and productoid=2  order by 1 desc

select * from cierreturno where  fechaini='2023-05-31 05:43:48.000' and empresaid=31

select * from lecturamecanica where estacionid=26 and numerolectura=34342 order by 1 desc
delete from lecturamecanica where estacionid=26 and numerolectura=34342

select * from lecturasurtidor where numerolectura in (6,8) and estacionid=903  order by 1 desc
select * from lecturamecanica where numerolectura in (3,4) and estacionid=903 order by 1 desc


  select em.EmpleadoID, em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=112 AND CargoID=3  --
   
  select * from empleado where EmpleadoID in (15758,17354)
--2431       DEIMER JOSE CABRERA MENDOZA  falta  -11100 
-- 2430   CRISTIAN DAYAN CUENTA CABALLERO  sobra 11110

select * from lecturasurtidor where numerolectura in (13607, 13593) and estacionid=595  order by 1 desc
select * from lecturamecanica where estacionid=670 and LecturaMecanicaID=13725984
update lecturamecanica set lecturafinal=92652000+4000 where estacionid=595 and LecturaMecanicaID=13509690
update lecturamecanica set lecturainicial=143502000+88000 where estacionid=670 and LecturaMecanicaID=13725984

select top 10 * from lecturasurtidor where surtidorid=1263 and estacionid=595  order by fechaini desc
--delete from  lecturasurtidor where numerolectura in (13609) and estacionid=595


select top 100 * from lecturasurtidor where estacionid=65 and fechaini>'2024-03-20 01:52:55.000'  order by numerolectura desc
update lecturasurtidor set fechaini='2024-03-20 05:52:55.000' where estacionid=65 and numerolectura in (31527)

--select top 100 * from lecturamecanica where estacionid=851 and surtidorid=1818 and fechaini>='2024-02-27 04:50:17.000' order by 1 desc
--delete from lecturamecanica where estacionid=851 and surtidorid=1818 and fechaini>='2024-02-27 04:50:17.000'
--delete from lecturamecanica where estacionid=851 and surtidorid=1818 and numerolectura=693

select * from mvtoturno where estacionid=851 and numerolectura in (750, 751, 755, 759)
--update mvtoturno set numerofactura=NULL, prefijo=NULL where estacionid=851 and numerolectura in (750, 751, 755, 759)

--delete from lecturamecanica where LecturaMecanicaID=13621395
select top 10 * from tramalog where trama like 'MFA503;F1;%' order by 1 desc

select * from estacion where nombre like '%comune%'
select top 100 * from fcspos.loginformation where estacionid=683 order by 1 desc

select * from tramalog where TramaLogID=168688350 order by 1 desc

select * from SolicitudIntegrador order by 1 desc

--751--MFA503;F1;2A20240227100329362;2B20240227103607541;4B1028019944;526;2F168;50;0E1;0F1;0B2;3112588157;3212588157;33114071415;34114071415;0D9530;510;0E1;0F2;0B2;31233009;32233009;33148441;34148441;0D9530;510;0E1;0F3;0B1;3125040948;3225040948;33382682225;34382682225;0D15850;510;0E2;0F1;0B2;318820029;328820029;3380490286;3480490286;0D9530;510;0E2;0F2;0B2;31234490;32234490;33152326;34152326;0D9530;510;0E2;0F3;0B1;3120519379;3220519379;33312696115;34312696115;0D15850;511;;ME[{"LECTURAFINAL":"12588","LECTURAINICIAL":"12530","NUMEROMANGUERA":1,"CARA":1},{"LECTURAFINAL":"0","LECTURAINICIAL":"0","NUMEROMANGUERA":2,"CARA":1},{"LECTURAFINAL":"25047","LECTURAINICIAL":"24975","NUMEROMANGUERA":3,"CARA":1},{"LECTURAFINAL":"8824","LECTURAINICIAL":"8773","NUMEROMANGUERA":1,"CARA":2},{"LECTURAFINAL":"0","LECTURAINICIAL":"0","NUMEROMANGUERA":2,"CARA":2},{"LECTURAFINAL":"20519","LECTURAINICIAL":"20439","NUMEROMANGUERA":3,"CARA":2}];CMHAND851-01;V-4.6.5;ES851
--750--MFA503;F1;2A20240227045617757;2B20240227100130262;4B1028019944;526;2F167;50;0E1;0F1;0B2;3112530044;3212588157;33113535460;34114071415;0D9530;510;0E1;0F2;0B2;31233009;32233009;33148441;34148441;0D9530;510;0E1;0F3;0B1;3124975810;3225040948;33381649290;34382682225;0D15850;510;0E2;0F1;0B2;318773035;328820029;3380071234;3480490286;0D9530;510;0E2;0F2;0B2;31234490;32234490;33152326;34152326;0D9530;510;0E2;0F3;0B1;3120439620;3220519379;33311431567;34312696115;0D15850;511;;ME[{"LECTURAFINAL":"12588","LECTURAINICIAL":"12530","NUMEROMANGUERA":1,"CARA":1},{"LECTURAFINAL":"0","LECTURAINICIAL":"0","NUMEROMANGUERA":2,"CARA":1},{"LECTURAFINAL":"25047","LECTURAINICIAL":"24975","NUMEROMANGUERA":3,"CARA":1},{"LECTURAFINAL":"8824","LECTURAINICIAL":"8773","NUMEROMANGUERA":1,"CARA":2},{"LECTURAFINAL":"0","LECTURAINICIAL":"0","NUMEROMANGUERA":2,"CARA":2},{"LECTURAFINAL":"20519","LECTURAINICIAL":"20439","NUMEROMANGUERA":3,"CARA":2}];CMHAND851-01;V-4.6.5;ES851
select * from configuracionempresa where codigo=216
--FC 15065
select * from lecturasurtidor where estacionid=913 and numerolectura=189 order by 1 desc
select * from lecturamecanica where estacionid=913 and fechaini='2024-04-01 12:57:42.000' and productoid=45940 and LecturaMecanicaID=13880612 order by 1 desc
update lecturamecanica set lecturainicial=56592000+1000 where  estacionid=913 and fechaini='2024-04-01 12:57:42.000' and productoid=45940 and LecturaMecanicaID=13880612


--8466   12909
--8465   12909
     --  12911
select * from lecturasurtidor where numerolectura=8465 and estacionid=557
select * from lecturamecanica where estacionid=557 and fechaini='2024-07-23 13:47:35.000' and productoid=12909 and LecturaMecanicaID=14813571
--update lecturamecanica set lecturainicial=434301000+1000 where estacionid=557 and fechaini='2024-07-23 13:47:35.000' and productoid=12909 and LecturaMecanicaID=14813661
--update lecturamecanica set lecturainicial=10364000+1000 where estacionid=557 and fechaini='2024-07-23 13:47:35.000' and productoid=12911 and LecturaMecanicaID=14813662



select * from empleado where EmpleadoID=18878
--and SurtidorID=883


declare @fecha date = '20240821'
declare @Electronica table (Galones decimal,producto int,lectura int,Fecha datetime)
declare @Mecanica table (Galones decimal,producto int,lectura int,Fecha datetime)
insert into @Electronica
select  CAST(SUM((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))) AS DECIMAL (15,2)) Galones,ProductoID,NumeroLectura,FechaIni from LecturaSurtidor e
where CONVERT(date,FechaIni) = @fecha and EstacionID =54
group by ProductoID,FechaIni,NumeroLectura
having sum(LecturaFinal-LecturaInicial)>=0
insert into @Mecanica
select CAST(SUM((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))) AS DECIMAL (15,2)) Galones,ProductoID,NumeroLectura,FechaIni from LecturaMecanica
where CONVERT(date,FechaIni) = @fecha and EstacionID =54
group by ProductoID,FechaIni,NumeroLectura
having sum(LecturaFinal-LecturaInicial)>=0
order by FechaIni,ProductoID,NumeroLectura
select e.Lectura as [Numero Turno],E.producto [Combustible],E.Galones AS Electronica,M.Galones as Mecanica,M.Galones-E.Galones Diferencia from @Electronica E
join @Mecanica M on E.Fecha=M.Fecha and E.producto=M.producto
order by e.lectura  desc

declare @fecha date = '20240712' --13593   9447      10079
declare @Electronica table (Galones decimal,producto int,lectura int,Fecha datetime)
declare @Mecanica table (Galones decimal,producto int,lectura int,Fecha datetime)
insert into @Electronica
select  CAST(SUM((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))) AS DECIMAL (15,2)) Galones,ProductoID,NumeroLectura,FechaIni from LecturaSurtidor e
where CONVERT(date,FechaIni) = @fecha and EstacionID =15
group by ProductoID,FechaIni,NumeroLectura
having sum(LecturaFinal-LecturaInicial)>=0
insert into @Mecanica
select CAST(SUM((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))) AS DECIMAL (15,2)) Galones,ProductoID,NumeroLectura,FechaIni from LecturaMecanica
where CONVERT(date,FechaIni) = @fecha and EstacionID =15
group by ProductoID,FechaIni,NumeroLectura
having sum(LecturaFinal-LecturaInicial)>=0
order by FechaIni,ProductoID,NumeroLectura
select e.Lectura as [Numero Turno],E.producto [Combustible],E.Galones AS Electronica,M.Galones as Mecanica,M.Galones-E.Galones Diferencia from @Electronica E
join @Mecanica M on E.Fecha=M.Fecha and E.producto=M.producto
order by diferencia  desc


SELECT * FROM TRAMALOG WHERE TramaLogID IN (57451459, 57450519)

select * from estacion where estacionid=687
select * from empresa where empresaid=73

select * from encabezadofacturaventas where estacionid=687 and prefijo='AFC' and  numerofactura in (311168, 311170)
select * from detallefacturaventas where estacionid=687 and prefijo='AFC' and  numerofactura in (311168, 311170)


select * from lecturasurtidor where estacionid=325 and numerolectura in (26610, 26612, 26611) and productoid in (1,2) and mangueraid=2616
select * from lecturasurtidor where estacionid=325 and numerolectura in (26610, 26612, 26611) and productoid in (1,2) and mangueraid=2617
select * from lecturasurtidor where estacionid=325 and numerolectura in (26610, 26612, 26611) and productoid in (1,2) and mangueraid=2619
select * from lecturasurtidor where estacionid=325 and numerolectura in (26610, 26612, 26611) and productoid in (1,2) and mangueraid=
select * from lecturasurtidor where estacionid=325 and numerolectura in (26610, 26612, 26611) and productoid in (1,2) and mangueraid=
 
 select (lecturafinal-lecturainicial) GALTURNOSURTIDOR, * from lecturasurtidor where estacionid=379 and numerolectura=17820 and productoid=1
 select (lecturafinal-lecturainicial) GALTURNOMECANICA, * from lecturamecanica where estacionid=379 and numerolectura=17450 and productoid=1


 select * from calibraciones where estacionid=325 order by fecha desc
 select * from calibraciones where estacionid=325 and numerocalibracion=5387
delete from calibraciones where estacionid=325 and numerocalibracion=5387

 select * from solicitud where estacionid=325 order by 1 desc



 select * from usuario where usuarioid=224

select top 100 * from lecturamecanica where EstacionID=172 order by 1 desc

select * from lecturamecanica where estacionid=595 and productoid=9447 order by 1 desc and fechaini='2022-09-04 09:53:25.000' 

select * from lecturasurtidor where estacionid=91 and numerolectura IN (162673, 162672 ) and productoid in (2)
select * from lecturasurtidor where estacionid=741 and numerolectura IN (303) and productoid in (12909)

select * from cierreturno where fechaini between '2022-08-15 04:44:00.000' and '2022-08-15 04:47:00.000'

select top 1 * from lecturamecanica where estacionid=27 order by 1 desc -- and fechaini='2022-08-30 13:36:20.000' 


select  * from lecturamecanica where estacionid=27 and surtidorid=106 and numerolectura=23390 order by 1 desc
select  * from lecturamecanica where estacionid=27 and surtidorid=107 and numerolectura=23391 order by 1 desc


select * from CONFIGpccestacion where pcc='mfc174' --106 mang 401-14  398-17
select * from CONFIGpccestacion where pcc='mfc175' --107 mang   405-24

select * from manguera where mangueraid in (401, 398, 405)
seelct 

--update lecturamecanica set EmpleadoID= 9316 where estacionid=135 and numerolectura=25955

select * from empleado where empleadoid=2052--YEFERSON CUESTA HERNANDEZ 

select * from lecturamecanica where estacionid=135 and numerolectura=25955
--update lecturamecanica set EmpleadoID= 9316 where estacionid=135 and numerolectura=25955

With ver_Lecturas As 	
		(Select	l.SurtidorID,l.MangueraID,LecturaCorrecta = LAg(l.LecturaFinal,1) Over(Partition By l.SurtidorID,l.MangueraID Order By l.SurtidorID,l.MangueraID,l.FechaIni)
,l.LecturaInicial,l.LecturaFinal,TurnoActual = l.NumeroLectura,TurnoAnterior = LAg(l.NumeroLectura,1) Over(Partition By l.SurtidorID,l.MangueraID Order By l.SurtidorID,l.MangueraID,l.FechaIni)
		From	dbo.LecturaSurtidor as l
		Where	l.EstacionID = 65 and  convert(date,FechaIni)between '20240316' and '20240321') 	--<<-- cambiar estacionID	
	    Select	*,Cantidad_del_Salto_Es = (LecturaInicial- LecturaCorrecta ) /1000.000
	    From	ver_Lecturas
	    Where	(LecturaInicial- LecturaCorrecta ) > 0

		select * from lecturasurtidor where numerolectura in (44856,	44855) and mangueraid=3368 and estacionid=38
		select * from lecturasurtidor where numerolectura in (44856,	44855) and mangueraid=3369 and estacionid=38				
		select * from lecturasurtidor where numerolectura in (44856,	44855) and mangueraid=3370 and estacionid=38
		select * from lecturasurtidor where numerolectura in (44856,	44855) and mangueraid=3371 and estacionid=38
		select * from Cliente where ClienteID in (288069, 312209)

		select * from lecturasurtidor where surtidorid=954 and fechaini>='2023-05-11 19:00:00.000' order by 1 desc

		select * from balance where BalanceID=4497451 --253703
		select * from CLIENTE WHERE CLIENTEID=235164
		update balance set cerrado=0 where BalanceID=4497451
		UPDATE CLIENTE SET IdentificarConNit=0, IdentificarConChip=1, PermiteFacturaManual=0  WHERE CLIENTEID=235164

		select * from lecturasurtidor where numerolectura in (121, 122) and mangueraid=6014
		select * from empleado where empleadoid in (16598, 16606)
		select * from cierreturno where fechaini='2023-04-19 20:29:08.000'

		select * from lecturasurtidor where numerolectura=39010 and estacionid=40
		select * from cierreturno where fechaini='2023-05-07 05:04:04.000' and estacionid=40

		select * from lecturasurtidor where mangueraid=6010 order by 1 desc
	    select * from lecturasurtidor where mangueraid=6014 order by 1 desc



		SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni)='20230301'  and l.EstacionID=746 --and pcc='MFC095 ' 
order BY l.FechaIni DESC


		select * from estacion where estacionid=514


	
select * from  where estacionid=108 and numerolectura in (13574, 13577) order by mangueraid desc

select * from lecturasurtidor where estacionid=26 and numerolectura in (41339) order by 1 desc

select * from lecturasurtidor where estacionid=26 and lecturasurtidorid in  (22886306,
22886305,
22886304,
22886303,
22886302,
22886301)

update lecturasurtidor set numerolectura= 41350 where estacionid=26 and lecturasurtidorid in  (22886306,
22886305,
22886304,
22886303,
22886302,
22886301)



        With ver_Lecturas As 	
		(Select	l.SurtidorID,l.MangueraID,LecturaCorrecta = LAg(l.LecturaFinal,1) Over(Partition By l.SurtidorID,l.MangueraID Order By l.SurtidorID,l.MangueraID,l.FechaIni)
        ,l.LecturaInicial,l.LecturaFinal,TurnoActual = l.NumeroLectura,TurnoAnterior = LAg(l.NumeroLectura,1) Over(Partition By l.SurtidorID,l.MangueraID Order By l.SurtidorID,l.MangueraID,l.FechaIni)
		From	dbo.LecturaSurtidor as l
		Where	l.EstacionID = 913 and  convert(date,FechaIni)between '20240320' and '20240402') 	--<<-- cambiar estacionID	
	    Select	*,Cantidad_del_Salto_Es = (LecturaInicial- LecturaCorrecta ) /1000.000
	    From	ver_Lecturas
	    Where	(LecturaInicial- LecturaCorrecta ) > 0

--1842	1    11499,50

--1849	1    65099,90

select * from lecturasurtidor where numerolectura=1849 and estacionid=705 and productoid=1

--UPDATE LecturaSurtidor SET ValorIni = 92722839 WHERE LecturaSurtidorID = 24483492 and estacionid=705	
--UPDATE LecturaSurtidor SET ValorIni = 28369479 WHERE LecturaSurtidorID = 24492002 and estacionid=705										
--UPDATE LecturaSurtidor SET ValorIni = 65011210 WHERE LecturaSurtidorID = 24492004 and estacionid=705										
	

select * from encabezadofacturaventas where prefijo='FE' and numerofactura in (3470, 3471,3469)	and estacionid=690
--969) and estacionid=693 

select * from estacion where estacionid=690

select top 500 * from tramalog where trama like '%MFC051;F1%' order by 1 desc

select * from notacredito where estacionid=691 and numeronotacredito=11
select * from detallenotacredito where estacionid=691 and documento=1178
select * from ConceptoNotaCredito where ConceptoID=782
select * from cliente where clienteid=135652



declare @lectura int =61936	
declare @estacionid int =23
declare @producto int =5
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID = @EstacionID ))
select DineroInicial,DineroFinal,FechaFinal, clienteid, Prefijo, Factura,Fecha,EmpleadoID, PRODUCTOID,PCC,Cara,Manguera,PPU,PPUAlterno,Volumen,Valor, 
cast(dinerofinal-dineroinicial as decimal (12,2)) vensurt, (valor-cast(dinerofinal-dineroinicial as decimal (12,2)))difdinero,cast(volumen/1000 as decimal (12,2)) volcalcu from VentasporSurtidor 
where  PCC=@pcc and Fecha between @fechaini and @fechafin and EmpleadoID=@empleado and EstacionID = @EstacionID and productoid=@producto--and Cara = 2
order by Cara,Manguera,volumen

select * from solicitud where empresaid=89 order by 1 desc

select * from lecturasurtidor where numerolectura=4890 and estacionid=642
select top 100 * from processfccoremovimiento where estaciondestinoid=172 order by 1 desc

select * from configuracionempresa where codigo=90 and empresaid=44 --216
update configuracionempresa set valor=3000 where codigo=90 and empresaid=44


declare @estacion int =784
declare @lectura int =4577
declare @producto int =39783

declare @lectura int =39396 		 
declare @estacionid int =1
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID = @EstacionID ))
select DineroInicial,DineroFinal,Prefijo,FechaFinal,Factura,Fecha,EmpleadoID,PCC,Cara,Manguera,PPU,PPUAlterno,Volumen,Valor from VentasporSurtidor
where ProductoID in(1) and PCC=@pcc and Fecha between @fechaini and @fechafin and EmpleadoID=@empleado and EstacionID = @EstacionID --and productoid=@producto--and Cara = 2
order by fecha desc
 
select * from tramalog where trama like 'MFA329;F2;%' and fechacaptura between '2024-07-06 06:40:45.990' and '2024-07-06 11:59:59.530' order by 1 desc

select facturaconvertida,  * from encabezadofacturaventas where prefijo='MOLP' and numerofactura in (793026, 793025)

select * from encabezadofacturaventas where estacionid=642 and prefijo='MOLP' and numerofactura in (259840)
select * from detallefacturaventas where estacionid=642 and prefijo='MOLP' and numerofactura in (259840)
select * from ventasporsurtidor where fecha='2023-03-05 19:38:05.830'


	


select eselectronica, facturaconvertida, * from encabezadofacturaventas where estacionid=694 and prefijo=' CAN' and numerofactura=377780

select * from cliente where NOMBRE LIKE '%DINO OIL%'

select * from clientevehiculo where clienteid=73798

select * from EMPRESA where RAZONSOCIAL like '%prox%'


select * from ventasporsurtidor where 

select * from producto where empresaid=62


EstacionID= and NumeroLectura=  

  select * from configpccestacion where   pcc='MFC555'  --mangueraid in (2765, 1421)--
--1422
--1423
--2763
--2762
select top 50 * from lecturasurtidor where estacionid=159 and surtidorid=431 order by 1 desc --2762

select * from lecturasurtidor where estacionid=23 and numerolectura=53251 and productoid=1 --order by fechaini, productoid 

select * from calibraciones where estacionid=159 and Fecha between '2022-09-04 15:12:04.000' and '2022-09-04 15:42:53.000' and mangueraid in (1422 ,1423 ,2763 ,2762) order by 1 desc

select * from lecturasurtidor where estacionid=418 and numerolectura=12798 and productoid=9447 --order by fechaini, productoid 

select * from cliente where clienteid=3974

select * from clientesestacion where clienteid=3974 and estacionid=418

select * from detallelistaprecios where listapreciosid=5839

select * from lecturasurtidor where estacionid=182 and numerolectura=20194 and productoid=2 --order by fechaini, productoid 

select * from Tanque where TanqueID in (995, 994, 993, 992)




select listapreciosid, * from cliente where clienteid=62042 --83893  82044
83893
select * from clientesestacion where clienteid=82044 and estacionid=332
select * from detallelistaprecios where listapreciosid=3918 and productoid=2 --9480,00

--EMM8	830445
--EMM8	830700
--EMM9	51879
select * from cliente where clienteid=40296

SARMIENTO RODRIGUEZ ISMAEL cc.	19258988al 
 FLOTA VALLE DE TENZA y reportan con un saldo de 235.000.000 millones.  
19258988


 --CR 	1518949 
--select * from lecturasurtidor where estacionid=28  and NumeroLectura=16496 and productoid=2

 select ConceptoFacturaVentaID, * from EncabezadoFacturaVentas where estacionid=54 and Prefijo='EMM8' and NumeroFactura=855540  

 select * from detallefacturaventas where estacionid=54 and Prefijo='EMM8' and NumeroFactura=855540  
 update  detallefacturaventas set descuento=0 where estacionid=54 and Prefijo='EMM8' and NumeroFactura=855540  

select * from lecturasurtidor where estacionid=54 and numerolectura=57749 and productoid=2

select top 100 * from where cliente where cupocredito>100000000 order by 1 desc


UPDATE LecturaSurtidor SET ValorUnitario=9280,  LecturaInicial = 6074267, LecturaFinal = 6192567, ValorIni = 33896196, ValorFin = 34954534 WHERE LecturaSurtidorID = 24088231	and  estacionid=202								

select * from lecturasurtidor where estacionid=202  and NumeroLectura=37924 and productoid=2

select automatica, * from encabezadoremisionventas where estacionid=515 and prefijo='R NC' and numero=4882
update encabezadoremisionventas set automatica=1 where estacionid=515 and prefijo='R NC' and numero=4882

update encabezadoremisionventas set automatica=1 where estacionid=515 and prefijo='R NC' and numero=4882

select * from detallenotacredito where estacionid=3 and prefijo='EAQ5' and documento=686047
select * from detallenotacredito where estacionid=3 and prefijo='EAQ5' and documento=686402

select facturaconvertida, * from encabezadofacturaventas where estacionid=3 and prefijo='EAQ5' and numerofactura=686047
select facturaconvertida, * from encabezadofacturaventas where estacionid=3 and prefijo='EAQ5' and numerofactura=686402
--update encabezadofacturaventas set facturaconvertida=1 where estacionid=3 and prefijo='EAQ5' and numerofactura=686047
--update encabezadofacturaventas set facturaconvertida=1 where estacionid=3 and prefijo='EAQ5' and numerofactura=686402
select * from lecturasurtidor where estacionid=279 and numerolectura in (18046, 18047, 18048)

--27606
--27608
--27611
--27607

--update EncabezadoFacturaVentas set facturaconvertida=1 where estacionid=279 and Prefijo='EFI1' and Numerofactura in (696154, 696358, 696203, 696382, 696404, 696457)

select * from lecturamecanica where surtidorid=887 and convert(date, fechaini)='20230303' order by mangueraid

select * from LecturaSurtidor where EstacionID=418 and NumeroLectura in (14797, 14803) 

--3026
--3025

SELECT 8.7730219256-8.6270000000

SELECT * FROM CLIENTE WHERE NOMBRE LIKE '%VENTAS DE CONTADO DINO OIL%'
SELECT * FROM producto WHERE empresaid=31

select * from lecturasurtidor where estacionid=639 and numerolectura in (8438, 8439) and productoid=2

--UPDATE LecturaSurtidor SET ValorUnitario=8930,  LecturaInicial = 503367476, LecturaFinal = 503545162, ValorIni = 4449464333, ValorFin = 4451045875 WHERE LecturaSurtidorID = 25504146 AND estacionid=639									
--UPDATE LecturaSurtidor SET ValorUnitario=8930,  LecturaInicial = 503545163, LecturaFinal = 503688692, ValorIni = 4451045875, ValorFin = 4452312483 WHERE LecturaSurtidorID = 25507076 AND estacionid=639									
--UPDATE LecturaSurtidor SET ValorUnitario=8930,  LecturaInicial = 503688692, LecturaFinal = 503688692, ValorIni = 4452312483, ValorFin = 4452312483 WHERE LecturaSurtidorID = 25510293 AND estacionid=639									
--UPDATE LecturaSurtidor SET ValorUnitario=8930,  LecturaInicial = 503688692, LecturaFinal = 504117830, ValorIni = 4452312483, ValorFin = 4456257829 WHERE LecturaSurtidorID = 25513451 AND estacionid=639									


select top 20 * from lecturasurtidor where estacionid=639 and surtidorid=1344 and productoid=2 order by fechaini desc

select * from cliente where clienteid=158579 --EDZ4	17423   REDZ	23845

--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=796 AND NUMEROLECTURA in (973) and productoid=42277
--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=796 AND NUMEROLECTURA in (974) and productoid=42277
--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=796 AND NUMEROLECTURA in (1001) and productoid=42277
--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=796 AND NUMEROLECTURA in (1002) and productoid=42277


--Se generó nota crédito N° : 6707 y solicitud pendiente de aprobación #718153016

select * from EncabezadoFacturaVentas where Prefijo='ESS3' and NumeroFactura =334998 and EstacionID=28
select * from DetalleTrasladoRecibido where NumeroTraslado=227 and estacionid=58

select * from ventasporsurtidor where prefijo='RECV' and factura=60375
select * from ventasporsurtidor where prefijo='RECV' and factura=60374


select * from Solicitud where SolicitudID =718156776 and EstacionID=28
--Se generó nota crédito N° : 4946 y solicitud pendiente de aprobación #718156776
 --update  EncabezadoFacturaVentas set Anulado=1 WHERE Prefijo='IENA' and NumeroFactura =557519 and EstacionID=757
 --update Solicitud set EstadoID='A' where SolicitudID =718170909 and EstacionID=757
 
--13611
--13589

--delete from lecturasurtidor where estacionid=595 and numerolectura=13605		

--240 semanas


--13611
--13589
select * from lecturasurtidor where estacionid=318 and numerolectura in (23683, 23687) and mangueraid=3380 order by fechaini desc
select top 100 * from lecturasurtidor where estacionid=318 and surtidorid=957 and numerolectura in (23691, 23687, 23683) order by mangueraid, fechaini  

--DQSE 56833   MFC797  2024-03-08 18:30:51.280  empleado 11719  turno 12661 diesel
--DQSE 56802   MFC798  2024-03-08 14:45:07.260  empleado 7440   turno 12664  diesel

select * from ventasporsurtidor where estacionid=318 and fecha between '2024-03-23 04:54:55.000' and '2024-03-23 12:56:15.000' and pcc='MFC448' order  by 1 desc
select * from fcspos.logmovimiento where estacionid=318 and surtidorid='MFC448' and fecha between '2024-03-23 11:30:00.000' and '2024-03-23 13:30:00.000' order  by 1 desc
select * from fcspos.logmovimiento where estacionid=318 and  Id in (56588944,56588143)

select * from tramalog where TramaLogID in (169504572, 169503772, 169503656)

select * from lecturasurtidor where estacionid=913 and numerolectura=75 order by surtidorid, mangueraid, fechaini desc
select * from estacionresolucionfacturacion where estacionid=913 order by 1 desc
select * from estacionresolucionfacturacion where estacionid=863 order by 1 desc
select * from ParametrizacionFlujoEnvioDocumentoElectronico where estacionid=863 order by 1 desc


select * from ParametrizacionFlujoEnvioDocumentoElectronico where estacionid in (863, 913)
select * from cofiguracionempresa where empresaid=89
--45528
--45527
--45529

select * from LecturaSurtidor where EstacionID=297 and NumeroLectura in (168982, 168984, 168986, 168988)
--update LecturaSurtidor set lecturainicial=330077020 where EstacionID=297 and NumeroLectura in (168986) and lecturasurtidorid=29273069
--update LecturaSurtidor set lecturainicial=691089920 where EstacionID=297 and NumeroLectura in (168986) and lecturasurtidorid=29273070

--update LecturaSurtidor set fechaini='2024-04-04 04:04:06.000' where EstacionID=297 and NumeroLectura in (168988)

--113
--112

declare @lectura int =113
declare @estacion int =1421
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID=@estacion ))
select  clienteid, FormaPagoID,placa, ConceptoFacturaVentaID, mangueraid, cara, manguera, facturaconvertida, eselectronica, empleadoid, fecha, anulado, surtidorid, PCC, automatica,a.Prefijo,A.Numerofactura,b.ProductoID,b.Precio,  cast(b.precio*b.cantidad as decimal (12,2)) total, descuento, incremento,  cast(Cantidad as float) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc  and a.EstacionID=@estacion --and b.productoid=2
union
select clienteid, FormaPagoID,null, null, null, null, mangueraid, cara, manguera, empleadoid, fecha, anulado,  surtidorid, PCC,  automatica,a.Prefijo,A.Numero, b.ProductoID,b.Precio, cast(b.precio*b.cantidad as decimal (12,2)) total, descuento, incremento, cast(Cantidad as decimal (18,2)) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc and a.EstacionID=@estacion-- and b.productoid=2
order by  fecha asc

--Se generó nota crédito N° : 42 y solicitud pendiente de aprobación #718221753


select * from EncabezadoFacturaVentas where  EstacionID= 284 and NumeroFactura=167267 and Prefijo='EFM2'
select * from Solicitud where EstacionID=913 and  SolicitudID=718221753
select * from NotaCredito where EstacionID= 913 and NumeroNotaCredito=42    

update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 284 and NumeroFactura=167267 and Prefijo='EFM2'
update Solicitud set EstadoID='A' where EstacionID=284 and  SolicitudID=718244041
update NotaCredito set EstadoLiberacion='A' where EstacionID= 284 and NumeroNotaCredito=12554   


select prefijo, numerofactura, * from EncabezadoFacturaVentas where  EstacionID= 284 and NumeroFactura=167267 and Prefijo='EFM2'
select * from estacion where estacionid=284




select * from EncabezadoFacturaVentas where EstacionID= 84 and NumeroFactura= 	139474 and Prefijo='EBL6'
select * from Solicitud where EstacionID=84 and  SolicitudID=718214730
select * from NotaCredito where EstacionID= 84 and NumeroNotaCredito=27075 

update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 84 and NumeroFactura= 	139474 and Prefijo='EBL6'
update Solicitud set EstadoID='A' where EstacionID=84 and  SolicitudID=718214730
update NotaCredito set EstadoLiberacion='A' where EstacionID= 84 and NumeroNotaCredito=27075 

declare @lectura int =6862 		 
declare @estacionid int =567 
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID = @EstacionID)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID = @EstacionID ))
select DineroInicial,DineroFinal,Prefijo,FechaFinal,Factura,Fecha,EmpleadoID,PCC,Cara,Manguera,PPU,PPUAlterno,Volumen,Valor from VentasporSurtidor
where ProductoID in(13213) and PCC=@pcc and Fecha between @fechaini and @fechafin and EmpleadoID=@empleado and EstacionID = @EstacionID --and productoid=@producto--and Cara = 2
order by fecha desc

declare @lectura int =49629
declare @estacion int =37
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID=@estacion ))
select  clienteid, FormaPagoID,placa, ConceptoFacturaVentaID, mangueraid, cara, manguera, facturaconvertida, eselectronica, empleadoid, fecha, anulado, surtidorid, PCC, automatica,a.Prefijo,A.Numerofactura,b.ProductoID,b.Precio,  cast(b.precio*b.cantidad as decimal (12,2)) total, descuento, incremento,  cast(Cantidad as float) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc  and a.EstacionID=@estacion and b.productoid=1
union
select clienteid, FormaPagoID,null, null, null, null, mangueraid, cara, manguera, empleadoid, fecha, anulado,  surtidorid, PCC,  automatica,a.Prefijo,A.Numero, b.ProductoID,b.Precio, cast(b.precio*b.cantidad as decimal (12,2)) total, descuento, incremento, cast(Cantidad as decimal (18,2)) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc and a.EstacionID=@estacion and b.productoid=1
order by  cantidad asc


select * from Solicitud where EstacionID=668 and  SolicitudID=718190659
select * from NotaCredito where EstacionID= 668 and NumeroNotaCredito=1004
--SELV	93959
--SELV	93956
update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 769 and NumeroFactura= 	369281 and Prefijo='GRA1'
update Solicitud set EstadoID='A' where EstacionID=769 and  SolicitudID=718214120
update NotaCredito set EstadoLiberacion='A' where EstacionID= 769 and NumeroNotaCredito=515     

select * from encabezadofacturaventas where estacionid=686 and prefijo='chme' and numerofactura=30558 

update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 686 and prefijo='chme' and numerofactura=30558 
update Solicitud set EstadoID='A' where EstacionID=686 and  SolicitudID=718244124
update NotaCredito set EstadoLiberacion='A' where EstacionID= 686 and NumeroNotaCredito=1580      


Select  * from EncabezadoFacturaVentas where NumeroFactura =576131 and Prefijo = 'CHMO' and EstacionID=686	
update  EncabezadoFacturaVentas set Anulado=1 where NumeroFactura =576131 and Prefijo = 'CHMO' and EstacionID=686	
 
	
Select * from Solicitud where SolicitudID=718188785
update Solicitud set EstadoID= 'A' where SolicitudID=718188785

select * from NotaCredito where EstacionID=686 and NumeroNotaCredito in (1337)
update NotaCredito set EstadoLiberacion='A' where EstacionID=686 and NumeroNotaCredito=1337 

select * from detallefacturaventas where estacionid=41 and prefijo='CHMO' and numerofactura=576131 
--update detallefacturaventas set precio=4835, descuento=3955 where estacionid=41 and prefijo='EB3W' and numerofactura=58059

select listapreciosid, * from cliente where clienteid=23005
select * from clientesestacion where clienteid=23005 and estacionid=41
select * from detallelistaprecios where listapreciosid in (select listapreciosid from clientesestacion where clienteid=23005 and estacionid=41)

select  a.Fecha, a.EmpleadoID, a.Prefijo, a.Numero, ProductoID, Cantidad, Precio, (Cantidad*Precio) Valor, PCC, Cara, MangueraID  from EncabezadoremisionVentas a join DetalleremisionVentas b on a.EstacionID=b.EstacionID and a.Prefijo=b.Prefijo and a.Numero=b.Numero
where a.EstacionID=41 and ProductoID=2 
and Fecha > '2023-12-01 12:59:01.000' and clienteid=23005 order by 1 desc --FV


select * from VentasPorSurtidor where EstacionID=41 and ProductoID=2 and empleadoid=11146 
and Fecha between '2023-12-01 12:59:01.000' and '2023-12-01 18:56:45.000' order by 1 desc --VPS

--9620,00
--EBW5	20957
--EBW5	20824


--update detalleremisionventas set incremento=660 where estacionid=29 and prefijo='REPM' and numero=16134


select * from Encabezadoremisionventas where EstacionID=669 and Prefijo='RPZS' and Numero in (16235)
select * from detalleremisionventas where EstacionID=669 and Prefijo='RPZS' and Numero in (16235)
select * from ventasporsurtidor where estacionid=86 and fecha='2023-08-11 09:30:34.400' 

select * from lecturasurtidor where numerolectura=10449 and estacionid=514 and productoid=10914

--NumeroLectura	ProductoID	EmpleadoID	Cantidad	ValorG	Valor	Diferencia	CantidadF	DiferenciaF
--10449	10914	11454	871.780	8491156,68	7869997,00	621159,68	1000.22	722783.910000


--6883  1     6887	2

select * from clientesestacion where clienteid=158627 and estacionid=428
select * from detallelistaprecios where listapreciosid=3543

select * from clientechip where clienteid=103804
select * from vehiculo where vehiculoid in ()

select * from lecturasurtidor where estacionid=148 and numerolectura in (29261,29262,29263,29264,29265) and productoid=1
--ATL1	362999  Se generó nota crédito N° : 8389 y solicitud pendiente de aprobación #718155574
--ATL1	363879  Se generó nota crédito N° : 8390 y solicitud pendiente de aprobación #718155575
--ATL1	364155  Se generó nota crédito N° : 8391 y solicitud pendiente de aprobación #718155576
--ATL1	364829  Se generó nota crédito N° : 8392 y solicitud pendiente de aprobación #718155577
--ATL1	365417  Se generó nota crédito N° : 8393 y solicitud pendiente de aprobación #718155578

select * from encabezadofacturaventas  where estacionid=913 and prefijo='RG' and numerofactura in (11833)
select * from detallefacturaventas where estacionid=913 and prefijo='RG' and numerofactura in (11833)
select * from ventasporsurtidor where estacionid=913 and prefijo='RG' and factura in (11833)
select * from tramalog where trama like 'MFA612;%' and fechacaptura between '2024-04-03 18:39:31.370' and '2024-04-04 08:50:28.710' order by 1 desc
select * from tramalog where TramaLogID in (173585201, 173714657, 173714318) order by 1 desc
select * from fcspos.logmovimiento where surtidorid='MFA612' and fecha between '2024-04-03 18:39:31.370' and '2024-04-04 08:50:28.710' and posicionid=9 order by 1 desc

--update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 913 and NumeroFactura=11833 and Prefijo='RG'
--update Solicitud set EstadoID='A' where EstacionID=913 and  SolicitudID=718223620
--update NotaCredito set EstadoLiberacion='A' where EstacionID= 913 and NumeroNotaCredito=48 

declare @lectura int =70289
declare @estacion int =54
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID=@estacion ))
select  clienteid, FormaPagoID,placa, ConceptoFacturaVentaID, cara, manguera, facturaconvertida, eselectronica, empleadoid, fecha, anulado, PCC, automatica,a.Prefijo,A.Numerofactura,b.ProductoID,b.Precio, descuento, incremento,  cast(Cantidad as float) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc  and a.EstacionID=@estacion --and b.productoid=2
union
select clienteid, FormaPagoID,null, null, null, null, cara, manguera, empleadoid, fecha, anulado, PCC,  automatica,a.Prefijo,A.Numero, b.ProductoID,b.Precio, descuento, incremento, cast(Cantidad as decimal (18,2)) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc and a.EstacionID=@estacion --and b.productoid=2
order by  fecha  asc

declare @lectura int =576
declare @estacion int =54
declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura and EstacionID=@estacion)
declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura and EstacionID=@estacion ))
select  clienteid, FormaPagoID,placa, ConceptoFacturaVentaID, cara, manguera, facturaconvertida, eselectronica, empleadoid, fecha, anulado, PCC, automatica,a.Prefijo,A.Numerofactura,b.ProductoID,b.Precio, descuento, incremento,  cast(Cantidad as float) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc  and a.EstacionID=@estacion and b.productoid=2
union
select clienteid, FormaPagoID,null, null, null, null, cara, manguera, empleadoid, fecha, anulado, PCC,  automatica,a.Prefijo,A.Numero, b.ProductoID,b.Precio, descuento, incremento, cast(Cantidad as decimal (18,2)) Cantidad--,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where a.FECHA between @fechaini and @fechafin  and EmpleadoID=@empleado and PCC=@pcc and a.EstacionID=@estacion and b.productoid=2
order by  fecha  asc

select * from empleado where empleadoid=16125 order by 1 desc

--Se generó nota crédito N° : 116138 y solicitud pendiente de aprobación #718320475

select * from EncabezadoFacturaVentas where  EstacionID= 54 and NumeroFactura=2 and Prefijo='RGPS'
select EstadoID, * from Solicitud where EstacionID=54 and  SolicitudID=718320475
select EstadoLiberacion, * from NotaCredito where EstacionID= 54 and NumeroNotaCredito=116138   

update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 913 and NumeroFactura=2 and Prefijo='RGPS'
update Solicitud set EstadoID='A' where EstacionID=913 and  SolicitudID=718222313
update NotaCredito set EstadoLiberacion='A' where EstacionID= 913 and NumeroNotaCredito=43

select * from EncabezadoFacturaVentas where  EstacionID= 913 and NumeroFactura=3 and Prefijo='RGPS'
select * from Solicitud where EstacionID=913 and  SolicitudID=718222314
select * from NotaCredito where EstacionID= 913 and NumeroNotaCredito=44   

update EncabezadoFacturaVentas set Anulado =1 where EstacionID= 913 and NumeroFactura=3 and Prefijo='RGPS'
update Solicitud set EstadoID='A' where EstacionID=913 and  SolicitudID=718222314
update NotaCredito set EstadoLiberacion='A' where EstacionID= 913 and NumeroNotaCredito=44

select * from VentasPorSurtidor where Factura=87415 and Prefijo='ECX5'  and EstacionID=189 
select Anulado,facturaconvertida,EsElectronica,* from EncabezadoFacturaVentas where NumeroFactura=87415 and Prefijo='ECX5'  and EstacionID=189 
select * from DetalleFacturaVentas where  NumeroFactura=87415 and Prefijo='ECX5'  and EstacionID=189

select * from InfoCarteraSaldosClienteEds where ClienteID=8368
select top 10* from Solicitud where ClienteID=8368 order by FechaCreacion desc


select * from cliente where clienteid=282324

select facturaconvertida, * from encabezadofacturaventas where estacionid=183 and prefijo='ECQ6' and numerofactura in (150897, 150898, 150901, 150989, 150930)
--update encabezadofacturaventas set facturaconvertida=1 where estacionid=183 and prefijo='ECQ6' and numerofactura in (150897, 150898, 150901, 150989, 150930)

select * from cliente where clienteid=103804
select * from clientesestacion where clienteid=103804 and estacionid=332
select * from detallelistaprecios where listapreciosid=3918

select * from lecturasurtidor where estacionid=115 and surtidorid=1525 order by 1 desc
**
select * from encabezadofacturaventas where convert(Date,fecha)='20220923' and aprobada=0 and estacionid=359



select * from detalleconsignaciones where numeroconsignacion in ('2022092302', '2022092301', '023880731') and estacionid=359

select * from lecturasurtidor where numerolectura=164686 and estacionid=115
update lecturasurtidor set fechafin='2023-03-05 21:00:00.000' where numerolectura=164686 and estacionid=115

select * from consignaciones where estacionid=359 order by 1 desc --023880731

select * from LogInterfacesSap
where TipoDocumentoFuel='CONS'  and DocumentoFuel in ('023880731') and eds=359

 select * from lecturasurtidor where estacionid=115 order by 1 desc

select * from encabezadofacturaventas  where estacionid=126 and  prefijo='EB9H' and numerofactura in (60200)
select * from detallefacturaventas  where estacionid=126 and  prefijo='EB9H' and numerofactura in (60200)

--7,6335877863	70000,000000371
select top 500 * from tramalog where trama like '%;F3;%' order by 1 desc

select * from empleado where empleadoid=11384

select * from LecturaMecanica where EstacionID=318 order by 1 desc 

select * from LecturaMecanica where EstacionID=251 and FechaIni in ('2022-07-17 05:06:43.000', '2022-07-17 05:09:38.000')

select * from configpccestacion where surtidorid=957

select * from LecturaSurtidor where EstacionID=251 and NumeroLectura=12252 --and EmpleadoID=14965

select * from LecturaSurtidor where EstacionID=251 and convert(date,FechaIni)='20220722'



select * from cierreturno where pcc='MFC672' order by 1 desc
select TOP 100 * from cierreturno where EMPRESAID=3 order by 1  desc


select * from producto where productoid in (53
,3584
,3584
,3586
,3584
,3586
,3586
,3586
,9708)




SELECT * FROM DetalleTramaLog WHERE TramaLogID=27095910




SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20230512' and a.EstacionID=38 and b.ProductoID>=1 order by fecha desc --/and pcc= 'MFC196'/  

  select * from empleado where empleadoid=14085
  MFA124
 EAJ4	902012
EAJ4	902012
EAJ4	902012
EAJ4	902012

14396
3066

  SELECT * FROM CONFIGPCCESTACION WHERE PCC='MFA117' --1582

  select * from lecturasurtidor where estacionid=77 and numerolectura=30497

  select top 10 numerolectura, l.empleadoid, e.nombre, estacionid, surtidorid, mangueraid, productoid, valorunitario, fechaini, fechafin, lecturainicial, lecturafinal, valorini, valorfin, cierreid, l.empresaid from lecturasurtidor l join empleado e on l.empleadoid=e.empleadoid where surtidorid=1425 order by 1 desc

  select * from encabezadofacturaventas where estacionid=516 and prefijo='  T0' and numerofactura=634485
  select * from DetalleNotaCredito where  DetalleNotaCreditoID=4381353 and EstacionID=516
--update DetalleNotaCredito set Documento=634486 where DetalleNotaCreditoID=4381353 and EstacionID=516
--update EncabezadoFacturaVentas set PCC='MFA117', SurtidorID=1418 where estacionid=516 and prefijo='  T0' and numerofactura=634485
--update DetalleNotaCredito set Documento=634485 where DetalleNotaCreditoID=4381353 and EstacionID=516

ESSO	872816
ESSO	872255
ALEX ANDRES ARTEAGA ALTAMIRANDA
  --333	4628	SANDRA MILENA LONDOÑO MORALES	29739	1494	ADMINISTRADOR	MFA219	2022-09-05 21:07:13.000	2022-09-05 21:08:07.000	0.016666
  --EDVM	7789

    SELECT * FROM NOTACREDITO WHERE NUMERONOTACREDIO='CG  ' AND DOCUMENTO=23683
  SELECT * FROM DETALLENOTACREDITO WHERE PREFIJO='CG  ' AND DOCUMENTO=23683

12895
14657

11988
15243

select * from encabezadofacturaventas where prefijo='PT  ' and numerofactura=343083 and estacionid=557 --14657 2023-01-06 05:57:36.000
--update encabezadofacturaventas set fecha='2023-01-06 07:57:36.000', empleadoid=15244 where prefijo='PT  ' and numerofactura=343083 and estacionid=557


    select em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=536 AND CargoID=3 and em.estado=1 
  	
  --EBS6 175862 
  	
select * from encabezadofacturaventas where estacionid=20 and prefijo ='EMAP' and NUMEROFACTURA=423035 --2022-08-18 07:14:38.000
select * from detallefacturaventas where estacionid=165 and prefijo ='EBS6' and NUMEROFACTURA=175862 --2022-08-18 07:14:38.000

select * from empresa where nombre like '%abelgo%'

SELECT * FROM BALANCE WHERE ESTACIONID=557 AND FECHA='2023-01-06'
--UPDATE BALANCE SET CERRADO=1 WHERE BalanceID=4381524

select * from cliente where clienteid=26
select * from lecturasurtidor where estacionid=115 and surtidorid=1525 order by 1 desc

select top 500 * from tramalog where trama like '%MFC016;F1;%' order by 1 desc

select * from vale where codigovale='3QY9JTJQ' AND ValeID=198506
select * from encabezadoremisionventas where placa='3QY9JTJQ'
select * from encabezadofacturaventas where placa='3QY9JTJQ'

  select em.EmpleadoID, em.nombre, Cedula, CargoID, es.Nombre, * 
  from EmpleadoEstacion e 
  join Empleado em on e.EmpleadoID=em.EmpleadoID 
  join Estacion es on e.EstacionID=es.EstacionID 
  where e.EstacionID=35 AND CargoID=3

  select * from encabezadofacturaventas where estacionid=333 and prefijo='SMIG' and numerofactura=652244
  select * from detallenotacredito where estacionid=35 and documento=82105



--2023-04-28 19:07:10.000

select * from cliente where nit='1088337246'
select * from cliente_programa where clienteid=65418

select * from configpccestacion where estacionid=794 --MFA344	1652

SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni)='20230428'  and l.EstacionID=794 and pcc='MFA344 '  --and l.empleadoid=16597
order BY l.FechaIni DESC --2023-04-28 18:36:46.270   MFA344

select * from lecturasurtidor where surtidorid=303 and estacionid=76 and fechaini>='2023-05-28 12:00:00.000' order by numerolectura desc
select * from empleado where empleadoid in (12486)
SELECT * FROM estacion WHERE estacionid=2

select * from cierreturno where empresaid=3 order by 1 desc

select * from lecturasurtidor where estacionid=252 and surtidorid=1045 and convert(date,fechaini) between '20240409' and '20240410' order by 1 desc
--update lecturasurtidor set cierreid=26066 where estacionid=139 and numerolectura=26066
--2023-10-22 06:03:45.970    2023-10-22 14:02:35.000   MFC558

--FACTURAS FUERA DE TURNOS  


select Fecha,EmpleadoID, clienteid, EsElectronica,automatica, ventaportanque, facturaconvertida, Pcc, surtidorid, cara,Manguera,ConceptoFacturaVentaID,automatica,a.Prefijo,A.Numerofactura,anulado,b.ProductoID,b.Precio,incremento,b.Descuento,cast(Cantidad as float) Cantidad,(cast(Cantidad as float)* Precio) Valor --,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID ) PrecioLectura
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE,a.FECHA) between '20240701' and '20240710' and a.estacionId=2 and productoid<6  --and ConceptoFacturaVentaID=1 --and empleadoid=13347
and (SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) is null
 order by fecha desc 

--REMISIONES FUERA DE TURNOS 
 
select Fecha,EmpleadoID,Pcc,cara,Manguera,automatica,a.Prefijo,A.Numero,anulado,b.ProductoID,b.Precio,incremento,b.Descuento,cast(Cantidad as float) Cantidad,(cast(Cantidad as float)* Precio) Valor --,l.ValorUnitario PrecioLectura,l.ValorUnitario - b.Precio descu,*
,(Select Top 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID ) PrecioLectura
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where CONVERT(DATE,a.FECHA) between '20240701' and '20240710' and a.estacionId=2  and productoid<6 
and (SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) is null
order by fecha desc 


select * from empleado where empleadoid=4464
select * from empleado where empleadoid=11240
select * from empleado where nombre='CRISTIAN JOHAN DE JESUS GARCIA'


select * from LecturaSurtidor where estacionid =778 and SurtidorID=1607  order by fechaini desc


SELECT * FROM CONCEPTOFACTURAVENTA



select * from encabezadofacturaventas where EstacionID=115 and Prefijo='EDF2' and NumeroFactura in (198)
update EncabezadoFacturaVentas set PCC='MFA410', SurtidorID=178 where EstacionID=115 and Prefijo='EDF2' and NumeroFactura in (198)
000297402
select * from configpccestacion where pcc='MFA410'
select * from surtidor where surtidorid=178

select top 10 * from LecturaSurtidor where estacionid =345 and SurtidorID=783 order by 1 desc
select * from ventasporsurtidor where estacionid=345 and pcc='MFC129' and fecha between '2024-03-19 13:35:26.020' and '2024-03-19 20:18:30.720' order by cara, fecha
--2024-03-19 13:35:27.020     2024-03-19 20:18:29.720  emp 17402       MFC129
select  * from configpccestacion where pcc='MFC129'

select * from cliente where nit='93288748'
select * from clientesestacion where clienteid=309692
select * from listaprecios where listapreciosid=3729
select * from detallelistaprecios where listapreciosid=3729



select * from estacion where estacionid in (130, 127)

insert into LecturaMecanica values (1,18936,904,1874,6665,1,17160,'2024-03-19 04:50:12.000','2024-03-19 04:50:13.000',363825000,363825000,3,NULL)
insert into LecturaMecanica values (1,18936,904,1874,6666,2,10450,'2024-03-19 04:50:12.000','2024-03-19 04:50:13.000',80692000,80692000,3,NULL)
insert into LecturaMecanica values (1,18936,904,1874,6667,1,17160,'2024-03-19 04:50:12.000','2024-03-19 04:50:13.000',165303000,165303000,3,NULL)
insert into LecturaMecanica values (1,18936,904,1874,6668,2,10450,'2024-03-19 04:50:12.000','2024-03-19 04:50:13.000',60279000,60279000,3,NULL)

insert into LecturaMecanica values (2,18936,904,1875,6673,1,17160,'2024-03-19 04:50:15.000','2024-03-19 04:50:16.000',1112190000,1112190000,3,NULL)
insert into LecturaMecanica values (2,18936,904,1875,6674,2,10450,'2024-03-19 04:50:15.000','2024-03-19 04:50:16.000',762568000,762568000,3,NULL)
insert into LecturaMecanica values (2,18936,904,1875,6675,1,17160,'2024-03-19 04:50:15.000','2024-03-19 04:50:16.000',1416759000,1416759000,3,NULL)
insert into LecturaMecanica values (2,18936,904,1875,6676,2,10450,'2024-03-19 04:50:15.000','2024-03-19 04:50:16.000',1100554000,1100554000,3,NULL)




EXEC sp_GetTramaSurtidor 207,'MFC738;F2;2C0;2D0;2B20240211054535160;4B1007494813;0E2;0F1;0D9560;1D211316;1C2020180;0B2;10171;1B0;12;220;1E0;2E;15;5E9560;5F2020180;11;0C0;TV1;DI18587407;DF20607587;IP223;IT7;FF20240211060205870;A5;VE2020180;DTPRINT;DDNA;OB;CMHAND207-02;V-4.6.5;ES207'
EXEC sp_GetTramaSurtidor 207,'MFC738;F2;2C0;2D0;2B20240211150413310;4B1007494813;0E2;0F1;0D9560;1D280436;1C2594033;0B2;10197588;1B0;12;220;1E2;2E;15;5E9250;5F2594033;111035126795;0C0;TV0;DI20607587;DF23201620;IP226;IT7;FF20240211153435440;A5;VE2594033;DTNA;DDNA;OB;CMHAND207-02;V-4.6.5;ES207'
EXEC sp_GetTramaSurtidor 207,'MFC738;F2;2C0;2D0;2B20240212051411670;4B1007409120;0E2;0F1;0D9560;1D142621;1C1363456;0B2;10171;1B0;12;220;1E0;2E;15;5E9560;5F1363456;11;0C0;TV1;DI23301620;DF24665076;IP608;IT10;FF20240212052703570;A5;VE1363456;DTPRINT;DDNA;OB;CMHAND207-03;V-4.6.5;ES207'
EXEC sp_GetTramaSurtidor 207,'MFC738;F2;2C0;2D0;2B20240212062045820;4B1007409120;0E2;0F1;0D9560;1D120293;1C1150000;0B2;10171;1B0;12;220;1E0;2E;15;5E9560;5F1150000;11;0C0;TV1;DI24665076;DF25815076;IP609;IT10;FF20240212063513280;A5;VE1150000;DTPRINT;DDNA;OB;CMHAND207-03;V-4.6.5;ES207'
EXEC sp_GetTramaSurtidor 207,'MFC738;F2;2C0;2D0;2B20240212101000110;4B1007409120;0E2;0F1;0D9560;1D109522;1C1047030;0B2;10171;1B0;12;220;1E0;2E;15;5E9560;5F1047030;11;0C0;TV1;DI25815076;DF26862106;IP621;IT10;FF20240212102136450;A5;VE1047030;DTPRINT;DDNA;OB;CMHAND207-03;V-4.6.5;ES207'

select * from ventasporsurtidor where estacionid=151 and empleadoid=11217 and fecha>='2023-03-30 20:00:00.000' and pcc='MFC565'

select * from cierreturno where empresaid=3 order by 1 desc

select * from encabezadofacturaventas where estacionid=224 and prefijo='eej1' and numerofactura=342027


select * from notacredito where estacionid=115 and numeronotacredito=8213
select * from detallenotacredito where estacionid=115  and prefijo='EDFO' and documento=4381

--update NotaCredito set Fecha='2023-02-17' where EstacionID=115 and NumeroNotaCredito=8206
update DetalleNotaCredito set Documento=4382 where EstacionID=115 and DetalleNotaCreditoID=4582152
update EncabezadoFacturaVentas set surtidorid=NULL, pcc=NULL, Fecha='2023-03-05 16:01:54.000' where estacionid= 115 and prefijo='EDFO' and numerofactura=4381
update DetalleNotaCredito set Documento=4381 where EstacionID=115 and DetalleNotaCreditoID=4582152

select * from encabezadofacturaventas where estacionid=115 and prefijo='EDFO' and numerofactura=4379
select * from notacredito where estacionid=115 and numeronotacredito=8214
select * from detallenotacredito where estacionid= 115 and prefijo='EDFO' and documento=4379

--update NotaCredito set Fecha='2023-02-17' where EstacionID=115 and NumeroNotaCredito=8206
update DetalleNotaCredito set Documento=4384 where EstacionID=115 and DetalleNotaCreditoID=4581475
update EncabezadoFacturaVentas set surtidorid=NULL, pcc=NULL,  Fecha='2023-03-05 15:00:00.000' where estacionid= 115 and prefijo='EDFO' and numerofactura=4383
update DetalleNotaCredito set Documento=4383 where EstacionID=115 and DetalleNotaCreditoID=4581475




SELECT * FROM DETALLENOTACREDITO WHERE ESTACIONID=642 and numeronotacredito=1617


update detallenotacredito set documento=238941 where ESTACIONID=642 AND DOCUMENTO=238940 and numeronotacredito=1617
update encabezadofacturaventas set empleadoid=13730 where estacionid=642 and prefijo='MOLP' and numero=238940  --13730
update detallenotacredito set documento=238940 where ESTACIONID=642 and numeronotacredito=1617


select * from lecturasurtidor where estacionid=279 and numerolectura in (18046, 18047, 18048)
update lecturasurtidor set empleadoid=10601 where estacionid=374 and numerolectura=11401
select * from lecturamecanica where estacionid=374 and fechaini='2023-01-13 23:36:02.000'
select * from mvtoturno where estacionid=374 and numerolectura=11401

select * from empleado where empleadoid=17402

select * from CONCEPTOFACTURAVENTA


select * from LecturaSurtidor where EstacionID=64 and numerolectura in (32806)

select * from LecturaSurtidor where EstacionID=64 and LecturaSurtidorID in (23297405)
update lecturasurtidor set numerolectura=(select top 1 (numerolectura+1) from lecturasurtidor where estacionid=64 order by numerolectura desc) where EstacionID=64 and LecturaSurtidorID in (23297405)

  select Nombre, Cedula, CargoID, * from EmpleadoEstacion e join Empleado em on e.EmpleadoID=em.EmpleadoID where EstacionID=187 and estado=1  and facturarsinlecturas=1

SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni)='20220928'  and l.EstacionID=118 --and pcc='MFC095 ' 
order BY l.FechaIni DESC

select  V.Placa, E.prefijo, E.numerofactura, D.cantidad, D.descuento, D.incremento, E.Fecha, D.Precio, V.DineroInicial, V.DineroFinal, V.Valor,V.ProductoID,V.PCC
from
EncabezadoFacturaVentas as E  
 join detallefacturaventas as D on E.numerofactura=D.numerofactura and E.prefijo=D.prefijo  and CONVERT(date,Fecha)='20220903'
 join VentasporSurtidor as V on E.NumeroFactura=V.Factura	and E.Prefijo=V.Prefijo and V.Placa like '%R%'  and e.estacionid=159 --and V.ProductoID=1 and V.PCC='MFC581' 
 order by 1 desc



select top 200 * from lecturasurtidor where estacionid=26 order by 1 desc



SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)='20230413' and a.EstacionID=595 and b.productoid=9447 order by precio desc --/and pcc= 'MFC196'/ 



select listapreciosid, * from cliente where clienteid=208013
select * from clientesestacion where clienteid=208013 and  EstacionID=751


select FacturaConvertida, * from EncabezadoFacturaVentas where estacionid=35 and  NumeroFactura in (803347,803359,803371,802833) and prefijo='EDR4' 
 select * from DetalleFacturaVentas where estacionid=35 and  NumeroFactura in (803347,803359,803371,802833) and prefijo='EDR4' 
 update  EncabezadoFacturaVentas set FacturaConvertida=1 where estacionid=35 and  NumeroFactura in (803347,803359,803371,802833) and prefijo='EDR4'



select * from lecturasurtidor where estacionid=31 order by 1 desc

insert into lecturasurtidor (numeroles) values ()
 -- 


select * from conceptofacturaventa where conceptofacturaventaid=133

13202
ELIZABETH SANCHEZ VELEZ

select * from empleado where empleadoid=12594


select * from lecturasurtidor where estacionid=696 and numerolectura IN (3115, 3116) and productoid in (2) order by mangueraid

select * from lecturasurtidor where estacionid=696 and numerolectura IN (3119, 3120) and productoid in (1) order by mangueraid

select top 10 * from lecturasurtidor where estacionid=696 and mangueraid=5310 order by 1 desc

select top 10 * from lecturasurtidor where estacionid=696 and mangueraid=5309 order by 1 desc

select top 10 * from lecturasurtidor where estacionid=696 order by 1 desc  --3159

select * from lecturasurtidor where estacionid=696 and lecturasurtidorid=22812101

update lecturasurtidor set numerolectura=3160 where estacionid=696 and lecturasurtidorid=22812101
select top 1 * from detallelistaprecios 
select top 1 * from EncabezadoFacturaVentas 
select top 1 * from DetalleFacturaVentas 
select top 1 listapreciosid, * from estacion 


select * from mvtoturno where estacionid=172 order by fecha desc

SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio, d.valor, (b.precio-d.valor) VentaError,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID 
join detallelistaprecios d on  b.productoid=d.productoid and p.productoid=d.productoid
join estacion e on e.estacionid=b.estacionid and e.listapreciosid=d.listapreciosid
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20230508' and a.EstacionID=172 and b.ProductoID>=1 and (b.precio-d.valor)>0 order by 1  desc--/and pcc= 'MFC196'/ 

select * from LecturaSurtidor where EstacionID=172 and CONVERT(date,fechaini)='20230508'  order by NumeroLectura desc
select * from LecturaSurtidor where EstacionID=172 and CONVERT(date,fechaini)='20230509'  order by NumeroLectura desc

select * from encabezadoremisionventas where EstacionID=172 and CONVERT(Date,Fecha)='20230509'
select * from LecturaSurtidor where EstacionID=172 and CONVERT(date,fechaini)='20230510'  order by NumeroLectura desc




select * from EncabezadoFacturaVentas where EstacionID=172 and CONVERT(Date,Fecha)='20230508'
select * from EncabezadoFacturaVentas where EstacionID=172 and CONVERT(Date,Fecha)='20230509'

SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numero, A.FormaPagoID [FP],a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, b.ProductoID P,b.Precio, d.valor, (b.precio-d.valor) VentaError,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoRemisionVentas a join DetalleRemisionVentas b
join Producto p on p.ProductoID=b.ProductoID 
join detallelistaprecios d on  b.productoid=d.productoid and p.productoid=d.productoid
join estacion e on e.estacionid=b.estacionid and e.listapreciosid=d.listapreciosid
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero
Where CONVERT(DATE ,a.FECHA)= '20230510' and a.EstacionID=172 and b.ProductoID>=1 and (b.precio-d.valor)>0 order by 1  desc--/and pcc= 'MFC196'/ 




SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20240701' and a.EstacionID=2 and b.ProductoID<6 order by b.productoid  desc--/and pcc= 'MFC196'/ 


	

SELECT aprobada, ClienteID,Placa, a.Prefijo , A.Numerofactura, A.FormaPagoID [FP], a.FacturaConvertida,a.PCC,a.SurtidorID, a.EmpleadoID EMP, fecha,cara C,Manguera M,automatica AU,anulado AN, EsElectronica El,b.ProductoID P,b.Precio,incremento [Inc],b.Descuento [Des], cast(Cantidad as decimal(10,3)) Cantidad
,(SELECT TOP 1 ValorUnitario from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID And ProductoID = b.ProductoID) PrecioLectura, p.Nombre
--,(SELECT TOP 1 convert(varchar,FechaIni,121) +' - '+ convert(varchar,FechaFin,121) from LecturaSurtidor l join configpccestacion c on c.mangueraid = l.mangueraid AND c.PCC = a.PCC Where a.Fecha between FechaIni And FechaFin  and EmpleadoID =a.EmpleadoID) FechaLectura
--, 'UPDATE EncabezadoFacturaVentas SET Fecha='''', EmpleadoID=, PCC='''', SurtidorID=,  WHERE Prefijo='''+a.Prefijo+''' and NumeroFactura='+cast(a.NumeroFactura as varchar)
From EncabezadoFacturaVentas a join DetalleFacturaVentas b
join Producto p on p.ProductoID=b.ProductoID
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura
Where CONVERT(DATE ,a.FECHA)= '20240730' and a.EstacionID=2 and b.ProductoID<6  order by precio desc  --/and pcc= 'MFC196'/ 


select * from lecturasurtidor where convert(date, fechaini)='20220824' and estacionid=187

select * from ProveedorAdquisicion where  Nit='25806070'
select * from ProveedorAdquisicion where  Nit='1010199988'
RIK_ARGENTINO@HOTMAIL.COM
rik_argentino@hotmail.com

select direccion, * from ProveedorAdquisicion where ProveedorAdquisicionID=1050 and Nit='1010199988'
update ProveedorAdquisicion set direccion='' where ProveedorAdquisicionID=1050 and Nit='1010199988'

select * from remisiondocumentogenerado where estacionid=64

select * from ProveedorAdquisicion where ProveedorAdquisicionID=155 and Nit='25806070'
--update ProveedorAdquisicion set Email='cesarmacias201919@gmail.com' where ProveedorAdquisicionID=155 and Nit='25806070'

select * from tramalog where trama like '%MFC177;F3;%' order by 1 desc

MFC177;F3;109900000156474E01;07PLAZO PTE;1E0;Z10;

select getdate()


select * from PrecioProductoProgramado where EstacionID=157 order by 1 desc




SELECT Producto.Nombre, DetalleListaPrecios.Valor, ProductoCodigoBarras.CodigoBarras, Empresa.EmpresaID
FROM Producto INNER JOIN DetalleListaPrecios ON Producto.ProductoID=DetalleListaPrecios.ProductoID
INNER JOIN ProductoCodigoBarras ON Producto.ProductoID=ProductoCodigoBarras.ProductoID
INNER JOIN empresa on Producto.empresaid=empresa.empresaid
WHERE Producto.ProductoID=9743 and DetalleListaPrecios.ListaPreciosId=143

select * from lecturasurtidor where empresaid=3 order by 1 desc
select top 5 * from lecturamecanica where estacionid=1 order by 1 desc

declare @estacion int =1
declare @lectura int =42868
declare @producto int =1
select e.nombre Empleado, ls.numerolectura LSurtidor, lm.numerolectura LMecanica from lecturasurtidor ls join lecturamecanica lm on ls.fechaini=lm.fechaini and ls.estacionid=lm.estacionid 
join empleado e on ls.empleadoid=e.empleadoid where ls.estacionid=@estacion and ls.numerolectura=@lectura and ls.productoid=@producto
order by 1 desc



SELECT DISTINCT L.EstacionID, E.EmpleadoID,Nombre,NumeroLectura,L.SurtidorID, Descripcion AS Cargo ,PCC,FechaIni, FechaFin ,
 DATEDIFF(MINUTE, FechaIni, FechaFin)/60.0 AS 'Horas Trabajadas'FROM LecturaSurtidor L
JOIN ConfigPCCEstacion C ON L.SurtidorID=C.SurtidorID 
JOIN Empleado E ON L.EmpleadoID=E.EmpleadoID join cargo v on v.CargoID=e.CargoID
WHERE CONVERT(date,FechaIni) between '20230412' and '20230414' and l.EstacionID=595 --and pcc='MFA344 ' 
order BY l.numerolectura DESC



select * from lecturasurtidor where estacionid=23 and numerolectura=55557 and productoid=1
select * from lecturasurtidor where estacionid=250 and numerolectura=10151 and productoid=2
select * from lecturasurtidor where estacionid=250 and numerolectura=10153 and productoid=2

 select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%bochic%'
 select * from balance where estacionid=595 and fecha='2023-04-13'
 --update balance set cerrado=0 where balanceid=4492321

   select * from configuracionempresa where empresaid=3


  select empresaid, regionalid, EsLocal, CentroCostos, * from estacion where nombre like '%mina%'


select * from consignaciones where estacionid=140   and numeroconsignacion in ('20221123', '202211231')--1905510932  --1905510924

select * from consignaciones  where DocumentoSap='1905510932'

select * from detallefacturaventas where estacionid=203 and prefijo='EDX1' and numerofactura=258639
--update  detallefacturaventas set descuento=650 where estacionid=106 and prefijo='ENFO' and numerofactura=29663

SELECT * FROM NotaCredito WHERE NotaCreditoID=2888741 and EstacionID=203  --
select * from DetalleNotaCredito where NumeroNotaCredito=13682 and EstacionID=203

SELECT * FROM PROCESSFCCOREMOVIMIENTO_DOCAPLICA where estaciondocumento=203 and prefijo='EDX1' and documento=258639

SELECT * FROM PROCESSFCCOREMOVIMIENTO_DOCAPLICA where ProcessFCCoreMovimiento_DocAplicaID=679706

delete PROCESSFCCOREMOVIMIENTO_DOCAPLICA where ProcessFCCoreMovimiento_DocAplicaID=679706

delete PROCESSFCCOREMOVIMIENTO_DOCAPLICA where estaciondocumento=203 and prefijo='EDX1' and documento=258639
where estacionid=203 and prefijo='EDX1' and numerofactura=258639
select * from cliente where clienteid=40552 order by 1 desc

select * from usuario where nombreusuario like '%romario%'

select * from lecturasurtidor where estacionid=595 and numerolectura=13621
select * from lecturamecanica where estacionid=137 and fechaini='2023-06-01 14:00:00.000'

select * from 

select * from Usuarios_IN_Roles where UsuarioID=63

select * from ENCABEZADOFACTURAVENTAS where prefijo='EDR5' and numerofactura=86822  AND ESTACIONID=35
select * from detallefacturaventas where prefijo='EDR5' and numerofactura=86822 AND ESTACIONID=35

--UPDATE detallefacturaventas SET INCREMENTO=370 where prefijo='EDR5' and numerofactura=86822 AND ESTACIONID=35

select top 100 * from tramalog where trama like 'MFC121;%' order by 1 desc

select * from configuracionempresa where empresaid=3 and codigo=99

select * from estacionresolucionfacturacion where estacionid=374 and activo=1
select * from precioproductoprogramado where estacionid=374 ORDER BY 1 DESC

select top 10000 * from tramalog where trama like 'MFC171;F2;%' order by 1 desc

select * from estacionresolucionfacturacion where prefijo='EHIL' ORDER BY 1 DESC

select * from encabezadofacturaventas where estacionid=374 and Prefijo='EH1L' and numerofactura=22146 order by 1 desc
select * from encabezadofacturaventas where estacionid=374 and Prefijo='EH1L' and numerofactura=22146 order by 1 desc
select * from ventasporsurtidor where estacionid=374 and Prefijo='EH1L' and factura=22146 order by 1 desc


Declare @Fecha Date = '2024-08-29',
		@EstacionID INT = 670
Declare @LecturaProd as Table (NumeroLectura Int, ProductoID INt, EmpleadoID INT, FechaIni DATETIME, FechaFin DATETIME, PCC VARCHAR(6), Cantidad Decimal(18,3), ValorG Money, Valor Money, Diferencia Money)
--, CantidadF Decimal(18,3), DiferenciaF MONEY,    Calibraciones Decimal(18,3))

Insert INto @LecturaProd
SELECT numerolectura,ProductoID,EmpleadoID, FechaIni, FechaFin, cc.PCC,
CAST(SUM(((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))/1000)) AS DECIMAL (15,2)) Cantidad,
CAST(SUM(((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))/1000)*ValorUnitario) AS DECIMAL (15,2)) ValorG,
SUM(ValorFin-ValorIni) Valor,
(CAST(SUM(((CAST(lecturafinal AS DECIMAL (15,2))-CAST(LecturaInicial AS DECIMAL (15,2)))/1000)*ValorUnitario) AS DECIMAL (15,2))- SUM(ValorFin-ValorIni)) Diferencia 
FROM dbo.LecturaSurtidor as Lec
CROSS APPLY 
(
    Select TOP(1) SurtidorID, EstacionID, PCC  from dbo.configpccestacion as cp Where cp.SurtidorID = Lec.SurtidorID and cp.EstacionID = @EstacionID
) as cc --ON cc.SurtidorID = lec.SurtidorID and cc.EstacionID = @EstacionID
WHERE CONVERT(date,FechaIni)=@Fecha --and ProductoID=5
        AND lec.EstacionID = @EstacionID
GROUP BY NumeroLectura,ProductoID,EmpleadoID, FechaIni, FechaFin,cc.PCC
ORDER BY NumeroLectura
--***** select 55.56 - 53.00

--select * from @LecturaProd
--return 

--declare @lectura int = 21130
--declare @producto int = 11680
--declare @empleado int = (select top 1 EmpleadoID from LecturaSurtidor where NumeroLectura = @lectura)
--declare @fechaini datetime = (select top 1 fechaini from LecturaSurtidor where NumeroLectura = @lectura)
--declare @fechafin datetime = (select top 1 FechaFin from LecturaSurtidor where NumeroLectura = @lectura)
--declare @pcc varchar(10) = (select top 1 pcc from configpccestacion where surtidorid in(select top 1 SurtidorID from LecturaSurtidor where NumeroLectura =@lectura ))
--  CAST(LecturaInicial AS DECIMAL (15,2)))/1000)

select lp.NumeroLectura, ProductoID, EmpleadoID, Cantidad, ValorG, Valor, Diferencia,
(
select (
(select isnull(SUM(CAST(Cantidad AS DECIMAL (15,2))),0) Cantidad From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID   and automatica=1
)+
(select isnull(SUM(CAST(Cantidad AS DECIMAL (15,2))),0) Cantidad From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and automatica=1)
)) CantidadF,
(select (
(select isnull(SUM(Descuento * CAST(Cantidad AS DECIMAL (15,2))),0) Descuentos From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and automatica=1
)+
(select isnull(SUM(Descuento * CAST(Cantidad AS DECIMAL (15,2))),0) Descuentos From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and automatica=1
)
) -(
select(
(select isnull(SUM(Incremento * CAST(Cantidad AS DECIMAL (15,2))),0) Incremetos From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and automatica=1 
)
+
(select isnull(SUM(Incremento * CAST(Cantidad AS DECIMAL (15,2))),0) Incremetos From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and automatica=1
)
) )) DiferenciaF,
(select isnull(SUM( CAST(Cantidad AS DECIMAL (15,2))),0) from Calibraciones
where EstacionID = @EstacionID and Fecha between lp.FechaIni and lp.FechaFin and MangueraID in (select MangueraID from LecturaSurtidor
where NumeroLectura=lp.NumeroLectura and EstacionID = @EstacionID) and EmpleadoID=lp.EmpleadoID and ProductoID=lp.ProductoID) 
Calibraciones,
(select isnull(SUM( CAST(Cantidad AS DECIMAL (15,2))),0) from TrasladoEnviadoSurtidor t
join DetalleTrasladoEnviadoSurtidor d on d.NumeroTraslado=t.NumeroTraslado and t.EstacionID=d.EstacionID
where t.EstacionID = @EstacionID and Fecha between lp.FechaIni and lp.FechaFin and MangueraID in (select MangueraID from LecturaSurtidor
where NumeroLectura=lp.NumeroLectura) and EmpleadoID=lp.EmpleadoID and ProductoID=lp.ProductoID)
Traslados,
(select isnull(SUM(Precio * CAST(Cantidad AS DECIMAL (18,3))),0) Creditos From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID and FormaPagoID=2 
)[Facturas Credito],
(select isnull(SUM(Precio * CAST(Cantidad AS DECIMAL (15,2))),0) Incremetos From EncabezadoRemisionVentas a join DetalleRemisionVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.Numero = a.Numero and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID 
) Remisiones,
(select isnull(SUM(Precio * CAST(Cantidad AS DECIMAL (18,3))),0) Creditos From EncabezadoFacturaVentas a join DetalleFacturaVentas b
on b.EstacionID = a.EstacionID and b.Prefijo = a.Prefijo and b.NumeroFactura = a.NumeroFactura and a.EstacionID=b.EstacionID
Where a.EstacionID = @EstacionID and a.FECHA between lp.FechaIni and lp.FechaFin  and EmpleadoID=lp.EmpleadoID and PCC=lp.PCC and ProductoID = lp.ProductoID  
)[Valor Facturas]

FROM @LecturaProd as lp

--52209	1	-341006,60	  -2354.510000
--52209	2	258937,00	  0.000000
--52210	1	3919,90	      0.000000
--52210	3	16,90	      0.000000

select * from lecturasurtidor where estacionid=1 and numerolectura in (52210)  

--UPDATE LecturaSurtidor SET ValorUnitario=15310,  LecturaInicial = 472956060, LecturaFinal = 473064850, ValorIni = 84697501, ValorFin = 86366175 WHERE estacionid = 1 and LecturaSurtidorID = 30752657									


--UPDATE LecturaSurtidor SET ValorUnitario=16050,  LecturaInicial = 691168110, LecturaFinal = 691208010, ValorIni = 72062173, ValorFin = 73955580 WHERE estacionid = 297 and LecturaSurtidorID = 29281242									
--UPDATE LecturaSurtidor SET ValorUnitario=9590,  LecturaInicial = 330093380, LecturaFinal = 330133580, ValorIni = 72301325, ValorFin = 72843113 WHERE estacionid = 297 and LecturaSurtidorID = 29281241									
--UPDATE LecturaSurtidor SET ValorUnitario=16050,  LecturaInicial = 691089920, LecturaFinal = 691168110, ValorIni = 70807223, ValorFin = 72062173 WHERE estacionid = 297 and LecturaSurtidorID = 29273070									
--UPDATE LecturaSurtidor SET ValorUnitario=9590,  LecturaInicial = 330077020, LecturaFinal = 330093380, ValorIni = 72144432, ValorFin = 72301325 WHERE estacionid = 297 and LecturaSurtidorID = 29273069									

--UPDATE LecturaSurtidor SET ValorUnitario=20490,  LecturaInicial = 173494000, LecturaFinal = 173496020, ValorIni = 8127930, ValorFin = 8169320 WHERE estacionid = 1 and LecturaSurtidorID = 30752656									
--UPDATE LecturaSurtidor SET ValorUnitario=15310,  LecturaInicial = 472956060, LecturaFinal = 473064850, ValorIni = 84697501, ValorFin = 86363075 WHERE estacionid = 1 and LecturaSurtidorID = 30752657									
--UPDATE LecturaSurtidor SET ValorUnitario=20490,  LecturaInicial = 268753690, LecturaFinal = 268754180, ValorIni = 43372725, ValorFin = 43382765 WHERE estacionid = 1 and LecturaSurtidorID = 30752658									
--UPDATE LecturaSurtidor SET ValorUnitario=15310,  LecturaInicial = 281676450, LecturaFinal = 281765250, ValorIni = 60907017, ValorFin = 62266545 WHERE estacionid = 1 and LecturaSurtidorID = 30752659									


select * from lecturamecanica where estacionid=297 and fechaini='2024-04-03 04:57:41.000'
select * from lecturamecanica where estacionid=297 and fechafin='2024-04-03 13:04:38.000'


select * from estacion where estacionid=297


select * from lecturasurtidor where estacionid=913 and convert(date,fechaini)='20240328' order by surtidorid, mangueraid, fechaini 


select * from NotaCredito where NumeroNotaCredito in  (32625,32626) and EstacionID = 73

--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=139 AND NUMEROLECTURA in (26631) and productoid=2  ---71799.300000


--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=29 AND NUMEROLECTURA in (21245) and productoid=2 ---43666,60
--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=29 AND NUMEROLECTURA in (21265) and productoid=2 ---3215,60
--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=796 AND NUMEROLECTURA in (1002) and productoid=42277

--SELECT * FROM LECTURASURTIDOR WHERE ESTACIONID=106 AND NUMEROLECTURA=8131 AND PRODUCTOID=2 

--select * from cierreturno where pcc IN ('MFA074', 'MFA075', 'MFA274', 'MFA275') ORDER BY FECHAINI DESC
--SELECT * FROM CONFIGPCCESTACION WHERE ESTACIONID=106





SELECT * FROM EncabezadoFacturaVentas WHERE NumeroFactura=13537 AND Prefijo='ECV5' AND EstacionID=87
SELECT * FROM detalleFacturaVentas WHERE NumeroFactura=13537 AND Prefijo='ECV5' AND EstacionID=87

select * from cliente where nit='900606838' and empresaid=3



