-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 14:03:30
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `discoteca2`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actulizar_categoria` (`nombre_categoria` VARCHAR(250), `Estado` INT(1))   UPDATE `categoria` SET `nombre_categoria`=nombre_categoria, `Estado`=Estado WHERE `Id_Categoria`=Id_Categoria$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `actulizar_producto` (`nombre_producto` VARCHAR(250), `descripcion` VARCHAR(250), `valor_venta` INT(30), `cantidad_stock` INT(30), `Estado` INT(1))   UPDATE `producto` SET `nombre_producto`=nombre_producto, `descripcion`=descripcion, `valor_venta`=valor_venta, `cantidad_stock`=cantidad_stock, `Estado`=Estado WHERE `Id_Producto`=id_Producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `actulizar_usuario` (`nombre_usuario` VARCHAR(250), `correo` VARCHAR(250), `clave` VARCHAR(250))   UPDATE `usuario` SET `nombre_usuario`=nombre_usuario, `correo` = correo, `clave`=clave WHERE `Id_Usuario`=Id_Usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Detalles_factura` (`cantidad` INT(30), `subtotal` INT(30), `Id_Producto` INT(30), `Id_Factura` INT(30))   INSERT INTO `detalles_f`(`cantidad`, `subtotal`, `Id_Producto`, `Id_Factura`) VALUES (cantidad, subtotal, Id_Producto, Id_Factura)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_categoria` (IN `Id` INT(30))   DELETE FROM `categoria` WHERE `Id_Categoria`=Id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_factura` (IN `Id` INT(30))   DELETE FROM `factura` WHERE `Id_Factura`=Id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_ingreso` (IN `Id` INT(30))   DELETE FROM `ingresos` WHERE `Id_Ingreso`=Id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_producto` (IN `id` INT(30))   DELETE FROM `producto` WHERE `id_Producto`=id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario` (IN `Id` INT(30))   DELETE FROM `usuario` WHERE `Id_Usuario`=Id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_categoria` ()   SELECT * FROM `categoria`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_categoria_id` (IN `Id_Categoria` INT(30))   SELECT * FROM `categoria` WHERE `Id_Categoria`=Id_Categoria$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_factura` ()   SELECT * FROM `factura`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_factura_id` (`Id_Factura` INT(30))   SELECT * FROM `factura`  WHERE `Id_Factura`=Id_Factura$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_ingresos` ()   SELECT * FROM `ingresos`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_ingresos_id` (`Id_Ingreso` INT(30))   SELECT * FROM `ingresos`  WHERE `Id_Ingreso`=Id_Ingreso$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_productos` ()   SELECT * FROM `producto`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_producto_id` (`Id_Producto` INT(30))   SELECT * FROM `producto`  WHERE `id_Producto`=id_Producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_usuarios` ()   SELECT * FROM `usuario`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_usuarios_id` (IN `Id_Usuario` INT(30))   SELECT * FROM `usuario`  WHERE `Id_Usuario`=Id_Usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Categoria` (IN `nombre_categoria` VARCHAR(100))   INSERT INTO `categoria`( `nombre_categoria`,`Estado`) VALUES (nombre_categoria,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Factura` (`fecha` DATE, `valor_factura` INT(30), `iva` INT(30), `valor_neto` INT(30), `Id_Usuario` INT(30))   INSERT INTO `factura`(`fecha`, `valor_factura`, `iva`, `valor_neto`, `Id_Usuario`) VALUES (fecha, valor_factura, iva, valor_neto, Id_Usuario)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Ingreso` (IN `cantidad_ingresos` INT(30), IN `fecha` DATE, IN `valor_compra` INT(30), IN `Id_Producto` INT(30))   INSERT INTO `ingresos`(`cantidad_ingresos`, `fecha`, `valor_compra`, `Id_Producto`) VALUES (cantidad_ingresos, fecha, valor_compra, Id_Producto)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Producto` (IN `nombre_producto` VARCHAR(100), IN `descripcion` VARCHAR(100), IN `valor_venta` INT(30), IN `cantidad_stock` INT(30), IN `Id_Usuario` INT(30), IN `Id_Categoria` INT(30))   INSERT INTO `producto`( `nombre_producto`, `descripcion`, `valor_venta`, `cantidad_stock`, `Id_Usuario`, `Id_Categoria`,`Estado` ) VALUES (nombre_producto, descripcion, valor_venta, cantidad_stock, Id_Usuario, Id_Categoria, 1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Usuario` (IN `nombre_usuario` VARCHAR(100), IN `correo` VARCHAR(100), IN `clave` VARCHAR(100), IN `rol` INT(30))   INSERT INTO `usuario`(`nombre_usuario`, `correo`, `clave`, `rol`) VALUES (nombre_usuario, correo,  clave, rol)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id_Categoria` int(30) NOT NULL,
  `nombre_categoria` varchar(250) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Id_Categoria`, `nombre_categoria`, `Estado`) VALUES
(1, 'Rones', 1),
(2, 'Aguardiantes', 1),
(3, 'Papitas', 1),
(4, 'Bombones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_f`
--

CREATE TABLE `detalles_f` (
  `Id_Detalle` int(30) NOT NULL,
  `cantidad` int(30) DEFAULT NULL,
  `subtotal` int(30) DEFAULT NULL,
  `Id_Factura` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_Factura` int(30) NOT NULL,
  `fecha` date DEFAULT NULL,
  `valor_factura` int(30) DEFAULT NULL,
  `iva` int(30) DEFAULT NULL,
  `valor_neto` int(30) DEFAULT NULL,
  `Id_Usuario` int(30) DEFAULT NULL,
  `id_Producto` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_Factura`, `fecha`, `valor_factura`, `iva`, `valor_neto`, `Id_Usuario`, `id_Producto`) VALUES
(1, '2022-11-24', 300000, 19, 40000, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `Id_Ingreso` int(30) NOT NULL,
  `cantidad_ingresos` int(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `valor_compra` int(30) DEFAULT NULL,
  `Id_Producto` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`Id_Ingreso`, `cantidad_ingresos`, `fecha`, `valor_compra`, `Id_Producto`) VALUES
(1, 23, '2022-11-24', 4000000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_Producto` int(30) NOT NULL,
  `nombre_producto` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `valor_venta` int(30) DEFAULT NULL,
  `cantidad_stock` int(30) DEFAULT NULL,
  `Id_Categoria` int(30) DEFAULT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_Producto`, `nombre_producto`, `descripcion`, `valor_venta`, `cantidad_stock`, `Id_Categoria`, `Estado`) VALUES
(1, 'Quindianito', 'Cegera', 30000, 4, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(30) NOT NULL,
  `nombre_usuario` varchar(250) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `clave` varchar(250) DEFAULT NULL,
  `rol` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `nombre_usuario`, `correo`, `clave`, `rol`) VALUES
(1, '1', '1', '1', 1),
(2, '2', '2', '2', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `detalles_f`
--
ALTER TABLE `detalles_f`
  ADD PRIMARY KEY (`Id_Detalle`),
  ADD KEY `Id_Factura` (`Id_Factura`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_Factura`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `factura_ibfk_1` (`id_Producto`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`Id_Ingreso`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Id_Categoria` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalles_f`
--
ALTER TABLE `detalles_f`
  MODIFY `Id_Detalle` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `Id_Factura` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `Id_Ingreso` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_Producto` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_f`
--
ALTER TABLE `detalles_f`
  ADD CONSTRAINT `detalles_f_ibfk_2` FOREIGN KEY (`Id_Factura`) REFERENCES `factura` (`Id_Factura`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id_Producto`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`id_Producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoria` (`Id_Categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
