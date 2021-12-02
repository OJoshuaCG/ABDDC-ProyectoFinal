-- phpMyAdmin SQL Dump
CREATE TABLE `dbo.cliente` (
  `idCliente` int(11) NOT NULL,
  `NombreCliente` varchar(13) DEFAULT NULL,
  `ApellidoCliente` varchar(18) DEFAULT NULL,
  `DNICliente` varchar(8) DEFAULT NULL,
  `RUCCliente` varchar(11) DEFAULT NULL,
  `TelefonoCliente` varchar(10) DEFAULT NULL,
  `DireccionCliente` varchar(30) DEFAULT NULL,
  `EstadoCliente` tinyint(4) DEFAULT NULL
) 

--
-- Volcado de datos para la tabla `dbo.cliente`
--

INSERT INTO `dbo.cliente` (`idCliente`, `NombreCliente`, `ApellidoCliente`, `DNICliente`, `RUCCliente`, `TelefonoCliente`, `DireccionCliente`, `EstadoCliente`) VALUES
(1, 'Juan', 'Perez Castillo', '56456349', '87373636363', '044345678', 'Los Galácticos  # 450', 1),
(2, 'Carlos', 'Cercado Gomez', '91939393', '83838383838', '044525252', 'Los girasoles #345', 1),
(3, 'Andrea', 'Luna Vera', '48484848', '83483838383', '044585858', 'Los Girasoles # 2039', 0),
(4, 'Pamela', 'Gutierrez Perez', '92929292', '48848484844', '044585858', 'Las Palmeras del Golf # 450', 1),
(5, 'Roberto', 'Lopez Castro', '83838383', '83838383838', '044585858', 'Los Pinos # 450 San Andres', 1),
(6, 'Javier', 'Cardona', '39393939', '93939393939', '044585858', 'El Golf #450', 1),
(7, 'Andrea', 'Luna', '94949949', '94949499499', '044595959', 'Las Gardenias # 450', 0),
(8, 'Artuto', 'Nuñez Gonzales', '97929292', '93939393993', '044585858', 'Laredo #450 ', 1),
(9, 'Andres', 'Gutierrez Portilla', '21621314', '39494994494', '949499494', 'Las Palmeras del golf # 450', 1),
(10, 'Perla', 'Martinez Pelaez', '14131414', '93838838383', '939393939', 'Los Portales de California #45', 1),
(11, 'Patricia', 'Perez Cerna', '28282882', '92992929929', '939399393', 'Las Gardenias del golf #450', 0),
(12, 'Carolina', 'Valladares Perez', '12131415', '93939939393', '044585858', 'Las Palmeras del golf #450', 1),
(13, 'Paola', 'Sanchez Cruzado', '20123422', '12345678901', '044261717', 'Las Palmeras del Golf', 1),
(14, 'Paty', 'Nuñez Pereda', '56466349', '87373636363', '044345678', 'Los Girasoles # 450', 1),
(15, 'Maria', 'Nuñez', '84848484', '93939393939', '848484848', 'Las Palmeras del Golf # 450', 0),
(16, 'Luis', 'Reyes Caicedo', '12345678', '12345678901', '044234567', 'Av España 2256', 1),
(17, 'Hobby ', 'Saavedra Rosas', '12309871', '98765432116', '044-234562', 'Av.Ingeniero #450 Trujillo  ', 1),
(18, 'Leonardo ', 'Da Vinci 2013', '20132803', '91827364510', '044-224524', 'Av. España #  2225 Trujillo', 1),
(19, 'Carmen Andrea', 'Castillo Vergara', '93786452', '91237474748', '044-231454', 'AV. Garcilazo de la Vega #456 ', 1),
(20, 'Lucia', 'Oxeford Casttillo', '93456271', '10929273832', '044-123456', 'Lima - Perú', 0),
(21, 'Paola', 'Ganoza Marin', '10234567', '15424353672', '044-134657', 'Av. España #  2225 Lima', 1),
(22, 'Lorena', 'Castillo Garcia', '78651922', '98761234190', '044/245372', 'Lima - Perú', 0),
(23, 'Andrea ', 'Luna Castillo', '81234658', '10181234658', '044-231456', 'Av. España 2345', 1),
(26, 'David', 'Gil Linares', '97567453', '10975674532', '044-567890', 'Sta Rosa 234', 1),
(27, '', '', '', '', '', '', 1);

ALTER TABLE `dbo.cliente`
  ADD PRIMARY KEY (`idCliente`);


ALTER TABLE `dbo.cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;
