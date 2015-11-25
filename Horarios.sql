-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2015 a las 09:25:16
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Cursos que los estudiantes de primer año daran';

--
-- Volcado de datos para la tabla `Cursos`
--

INSERT INTO `Cursos` (`id`, `id_curso`, `curso`, `nivel`) VALUES
(1, 100, 'Matematica', 1),
(2, 101, 'Espanol', 1),
(3, 102, 'Artistica', 1),
(4, 103, 'Ciencias Sociales', 1),
(5, 104, 'Musica', 1),
(6, 105, 'Ed Fisica', 1),
(7, 106, 'Ingles', 1),
(8, 107, 'Ciencias Naturales', 1),
(9, 108, 'Mecanografia', 1),
(10, 109, 'Religion', 1),
(11, 110, 'Artes Industriales', 1),
(12, 111, 'Familia Comunitaria', 1);

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
  `turno` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Estudiante`
--

INSERT INTO `Estudiante` (`Id`, `Id_Estudiante`, `Nom_estudiante`, `Ape_Estudiante`, `turno`, `nivel`) VALUES
(2, 1000, 'Reynaldo', 'Villarreal', 'Matutino', 1),
(3, 1001, 'Bolivar', 'Cortes', 'Vespertino', 1),
(4, 1002, 'Laura', 'Aripe', 'Matutino', 1),
(5, 1003, 'Carlos', 'Grajal', 'Vespertino', 1),
(6, 1004, 'Victor', 'Perea', 'Matutino', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hora`
--

CREATE TABLE IF NOT EXISTS `Hora` (
  `id` int(10) NOT NULL,
  `id_hora` int(10) NOT NULL,
  `nom_hora` varchar(60) NOT NULL,
  `intervalo` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Hora`
--

INSERT INTO `Hora` (`id`, `id_hora`, `nom_hora`, `intervalo`) VALUES
(1, 1, 'Primera', ''),
(2, 2, 'Segunda', ''),
(3, 3, 'Tercera', ''),
(4, 4, 'Cuarta', ''),
(5, 5, 'Quinta', ''),
(6, 6, 'Sexta', ''),
(7, 100, 'RECREO', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarioE1`
--

CREATE TABLE IF NOT EXISTS `horarioE1` (
  `id` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_hora` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarioE1`
--

INSERT INTO `horarioE1` (`id`, `id_horario`, `id_hora`, `id_dia`, `id_curso`) VALUES
(1, 111, 1, 10, 100);

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
  `id_horarioProf` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Profesor`
--

INSERT INTO `Profesor` (`Id`, `Id_profesor`, `Nombre`, `Apellido`, `id_curso`, `id_horarioProf`) VALUES
(1, 2000, 'Pablo', 'Picasso', '102', 0);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `horarioE1`
--
ALTER TABLE `horarioE1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
