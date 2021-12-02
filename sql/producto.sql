CREATE TABLE `dbo.producto` (
  `idProducto` int(11) NOT NULL,
  `NombreProducto` varchar(18) DEFAULT NULL,
  `PCProducto` decimal(5,2) DEFAULT NULL,
  `PVProducto` decimal(5,2) DEFAULT NULL,
  `StockProducto` smallint(6) DEFAULT NULL,
  `FechaActProducto` varchar(19) DEFAULT NULL,
  `MarcaProducto` varchar(9) DEFAULT NULL,
  `UnidMedProducto` varchar(8) DEFAULT NULL,
  `EstadoProducto` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dbo.producto`
--

INSERT INTO `dbo.producto` (`idProducto`, `NombreProducto`, `PCProducto`, `PVProducto`, `StockProducto`, `FechaActProducto`, `MarcaProducto`, `UnidMedProducto`, `EstadoProducto`) VALUES
(1, 'Mouse', '20.00', '25.00', 146, '2012-08-20 00:00:00', 'Avatec', 'Unidades', 1),
(2, 'Teclado', '30.00', '35.00', 230, '2012-08-21 00:00:00', 'Genius', 'Unidades', 1),
(3, 'Memoria RAM', '140.00', '160.00', 463, '2012-08-22 00:00:00', 'Kingston', 'Unidades', 1),
(4, 'Disco Duro', '350.00', '355.00', 85, '2013-10-01 00:00:00', 'Sata', 'Unidades', 1),
(5, 'Impresora', '350.00', '360.00', 529, '2013-01-16 00:00:00', 'Hp', 'Unidades', 1),
(6, 'Monitor', '450.00', '500.00', 59, '2013-01-22 00:00:00', 'SANSUMG', 'Unidades', 1),
(7, 'Parlantes', '50.00', '60.00', 200, '2013-01-16 00:00:00', 'Halion', 'Unidades', 1),
(8, 'Switch 8 Puertos', '35.00', '45.00', 19, '2013-01-23 00:00:00', 'Link', 'Unidades', 1),
(9, 'Procesador Core i7', '280.00', '300.00', 5, '2013-01-23 00:00:00', 'Intel', 'Unidades', 1),
(10, 'Case', '60.00', '70.00', 5, '2013-01-28 00:00:00', 'Avatec', 'Unidades', 1),
(11, 'Router', '150.00', '180.00', 16, '2013-05-23 00:00:00', 'Cisco', 'Unidades', 1),
(12, 'Procesador Core i5', '280.00', '320.00', 13, '2013-05-23 00:00:00', 'LG', 'Unidades', 1),
(13, 'Tarjeta de Video', '50.00', '80.00', 15, '2013-05-23 00:00:00', 'Kingston', 'Unidades', 1),
(14, 'Scanner', '250.00', '300.00', 15, '2013-05-26 00:00:00', 'HP', 'Unidades', 1),
(15, 'Router Cisco', '120.00', '125.00', 3, '2013-08-29 00:00:00', 'CISCO', 'Unidades', 1),
(16, 'Camara Web', '25.00', '40.00', 3, '2013-08-29 00:00:00', 'Micronisc', 'Unidades', 1),
(17, 'sghfdhfd', '34.00', '37.40', 8, '2013-10-01 00:00:00', 'fgfdgfd', 'unidad', 0);


ALTER TABLE `dbo.producto`
  ADD PRIMARY KEY (`idProducto`);


ALTER TABLE `dbo.producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;
