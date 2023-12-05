-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2020 a las 09:31:14
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `healthcare`
--
CREATE DATABASE IF NOT EXISTS `healthcare` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `healthcare`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analiticas`
--

CREATE TABLE `analiticas` (
  `codigo_analitica` int(11) NOT NULL,
  `CIU_paciente` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `CIU_personal` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CIU_medico_solicitante` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `pruebas` text COLLATE utf8_spanish_ci NOT NULL,
  `resultados` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_resultado` date DEFAULT NULL,
  `observaciones_medico` text COLLATE utf8_spanish_ci NOT NULL,
  `observaciones_personal` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros`
--

CREATE TABLE `centros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `telefonos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `CIU_paciente` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `CIU_medico` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` set('0','1','2') COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `identificador` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `centro` int(11) NOT NULL,
  `facultativo` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `denominacion_consulta` varchar(32) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `denominacion` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `denominacion`, `identificacion`) VALUES
(1, 'Medicina General', 'MG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultativos`
--

CREATE TABLE `facultativos` (
  `CIU_medico` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `numero_colegiado` int(11) NOT NULL,
  `especialidad` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facultativos`
--

INSERT INTO `facultativos` (`CIU_medico`, `numero_colegiado`, `especialidad`, `activo`) VALUES
('CIURAFA', 1213, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `id` int(11) NOT NULL,
  `CIU_medico` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `CIU_paciente` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`id`, `CIU_medico`, `CIU_paciente`, `fecha`, `hora`, `contenido`) VALUES
(1, 'CIURAFA', 'CIUALEX', '2020-03-04', '09:00:00', 'esto es un informe de prueba'),
(2, 'CIURAFA', 'CIUALEX', '2020-03-05', '12:17:00', 'esto es otro informe de prueba'),
(3, 'CIURAFA', 'CIUALEX', '2020-03-10', '11:32:00', 'Texto de prueba'),
(4, 'CIURAFA', 'CIUALEX', '2020-03-11', '11:32:00', 'Texto de prueba'),
(5, 'CIURAFA', 'CIUALEX', '2020-03-12', '11:32:00', 'Texto de prueba'),
(6, 'CIURAFA', 'CIUALEX', '2020-03-13', '11:32:00', 'Texto de prueba'),
(7, 'CIURAFA', 'CIUALEX', '2020-03-14', '11:32:00', 'Texto de prueba'),
(8, 'CIURAFA', 'CIUALEX', '2020-03-15', '11:32:00', 'Texto de prueba'),
(9, 'CIURAFA', 'CIUALEX', '2020-03-16', '11:32:00', 'Texto de prueba'),
(10, 'CIURAFA', 'CIUALEX', '2020-03-17', '11:32:00', 'Texto de prueba'),
(11, 'CIURAFA', 'CIUALEX', '2020-03-18', '11:32:00', 'Texto de prueba'),
(12, 'CIURAFA', 'CIUALEX', '2020-03-19', '11:32:00', 'Texto de prueba'),
(13, 'CIURAFA', 'CIUALEX', '2020-03-20', '11:32:00', 'Texto de prueba'),
(14, 'CIURAFA', 'CIUALEX', '2020-03-21', '11:32:00', 'Texto de prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `CIU_usuario` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `informacion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `CIU_usuario`, `informacion`) VALUES
(1, 'CIUALEX', 'Eres tonto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `CIU_paciente` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `CIU_medico_referencia` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `grupo_sanguineo` varchar(2) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`CIU_paciente`, `CIU_medico_referencia`, `grupo_sanguineo`) VALUES
('CIUALEX', 'CIURAFA', 'A+'),
('CIURAFA', 'CIURAFA', 'AB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_laboratorio`
--

CREATE TABLE `personal_laboratorio` (
  `CIU_personal` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `centro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `id` int(11) NOT NULL,
  `nregistro` int(11) NOT NULL,
  `CIU_paciente` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `dosis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id`, `nregistro`, `CIU_paciente`, `fecha_inicio`, `fecha_fin`, `dosis`) VALUES
(1, 51347, 'CIUALEX', '2020-03-04', '2020-03-11', '{\"presentacion\":\"pastillas\",\"dosis\":\"1\",\"horas\":[\"10:00\",\"22:00\"]}\r\n'),
(2, 100133034, 'CIUALEX', '2020-02-28', '2021-02-28', '{\"presentacion\":\"unidades\",\"dosis\":\"25\",\"horas\":[\"7:00\",\"15:00\",\"23:00\"]}\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CIU` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `nacionalidad` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `fijo` varchar(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `clave` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CIU`, `nombre`, `apellidos`, `dni`, `sexo`, `nacionalidad`, `direccion`, `telefono`, `fijo`, `fecha_nacimiento`, `clave`, `correo`) VALUES
('CIUALEX', 'Alejandro', 'Rodriguez Sanchez', '543765345A', 'H', 'Española', 'Fake St. 123', '666335906', '954623157', '1999-12-17', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 'paciente@gmail.com'),
('CIURAFA', 'Rafael', 'Apellido Surname', '123456789A', 'H', 'Española', 'C/ Falsa 123', '666555444', '927215984', '1965-05-01', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 'medico@gmail.com');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_pacientes_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_pacientes_medicos` (
`nombre_paciente` varchar(97)
,`nombre_medico` varchar(97)
,`fecha` date
,`hora` time
,`id` int(11)
,`CIU_paciente` varchar(64)
,`estado` set('0','1','2')
,`observaciones` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_resumen_informes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_resumen_informes` (
`id` int(11)
,`CIU_medico` varchar(64)
,`CIU_paciente` varchar(64)
,`fecha` date
,`hora` time
,`contenido` text
,`nombre_completo_medico` varchar(97)
,`especialidad` varchar(32)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_usuarios_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_usuarios_medicos` (
`CIU` varchar(64)
,`nombre_completo` varchar(97)
,`especialidad` varchar(32)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_usuarios_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_usuarios_pacientes` (
`CIU` varchar(64)
,`nombre_completo` varchar(97)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_pacientes_medicos`
--
DROP TABLE IF EXISTS `vista_citas_pacientes_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_pacientes_medicos`  AS  select (select `vista_usuarios_pacientes`.`nombre_completo` from `vista_usuarios_pacientes` where `vista_usuarios_pacientes`.`CIU` = `citas`.`CIU_paciente`) AS `nombre_paciente`,(select `vista_usuarios_medicos`.`nombre_completo` from `vista_usuarios_medicos` where `vista_usuarios_medicos`.`CIU` = `citas`.`CIU_medico`) AS `nombre_medico`,`citas`.`fecha` AS `fecha`,`citas`.`hora` AS `hora`,`citas`.`id` AS `id`,`citas`.`CIU_paciente` AS `CIU_paciente`,`citas`.`estado` AS `estado`,`citas`.`observaciones` AS `observaciones` from `citas` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_resumen_informes`
--
DROP TABLE IF EXISTS `vista_resumen_informes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_resumen_informes`  AS  (select `informes`.`id` AS `id`,`informes`.`CIU_medico` AS `CIU_medico`,`informes`.`CIU_paciente` AS `CIU_paciente`,`informes`.`fecha` AS `fecha`,`informes`.`hora` AS `hora`,`informes`.`contenido` AS `contenido`,`vista_usuarios_medicos`.`nombre_completo` AS `nombre_completo_medico`,`vista_usuarios_medicos`.`especialidad` AS `especialidad` from (`informes` join `vista_usuarios_medicos` on(`informes`.`CIU_medico` = `vista_usuarios_medicos`.`CIU`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_usuarios_medicos`
--
DROP TABLE IF EXISTS `vista_usuarios_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_usuarios_medicos`  AS  select `usuarios`.`CIU` AS `CIU`,concat(`usuarios`.`nombre`,' ',`usuarios`.`apellidos`) AS `nombre_completo`,(select `especialidades`.`denominacion` AS `especialidad` from `especialidades` where `especialidades`.`id` = `facultativos`.`especialidad`) AS `especialidad` from (`usuarios` join `facultativos` on(`usuarios`.`CIU` = `facultativos`.`CIU_medico`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_usuarios_pacientes`
--
DROP TABLE IF EXISTS `vista_usuarios_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_usuarios_pacientes`  AS  select `usuarios`.`CIU` AS `CIU`,concat(`usuarios`.`nombre`,' ',`usuarios`.`apellidos`) AS `nombre_completo` from (`usuarios` join `pacientes` on(`usuarios`.`CIU` = `pacientes`.`CIU_paciente`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analiticas`
--
ALTER TABLE `analiticas`
  ADD PRIMARY KEY (`codigo_analitica`),
  ADD KEY `analiticas_pacientes` (`CIU_paciente`),
  ADD KEY `analiticas_personal_laboratorio` (`CIU_personal`),
  ADD KEY `analiticas_facultativo` (`CIU_medico_solicitante`);

--
-- Indices de la tabla `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citas_pacientes` (`CIU_paciente`),
  ADD KEY `citas_facultativos` (`CIU_medico`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`identificador`,`centro`),
  ADD KEY `consultas_centro` (`centro`),
  ADD KEY `consulta_facultativo` (`facultativo`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultativos`
--
ALTER TABLE `facultativos`
  ADD PRIMARY KEY (`CIU_medico`),
  ADD UNIQUE KEY `numero_colegiado` (`numero_colegiado`),
  ADD KEY `facultativos_especialidades` (`especialidad`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informes_paciente` (`CIU_paciente`),
  ADD KEY `informes_facultativos` (`CIU_medico`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificaciones-usuarios` (`CIU_usuario`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`CIU_paciente`),
  ADD KEY `pacientes_facultativos` (`CIU_medico_referencia`);

--
-- Indices de la tabla `personal_laboratorio`
--
ALTER TABLE `personal_laboratorio`
  ADD KEY `personal_usuario` (`CIU_personal`),
  ADD KEY `personal_centro` (`centro`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tratamientos_pacientes` (`CIU_paciente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CIU`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analiticas`
--
ALTER TABLE `analiticas`
  MODIFY `codigo_analitica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `centros`
--
ALTER TABLE `centros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analiticas`
--
ALTER TABLE `analiticas`
  ADD CONSTRAINT `analiticas_facultativo` FOREIGN KEY (`CIU_medico_solicitante`) REFERENCES `facultativos` (`CIU_medico`),
  ADD CONSTRAINT `analiticas_pacientes` FOREIGN KEY (`CIU_paciente`) REFERENCES `pacientes` (`CIU_paciente`),
  ADD CONSTRAINT `analiticas_personal_laboratorio` FOREIGN KEY (`CIU_personal`) REFERENCES `personal_laboratorio` (`CIU_personal`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_facultativos` FOREIGN KEY (`CIU_medico`) REFERENCES `facultativos` (`CIU_medico`),
  ADD CONSTRAINT `citas_pacientes` FOREIGN KEY (`CIU_paciente`) REFERENCES `pacientes` (`CIU_paciente`);

--
-- Filtros para la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consulta_facultativo` FOREIGN KEY (`facultativo`) REFERENCES `facultativos` (`CIU_medico`),
  ADD CONSTRAINT `consultas_centro` FOREIGN KEY (`centro`) REFERENCES `centros` (`id`);

--
-- Filtros para la tabla `facultativos`
--
ALTER TABLE `facultativos`
  ADD CONSTRAINT `facultativos_especialidades` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`id`),
  ADD CONSTRAINT `facultativos_usuarios` FOREIGN KEY (`CIU_medico`) REFERENCES `usuarios` (`CIU`);

--
-- Filtros para la tabla `informes`
--
ALTER TABLE `informes`
  ADD CONSTRAINT `informes_facultativos` FOREIGN KEY (`CIU_medico`) REFERENCES `facultativos` (`CIU_medico`),
  ADD CONSTRAINT `informes_paciente` FOREIGN KEY (`CIU_paciente`) REFERENCES `pacientes` (`CIU_paciente`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones-usuarios` FOREIGN KEY (`CIU_usuario`) REFERENCES `usuarios` (`CIU`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_facultativos` FOREIGN KEY (`CIU_medico_referencia`) REFERENCES `facultativos` (`CIU_medico`),
  ADD CONSTRAINT `pacientes_usuarios` FOREIGN KEY (`CIU_paciente`) REFERENCES `usuarios` (`CIU`);

--
-- Filtros para la tabla `personal_laboratorio`
--
ALTER TABLE `personal_laboratorio`
  ADD CONSTRAINT `personal_centro` FOREIGN KEY (`centro`) REFERENCES `centros` (`id`),
  ADD CONSTRAINT `personal_usuario` FOREIGN KEY (`CIU_personal`) REFERENCES `usuarios` (`CIU`);

--
-- Filtros para la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD CONSTRAINT `tratamientos_pacientes` FOREIGN KEY (`CIU_paciente`) REFERENCES `pacientes` (`CIU_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
