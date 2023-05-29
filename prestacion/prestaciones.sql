-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 04-05-2017 a las 23:06:14
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `prestaciones`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `administrador`
-- 

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL auto_increment,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_extreme` varchar(50) NOT NULL,
  `tipo` int(2) NOT NULL,
  `imagen` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `administrador`
-- 

INSERT INTO `administrador` VALUES (1, 'admin', '123456', 'Administrador', 'Administrador', 'donde vives', 'en la casa', 'ccarch81@gmail.com', 'e6173408b6ec032e6765142bba1da08d', 1, 'avatar3.png');
INSERT INTO `administrador` VALUES (2, 'YOND1994', 'e10adc3949ba59abbe56e057f20f883e', 'YONATHAN', 'DUQUE', 'HEROE DE LA INFANCIA', 'ZORRO', 'Y@Y.COM', '', 1, 'avatar3.png');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empleados`
-- 

CREATE TABLE `empleados` (
  `id_empleado` int(10) NOT NULL auto_increment,
  `cedula` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fechai` date NOT NULL,
  `cod` varchar(20) NOT NULL,
  `ultimal` date default NULL,
  `estado` varchar(3) NOT NULL,
  PRIMARY KEY  (`cedula`),
  UNIQUE KEY `id_empleado` (`id_empleado`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Volcar la base de datos para la tabla `empleados`
-- 

INSERT INTO `empleados` VALUES (24, 1335, 'QUIEN SEA', 'JIMENEZ', 'JOND_141@GMAIL.COM', '2015-12-01', 'A0003', '2016-05-27', 'L');
INSERT INTO `empleados` VALUES (23, 2121224, 'FGFDDG', 'GHGFGF', 'HFGHGFGHF@SADDSASD.COM', '2016-05-01', 'A0002', '2016-05-13', 'L');
INSERT INTO `empleados` VALUES (20, 11, 'CARLOS', 'JIMENETT', 'CARLOS@GMAIL.COM', '2016-01-01', 'A0001', '2016-04-28', 'L');
INSERT INTO `empleados` VALUES (25, 21212121, 'YON', 'SUA', 'ASSA@SSA.COM', '2016-09-21', 'A0004', '2017-01-10', 'L');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `liquidacion`
-- 

CREATE TABLE `liquidacion` (
  `id` int(11) NOT NULL auto_increment,
  `codigo` varchar(20) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `causa` varchar(100) NOT NULL,
  `tiempo` int(11) NOT NULL,
  `sueldo` float NOT NULL,
  PRIMARY KEY  (`codigo`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `liquidacion`
-- 

INSERT INTO `liquidacion` VALUES (10, 'A0003', 'SUPERVISOR', 'VENTAS', 'CORRUPCION', 6, 15000);
INSERT INTO `liquidacion` VALUES (9, 'A0002', 'ASDSADSADASDA ', 'ASDSASDSA', 'ASDASDADS', 0, 121210);
INSERT INTO `liquidacion` VALUES (7, 'A0001', 'ZORRITA', 'VENTAS', 'LADRON', 5, 5000);
INSERT INTO `liquidacion` VALUES (11, 'A0004', 'SASA', 'SAASSA', 'SASASA', 4, 234324);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `salario`
-- 

CREATE TABLE `salario` (
  `id` int(11) NOT NULL auto_increment,
  `fechac` date NOT NULL,
  `fechaf` date NOT NULL,
  `salario` int(11) NOT NULL,
  `nombremes` varchar(20) NOT NULL,
  `dias` int(3) NOT NULL,
  `interes` int(11) NOT NULL,
  `totaldias` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `salario`
-- 

INSERT INTO `salario` VALUES (1, '2015-12-15', '2016-01-14', 4889, 'Enero 15', 0, 15, 31);
INSERT INTO `salario` VALUES (2, '2016-01-15', '2016-02-14', 5622, 'Febrero 15', 0, 16, 28);
INSERT INTO `salario` VALUES (3, '2016-02-15', '2016-03-14', 5622, 'Marzo 15', 15, 15, 31);
INSERT INTO `salario` VALUES (7, '2016-05-15', '2016-06-14', 6747, 'junio 15', 15, 16, 30);
INSERT INTO `salario` VALUES (5, '2016-03-15', '2016-04-14', 5622, 'abril 15 ', 0, 15, 30);
INSERT INTO `salario` VALUES (6, '2016-05-15', '2016-06-14', 6747, 'mayo 15', 0, 16, 31);
INSERT INTO `salario` VALUES (9, '2016-06-15', '2016-07-14', 7422, 'Julio 15', 15, 16, 31);
