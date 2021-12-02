-------------------- MySQL -------------------
-- 1. Procedimiento almacenado para listar tabla proveedores
USE proyfinal
GO
DELIMITER $$
CREATE PROCEDURE readProveedores()
BEGIN
SELECT * FROM `dbo.proveedor`;
END 
$$ DELIMITER ;
GO
CALL readProveedores


----------------------CREAR-------------------------------------
USE proyfinal
GO
DELIMITER $$
CREATE PROCEDURE createProveedores(
    nombre varchar(20),
    ruc varchar(11),
    direccion varchar(21),
    telefono varchar(9)
)
BEGIN
INSERT INTO `dbo.proveedor`
(`nombreProveedor`, 
`RUCProveedor`, 
`direccionProveedor`, 
`TelefonoProveedor`, 
`FechaRegistro`, 
`EstadoProveedor`) 
VALUES
(nombre, ruc, direccion, telefono, NOW(), 1);
END
$$ DELIMITER ;
GO



------------------------EDIT------------------------------------
USE proyfinal
GO
DELIMITER $$
CREATE PROCEDURE editProveedores(
    idProv int
)
BEGIN
SELECT * FROM `dbo.proveedor` WHERE `idProveedor` = idProv;
END
$$ DELIMITER ;
GO



------------------------UPDATE-----------------------------------
USE proyfinal
GO
DELIMITER $$
CREATE PROCEDURE updateProveedores(
    idProv int,
    nombre varchar(20),
    ruc varchar(11),
    direccion varchar(21),
    telefono varchar(9)
)
BEGIN
UPDATE `dbo.proveedor` SET
`nombreProveedor` = nombre, 
`RUCProveedor` = ruc, 
`direccionProveedor` = direccion, 
`TelefonoProveedor` = telefono, 
`FechaRegistro` = NOW(), 
`EstadoProveedor` = 1
WHERE
`idProveedor` = idProv;
END
$$ DELIMITER ;
GO


----------------DELETE-------------------------------------------
USE proyfinal
GO
DELIMITER $$
CREATE PROCEDURE deleteProveedores(
    idProv int
)
BEGIN
DELETE FROM `dbo.proveedor` 
WHERE `idProveedor` = idProv;
END
$$ DELIMITER ;
GO




---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
-------------------- SQL SERVER -------------------
-- 1. Procedimiento almacenado para listar tabla proveedores
USE ProyFinal
GO
CREATE PROCEDURE readProveedores AS
SELECT * FROM Proveedor 
GO

EXEC readProveedores



----------------------CREAR-------------------------------------
GO
CREATE PROCEDURE createProveedores (
    @nombre varchar(20),
    @ruc varchar(11),
    @direccion varchar(21),
    @telefono varchar(9)
) AS
INSERT INTO Proveedor(
    nombreProveedor, 
    RUCProveedor, 
    direccionProveedor, 
    TelefonoProveedor, 
    FechaRegistro, 
    EstadoProveedor
)VALUES
(@nombre, @ruc, @direccion, @telefono, GETDATE(), 1)
GO


------------------------EDIT------------------------------------
GO
CREATE PROCEDURE editProveedores(
    @idProv int
) AS
SELECT * FROM Proveedor WHERE idProveedor = @idProv
GO


------------------------UPDATE-----------------------------------
GO
CREATE PROCEDURE updateProveedores(
    @idProv int,
    @nombre varchar(),
    @ruc varchar(11),
    @direccion varchar(21),
    @telefono varchar(9)
) AS
UPDATE Proveedor SET
nombreProveedor = @nombre, 
RUCProveedor = @ruc, 
direccionProveedor = @direccion, 
TelefonoProveedor = @telefono, 
FechaRegistro = GETDATE(), 
EstadoProveedor = 1
WHERE
idProveedor = @idProv;
GO



----------------DELETE-------------------------------------------
GO
CREATE PROCEDURE deleteProveedores(
    @idProv int
) AS
DELETE FROM Proveedor WHERE idProveedor = @idProv
GO

	