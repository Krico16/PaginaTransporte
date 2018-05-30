-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: sql213.byetcluster.com
-- Tiempo de generación: 27-05-2018 a las 00:39:52
-- Versión del servidor: 5.6.35-81.0
-- Versión de PHP: 5.3.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `unaux_21629055_SistemaDeTransporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Boleto`
--

CREATE TABLE IF NOT EXISTS `Boleto` (
  `IDBoleto` varchar(12) CHARACTER SET latin1 NOT NULL,
  `IdRuta` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `Precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`IDBoleto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo`
--

CREATE TABLE IF NOT EXISTS `Cargo` (
  `IdCargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCargo` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IdCargo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `Cargo`
--

INSERT INTO `Cargo` (`IdCargo`, `nombreCargo`) VALUES
(1, 'Vigilante'),
(2, 'Gerente'),
(3, 'Limpieza'),
(4, 'Conductor'),
(5, 'Informatico'),
(6, 'Mecanico'),
(7, 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE IF NOT EXISTS `Cliente` (
  `DNI` char(8) CHARACTER SET latin1 NOT NULL,
  `Nombre` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Apellido` varchar(32) CHARACTER SET latin1 NOT NULL,
  `Telefono` varchar(9) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`DNI`, `Nombre`, `Apellido`, `Telefono`) VALUES
('42146964', 'VICTOR', 'AGAMA ANDUAGA', '650519662'),
('40673760', 'WINNER', 'AGURTO MARCHAN', '241721176'),
('42532753', 'JUAN CARLOS', 'ALCARRAZ CONTRERAS', '795530178'),
('43278119', 'LUIS DAVID', 'ALEJANDRO LAURENTE', '635238304'),
('71241786', 'CARLOS FERNANDO', 'ALFARO CANTERAC', '134412064'),
('45743257', 'OSCAR DANIEL', 'ALLER ROJAS', '330548297'),
('46202533', 'EDUARDO DANIEL', 'ALVAREZ ABANTO', '687203292'),
('42264899', 'LUISA MADOLYN', 'ALVAREZ BENAUTE', '679776694'),
('44936062', 'PATRICIA LUCIA', 'AMADO ALVIZ', '147590438'),
('41841665', 'JULIO CESAR', 'ANCHIRAICO TRUJILLO', '126874346'),
('41980531', 'LEIDILUZ YENI', 'APARICIO ARCONDO', '270911051'),
('45460173', 'LENNY MARIA', 'ARACA QUISPE', '422629344'),
('44925744', 'WILMER GUZMAN', 'ARANA CCENCHO', '626315900'),
('44705102', 'ELIZABETH JULIA', 'ARCE ARAUJO', '608349133'),
('44121820', 'DANGELO ABAD', 'ARDILES AYBAR', '521714512'),
('43830345', 'MILOS ENRIQUE', 'AREVALO NAJAR', '326650671'),
('43668686', 'JOEL FERNANDO', 'ARIAS ENRIQUEZ', '187385646'),
('43810584', 'JORGE RAUL', 'ARMAS VALDIVIA', '711049671'),
('43687218', 'ANGEL ALCIDES', 'ARONES CISNEROS', '196903493'),
('46149870', 'JIMMY', 'ARONI HUAMAN', '580100749'),
('41907984', 'HECTOR', 'AROQUIPA VELASQUEZ', '402822684'),
('71318764', 'JAVIER', 'AROSTEGUI ORTIZ', '741842280'),
('56424381', 'WALDO', 'ARTEAGA FLORES', '621038319'),
('20051204', 'VICTOR MANUEL', 'ASCUE MORALES', '848611484'),
('98374724', 'ELIZABETH SOFIA', 'ASTUPIÑA FIGUEROA', '475053150'),
('40702682', 'MARGOT MADELEINE', 'AYALA BARRETO', '312597940'),
('41437098', 'JOSE ALONSO', 'BARBOZA DELGADO', '802246196'),
('94285764', 'PATRICIA ISMARY', 'BARINOTTO RONCAL', '752039041'),
('41188691', 'JOSE ALFREDO', 'BEHR MONTESINOS', '363026965'),
('45775086', 'ISABEL JANET', 'BEJARANO ALVA', '556229938'),
('42153355', 'IVAN JAIME', 'BELTRAN CCAMA', '552033133'),
('44182488', 'JORGE EDUARDO', 'BENGOA SEMINARIO', '391863261'),
('43353964', 'EDGARD RAUL', 'BENITES SALAZAR', '524123515'),
('45366597', 'ANGELA', 'BERMEJO LOPEZ', '396493774'),
('42952975', 'ZEZÉ HUMBERTO', 'BERROCAL POMALIMA', '850568218'),
('45189291', 'KATHERINE EMILY', 'BRAVO GUTIERREZ', '373404644'),
('46459977', 'GLORIA OLIVIA', 'BRIONES GUTIERREZ', '169054567'),
('42405235', 'JORGE JONATHAN', 'BUSTAMANTE CÁRDENAS', '834481041'),
('22478024', 'GEOVANA ROSALIA', 'CABREJOS HURTADO', '826150890'),
('45615096', 'CRISTY JULIANA', 'CALISAYA QUISPE', '328526900'),
('44068853', 'JHONATAN', 'CALLA ALARCON', '326433448'),
('46445972', 'DIANA YAMALI', 'CALLE CARDENAS', '275735254'),
('40456293', 'CARLOS', 'CANCHO BAUTISTA', '835977116'),
('42808518', 'CESAR ANDY', 'CANTO BALBÍN', '119829302'),
('71921387', 'JOE ALEXANDER', 'CARDENAS LINO', '583569211'),
('15756522', 'YSABEL DORINA', 'CARLOS DEL PEZO', '299809008'),
('46607697', 'FLOR KATYA', 'CARMIN ISIDRO', '519132211'),
('74489754', 'MAYRA ALEXANDRA', 'CASTAÑEDA ALFONSO', '662779620'),
('44695164', 'ALBERTO JESUS', 'CASTRO CORREA', '594966272'),
('45260934', 'EDGAR', 'CASTRO JARA', '246320808'),
('45040043', 'REYNALDO JOSÉ', 'CCANCHI CONDORI', '528632899'),
('44854287', 'OSCAR ANDRES', 'CERVANTES BRAVO', '437451338'),
('44775452', 'ROGER', 'CHAMACHE CACHIQUE', '239375812'),
('42440264', 'TEOFILO', 'CHAMBI LEGOAS', '617861659'),
('45781154', 'EDGAR WILDER OMAR', 'CHAMBILLA AQUINO', '854528860'),
('45026869', 'BITIA', 'CHAVARRIA DIAZ', '828387990'),
('44176654', 'JOSE VIDAL', 'CHAVEZ BERMUDEZ', '119895492'),
('40230487', 'NORMA PAOLA', 'CHAVEZ CRUZADO', '745216534'),
('46282552', 'YNGRID			', 'CHÁVEZ HERNANI', '617299555'),
('47485716', 'HENRY GERMAN', 'CHAYACANI MALLQUI', '573383459'),
('43041234', 'EDER AUGUSTO', 'CHICO LEÓN', '594841275'),
('78916448', 'JAQUELINE HEIDY', 'CHILQUILLO TORRES', '266016900'),
('45628586', 'TOMAS GONZALO', 'CHIRRE FLORES', '433872734'),
('43910769', 'FRANKLIN BLAS', 'CHOLAN ZAPATA', '470395508'),
('43818888', 'VICTOR ARAHAM', 'CHOQUE CUENCA', '590309791'),
('41062291', 'MICHAEL', 'CHOQUE MANCHEGO', '833653785'),
('71224184', 'ANABELI', 'CHUCHON ROBLES', '757942037'),
('70339328', 'RODRIGO ARIZAPANA', 'CHUQUILLANQUI', '170169288'),
('41629413', 'ALICIA', 'COLLAZOS CORZO', '135762504'),
('80040712', 'LINARIO', 'COLOS ARANGO', '176177736'),
('42947479', 'GUILLERMO', 'CONDORI QUISPE', '878969837'),
('45277233', 'MICHAEL', 'CONTRERAS BUSTOS', '513323315'),
('44405211', 'FRANCIS YOANNA', 'CONTRERAS SAENZ', '584308416'),
('43856697', 'ALBER MIGUEL', 'CORAL MENDOZA', '239642325'),
('40720459', 'MELINA DALILA', 'CÓRDOVA COTRINA', '708682345'),
('41639286', 'CESAR ABRAM', 'CRUZ AGÜERO', '387464405'),
('44757143', 'EDUARDO MANUEL', 'CRUZ CASTELLON', '669013538'),
('20409664', 'ARMUDIO ELISEO', 'CRUZ ROMERO', '439867025'),
('13429804', 'OSMAR', 'CUBA MARTINEZ', '100855710'),
('45866553', 'VLADIMIR RICHARD', 'CUENTAS TOLEDO', '337893625'),
('70313938', 'JHAN CARLOS', 'CUISANO MARREROS', '875127348'),
('73102818', 'PERCY ANDY', 'CUNYAS PARE', '560218141'),
('45972578', 'KROWELL BERNARDO', 'DAMAS SACHUN', '477987431'),
('46970532', 'EMILLY ARIANA', 'DE LA CRUZ LOPEZ', '312329264'),
('43093414', 'HENRRY SAUL', 'DELGADO MECHATO', '291584291'),
('45474613', 'NESTOR EMERSON', 'DELGADO ORTEGA', '118034322'),
('29665633', 'LEONEL ELVIS', 'DIAZ LUNA', '411232523'),
('46025949', 'SANDRO JUSTO', 'DIAZ MONTES DE OCA', '233301948'),
('45757015', 'MILAGROS INDIRA', 'DIONISIO PONCE', '166382049'),
('70441554', 'MARCO RENATO', 'ESCUDERO ANTEZANA', '661390945'),
('46321746', 'BRUNO FERNANDO', 'ESPINOSA ANTEZANA', '650519662'),
('41824744', 'EDGARD EDUARDO', 'ESPINOZA AMAYA', '241721176'),
('65226052', 'PEDRO ANTONIO', 'ESPINOZA CATERIANO', '795530178'),
('25512493', 'ROSANGELA ISABEL', 'ESPINOZA VÁSQUEZ', '635238304'),
('43479352', 'ROLLY ANTONIO', 'ESTRADA CALDERON', '134412064'),
('45796325', 'SHERLY KATHERINE', 'EVANGELISTA CASTILLO', '330548297'),
('22463387', 'ESMIRNA ELIZABETH', 'FIGUEROA MATURRANO', '687203292'),
('41699215', 'HERNAN			', 'FLOREANO FLORES', '679776694'),
('46444331', 'MAYLLORID CLOTILDE', 'FLORES MALLMA', '147590438'),
('44984844', 'MARICRUZ ESPERANZA', 'FLORES SUÁREZ', '126874346');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comida`
--

CREATE TABLE IF NOT EXISTS `Comida` (
  `IdComida` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IdComida`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `Comida`
--

INSERT INTO `Comida` (`IdComida`, `nombre`) VALUES
(1, 'Adobo de chancho'),
(2, 'Aguadito'),
(3, 'Ajiaco de papas'),
(4, 'Ají de gallina'),
(5, 'Alverjado de pollo'),
(6, 'Anticuchos'),
(7, 'Arroz a la jardinera'),
(8, 'Arroz chaufa'),
(9, 'Arroz chaufa de mariscos'),
(10, 'Arroz con mariscos'),
(11, 'Arroz con pato'),
(12, 'Arroz con pollo'),
(13, 'Arroz tapado'),
(14, 'Bistec a lo pobre'),
(15, 'Bistec a la chorrilana'),
(16, 'Cabrito a la norteña'),
(17, 'Caldo de cabeza de carnero'),
(18, 'Caldo de gallina'),
(19, 'Cancancho o cordero al palo'),
(20, 'Cau cau'),
(21, 'Causa'),
(22, 'Causa lambayecana'),
(23, 'Ceviche'),
(24, 'Ceviche de conchas negras'),
(25, 'Ceviche de camarones'),
(26, 'Ceviche mixto'),
(27, 'Carapulcra'),
(28, 'Chacharada'),
(29, 'Chairo'),
(30, 'Chanfainita'),
(31, 'Charquicán'),
(32, 'Chaque'),
(33, 'Chicharrones'),
(34, 'Chilcano'),
(35, 'Chinguirito'),
(36, 'Chirimpico'),
(37, 'Choros a la chalaca'),
(38, 'Chupe de cangrejos'),
(39, 'Chupe de camarones'),
(40, 'Chupe verde'),
(41, 'Escabeche'),
(42, 'Escribano'),
(43, 'Estofado'),
(44, 'Espesado'),
(45, 'Frito trujillano'),
(46, 'Hígado encebollado'),
(47, 'Huatía'),
(48, 'Inchicapi'),
(49, 'Jalea'),
(50, 'Juane'),
(51, 'Locro'),
(52, 'Locro de gallina'),
(53, 'Lomo saltado'),
(54, 'Malaya'),
(55, 'Majarisco'),
(56, 'Menestrón'),
(57, 'Migadito'),
(58, 'Mondonguito a la italiana'),
(59, 'Ocopa'),
(60, 'Olluquito con charqui'),
(61, 'Pachamanca'),
(62, 'Papa a la Huancaína'),
(63, 'Papa rellena'),
(64, 'Parihuela'),
(65, 'Sopa de trigo'),
(66, 'Patarashca'),
(67, 'Patasca'),
(68, 'Patitas con maní'),
(69, 'Pepian de choclo'),
(70, 'Pesque de quinua'),
(71, 'Pescado a lo macho'),
(72, 'Picante a la tacneña'),
(73, 'Picante de cuy'),
(74, 'Pollo broaster'),
(75, 'Pollo a la brasa'),
(76, 'Pollo al sillao'),
(77, 'Puca picante'),
(78, 'Quinua atamalada'),
(79, 'Rocoto relleno'),
(80, 'Salchipapa'),
(81, 'Sancochado'),
(82, 'Seco de chabelo'),
(83, 'Seco de res con frejoles'),
(84, 'Seco a la norteña'),
(85, 'Shambar'),
(86, 'Solterito'),
(87, 'Sopa criolla'),
(88, 'Sopa de choros'),
(89, 'Sopa seca'),
(90, 'Sopa teóloga'),
(91, 'Sudado de pescado'),
(92, 'Tacacho con cecina'),
(93, 'Tacu tacu'),
(94, 'Tallarín saltado'),
(95, 'Tallarines rojos con pollo'),
(96, 'Tallarines verdes'),
(97, 'Tiradito'),
(98, 'Tortilla de raya'),
(99, 'Trucha frita'),
(100, 'Pollo Frito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Destino`
--

CREATE TABLE IF NOT EXISTS `Destino` (
  `idDestino` int(11) NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idDestino`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=111 ;

--
-- Volcado de datos para la tabla `Destino`
--

INSERT INTO `Destino` (`idDestino`, `Ciudad`) VALUES
(1, 'Lima'),
(2, 'Arequipa'),
(3, 'Trujillo'),
(4, 'Chiclayo'),
(5, ' Iquitos'),
(6, 'Piura'),
(7, 'Cusco'),
(8, 'Chimbote'),
(9, 'Huancayo'),
(10, 'Tacna'),
(11, 'Utcubamba'),
(12, 'Huaraz'),
(13, 'Aija'),
(14, 'Casma'),
(15, 'Huari'),
(16, 'ayacucho'),
(17, 'cajamarca'),
(18, 'huancavelica'),
(19, 'huánuco'),
(20, 'ica'),
(21, 'junín'),
(22, 'la libertad'),
(23, 'lambayeque'),
(24, 'loreto'),
(25, 'Madre de dios'),
(26, 'Cañete'),
(27, 'Ucayali'),
(28, 'Moquegua'),
(29, 'Pasco'),
(30, 'Yumbes'),
(31, 'Lamas'),
(32, 'Sullana'),
(33, 'Puno'),
(34, 'Moyobamba'),
(35, 'San Martin'),
(36, 'Ancash'),
(37, 'Chincha'),
(38, 'Pisco'),
(39, 'Nazca'),
(40, 'Satipo'),
(41, 'Concepcion'),
(42, 'Tarma'),
(43, 'Huaral'),
(44, 'Ilo'),
(45, 'Jaén Cajamarca'),
(46, 'San Ignacio'),
(47, 'San Marcos'),
(48, 'Espinar'),
(49, 'Urubamba'),
(50, 'Dos de Mayo Huánuco'),
(51, 'Palpa'),
(52, 'Tambopata'),
(53, 'Oxapampa'),
(54, 'Rioja'),
(55, 'Ucayali'),
(56, 'Lima'),
(57, 'Arequipa'),
(58, 'Trujillo'),
(59, 'Chiclayo'),
(60, ' Iquitos'),
(61, 'Piura'),
(62, 'Cusco'),
(63, 'Chimbote'),
(64, 'Huancayo'),
(65, 'Tacna'),
(66, 'Utcubamba'),
(67, 'Huaraz'),
(68, 'Aija'),
(69, 'Casma'),
(70, 'Huari'),
(71, 'ayacucho'),
(72, 'cajamarca'),
(73, 'huancavelica'),
(74, 'huánuco'),
(75, 'ica'),
(76, 'junín'),
(77, 'la libertad'),
(78, 'lambayeque'),
(79, 'loreto'),
(80, 'Madre de dios'),
(81, 'Cañete'),
(82, 'Ucayali'),
(83, 'Moquegua'),
(84, 'Pasco'),
(85, 'Yumbes'),
(86, 'Lamas'),
(87, 'Sullana'),
(88, 'Puno'),
(89, 'Moyobamba'),
(90, 'San Martin'),
(91, 'Ancash'),
(92, 'Chincha'),
(93, 'Pisco'),
(94, 'Nazca'),
(95, 'Satipo'),
(96, 'Concepcion'),
(97, 'Tarma'),
(98, 'Huaral'),
(99, 'Ilo'),
(100, 'Jaén Cajamarca'),
(101, 'San Ignacio'),
(102, 'San Marcos'),
(103, 'Espinar'),
(104, 'Urubamba'),
(105, 'Dos de Mayo Huánuco'),
(106, 'Palpa'),
(107, 'Tambopata'),
(108, 'Oxapampa'),
(109, 'Rioja'),
(110, 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Detalle`
--

CREATE TABLE IF NOT EXISTS `Detalle` (
  `IdDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdBoelto` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `IdItinerario` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdDetalle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE IF NOT EXISTS `Empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` char(8) CHARACTER SET latin1 NOT NULL,
  `Nombre` varchar(32) CHARACTER SET latin1 NOT NULL,
  `ApellidoP` varchar(32) CHARACTER SET latin1 NOT NULL,
  `ApellidoM` varchar(32) CHARACTER SET latin1 NOT NULL,
  `IdCargo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`IdEmpleado`, `DNI`, `Nombre`, `ApellidoP`, `ApellidoM`, `IdCargo`) VALUES
(1, '10921652', 'Lacota', 'Baldwin', 'Vaughan', 3),
(2, '39300360', 'Bevis', 'Matthews', 'Donovan', 6),
(3, '52489173', 'Mannix', 'Stout', 'Mccarty', 4),
(4, '81454635', 'Irma', 'Vinson', 'Pruitt', 1),
(5, '97157451', 'Keaton', 'Caldwell', 'Carney', 4),
(6, '96816093', 'Avram', 'Jennings', 'Patterson', 6),
(7, '89362514', 'Kelly', 'Crosby', 'Mayer', 5),
(8, '75449620', 'Eaton', 'Rivas', 'Beard', 3),
(9, '15438458', 'Bevis', 'Lamb', 'Roach', 3),
(10, '78573014', 'Brooke', 'Crawford', 'Kelley', 3),
(11, '46599250', 'Preston', 'Simon', 'Whitley', 7),
(12, '86458437', 'Fulton', 'Stephens', 'Walter', 1),
(13, '38124689', 'Uriah', 'Mcgee', 'Lopez', 2),
(14, '32017500', 'Tatum', 'Solis', 'Boyd', 5),
(15, '95635543', 'Bruce', 'Lopez', 'Maddox', 4),
(16, '75729429', 'Colette', 'Randolph', 'Hutchinson', 2),
(17, '45927051', 'Caleb', 'Acevedo', 'Cole', 6),
(18, '86766421', 'Paki', 'Burris', 'Gibbs', 6),
(19, '73990138', 'Ruby', 'Schroeder', 'Emerson', 6),
(20, '55414628', 'Celeste', 'Bruce', 'Rose', 6),
(21, '95692458', 'Roary', 'Sosa', 'Hayden', 6),
(22, '82911686', 'Wesley', 'White', 'Charles', 6),
(23, '76941657', 'Tana', 'Douglas', 'Hull', 6),
(24, '42333609', 'Judith', 'Petty', 'English', 6),
(25, '43508614', 'Tanek', 'Conner', 'Schmidt', 1),
(26, '37354488', 'Branden', 'Barnes', 'Kramer', 2),
(27, '58064952', 'Ian', 'Wise', 'Spence', 6),
(28, '44360221', 'Grant', 'Ware', 'Benson', 5),
(29, '58440868', 'Preston', 'Whitehead', 'Baird', 1),
(30, '24195867', 'Ivana', 'Frank', 'Garrett', 7),
(31, '29545533', 'Farrah', 'English', 'Williamson', 5),
(32, '99979095', 'Tucker', 'Myers', 'Bentley', 4),
(33, '29187898', 'Jeanette', 'English', 'Campbell', 2),
(34, '21533876', 'Alfreda', 'Gates', 'Huff', 1),
(35, '93126064', 'Alec', 'Barnett', 'Rocha', 2),
(36, '64880345', 'Nehru', 'Walton', 'Rosa', 5),
(37, '85064792', 'Reed', 'Noel', 'Montgomery', 2),
(38, '95457379', 'Whitney', 'Flynn', 'Haney', 2),
(39, '61940800', 'Holly', 'Deleon', 'Phelps', 5),
(40, '58693169', 'Tanner', 'Bryant', 'Nichols', 1),
(41, '68944024', 'Stephen', 'Singleton', 'Gill', 1),
(42, '79921193', 'Kylynn', 'Watson', 'Blackburn', 2),
(43, '16044271', 'Summer', 'Cherry', 'Delaney', 1),
(44, '90492686', 'Faith', 'Pickett', 'Gill', 4),
(45, '50584051', 'Gloria', 'Simpson', 'Jensen', 1),
(46, '88225068', 'Colorado', 'Vargas', 'Sellers', 1),
(47, '87202619', 'Melvin', 'Chaney', 'Workman', 2),
(48, '87035564', 'Melinda', 'Golden', 'Parker', 1),
(49, '29168358', 'Finn', 'Douglas', 'Yates', 6),
(50, '81010413', 'Ramona', 'Hickman', 'Barnes', 5),
(51, '33061633', 'Cathleen', 'Barnes', 'Daugherty', 4),
(52, '62937368', 'Carla', 'Hood', 'Palmer', 5),
(53, '17862211', 'Jayme', 'Morse', 'Dalton', 4),
(54, '79568108', 'Harriet', 'Robbins', 'Pierce', 4),
(55, '83141523', 'Brandon', 'Yang', 'Cook', 6),
(56, '15847135', 'Nissim', 'Madden', 'Le', 5),
(57, '21099384', 'Alec', 'Santana', 'Mccall', 1),
(58, '23413510', 'Martin', 'Blackwell', 'Reese', 1),
(59, '36369652', 'Hashim', 'Ingram', 'Stephens', 3),
(60, '62289768', 'Dorian', 'Mckenzie', 'Finch', 3),
(61, '50256519', 'Griffith', 'Blackwell', 'Barrett', 6),
(62, '33449097', 'Roth', 'Bishop', 'Reid', 5),
(63, '49199839', 'August', 'Michael', 'Obrien', 7),
(64, '95164572', 'Hyacinth', 'Reeves', 'Noel', 5),
(65, '92670466', 'Andrew', 'Day', 'Hendricks', 6),
(66, '23116781', 'Mohammad', 'Kinney', 'Fields', 1),
(67, '24609272', 'Nola', 'Albert', 'Maynard', 5),
(68, '74458465', 'Laith', 'Preston', 'Blair', 5),
(69, '84422158', 'Oren', 'Good', 'Leon', 1),
(70, '78234195', 'Jamalia', 'Washington', 'Greene', 6),
(71, '30269480', 'Oleg', 'Knight', 'Hughes', 4),
(72, '28566679', 'Phyllis', 'Sosa', 'Sanford', 3),
(73, '36234039', 'Cruz', 'Davenport', 'Wright', 4),
(74, '19408588', 'Deanna', 'Charles', 'Macias', 3),
(75, '16009074', 'Basil', 'Montgomery', 'Mcleod', 1),
(76, '81907287', 'Althea', 'Flynn', 'Delaney', 3),
(77, '30217839', 'Lenore', 'Mcneil', 'Fowler', 4),
(78, '57051944', 'Tanya', 'Ramirez', 'Stephens', 5),
(79, '82829071', 'Chaney', 'Matthews', 'Gordon', 2),
(80, '74106920', 'Todd', 'Molina', 'Bass', 4),
(81, '49201233', 'Madison', 'Richardson', 'Conley', 2),
(82, '24134581', 'Fiona', 'Rollins', 'Bartlett', 4),
(83, '60813391', 'Trevor', 'Pena', 'Roberts', 6),
(84, '86199332', 'Damian', 'Flores', 'Calderon', 4),
(85, '98337613', 'Moses', 'Hickman', 'Slater', 2),
(86, '26225074', 'Ali', 'Callahan', 'Schneider', 6),
(87, '16118998', 'Mason', 'Graham', 'Gould', 4),
(88, '68848613', 'Griffith', 'Clarke', 'Cohen', 6),
(89, '18362963', 'Kevin', 'Horn', 'Carlson', 2),
(90, '94994845', 'Imani', 'Brooks', 'Hutchinson', 1),
(91, '54914578', 'Noel', 'Stevens', 'Henson', 4),
(92, '95582270', 'Marshall', 'Spencer', 'Tyson', 5),
(93, '50996571', 'Noelle', 'Chapman', 'Mcleod', 5),
(94, '70732353', 'Kevyn', 'Rollins', 'Humphrey', 7),
(95, '39142773', 'Jada', 'Cote', 'Mcknight', 5),
(96, '92808527', 'Lael', 'Stevens', 'Hays', 5),
(97, '88360863', 'Alma', 'Butler', 'Wong', 4),
(98, '63515552', 'Barbara', 'Mckenzie', 'Glass', 1),
(99, '87751465', 'Guinevere', 'Riddle', 'Juarez', 7),
(100, '94456956', 'Buckminster', 'Haynes', 'Horn', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Encomiendas`
--

CREATE TABLE IF NOT EXISTS `Encomiendas` (
  `IdEncomienda` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` char(8) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IdEncomienda`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inicio`
--

CREATE TABLE IF NOT EXISTS `Inicio` (
  `IdInicio` int(11) NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IdInicio`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=221 ;

--
-- Volcado de datos para la tabla `Inicio`
--

INSERT INTO `Inicio` (`IdInicio`, `Ciudad`) VALUES
(1, 'Lima'),
(2, 'Arequipa'),
(3, 'Trujillo'),
(4, 'Chiclayo'),
(5, ' Iquitos'),
(6, 'Piura'),
(7, 'Cusco'),
(8, 'Chimbote'),
(9, 'Huancayo'),
(10, 'Tacna'),
(11, 'Utcubamba'),
(12, 'Huaraz'),
(13, 'Aija'),
(14, 'Casma'),
(15, 'Huari'),
(16, 'ayacucho'),
(17, 'cajamarca'),
(18, 'huancavelica'),
(19, 'huánuco'),
(20, 'ica'),
(21, 'junín'),
(22, 'la libertad'),
(23, 'lambayeque'),
(24, 'loreto'),
(25, 'Madre de dios'),
(26, 'Cañete'),
(27, 'Ucayali'),
(28, 'Moquegua'),
(29, 'Pasco'),
(30, 'Yumbes'),
(31, 'Lamas'),
(32, 'Sullana'),
(33, 'Puno'),
(34, 'Moyobamba'),
(35, 'San Martin'),
(36, 'Ancash'),
(37, 'Chincha'),
(38, 'Pisco'),
(39, 'Nazca'),
(40, 'Satipo'),
(41, 'Concepcion'),
(42, 'Tarma'),
(43, 'Huaral'),
(44, 'Ilo'),
(45, 'Jaén Cajamarca'),
(46, 'San Ignacio'),
(47, 'San Marcos'),
(48, 'Espinar'),
(49, 'Urubamba'),
(50, 'Dos de Mayo Huánuco'),
(51, 'Palpa'),
(52, 'Tambopata'),
(53, 'Oxapampa'),
(54, 'Rioja'),
(55, 'Ucayali'),
(56, 'Lima'),
(57, 'Arequipa'),
(58, 'Trujillo'),
(59, 'Chiclayo'),
(60, ' Iquitos'),
(61, 'Piura'),
(62, 'Cusco'),
(63, 'Chimbote'),
(64, 'Huancayo'),
(65, 'Tacna'),
(66, 'Utcubamba'),
(67, 'Huaraz'),
(68, 'Aija'),
(69, 'Casma'),
(70, 'Huari'),
(71, 'ayacucho'),
(72, 'cajamarca'),
(73, 'huancavelica'),
(74, 'huánuco'),
(75, 'ica'),
(76, 'junín'),
(77, 'la libertad'),
(78, 'lambayeque'),
(79, 'loreto'),
(80, 'Madre de dios'),
(81, 'Cañete'),
(82, 'Ucayali'),
(83, 'Moquegua'),
(84, 'Pasco'),
(85, 'Yumbes'),
(86, 'Lamas'),
(87, 'Sullana'),
(88, 'Puno'),
(89, 'Moyobamba'),
(90, 'San Martin'),
(91, 'Ancash'),
(92, 'Chincha'),
(93, 'Pisco'),
(94, 'Nazca'),
(95, 'Satipo'),
(96, 'Concepcion'),
(97, 'Tarma'),
(98, 'Huaral'),
(99, 'Ilo'),
(100, 'Jaén Cajamarca'),
(101, 'San Ignacio'),
(102, 'San Marcos'),
(103, 'Espinar'),
(104, 'Urubamba'),
(105, 'Dos de Mayo Huánuco'),
(106, 'Palpa'),
(107, 'Tambopata'),
(108, 'Oxapampa'),
(109, 'Rioja'),
(110, 'Ucayali'),
(111, 'Lima'),
(112, 'Arequipa'),
(113, 'Trujillo'),
(114, 'Chiclayo'),
(115, ' Iquitos'),
(116, 'Piura'),
(117, 'Cusco'),
(118, 'Chimbote'),
(119, 'Huancayo'),
(120, 'Tacna'),
(121, 'Utcubamba'),
(122, 'Huaraz'),
(123, 'Aija'),
(124, 'Casma'),
(125, 'Huari'),
(126, 'ayacucho'),
(127, 'cajamarca'),
(128, 'huancavelica'),
(129, 'huánuco'),
(130, 'ica'),
(131, 'junín'),
(132, 'la libertad'),
(133, 'lambayeque'),
(134, 'loreto'),
(135, 'Madre de dios'),
(136, 'Cañete'),
(137, 'Ucayali'),
(138, 'Moquegua'),
(139, 'Pasco'),
(140, 'Yumbes'),
(141, 'Lamas'),
(142, 'Sullana'),
(143, 'Puno'),
(144, 'Moyobamba'),
(145, 'San Martin'),
(146, 'Ancash'),
(147, 'Chincha'),
(148, 'Pisco'),
(149, 'Nazca'),
(150, 'Satipo'),
(151, 'Concepcion'),
(152, 'Tarma'),
(153, 'Huaral'),
(154, 'Ilo'),
(155, 'Jaén Cajamarca'),
(156, 'San Ignacio'),
(157, 'San Marcos'),
(158, 'Espinar'),
(159, 'Urubamba'),
(160, 'Dos de Mayo Huánuco'),
(161, 'Palpa'),
(162, 'Tambopata'),
(163, 'Oxapampa'),
(164, 'Rioja'),
(165, 'Ucayali'),
(166, 'Lima'),
(167, 'Arequipa'),
(168, 'Trujillo'),
(169, 'Chiclayo'),
(170, ' Iquitos'),
(171, 'Piura'),
(172, 'Cusco'),
(173, 'Chimbote'),
(174, 'Huancayo'),
(175, 'Tacna'),
(176, 'Utcubamba'),
(177, 'Huaraz'),
(178, 'Aija'),
(179, 'Casma'),
(180, 'Huari'),
(181, 'ayacucho'),
(182, 'cajamarca'),
(183, 'huancavelica'),
(184, 'huánuco'),
(185, 'ica'),
(186, 'junín'),
(187, 'la libertad'),
(188, 'lambayeque'),
(189, 'loreto'),
(190, 'Madre de dios'),
(191, 'Cañete'),
(192, 'Ucayali'),
(193, 'Moquegua'),
(194, 'Pasco'),
(195, 'Yumbes'),
(196, 'Lamas'),
(197, 'Sullana'),
(198, 'Puno'),
(199, 'Moyobamba'),
(200, 'San Martin'),
(201, 'Ancash'),
(202, 'Chincha'),
(203, 'Pisco'),
(204, 'Nazca'),
(205, 'Satipo'),
(206, 'Concepcion'),
(207, 'Tarma'),
(208, 'Huaral'),
(209, 'Ilo'),
(210, 'Jaén Cajamarca'),
(211, 'San Ignacio'),
(212, 'San Marcos'),
(213, 'Espinar'),
(214, 'Urubamba'),
(215, 'Dos de Mayo Huánuco'),
(216, 'Palpa'),
(217, 'Tambopata'),
(218, 'Oxapampa'),
(219, 'Rioja'),
(220, 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Itinerario`
--

CREATE TABLE IF NOT EXISTS `Itinerario` (
  `IdItinerario` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) DEFAULT NULL,
  `IdRuta` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `IdEncomienda` int(11) DEFAULT NULL,
  `IdMaleta` int(11) DEFAULT NULL,
  `IdVehiculo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdItinerario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Maletas`
--

CREATE TABLE IF NOT EXISTS `Maletas` (
  `IdMaleta` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` char(8) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IdMaleta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `NomMarca` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`IdMarca`, `NomMarca`) VALUES
(1, 'Toyota'),
(2, 'Mercedes'),
(3, 'Mazda'),
(4, 'Hyundai'),
(5, 'Kia'),
(6, 'Nissan'),
(7, 'CHEVROLET'),
(8, 'Suzuki'),
(9, 'Renault'),
(10, 'Volkswagen'),
(11, 'Mitsubishi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
  `IdModelo` int(11) NOT NULL AUTO_INCREMENT,
  `NroAsientos` int(11) DEFAULT NULL,
  `Nombre` varchar(54) CHARACTER SET latin1 DEFAULT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdModelo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pelicula`
--

CREATE TABLE IF NOT EXISTS `Pelicula` (
  `IdPelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IdPelicula`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=103 ;

--
-- Volcado de datos para la tabla `Pelicula`
--

INSERT INTO `Pelicula` (`IdPelicula`, `nombre`) VALUES
(1, 'Rapidos y furiosos 2'),
(2, 'Rapidos y furiosos 3'),
(3, 'Rapidos y furiosos 4'),
(4, 'Rapidos y furiosos 5'),
(5, 'Rapidos y furiosos 6'),
(6, 'Rapidos y furiosos 7'),
(7, 'Rapidos y furiosos 8'),
(8, 'Psicosis'),
(9, 'Tiempos violentos'),
(10, 'Bastardos sin gloria'),
(11, 'Frozen'),
(12, 'El señor de los anillos - Las dos torres'),
(13, 'Skyfall'),
(14, 'Buscando a Nemo'),
(15, 'Buscando a Dory'),
(16, 'Zootopia'),
(17, 'Batman vs. Superman'),
(18, 'El hombre de Acero'),
(19, 'La liga de la justicia'),
(20, 'Toy Story'),
(21, 'El rey Leon'),
(22, 'Lilo y Stitch'),
(23, 'Harry Potter y la Piedra Filosofal'),
(24, 'Old Boy'),
(25, 'Diamantes para el desayuno'),
(26, 'Silent Hill'),
(27, 'Silent Hill 2'),
(28, 'Los Vengadores'),
(29, 'Titanic'),
(30, 'Matrix'),
(31, 'Avatar'),
(32, 'El ultimo maestro del aire'),
(33, 'It'),
(34, 'Thor: Ragnarok'),
(35, 'Blade'),
(36, 'Blade Runner'),
(37, 'Tomb Raider'),
(38, 'Kill Bill'),
(39, 'Kill Bill 2'),
(40, 'Django'),
(41, 'Origen'),
(42, 'Amnesia'),
(43, 'Whiplash'),
(44, 'MAD MAX'),
(45, 'Blade Runner 2049'),
(46, 'La Mujer Maravilla'),
(47, 'Lo que el Viento se llevo'),
(48, 'Perros de Reserva'),
(49, 'El Cisne Negro'),
(50, 'Mente Indomable'),
(51, 'Xmen'),
(52, 'Los Pitufos'),
(53, 'Orgullo y Prejuicio'),
(54, 'Shrek'),
(55, 'Deadpool'),
(56, 'La Guerra de los Mundos'),
(57, 'Forrest Gump'),
(58, 'El Codigo Da Vinci'),
(59, 'Jurassic Park'),
(60, 'Soy Leyenda'),
(61, 'Duro de Matar'),
(62, 'El Sexto Sentido'),
(63, 'Hombres de Negro'),
(64, 'Iron Man'),
(65, 'Dia de la Independencia'),
(66, 'Tiburon'),
(67, '300'),
(68, 'Gladiador'),
(69, 'Sim City'),
(70, 'Hell Boy'),
(71, 'El Resplandor'),
(72, '007'),
(73, '6 balas'),
(74, 'Hitch'),
(75, 'Footlose'),
(76, 'Grease'),
(77, 'Interestelar'),
(78, '2001: Una Odisea en el Espacio'),
(79, 'Alien'),
(80, 'Robocop'),
(81, 'El Club de la Pelea'),
(82, 'El Plan Perfecto'),
(83, 'La lista de Schindlerss'),
(84, 'Mujer Bonita'),
(85, 'Tarzan'),
(86, 'Sr. y Sra. Smith'),
(87, 'El último Samurai'),
(88, 'Mision Imposible'),
(89, 'Cara Cortada'),
(90, '101 Dalamatas'),
(91, 'Yo, Robot'),
(92, 'Guardianes de la Galaxia'),
(93, 'Van Helsing'),
(94, '27 Bodas'),
(95, 'Atrapado y sin Salida'),
(96, 'Rambo'),
(97, 'Ratatouille'),
(98, 'Birdman'),
(99, 'Watchmen'),
(100, 'Salvar el soldado Ryan'),
(101, 'La Era del Hielo'),
(102, 'Armageddon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Promocion`
--

CREATE TABLE IF NOT EXISTS `Promocion` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `Promocion`
--

INSERT INTO `Promocion` (`IdPromocion`, `Nombre`, `fechaInicio`, `fechaFinal`) VALUES
(1, 'Año Nuevo', '2017-12-28', '2018-01-01'),
(2, 'San Valentrín', '2018-02-10', '2018-02-14'),
(3, 'Semana Santa', '2018-03-28', '2018-04-01'),
(4, 'día de la madre', '2018-05-10', '2018-05-13'),
(5, 'día de la bandera', '2018-06-05', '2018-06-07'),
(6, 'día del padre', '2018-06-15', '2018-06-17'),
(7, 'día de la independencia', '2018-07-27', '2018-07-29'),
(8, 'día de todos los santos', '2018-10-31', '2018-11-02'),
(9, 'Navidad', '2018-12-20', '2018-12-25'),
(10, 'Año Nuevo', '2017-12-28', '2018-01-01'),
(11, 'San Valentrín', '2018-02-10', '2018-02-14'),
(12, 'Semana Santa', '2018-03-28', '2018-04-01'),
(13, 'día de la madre', '2018-05-10', '2018-05-13'),
(14, 'día de la bandera', '2018-06-05', '2018-06-07'),
(15, 'día del padre', '2018-06-15', '2018-06-17'),
(16, 'día de la independencia', '2018-07-27', '2018-07-29'),
(17, 'día de todos los santos', '2018-10-31', '2018-11-02'),
(18, 'Navidad', '2018-12-20', '2018-12-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Recibo`
--

CREATE TABLE IF NOT EXISTS `Recibo` (
  `IDRecibo` varchar(5) CHARACTER SET latin1 NOT NULL,
  `DNI` char(8) CHARACTER SET latin1 NOT NULL,
  `IdVentanilla` int(11) DEFAULT NULL,
  `NroBoletos` int(11) DEFAULT NULL,
  `Precio` decimal(5,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `IDBoleto` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IDRecibo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ruta`
--

CREATE TABLE IF NOT EXISTS `Ruta` (
  `IdRuta` varchar(16) CHARACTER SET latin1 NOT NULL,
  `IdInicio` int(11) DEFAULT NULL,
  `IdDestino` int(11) DEFAULT NULL,
  `HoraSalida` datetime DEFAULT NULL,
  `HoraLlegada` datetime DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdRuta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Serie`
--

CREATE TABLE IF NOT EXISTS `Serie` (
  `IdSerie` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IdSerie`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `Serie`
--

INSERT INTO `Serie` (`IdSerie`, `nombre`) VALUES
(1, 'Los Soprano'),
(2, 'The Wire'),
(3, 'Breaking Bad'),
(4, 'Mad Men'),
(5, 'Seinfeld'),
(6, 'Los Simpson'),
(7, 'Dimensión desconocida'),
(8, 'Satuday Night Live'),
(9, 'Todo en familia'),
(10, 'The Daily Show'),
(11, 'Freaks and Geeks'),
(12, 'Juego de Tronos'),
(13, 'Late Night with David Letterman'),
(14, 'The Larry Sanders Show'),
(15, 'The West Wing'),
(16, ' M*A*S*H'),
(17, 'Twin Peaks'),
(18, 'Star Trek'),
(19, 'Curb your Enthusiasm'),
(20, 'Cheers'),
(21, 'The Office(U.K.)'),
(22, 'Louie'),
(23, 'Deadwood'),
(24, 'Friday Night Lights'),
(25, 'Veep'),
(26, 'Friends'),
(27, 'Arrested Development'),
(28, 'Expediente X'),
(29, 'Monty Pythons Flying Circus'),
(30, 'The Tonight Show with Johnny Carson'),
(31, 'Sesame Street'),
(32, 'I Love Lucy'),
(33, 'South Park'),
(34, '30 Rock'),
(35, 'My So-Called Life'),
(36, 'Law & Order'),
(37, 'Orange is the New Black'),
(38, 'Buffy the Vampire Slayer'),
(39, 'Lost'),
(40, 'The Shield'),
(41, 'The Honeymooners'),
(42, 'NYPD Blue'),
(43, 'The Americans'),
(44, 'Columbo'),
(45, 'Battlestar Galactica'),
(46, 'The Mary Tyler Moore Show'),
(47, 'The Rockford Files'),
(48, 'The Office (U.S.)'),
(49, 'Taxi'),
(50, 'ER'),
(51, 'Fargo'),
(52, 'The Colbert Report'),
(53, 'The Bob Newhart Show'),
(54, 'The Muppet Show'),
(55, 'Six Feet Under'),
(56, '24'),
(57, 'Fawlty Towers'),
(58, 'Roots'),
(59, 'Hill Street Blues'),
(60, 'Beavis and Butt-Head'),
(61, 'Your Show of Shows'),
(62, 'Sex and the City'),
(63, 'The Wonder Years'),
(64, 'Chappelles Show'),
(65, 'Happy Days'),
(66, 'Downton Abbey'),
(67, 'The Odd Couple'),
(68, 'The State'),
(69, 'The Ed Sullivan Show'),
(70, 'Roseanne'),
(71, 'Mr. Show'),
(72, 'Girls'),
(73, ' Transparent'),
(74, 'The Ren & Stimpy Show'),
(75, 'American Crime Story: The People vs. O.J. Simpson'),
(76, 'Late Night with Conan O Brien'),
(77, 'The Walking Dead'),
(78, 'Thirty Something'),
(79, 'In Living Color'),
(80, 'The Fugitive'),
(81, 'Dallas'),
(82, 'The Jeffersons'),
(83, 'House of Cards'),
(84, 'Real Time with Bill Maher'),
(85, 'The Real World'),
(86, 'Good Times'),
(87, 'Doctor Who'),
(88, 'Party Down'),
(89, 'Homeland'),
(90, 'The Dick Van Dyke Show'),
(91, 'Broad City'),
(92, 'American Idol'),
(93, 'Mystery Science Theater 3000'),
(94, 'Kenan y Kel'),
(95, 'Drake y Josh'),
(96, 'Gunsmoke'),
(97, 'Portlandia'),
(98, 'The Golden Girls'),
(99, 'Oz'),
(100, 'Eastbound and Down');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Servicios`
--

CREATE TABLE IF NOT EXISTS `Servicios` (
  `IdServicio` int(11) NOT NULL AUTO_INCREMENT,
  `IdComida` int(11) DEFAULT NULL,
  `IdSerie` int(11) DEFAULT NULL,
  `IdPelicula` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdServicio`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `Servicios`
--

INSERT INTO `Servicios` (`IdServicio`, `IdComida`, `IdSerie`, `IdPelicula`) VALUES
(1, 77, 37, 4),
(2, 92, 36, 86),
(3, 32, 10, 57),
(4, 80, 87, 86),
(5, 94, 61, 1),
(6, 71, 10, 42),
(7, 73, 49, 96),
(8, 73, 35, 24),
(9, 60, 88, 59),
(10, 89, 72, 70),
(11, 28, 81, 80),
(12, 97, 22, 90),
(13, 20, 77, 79),
(14, 32, 76, 50),
(15, 26, 28, 57),
(16, 54, 3, 39),
(17, 16, 42, 13),
(18, 85, 65, 3),
(19, 37, 48, 98),
(20, 93, 24, 16),
(21, 50, 91, 62),
(22, 82, 3, 14),
(23, 81, 12, 10),
(24, 96, 36, 24),
(25, 20, 38, 55),
(26, 16, 75, 26),
(27, 37, 98, 56),
(28, 32, 25, 97),
(29, 39, 37, 7),
(30, 33, 82, 50),
(31, 19, 9, 57),
(32, 46, 8, 8),
(33, 35, 78, 57),
(34, 40, 1, 80),
(35, 34, 90, 89),
(36, 93, 1, 97),
(37, 33, 45, 52),
(38, 62, 46, 48),
(39, 17, 2, 90),
(40, 50, 91, 91),
(41, 13, 42, 17),
(42, 89, 60, 22),
(43, 60, 4, 43),
(44, 58, 11, 74),
(45, 88, 34, 84),
(46, 20, 78, 9),
(47, 31, 83, 16),
(48, 74, 98, 5),
(49, 19, 22, 3),
(50, 36, 71, 99),
(51, 47, 23, 33),
(52, 94, 94, 32),
(53, 37, 62, 86),
(54, 23, 59, 5),
(55, 65, 23, 80),
(56, 55, 5, 50),
(57, 72, 18, 93),
(58, 16, 5, 91),
(59, 35, 28, 38),
(60, 31, 74, 32),
(61, 71, 5, 65),
(62, 46, 47, 92),
(63, 24, 8, 58),
(64, 23, 82, 86),
(65, 82, 3, 92),
(66, 19, 75, 62),
(67, 41, 49, 22),
(68, 11, 86, 54),
(69, 95, 5, 89),
(70, 97, 18, 31),
(71, 93, 4, 71),
(72, 28, 95, 32),
(73, 74, 33, 96),
(74, 36, 14, 3),
(75, 96, 91, 81),
(76, 37, 86, 30),
(77, 77, 65, 14),
(78, 38, 51, 59),
(79, 73, 25, 80),
(80, 52, 4, 84),
(81, 91, 90, 33),
(82, 78, 30, 73),
(83, 53, 10, 3),
(84, 68, 9, 25),
(85, 66, 50, 93),
(86, 27, 88, 24),
(87, 14, 82, 96),
(88, 43, 86, 10),
(89, 89, 96, 89),
(90, 43, 87, 54),
(91, 29, 28, 48),
(92, 34, 52, 33),
(93, 98, 94, 23),
(94, 18, 10, 98),
(95, 78, 49, 20),
(96, 11, 73, 53),
(97, 84, 9, 16),
(98, 84, 64, 71),
(99, 89, 2, 31),
(100, 87, 64, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipoPago`
--

CREATE TABLE IF NOT EXISTS `TipoPago` (
  `IdTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IdTipo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `TipoPago`
--

INSERT INTO `TipoPago` (`IdTipo`, `nombre`) VALUES
(1, 'Efectivo'),
(2, 'Visa'),
(3, 'Mastercard'),
(4, 'AmericanExpress'),
(5, 'Maestro'),
(6, 'Organos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vehiculo`
--

CREATE TABLE IF NOT EXISTS `Vehiculo` (
  `IdVehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `IdModelo` int(11) DEFAULT NULL,
  `NroPlaca` char(7) CHARACTER SET latin1 DEFAULT NULL,
  `Tipo` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpleado` int(11) DEFAULT NULL,
  `IdServicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdVehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ventanilla`
--

CREATE TABLE IF NOT EXISTS `Ventanilla` (
  `IdVentanilla` int(11) NOT NULL AUTO_INCREMENT,
  `IdEmpleado` int(11) DEFAULT NULL,
  `IdTipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdVentanilla`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
