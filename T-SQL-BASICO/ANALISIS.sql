
/**
Autor : Cinthia Moquillaza
Fecha : 10/04/2026
Descripción: Consulta a la tabla factura para obtener la sumatoria por estado
**/


--consulta total a la tabla factura y estado retirada

SELECT 
TOP 10 
SUM (MontoTotal)

FROM FACTURAS
where estado = 'Retirada'
go

--consulta a la tabla factura para obtener los 10 primeros registros

SELECT 

TOP 10 *

FROM FACTURAS
go