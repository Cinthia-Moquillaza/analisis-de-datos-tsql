--Lista todos los registros de la tabla principal (cabecera).

--Muestra solo las columnas: Numero, FechaEmision, MontoTotal.

begin

	SELECT TOP 10 
	Numero, FechaEmision, MontoTotal

	FROM FACTURAS

end


--Filtra los registros donde el Estado sea 'Redimida'.
--Obtén los comprobantes emitidos en el año 2018.

begin
	SELECT TOP 10 * 
	
	FROM FACTURAS
	where year(FechaEmision) = '2018'


end


DECLARE @ANIOUNO AS DECIMAL
DECLARE @ANIODOS AS DECIMAL

begin
	set @ANIOUNO = (

	SELECT TOP 10 
	sum(MontoTotal) 
	FROM FACTURAS
	where year(FechaEmision) = '2018'
	)
end

begin
	set @ANIODOS = (
	SELECT TOP 10 
	sum(MontoTotal) 
	FROM FACTURAS
	where year(FechaEmision) = '2017'
	) 
end

select @ANIOUNO as [SUMA ANIO 2018], @ANIODOS as [SUMA ANIO 2017]


-----Filtrados

--Muestra los registros donde MontoTotal > 5000.
begin

	SELECT TOP 10 *
	FROM FACTURAS
	where MontoTotal >10000

end


--Lista los registros cuya FechaVencimiento esté entre '2018-03-01' y '2018-03-31'.

begin
	SELECT TOP 10 * 
	
	FROM FACTURAS
	where FechaVencimiento between '20180301' and
	'20180331'
	
end


SELECT TOP (10) *
FROM FACTURAS
WHERE FechaVencimiento >= '2018-03-01'
  AND FechaVencimiento < '2018-04-01';

--Filtra los registros donde MonedaID = 1