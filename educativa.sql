-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2015 a las 07:41:45
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `educativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(100) NOT NULL,
  `id_curso` int(100) NOT NULL,
  `curso` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cursos que los estudiantes de primer año daran';

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `id_curso`, `curso`) VALUES
(1, 100, 'Matematica'),
(2, 101, 'Español'),
(3, 102, 'Artistica'),
(4, 103, 'Ciencias Sociales'),
(5, 104, 'Musica'),
(6, 105, 'Ed Fisica'),
(7, 106, 'Ingles'),
(8, 107, 'Ciencias Naturales'),
(9, 108, 'Mecanografia'),
(10, 109, 'Religion'),
(11, 110, 'Artes Industriales'),
(12, 111, 'Familia Comunitaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id` int(100) NOT NULL,
  `Nom_estudiante` varchar(60) NOT NULL,
  `Ape_Estudiante` varchar(60) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `perfil` varchar(100) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `salon` varchar(10) NOT NULL,
  `rol` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id`, `Nom_estudiante`, `Ape_Estudiante`, `id_turno`, `id_nivel`, `usuario`, `password`, `email`, `perfil`, `cedula`, `salon`, `rol`) VALUES
(2, 'Reynaldo', 'Villarreal', 1, 1, '', '', '', '', '', '', 0),
(3, 'Bolivar', 'Cortes', 1, 1, 'bcortes', '123456', 'bolhy10@hotmail.com', 'images/estudiantes/bcortes.jpg', '9-566-443', 'A1', 2),
(4, 'Laura', 'Aripe', 1, 1, '', '', '', '', '', '', 0),
(5, 'Carlos', 'Grajal', 1, 1, '', '', '', '', '', '', 0),
(6, 'Victor', 'Perea', 1, 1, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `Id` int(100) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `id_curso` varchar(60) NOT NULL,
  `id_horarioProf` int(100) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `rol` int(2) NOT NULL,
  `perfil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`Id`, `Nombre`, `Apellido`, `id_curso`, `id_horarioProf`, `usuario`, `password`, `email`, `cedula`, `rol`, `perfil`) VALUES
(1, 'Jose', 'Castrellon', '102', 0, 'cjose', '123456', 'josec@gmail.com', '6-654-543', 1, 'images/profesor/jose.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `ID` int(3) NOT NULL,
  `salon` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`ID`, `salon`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'B1'),
(5, 'B2'),
(6, 'B3'),
(7, 'C1'),
(8, 'C2'),
(9, 'C3'),
(10, 'D1'),
(11, 'D2'),
(12, 'D3'),
(13, 'E1'),
(14, 'E2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `ID` int(11) NOT NULL,
  `id_curso` int(3) NOT NULL,
  `nombre_tarea` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `id_salon` int(3) NOT NULL,
  `fecha_entrega` varchar(12) NOT NULL,
  `fecha_inicio` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`ID`, `id_curso`, `nombre_tarea`, `descripcion`, `id_salon`, `fecha_entrega`, `fecha_inicio`) VALUES
(1, 102, 'InvestigaciÃ³n #1', 'Investigar que es Arte ?. \nComo esta constituida el arte ?. \nEjemplos de artes destacadas?. \nPara usted quien fue Picaso?.', 7, '2016-02-12', '26-11-2015'),
(2, 102, 'Historia de Miedo', 'Inventar una historia de miedo con las caras del cuadro " Sin tÃ­tulo ". La extensiÃ³n puede ser similar a la anterior tarea e igualmente puede realizarse en el cuaderno de Lengua.', 4, '2015-12-06', '26-11-2015'),
(3, 102, 'Cuerpo Geometrico', 'Ver y estudiar el video "Â¿Cuales son los Diferentes Cuerpos Geometricos". EstÃ¡ en mismo sitio del anterior video. El video dado en clases. ', 14, '2015-12-08', '26-11-2015'),
(4, 102, 'La Luz', 'Terminar de copiar en el cuaderno el documento "La Luz" y ver el video que se encuentra allÃ­. Se que los dibujos que hay en el documento les van a quedar muy bonitos en el cuaderno y que el video les va a gustar.', 6, '2015-11-28', '26-11-2015');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
