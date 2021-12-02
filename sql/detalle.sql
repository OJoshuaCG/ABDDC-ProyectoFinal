CREATE TABLE `dbo.detalle` (
  `num_fact` tinyint(4) DEFAULT NULL,
  `IdProducto` tinyint(4) DEFAULT NULL,
  `CantidadVenta` tinyint(4) DEFAULT NULL,
  `PrecioVenta` decimal(5,2) DEFAULT NULL,
  `Importe` decimal(6,2) DEFAULT NULL,
  `idDetalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dbo.detalle`
--

INSERT INTO `dbo.detalle` (`num_fact`, `IdProducto`, `CantidadVenta`, `PrecioVenta`, `Importe`, `idDetalle`) VALUES
(1, 2, 2, '25.00', '50.00', 1),
(1, 2, 2, '35.00', '70.00', 2),
(2, 2, 2, '25.00', '50.00', 3),
(2, 2, 2, '35.00', '70.00', 4),
(3, 1, 2, '25.00', '50.00', 5),
(3, 2, 2, '35.00', '70.00', 6),
(4, 1, 2, '25.00', '50.00', 7),
(4, 2, 2, '35.00', '70.00', 8),
(5, 1, 1, '25.00', '25.00', 9),
(5, 2, 1, '35.00', '35.00', 10),
(6, 2, 1, '35.00', '35.00', 11),
(7, 2, 4, '35.00', '140.00', 12),
(8, 1, 4, '25.00', '100.00', 13),
(8, 2, 5, '35.00', '175.00', 14),
(9, 1, 4, '25.00', '100.00', 15),
(9, 2, 4, '35.00', '140.00', 16),
(9, 3, 4, '120.00', '480.00', 17),
(10, 1, 4, '25.00', '100.00', 18),
(12, 2, 4, '35.00', '140.00', 19),
(12, 3, 2, '120.00', '240.00', 20),
(13, 2, 10, '35.00', '350.00', 21),
(19, 4, 6, '35.00', '210.00', 22),
(20, 5, 2, '360.00', '720.00', 23),
(21, 1, 6, '25.00', '150.00', 24),
(27, 5, 5, '250.00', '1.00', 25),
(28, 5, 2, '250.00', '500.00', 26),
(29, 5, 5, '270.00', '1.00', 27),
(30, 4, 6, '25.00', '150.00', 28),
(31, 4, 6, '25.00', '150.00', 29),
(31, 5, 3, '245.00', '735.00', 30),
(31, 5, 3, '245.00', '735.00', 31),
(32, 4, 2, '34.00', '68.00', 32),
(32, 5, 5, '234.00', '1.00', 33),
(32, 5, 5, '234.00', '1.00', 34),
(33, 5, 2, '300.00', '600.00', 35),
(33, 5, 2, '300.00', '600.00', 36),
(34, 4, 1, '35.00', '35.00', 37),
(35, 4, 3, '40.00', '120.00', 38),
(35, 5, 3, '450.00', '1.00', 39),
(35, 5, 3, '450.00', '1.00', 40),
(36, 4, 5, '245.00', '1.00', 41),
(36, 5, 5, '235.00', '1.00', 42),
(36, 5, 5, '235.00', '1.00', 43),
(36, 3, 6, '120.00', '720.00', 44),
(36, 3, 6, '120.00', '720.00', 45),
(36, 3, 6, '120.00', '720.00', 46),
(37, 4, 2, '35.00', '70.00', 47),
(37, 5, 2, '245.00', '490.00', 48),
(37, 5, 2, '245.00', '490.00', 49),
(38, 5, 2, '250.00', '500.00', 50),
(38, 5, 2, '250.00', '500.00', 51),
(39, 3, 5, '350.00', '1750.00', 52),
(39, 4, 4, '45.00', '180.00', 53),
(40, 1, 3, '25.00', '75.00', 54),
(40, 2, 2, '35.00', '70.00', 55),
(40, 3, 1, '120.00', '120.00', 56),
(40, 4, 1, '360.00', '360.00', 57),
(40, 5, 1, '500.00', '500.00', 58),
(41, 5, 3, '360.00', '1080.00', 59),
(41, 6, 3, '500.00', '1500.00', 60),
(42, 1, 3, '20.00', '60.00', 61),
(42, 2, 5, '35.00', '175.00', 62),
(42, 3, 7, '120.00', '840.00', 63),
(42, 4, 7, '355.00', '2485.00', 64),
(42, 5, 3, '360.00', '1080.00', 65),
(42, 6, 3, '500.00', '1500.00', 66),
(43, 3, 4, '120.00', '480.00', 67),
(43, 1, 6, '25.00', '150.00', 68),
(43, 7, 5, '60.00', '300.00', 69),
(44, 2, 6, '35.00', '210.00', 70),
(44, 4, 7, '355.00', '2485.00', 71),
(44, 7, 2, '60.00', '120.00', 72),
(45, 2, 5, '35.00', '175.00', 73),
(45, 3, 7, '120.00', '840.00', 74),
(45, 7, 6, '60.00', '360.00', 75),
(45, 9, 2, '300.00', '600.00', 76),
(45, 6, 2, '500.00', '1000.00', 77),
(46, 2, 6, '35.00', '210.00', 78),
(46, 1, 10, '25.00', '250.00', 79),
(46, 5, 5, '360.00', '1800.00', 80),
(46, 7, 2, '60.00', '120.00', 81),
(46, 6, 8, '500.00', '4000.00', 82),
(47, 2, 3, '35.00', '105.00', 83),
(47, 5, 4, '360.00', '1440.00', 84),
(47, 9, 5, '300.00', '1500.00', 85),
(47, 6, 6, '500.00', '3000.00', 86),
(48, 5, 6, '360.00', '2160.00', 87),
(48, 6, 2, '500.00', '1000.00', 88),
(49, 5, 4, '360.00', '1440.00', 89),
(49, 7, 3, '60.00', '180.00', 90),
(49, 6, 1, '500.00', '500.00', 91),
(52, 1, 5, '25.00', '125.00', 92),
(52, 2, 3, '35.00', '105.00', 93),
(52, 6, 1, '500.00', '500.00', 94),
(52, 7, 2, '60.00', '120.00', 95),
(52, 5, 1, '360.00', '360.00', 96),
(53, 4, 3, '355.00', '1065.00', 97),
(53, 1, 5, '25.00', '125.00', 98),
(53, 7, 2, '60.00', '120.00', 99),
(53, 9, 4, '300.00', '1200.00', 100),
(54, 4, 2, '355.00', '710.00', 101),
(54, 5, 1, '360.00', '360.00', 102),
(54, 6, 1, '500.00', '500.00', 103),
(54, 7, 2, '60.00', '120.00', 104),
(54, 1, 1, '25.00', '25.00', 105),
(54, 2, 1, '35.00', '35.00', 106),
(23, 4, 5, '25.00', '125.00', 107),
(51, 4, 3, '355.00', '1065.00', 108),
(51, 6, 2, '500.00', '1000.00', 109),
(24, 4, 5, '256.00', '1.00', 110),
(25, 4, 2, '300.00', '600.00', 111),
(26, 4, 6, '356.00', '2.00', 112),
(27, 4, 3, '50.00', '150.00', 113),
(28, 4, 1, '26.00', '26.00', 114),
(34, 5, 5, '235.00', '1.00', 115),
(34, 5, 5, '235.00', '1.00', 116),
(55, 2, 4, '35.00', '140.00', 117),
(55, 3, 3, '120.00', '360.00', 118),
(55, 5, 1, '360.00', '360.00', 119),
(55, 1, 1, '25.00', '25.00', 120),
(55, 6, 1, '500.00', '500.00', 121),
(37, 3, 2, '120.00', '240.00', 122),
(37, 3, 2, '120.00', '240.00', 123),
(37, 3, 2, '120.00', '240.00', 124),
(48, 7, 2, '60.00', '120.00', 125),
(50, 6, 4, '500.00', '2000.00', 126),
(56, 4, 4, '355.00', '1420.00', 127),
(56, 7, 2, '60.00', '120.00', 128),
(56, 5, 1, '360.00', '360.00', 129),
(57, 2, 5, '35.00', '175.00', 130),
(57, 1, 2, '25.00', '50.00', 131),
(57, 4, 2, '355.00', '710.00', 132),
(57, 6, 4, '500.00', '2000.00', 133),
(57, 7, 2, '60.00', '120.00', 134),
(58, 1, 6, '25.00', '150.00', 135),
(58, 7, 2, '60.00', '120.00', 136),
(58, 11, 4, '180.00', '720.00', 137),
(58, 12, 4, '320.00', '1280.00', 138),
(59, 2, 4, '35.00', '140.00', 139),
(59, 5, 2, '360.00', '720.00', 140),
(59, 14, 4, '300.00', '1200.00', 141),
(59, 13, 1, '80.00', '80.00', 142),
(60, 1, 2, '25.00', '50.00', 143),
(60, 4, 1, '355.00', '355.00', 144),
(60, 5, 1, '360.00', '360.00', 145),
(60, 6, 1, '500.00', '500.00', 146),
(60, 7, 1, '60.00', '60.00', 147),
(60, 10, 1, '70.00', '70.00', 148),
(61, 4, 5, '355.00', '1775.00', 149),
(61, 3, 5, '120.00', '600.00', 150),
(61, 14, 1, '300.00', '300.00', 151),
(61, 9, 1, '300.00', '300.00', 152),
(61, 13, 1, '80.00', '80.00', 153),
(62, 2, 3, '35.00', '105.00', 154),
(62, 3, 2, '120.00', '240.00', 155),
(62, 7, 2, '60.00', '120.00', 156),
(62, 9, 1, '300.00', '300.00', 157),
(63, 2, 1, '35.00', '35.00', 158),
(63, 2, 1, '35.00', '35.00', 159),
(63, 3, 1, '120.00', '120.00', 160),
(63, 4, 1, '355.00', '355.00', 161),
(63, 6, 1, '500.00', '500.00', 162),
(63, 10, 1, '70.00', '70.00', 163),
(63, 12, 1, '320.00', '320.00', 164),
(63, 13, 1, '80.00', '80.00', 165),
(64, 3, 3, '120.00', '360.00', 166),
(64, 3, 4, '120.00', '480.00', 167),
(64, 6, 4, '500.00', '2000.00', 168),
(65, 2, 1, '35.00', '35.00', 169),
(65, 3, 1, '120.00', '120.00', 170),
(65, 4, 2, '355.00', '710.00', 171),
(65, 5, 2, '360.00', '720.00', 172),
(65, 7, 4, '60.00', '240.00', 173),
(65, 12, 2, '320.00', '640.00', 174),
(66, 2, 3, '35.00', '105.00', 175),
(66, 4, 2, '355.00', '710.00', 176),
(66, 6, 2, '500.00', '1000.00', 177),
(67, 1, 1, '25.00', '25.00', 178),
(67, 2, 2, '35.00', '70.00', 179),
(67, 5, 3, '360.00', '1080.00', 180),
(68, 2, 3, '35.00', '105.00', 181),
(68, 6, 2, '500.00', '1000.00', 182),
(69, 6, 3, '500.00', '1500.00', 183),
(69, 10, 3, '70.00', '210.00', 184),
(69, 13, 1, '80.00', '80.00', 185),
(70, 5, 2, '360.00', '720.00', 186),
(70, 9, 1, '300.00', '300.00', 187),
(70, 5, 2, '360.00', '720.00', 188),
(71, 15, 1, '125.00', '125.00', 189),
(71, 1, 1, '25.00', '25.00', 190),
(71, 2, 1, '35.00', '35.00', 191),
(71, 6, 1, '500.00', '500.00', 192),
(71, 9, 1, '300.00', '300.00', 193),
(72, 2, 2, '35.00', '70.00', 194),
(72, 4, 1, '355.00', '355.00', 195),
(72, 6, 1, '500.00', '500.00', 196),
(73, 2, 2, '35.00', '70.00', 197),
(73, 6, 2, '500.00', '1000.00', 198),
(74, 2, 3, '35.00', '105.00', 199),
(74, 8, 1, '45.00', '45.00', 200),
(74, 3, 2, '160.00', '320.00', 201),
(75, 7, 2, '60.00', '120.00', 202),
(75, 4, 3, '355.00', '1065.00', 203),
(76, 4, 2, '355.00', '710.00', 204),
(76, 1, 4, '25.00', '100.00', 205),
(76, 6, 3, '500.00', '1500.00', 206),
(77, 2, 4, '35.00', '140.00', 207),
(77, 3, 5, '160.00', '800.00', 208),
(77, 6, 2, '500.00', '1000.00', 209),
(78, 6, 6, '500.00', '3000.00', 210),
(78, 5, 8, '360.00', '2880.00', 211),
(79, 7, 5, '60.00', '300.00', 212),
(79, 5, 2, '360.00', '720.00', 213),
(80, 7, 2, '60.00', '120.00', 214),
(80, 1, 4, '25.00', '100.00', 215),
(81, 10, 5, '70.00', '350.00', 216),
(81, 6, 1, '500.00', '500.00', 217),
(82, 7, 2, '60.00', '120.00', 218),
(82, 5, 1, '360.00', '360.00', 219),
(82, 13, 1, '80.00', '80.00', 220),
(83, 16, 1, '40.00', '40.00', 221);


ALTER TABLE `dbo.detalle`
  ADD PRIMARY KEY (`idDetalle`);


ALTER TABLE `dbo.detalle`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
COMMIT;