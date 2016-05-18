-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2016 a las 00:22:56
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `apps_colegios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `id_app` varchar(20) NOT NULL,
  `nombre_app` varchar(30) DEFAULT NULL,
  `url_app` varchar(80) DEFAULT NULL,
  `descripcion_app` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app`
--

INSERT INTO `app` (`id_app`, `nombre_app`, `url_app`, `descripcion_app`) VALUES
('app_01', 'NombreApp1', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app1'),
('app_02', 'NombreApp2', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app2'),
('app_03', 'NombreApp3', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app3'),
('app_04', 'NombreApp4', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app4'),
('app_05', 'NombreApp5', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app5'),
('app_06', 'NombreApp6', 'https://play.google.com/store/apps?hl=es', 'eso es una descripcion de la app6'),
('app_07', 'NombreApp7', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app7'),
('app_08', 'NombreApp8', 'https://play.google.com/store/apps?hl=es', 'esto es una descripcion de la app8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apps_indicador`
--

CREATE TABLE IF NOT EXISTS `apps_indicador` (
  `id_app` varchar(20) NOT NULL,
  `id_indicador` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `apps_indicador`
--

INSERT INTO `apps_indicador` (`id_app`, `id_indicador`) VALUES
('app_01', 'indic_1'),
('app_03', 'indic_1'),
('app_07', 'indic_1'),
('app_08', 'indic_1'),
('app_04', 'indic_2'),
('app_05', 'indic_2'),
('app_06', 'indic_2'),
('app_01', 'indic_3'),
('app_02', 'indic_3'),
('app_03', 'indic_3'),
('app_05', 'indic_3'),
('app_03', 'indic_4'),
('app_07', 'indic_4'),
('app_08', 'indic_4'),
('app_02', 'indic_5'),
('app_05', 'indic_5'),
('app_06', 'indic_5'),
('app_08', 'indic_5'),
('app_02', 'indic_6'),
('app_04', 'indic_6'),
('app_08', 'indic_6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id_area` varchar(20) NOT NULL DEFAULT '',
  `nombre_area` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `nombre_area`) VALUES
('area_1', 'Matematicas'),
('area_2', 'Ciencias naturales'),
('area_3', 'Ciencias Sociales'),
('area_4', 'Espanol y Lenguajes'),
('area_5', 'Idiomas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id_asignatura` varchar(20) NOT NULL,
  `nombre_asignatura` varchar(20) DEFAULT NULL,
  `id_area` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_asignatura`, `nombre_asignatura`, `id_area`) VALUES
('asig_01', 'Estadistica', 'area_1'),
('asig_02', 'Geometria', 'area_1'),
('asig_03', 'Biologia', 'area_2'),
('asig_04', 'Quimica', 'area_2'),
('asig_05', 'Sociales basicas 1', 'area_3'),
('asig_06', 'Sociales basicas 2', 'area_3'),
('asig_07', 'Literatura', 'area_4'),
('asig_08', 'Escritura', 'area_4'),
('asig_09', 'Ingles', 'area_5'),
('asig_10', 'Espanol', 'area_5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_indic`
--

CREATE TABLE IF NOT EXISTS `asig_indic` (
  `id_asig` varchar(20) NOT NULL DEFAULT '',
  `id_indic` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asig_indic`
--

INSERT INTO `asig_indic` (`id_asig`, `id_indic`) VALUES
('asig_01', 'indic_1'),
('asig_03', 'indic_1'),
('asig_06', 'indic_1'),
('asig_10', 'indic_1'),
('asig_02', 'indic_2'),
('asig_03', 'indic_2'),
('asig_05', 'indic_2'),
('asig_07', 'indic_2'),
('asig_08', 'indic_2'),
('asig_09', 'indic_2'),
('asig_01', 'indic_3'),
('asig_03', 'indic_3'),
('asig_05', 'indic_3'),
('asig_07', 'indic_3'),
('asig_10', 'indic_3'),
('asig_02', 'indic_4'),
('asig_04', 'indic_4'),
('asig_05', 'indic_4'),
('asig_07', 'indic_4'),
('asig_09', 'indic_4'),
('asig_02', 'indic_5'),
('asig_04', 'indic_5'),
('asig_06', 'indic_5'),
('asig_08', 'indic_5'),
('asig_10', 'indic_5'),
('asig_01', 'indic_6'),
('asig_04', 'indic_6'),
('asig_06', 'indic_6'),
('asig_08', 'indic_6'),
('asig_09', 'indic_6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
  `id_grado` varchar(20) NOT NULL,
  `nombre_grado` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `nombre_grado`) VALUES
('grado1', '1 Primero Primaria'),
('grado2', '2 Segundo Primaria'),
('grado3', '3 Tercero Primaria'),
('grado4', '4 Cuarto Primaria'),
('grado5', '5 Quinto Primaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado_area`
--

CREATE TABLE IF NOT EXISTS `grado_area` (
  `id_grado` varchar(20) NOT NULL DEFAULT '',
  `id_area` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado_area`
--

INSERT INTO `grado_area` (`id_grado`, `id_area`) VALUES
('grado1', 'area_1'),
('grado2', 'area_1'),
('grado3', 'area_1'),
('grado4', 'area_1'),
('grado5', 'area_1'),
('grado1', 'area_2'),
('grado2', 'area_2'),
('grado3', 'area_2'),
('grado4', 'area_2'),
('grado1', 'area_3'),
('grado2', 'area_3'),
('grado3', 'area_3'),
('grado4', 'area_3'),
('grado5', 'area_3'),
('grado1', 'area_4'),
('grado2', 'area_4'),
('grado3', 'area_4'),
('grado4', 'area_4'),
('grado5', 'area_4'),
('grado1', 'area_5'),
('grado2', 'area_5'),
('grado3', 'area_5'),
('grado4', 'area_5'),
('grado5', 'area_5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE IF NOT EXISTS `indicador` (
  `id_indicador` varchar(20) NOT NULL,
  `nombre_indicador` varchar(20) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `indicador`
--

INSERT INTO `indicador` (`id_indicador`, `nombre_indicador`, `descripcion`) VALUES
('indic_1', 'Comprension Lectora', 'mide la capacidad de comprension del estudiante'),
('indic_2', 'Argumentacion', 'mide la capacidad de argumentacion del estudiante'),
('indic_3', 'Proposicion', 'mide la capacidad de proposicion del estudiante'),
('indic_4', 'Interpretacion', 'mide la capacidad de interpretacion del estudiante'),
('indic_5', 'indicador de algo', 'mide la capacidad de algo del estudiante'),
('indic_6', 'indicador e algo 2', 'mide la capacidad de algo 2 del estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `documento` varchar(15) NOT NULL DEFAULT '',
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `apellido`, `documento`, `clave`) VALUES
('Oscar', 'Gelvez', '1090475924', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
('CArlos', 'pardo', '78895623', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id_app`);

--
-- Indices de la tabla `apps_indicador`
--
ALTER TABLE `apps_indicador`
  ADD PRIMARY KEY (`id_app`,`id_indicador`), ADD KEY `id_indicador` (`id_indicador`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`), ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `asig_indic`
--
ALTER TABLE `asig_indic`
  ADD PRIMARY KEY (`id_asig`,`id_indic`), ADD KEY `id_indic` (`id_indic`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `grado_area`
--
ALTER TABLE `grado_area`
  ADD PRIMARY KEY (`id_grado`,`id_area`), ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `indicador`
--
ALTER TABLE `indicador`
  ADD PRIMARY KEY (`id_indicador`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`documento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apps_indicador`
--
ALTER TABLE `apps_indicador`
ADD CONSTRAINT `apps_indicador_ibfk_1` FOREIGN KEY (`id_app`) REFERENCES `app` (`id_app`),
ADD CONSTRAINT `apps_indicador_ibfk_2` FOREIGN KEY (`id_indicador`) REFERENCES `indicador` (`id_indicador`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

--
-- Filtros para la tabla `asig_indic`
--
ALTER TABLE `asig_indic`
ADD CONSTRAINT `asig_indic_ibfk_1` FOREIGN KEY (`id_asig`) REFERENCES `asignatura` (`id_asignatura`),
ADD CONSTRAINT `asig_indic_ibfk_2` FOREIGN KEY (`id_indic`) REFERENCES `indicador` (`id_indicador`);

--
-- Filtros para la tabla `grado_area`
--
ALTER TABLE `grado_area`
ADD CONSTRAINT `grado_area_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
ADD CONSTRAINT `grado_area_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
