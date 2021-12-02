CREATE TABLE `dbo.compra` (
  `idCompra` int(11) NOT NULL,
  `idVendedor` tinyint(4) DEFAULT NULL,
  `idProveedor` tinyint(4) DEFAULT NULL,
  `Subtotal` decimal(6,2) DEFAULT NULL,
  `Igv` decimal(5,2) DEFAULT NULL,
  `TotalCompra` decimal(6,2) DEFAULT NULL,
  `fechaCompra` varchar(10) DEFAULT NULL,
  `CpEli` tinyint(4) DEFAULT NULL,
  `MotivoEli` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dbo.compra`
--

INSERT INTO `dbo.compra` (`idCompra`, `idVendedor`, `idProveedor`, `Subtotal`, `Igv`, `TotalCompra`, `fechaCompra`, `CpEli`, `MotivoEli`) VALUES
(1, 2, 3, '1680.00', '302.40', '1982.40', '2013-10-03', 1, ''),
(2, 2, 2, '120.00', '21.60', '141.60', '2013-10-04', 1, ''),
(3, 2, 6, '720.00', '129.60', '849.60', '2013-10-04', 1, ''),
(4, 2, 1, '760.00', '136.80', '896.80', '2013-10-04', 1, '');


ALTER TABLE `dbo.compra`
  ADD PRIMARY KEY (`idCompra`);


ALTER TABLE `dbo.compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
