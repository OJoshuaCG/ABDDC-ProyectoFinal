CREATE TABLE `dbo.proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombreProveedor` varchar(20) DEFAULT NULL,
  `RUCProveedor` varchar(11) DEFAULT NULL,
  `direccionProveedor` varchar(21) DEFAULT NULL,
  `TelefonoProveedor` varchar(9) DEFAULT NULL,
  `FechaRegistro` varchar(10) DEFAULT NULL,
  `EstadoProveedor` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dbo.proveedor`
--

INSERT INTO `dbo.proveedor` (`idProveedor`, `nombreProveedor`, `RUCProveedor`, `direccionProveedor`, `TelefonoProveedor`, `FechaRegistro`, `EstadoProveedor`) VALUES
(1, 'David Corporation', '12345676543', 'Santa Rosa 234', '044567890', '2013-05-01', 1),
(2, 'Computer House', '32134546445', 'Av. España 435', '044234657', '2013-06-03', 1),
(3, 'CS Computer', '32434567898', 'Av. Arequipa 145', '044152451', '2013-06-04', 1),
(4, 'Corporation Primatec', '23423431241', 'Av. Crepusculo 456', '044354253', '2013-07-15', 1),
(5, 'Computer Country', '43456465675', 'Av. Las Capulinas 345', '044567832', '2013-08-12', 1),
(6, 'Computer S.A', '10344535531', 'Av. Atahualpa 324', '044765783', '2013-08-16', 1),
(7, 'Computadorator', '20343562522', 'Sta Edelmira 346', '045635242', '2013-08-23', 1),
(8, 'CS Entertaiment', '95674654332', 'Rosales 456', '949657456', '2013-09-09', 1),
(9, 'Enterprise Game', '34562333782', 'Cancun 768', '949653425', '2013-10-04', 1),
(10, '', '', '', '', '2013-10-07', 1);


ALTER TABLE `dbo.proveedor`
  ADD PRIMARY KEY (`idProveedor`);


ALTER TABLE `dbo.proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;



USE ProyFinal
-- ID is the name of the  [to be] identity column
ALTER TABLE Proveedor DROP COLUMN idProveedor 
ALTER TABLE Proveedor ADD idProveedor INT IDENTITY(1,1) PRIMARY KEY