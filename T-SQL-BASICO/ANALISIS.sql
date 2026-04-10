
/**
Autor : Cinthia Moquillaza
Fecha : 10/04/2026
Descripción: Consulta a la tabla factura para obtener la sumatoria por estado
**/


SELECT 
TOP 10 
SUM (MontoTotal)


FROM FACTURAS
where estado = 'Retirada'

SELECT 


TOP 10 *


FROM FACTURAS