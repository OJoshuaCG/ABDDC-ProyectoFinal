------------------------------------------------
-------------------- My SQL --------------------
------------------------------------------------
GO
DELIMITER $$
CREATE PROCEDURE betweenFechas(
    fecha1 DATE,
    fecha2 DATE
)BEGIN
SELECT v.NombreVendedor, 
	c.NombreCliente,
	c.ApellidoCliente,
	f.Total,
	f.Fecha	
FROM `dbo.facturas` f 
INNER JOIN `dbo.cliente` c 
	ON c.IdCliente = f.IdCliente
INNER JOIN `dbo.vendedor` v 
	ON v.IdVendedor = f.IdVendedor
WHERE f.Fecha BETWEEN fecha1 AND fecha2;
END
$$ DELIMITER ;
GO
CALL betweenFechas('2012-09-01', '2012-09-30');


GO
DELIMITER $$
CREATE PROCEDURE searchCliente(
    nomCliente varchar(20)
) BEGIN
SELECT DISTINCT c.NombreCliente,
	c.ApellidoCliente,
	p.NombreProducto	
FROM `dbo.facturas` f
INNER JOIN `dbo.cliente` c 
	ON c.IdCliente = f.IdCliente
INNER JOIN `dbo.Detalle` d
	ON d.num_fact = f.num_fact
INNER JOIN `dbo.Producto` p
	ON p.IdProducto = d.IdProducto
WHERE CONCAT(c.NombreCliente, ' ' ,c.ApellidoCliente) LIKE CONCAT('%',nomCliente,'%');
END
$$ DELIMITER ;
GO
CALL searchCliente('Juan');



------------------------------------------------
------------------ SQL SERVER ------------------
------------------------------------------------
USE ProyFinal
-- v = Vendedor		c = Cliente		f = Factura
-- Ingresar DOS FECHAS distanciadas
GO
CREATE PROCEDURE betweenFechas(
	@fecha1 DATE,
	@fecha2 DATE
) AS
SELECT v.NombreVendedor, 
	c.NombreCliente,
	c.ApellidoCliente,
	f.Total,
	f.Fecha	
FROM Facturas f 
INNER JOIN Cliente c 
	ON c.IdCliente = f.IdCliente
INNER JOIN Vendedor v 
	ON v.IdVendedor = f.IdVendedor
WHERE f.Fecha BETWEEN @fecha1 AND @fecha2
-- other solution
--WHERE @fecha1 <= f.Fecha and f.Fecha <= @fecha2
GO

EXEC betweenFechas '2012/09/01', '2012/09/30'



-- d = Detalle		p = Producsto
-- Ingresar UN nombre
GO
CREATE PROCEDURE searchCliente(
	@nomCliente varchar(20)
) AS
SELECT DISTINCT c.NombreCliente,
	c.ApellidoCliente,
	p.NombreProducto
FROM Facturas f
INNER JOIN Cliente c 
	ON c.IdCliente = f.IdCliente
INNER JOIN Detalle d
	ON d.num_fact = f.num_fact
INNER JOIN Producto p
	ON p.IdProducto = d.IdProducto
WHERE c.NombreCliente + ' ' +c.ApellidoCliente LIKE '%' + nomCliente + '%';
GO

EXEC searchCliente 'Juan'