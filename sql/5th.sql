USE ProyFinal
DECLARE @vendido INT
SET @VENDIDO = (SELECT count(CantidadVenta) FROM Detalle WHERE IdProducto = 2);
SELECT @Vendido




SELECT p.NombreProducto [Articulo],
p.StockProducto [Stock],
(SELECT count(CantidadVenta) FROM Detalle WHERE Detalle.IdProducto = p.IdProducto)[Vendido],
(p.StockProducto + (SELECT count(CantidadVenta) FROM Detalle WHERE Detalle.IdProducto = p.IdProducto))[Comprado],
p.EstadoProducto [Existencia],
p.PCProducto [Costo],
p.PVProducto [Precio Maximo]
-- p.PVProducto > p.PCProducto ? GANANCIA : Perdida [Perdida/Ganancia]
FROM Producto p











USE ProyFinal
GO
CREATE PROCEDURE EstadisticaProducto
AS

DROP TABLE IF EXISTS #TempProducto
CREATE TABLE #TempProducto(
	Articulo varchar(30),
	Stock int,
	Vendido int,
	Comprado int,
	Existencia bit,
	Costo decimal(9,1),
	PrecioMaximo decimal(9,1),
	PerdidaGanancia varchar(30)
)

DECLARE @nom varchar(30), 
@stock int, 
@vend int,
@comp int,
@exis bit,
@costo decimal(9,2),
@precio decimal(9,2),
@pog decimal(9,2),
@pogchar varchar(30);

DECLARE CursorEstCli CURSOR FOR
SELECT p.NombreProducto,
p.StockProducto,
(SELECT count(CantidadVenta) 
	FROM Detalle 
	WHERE Detalle.IdProducto = p.IdProducto
),
(p.StockProducto + (SELECT count(CantidadVenta) FROM Detalle WHERE Detalle.IdProducto = p.IdProducto)),
p.EstadoProducto,
p.PCProducto,
p.PVProducto,
p.PVProducto
FROM Producto p;

OPEN CursorEstCli
FETCH NEXT FROM CursorEstCli 
INTO @nom, @stock, @vend, @comp, @exis, @costo, @precio, @pog
WHILE @@FETCH_STATUS = 0 BEGIN
FETCH NEXT FROM CursorEstCli 
INTO @nom, @stock, @vend, @comp, @exis, @costo, @precio, @pog

IF @pog > @costo
SET @pogchar = 'GANANCIA'
ELSE
SET @pogchar = 'PERDIDA'

INSERT INTO #TempProducto VALUES(
	@nom, @stock, @vend, @comp, @exis, @costo, @precio, @pogchar
)

END -- FIN DEL WHILE
SELECT * FROM #TempProducto
CLOSE CursorEstCli
DEALLOCATE CursorEstCli
GO

EXEC estClientes








-----------------------------------------
-------------- MYSQL --------------------
-----------------------------------------
DROP TABLE IF EXISTS TempProducto;
CREATE TEMPORARY TABLE TempProducto(
	Articulo varchar(30),
	Stock int,
	Vendido int,
	Comprado int,
	Existencia bit,
	Costo decimal(9,1),
	PrecioMaximo decimal(9,1),
	PerdidaGanancia varchar(30)
);

DROP PROCEDURE IF EXISTS CursorEP;
DELIMITER $$
CREATE PROCEDURE CursorEP()
BEGIN
DECLARE nom varchar(30); 
DECLARE stock int;
DECLARE vend int;
DECLARE comp int;
DECLARE exis bit;
DECLARE costo decimal(9,2);
DECLARE precio decimal(9,2);
DECLARE pog decimal(9,2);
DECLARE pogchar varchar(30);

DECLARE FIN INTEGER DEFAULT 0;

DECLARE RunCursorEP CURSOR FOR
	SELECT p.NombreProducto,
	p.StockProducto,
	(SELECT count(CantidadVenta) 
		FROM Detalle 
		WHERE Detalle.IdProducto = p.IdProducto
	),
	(p.StockProducto + 
		(SELECT count(CantidadVenta) 
		FROM Detalle 
		WHERE Detalle.IdProducto = p.IdProducto)
	),
	p.EstadoProducto,
	p.PCProducto,
	p.PVProducto,
	p.PVProducto
	FROM Producto p;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIN = 1;
OPEN RunCursorEP;
	GetRunCursorEP: LOOP
		FETCH RunCursorEP
		INTO nom, stock, vend, comp, exis, costo, precio, pog;

		IF(pog > costo) BEGIN
			SET pogchar = 'GANANCIA';
		END
		ELSE
			SET pogchar = 'PERDIDA';
		
		INSERT INTO TempProducto VALUES(
			nom, stock, vend, comp, exis, costo, precio, pogchar
		);

		IF FIN = 1 THEN 
            LEAVE GetRunCursorEP;
        END IF;
    END LOOP GetRunCursorEP;
    SELECT * FROM TempProducto;
    CLOSE CursorEP;
END
$$ DELIMITER ;