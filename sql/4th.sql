USE ProyFinal
GO
CREATE PROCEDURE EstadisticaCliente AS

declare @query varchar(4000)
declare @cols varchar(2000)
declare @head varchar(2000)

SET @cols = STUFF(
    (   
        SELECT DISTINCT ', ' + QUOTENAME(p.[NombreProducto])
        FROM [dbo].[Producto] p FOR XML
        PATH(''), TYPE 
    ).value('.','nvarchar(max)'), 1, 1, '');

SET @head = STUFF(
    (   
        SELECT DISTINCT 
        ', ISNULL(' + 
        QUOTENAME(p.[NombreProducto]) +
        ', 0) AS ' + 
        QUOTENAME(p.[NombreProducto])
        FROM [dbo].[Producto] p FOR XML
        PATH(''), TYPE 
    ).value('.','nvarchar(max)'), 1, 1, '');

--CONCATENAR QUERY FINAL
SET @query = 'SELECT [NombreCliente], '+@head+
    'from (
	select cl.[NombreCliente],p.[NombreProducto],detFac.[CantidadVenta] from [dbo].[Facturas] fac
	inner join [dbo].[Cliente] cl
	on fac.IdCliente = cl.IdCliente
	inner join [dbo].[Detalle]  detFac
	on detFac.num_fact = fac.num_fact
	inner join [dbo].[Producto]  p
	on p.IdProducto = detFac.IdProducto
	)x pivot (sum(CantidadVenta) for NombreProducto in ('+@cols+')) n'

EXECUTE(@query);

GO

EXEC EstadisticaCliente

