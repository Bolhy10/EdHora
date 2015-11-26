-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2015 a las 02:09:03
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Horarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cursos`
--

CREATE TABLE IF NOT EXISTS `Cursos` (
  `id` int(100) NOT NULL,
  `id_curso` int(100) NOT NULL,
  `curso` varchar(60) NOT NULL,
  `nivel` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Cursos que los estudiantes de primer año daran';

--
-- Volcado de datos para la tabla `Cursos`
--

INSERT INTO `Cursos` (`id`, `id_curso`, `curso`, `nivel`) VALUES
(1, 100, 'Matematica', 1),
(2, 101, 'Español', 1),
(3, 102, 'Artistica', 1),
(4, 103, 'Ciencias Sociales', 1),
(5, 104, 'Musica', 1),
(6, 105, 'Ed Fisica', 1),
(7, 106, 'Ingles', 1),
(8, 107, 'Ciencias Naturales', 1),
(9, 108, 'Mecanografia', 1),
(10, 109, 'Religion', 1),
(11, 110, 'Artes Industriales', 1),
(12, 111, 'Familia Comunitaria', 1),
(13, 112, 'RECREO', 1),
(14, 113, 'Orientación', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dias`
--

CREATE TABLE IF NOT EXISTS `Dias` (
  `id` int(11) NOT NULL,
  `id_dia` int(10) NOT NULL,
  `nom_dia` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Dias`
--

INSERT INTO `Dias` (`id`, `id_dia`, `nom_dia`) VALUES
(2, 10, 'Lunes'),
(3, 20, 'Martes'),
(4, 30, 'Miercoles'),
(5, 40, 'Jueves'),
(6, 50, 'Viernes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudiante`
--

CREATE TABLE IF NOT EXISTS `Estudiante` (
  `Id` int(100) NOT NULL,
  `Id_Estudiante` int(200) NOT NULL,
  `Nom_estudiante` varchar(60) NOT NULL,
  `Ape_Estudiante` varchar(60) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Estudiante`
--

INSERT INTO `Estudiante` (`Id`, `Id_Estudiante`, `Nom_estudiante`, `Ape_Estudiante`, `id_turno`, `id_nivel`, `usuario`, `password`, `correo`, `foto`) VALUES
(2, 1000, 'Reynaldo', 'Villarreal', 1, 1, '', '', '', ''),
(3, 1001, 'Bolivar', 'Cortes', 1, 1, '', '', '', ''),
(4, 1002, 'Laura', 'Aripe', 1, 1, '', '', '', ''),
(5, 1003, 'Carlos', 'Grajal', 1, 1, '', '', '', ''),
(6, 1004, 'Victor', 'Perea', 1, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hora`
--

CREATE TABLE IF NOT EXISTS `Hora` (
  `id` int(10) NOT NULL,
  `id_hora` int(10) NOT NULL,
  `nom_hora` varchar(60) NOT NULL,
  `intervalo` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Hora`
--

INSERT INTO `Hora` (`id`, `id_hora`, `nom_hora`, `intervalo`) VALUES
(1, 1, 'Primera', '12:30 pm - 01:05 pm'),
(2, 2, 'Segunda', '1:05 pm - 1:40 pm'),
(3, 3, 'Tercera', '1:40 pm - 2:15 pm'),
(4, 4, 'Cuarta', '2:15 pm - 2:50 pm'),
(5, 5, 'RECREO', '2:50 pm - 3:05 pm'),
(6, 6, 'Quinta', '3:05 pm -3:40 pm'),
(7, 7, 'Sexta', '3:40 pm - 4:15 pm'),
(8, 8, 'Septima', '4:15 pm - 4:50 pm'),
(9, 9, 'Octava', '4:50 pm - 5:25 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarioE1`
--

CREATE TABLE IF NOT EXISTS `horarioE1` (
  `id_horario` int(11) NOT NULL,
  `id_hora` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarioE1`
--

INSERT INTO `horarioE1` (`id_horario`, `id_hora`, `id_dia`, `id_curso`) VALUES
(1, 1, 10, 103),
(2, 2, 10, 103),
(3, 3, 10, 104),
(4, 4, 10, 101),
(5, 5, 10, 112),
(6, 6, 10, 105),
(7, 7, 10, 105),
(8, 8, 10, 100),
(9, 9, 10, 106),
(10, 1, 20, 101),
(11, 2, 20, 101),
(12, 3, 20, 103),
(13, 4, 20, 113),
(14, 5, 20, 112),
(15, 6, 20, 107),
(16, 7, 20, 100),
(17, 8, 20, 111),
(18, 9, 20, 111),
(19, 1, 30, 107),
(20, 2, 30, 107),
(21, 3, 30, 104),
(22, 4, 30, 103),
(23, 5, 30, 112),
(24, 6, 30, 108),
(25, 7, 30, 108),
(26, 8, 30, 106),
(27, 9, 30, 101),
(28, 1, 40, 110),
(29, 2, 40, 102),
(30, 3, 40, 101),
(31, 4, 40, 101),
(32, 5, 40, 112),
(33, 6, 40, 100),
(34, 7, 40, 109),
(35, 8, 40, 103),
(36, 9, 40, 106),
(37, 1, 50, 102),
(38, 2, 50, 103),
(39, 3, 50, 100),
(40, 4, 50, 100),
(41, 5, 50, 112),
(42, 6, 50, 109),
(43, 7, 50, 107),
(44, 8, 50, 107),
(45, 9, 50, 106);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE IF NOT EXISTS `niveles` (
  `id_nivel` int(11) NOT NULL,
  `nivel` varchar(60) NOT NULL,
  `id_salon` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nivel`, `id_salon`) VALUES
(1, 'Primer año', 1),
(2, 'Segundo año ', 2),
(3, 'Tercer año', 3),
(4, 'Cuarto año', 4),
(5, 'Quinto Año', 5),
(6, 'Sexto año', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesor`
--

CREATE TABLE IF NOT EXISTS `Profesor` (
  `Id` int(100) NOT NULL,
  `Id_profesor` int(100) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `id_curso` varchar(60) NOT NULL,
  `id_horarioProf` int(100) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Profesor`
--

INSERT INTO `Profesor` (`Id`, `Id_profesor`, `Nombre`, `Apellido`, `id_curso`, `id_horarioProf`, `usuario`, `password`) VALUES
(1, 2000, 'Pablo', 'Picasso', '102', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE IF NOT EXISTS `salon` (
  `id_salon` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`id_salon`, `nombre`, `id_nivel`, `id_horario`) VALUES
(1, 'A-10', 1, 0),
(2, 'B-2', 2, 0),
(3, 'C-11', 3, 0),
(4, 'D-15', 4, 0),
(5, 'E-12', 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE IF NOT EXISTS `turno` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Dias`
--
ALTER TABLE `Dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Hora`
--
ALTER TABLE `Hora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarioE1`
--
ALTER TABLE `horarioE1`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`id_salon`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `Dias`
--
ALTER TABLE `Dias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Hora`
--
ALTER TABLE `Hora`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `horarioE1`
--
ALTER TABLE `horarioE1`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `id_salon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
