GO
DELIMITER $$
CREATE PROCEDURE createCompra(
    idVen int,
    idProv int,
    subTotal decimal(18, 2)
) BEGIN
INSERT INTO `dbo.compra` VALUES(
    idVendedor,
    idProv,
    subTotal,
    subTotal * 0.18,
    subTotal * 1.18,
    NOW(),
    1,
    NULL
);
END;
$$ DELIMITER ;
GO


DELIMITER $$
CREATE PROCEDURE insertDetCompra(
    idProd int,
    cant int,
    precio decimal(18, 2),
    importe decimal(18, 2)
) BEGIN
INSERT INTO `dbo.detalleCompra` VALUES(
    (SELECT MAX(idCompra) FROM `dbo.compra`),
    idProd,
    cant,
    precio,
    importe
)
END;
$$ DELIMITER ;
GO



USE ProyFinal
GO

CREATE PROCEDURE createCompra(
    @idVen int,
    @idProv int,
    @subTotal decimal(18,2)
) AS
INSERT INTO Compra
VALUES(
    @idVendedor,
    @idProv,
    @subTotal,
    @subtotal * 0.18,
    @subTotal * 1.18,
    GETDATE(),
    1,
    NULL
)
GO

---SELECT MAX(id) FROM table

CREATE PROCEDURE insertDetCompra(
    @idProd int,
    @cant int,
    @precio decimal(18,2),
    @importe decimal(18,2)    
) AS
INSERT INTO DetalleCompra
VALUES(
    (SELECT MAX(idCompra) FROM Compra),
    @idProd,
    @cant,
    @precio,
    @importe,
)
GO
