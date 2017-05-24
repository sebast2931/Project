-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2017 a las 03:26:08
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `id` int(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrativo`
--

INSERT INTO `administrativo` (`id`, `usuario`, `clave`) VALUES
(1001, 'root', 'root');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosdocentes`
--

CREATE TABLE `cursosdocentes` (
  `id` int(11) NOT NULL,
  `Nombre_Curso` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursosdocentes`
--

INSERT INTO `cursosdocentes` (`id`, `Nombre_Curso`, `nombre`) VALUES
(1, 'Competencias de leoescritura', 'Carlos'),
(2, 'Ingles grados 10° y 11°(Nivel 2) Grupo 1', 'mauricio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellidos`, `correo`, `usuario`, `clave`, `telefono`) VALUES
(1, 'Carlos ', 'Vaca', 'Vaca_carlos@gmail.com', 'vaca', 'vaca123', '21339394'),
(2, 'mauricio', 'molina', 'mao123@hotmail.com', 'mao', 'mao123', '44332443'),
(5, 'Sara', 'Lopez', 'lsara@gmail.com', 'sara', 'sara123', '5455445');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellidos`, `correo`, `usuario`, `clave`, `telefono`) VALUES
(1, 'sebastian', 'trujillo', 'elsebas95@gmail.com', 'sebastian', 'sebas123', '223322323'),
(2, 'Martin', 'Gonzales', 'martin.go@hotmail.com', 'martin.12', 'sebas123', '3322234345'),
(10, 'walter', 'arboleda', 'walter@hotmail.com', 'walter', 'walter123', '23334433'),
(9, 'valentina', 'bustamante', 'valenbusta@gmail.com', 'valenbusta', 'valen123', '23344334'),
(12, 'blanca', 'fernandez', 'balncaf@gmail.com', 'blanca', 'blanca1234', '34343422'),
(13, 'jehison', 'Trujillo', 'jtrujillo@hotmail.com', 'jei', 'jei123', '4333553'),
(14, 'jehison', 'Trujillo', 'jtrujillo@hotmail.com', 'jei', 'jei123', '4333553'),
(15, 'maria', 'ossa', 'mosa@gmail.com', 'maria', 'maria123', '5346721'),
(16, 'Teresa', 'Castañeda', 'terec@gmail.com', 'tere', 'tere123', '4356671'),
(17, 'edwin', 'trujillo', 'edwint@gmail.com', 'edwin', 'edwin1123', '43443334'),
(18, 'edwin', 'trujillo', 'edwint@gmail.com', 'edwin', 'edwin123', '43443334');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculados`
--

CREATE TABLE `matriculados` (
  `id` int(3) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `Nombre_Curso` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matriculados`
--

INSERT INTO `matriculados` (`id`, `usuario`, `Nombre_Curso`) VALUES
(1, 'sebastian', 'Diseño 3D'),
(2, 'sebastian', 'Fotografía publicitaria y comercial'),
(3, 'sebastian', 'Diseño 3D'),
(5, 'sebastian', 'Competencias de leoescritura'),
(6, 'walter', 'Ingles grados 10° y 11°(Nivel 3) Grupo 1'),
(7, 'walter', 'Introducción a la contabilidad'),
(8, 'walter', 'Introducción a la gastronomia'),
(9, 'sebastian', 'Competencias de leoescritura'),
(10, 'sebastian', 'Competencias de leoescritura'),
(11, 'sebastian', 'Competencias de leoescritura'),
(12, 'sebastian', 'Competencias de leoescritura'),
(13, 'walter', 'Una mirada al Derecho'),
(14, 'walter', 'Una mirada al Derecho'),
(15, 'sebastian', 'Introducción a la gastronomia'),
(16, 'sebastian', 'Una mirada al Derecho'),
(17, 'sebastian', 'Ingeniería Civil'),
(21, 'vaca', 'Introducción a la gastronomia'),
(22, 'vaca', 'Diseño 3D'),
(23, 'tere', 'Introducción a la contabilidad'),
(25, 'edwin', 'Introducción a la contabilidad'),
(26, 'edwin', 'Una mirada al Derecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semilleros`
--

CREATE TABLE `semilleros` (
  `Codigo` int(11) NOT NULL,
  `Nombre_Curso` varchar(50) NOT NULL,
  `Dias` varchar(50) NOT NULL,
  `Hora` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `semilleros`
--

INSERT INTO `semilleros` (`Codigo`, `Nombre_Curso`, `Dias`, `Hora`) VALUES
(1, 'Competencias de leoescritura', 'Lunes ', '2:00 pm - 5:00pm'),
(2, 'Diseño 3D', 'Martes ', '4:00pm - 6:00pm'),
(3, 'Emoción, cerebro y aprendizaje en la niñez', 'Lunes ', '4:00pm - 6:00pm'),
(4, 'Fotografía publicitaria y comercial', 'Miércoles ', '3:00pm - 5:00pm'),
(5, 'Fundamentos de admnistración', 'Martes ', '3:00pm - 5:00pm'),
(6, 'Ingeniería Civil', 'Lunes ', '3:00pm - 5:00pm'),
(8, 'Ingles grados 10° y 11°(Nivel 2) Grupo 1', 'Martes ', '4:00pm - 6:00pm'),
(9, 'Ingles grados 10° y 11°(Nivel 2) Grupo 2', 'Martes ', '4:00pm - 6:00pm'),
(10, 'Ingles grados 10° y 11°(Nivel 3) Grupo 1', 'Miércoles ', '4:00pm - 6:00pm'),
(11, 'Ingles grados 10° y 11°(Nivel 3) Grupo 2', 'Miércoles ', '4:00pm - 6:00pm'),
(12, 'Ingles grados 10° y 11°(Nivel 4) Grupo 1', 'Jueves ', '4:00pm - 6:00pm'),
(13, 'Ingles grados 10° y 11°(Nivel 4) Grupo 2', 'Jueves ', '4:00pm - 6:00pm'),
(14, 'Introducción a la actividad física y deporte', 'Miércoles', '2:30pm - 4:30pm'),
(15, 'Introducción a la contabilidad', 'Miércoles', '3:00pm - 5:00pm'),
(16, 'Introducción a la gastronomia', 'Jueves', '4:00pm - 6:00pm'),
(17, 'Introducción a la gastronomia', 'Martes', '4:00pm - 6:00pm'),
(18, 'Introducción a negocios internacionales', 'Jueves', '2:00pm - 5:00pm'),
(19, 'Juego y lúdica en la primera infancia', 'Martes', '4:00pm -6:00pm'),
(20, 'Una mirada al Derecho', 'Jueves', '3:00pm - 5:00pm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursosdocentes`
--
ALTER TABLE `cursosdocentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matriculados`
--
ALTER TABLE `matriculados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semilleros`
--
ALTER TABLE `semilleros`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursosdocentes`
--
ALTER TABLE `cursosdocentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `matriculados`
--
ALTER TABLE `matriculados`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
