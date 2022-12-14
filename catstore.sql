-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2022 a las 01:45:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencias`
--

CREATE TABLE `agencias` (
  `id_agencia` int(11) NOT NULL,
  `nombre_agencia` varchar(30) NOT NULL,
  `direccion_agencia` varchar(50) NOT NULL,
  `dias_atencion` varchar(15) NOT NULL,
  `horario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agencias`
--

INSERT INTO `agencias` (`id_agencia`, `nombre_agencia`, `direccion_agencia`, `dias_atencion`, `horario`) VALUES
(1, 'Real Plaza Santa Clara', '8694,Avenida Nicolás de Ayllon, Ate, Lima 15487', 'Lun - Dom', '9:00 - 21:00'),
(2, 'Mall Aventura Santa Anita', '111,Avenida Nicolás de Ayllon Santa Anita, Lima 1', 'Lun - Dom', '9:00 - 21:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(30) NOT NULL,
  `apellido_cliente` varchar(30) NOT NULL,
  `id_tipo_persona` int(11) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `numero_documento` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `id_tipo_persona`, `id_tipo_documento`, `numero_documento`, `email`, `telefono`) VALUES
(1, 'Franco', 'Matos', 1, 1, 45575268, 'franco.matos2@gmail.com', 994758249),
(2, 'Jimena', 'Pariona', 1, 2, 1043328, 'jimena.pariona@gmail.com', 985647852),
(3, 'Brenda', 'Caceres', 1, 1, 45512546, 'bren.25@gmail.com', 958421547),
(6, 'Katy', 'Saenz', 1, 1, 78801600, 'katy@live.com', 921287396),
(7, 'MARTIN', 'ROJAS', 1, 1, 74923392, 'MARTIN@GMAIL.COM', 987654321),
(8, 'LOLA', 'FERANDEZ', 1, 1, 74923355, 'LOLITA@GMAIL.COM', 985471259);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_prenda` int(11) NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `id_prenda`, `monto`) VALUES
(1, 1, 1, 69.9),
(2, 2, 2, 598.8),
(3, 3, 2, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_venta`
--

CREATE TABLE `estado_venta` (
  `id_estado_venta` int(11) NOT NULL,
  `estado_venta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_venta`
--

INSERT INTO `estado_venta` (`id_estado_venta`, `estado_venta`) VALUES
(1, 'Realizada'),
(2, 'En proceso'),
(3, 'Denegada'),
(4, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prendas`
--

CREATE TABLE `prendas` (
  `id_prenda` int(11) NOT NULL,
  `codigo_prenda` int(11) NOT NULL,
  `descripcion_prenda` varchar(50) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `color_prenda` varchar(20) NOT NULL,
  `precio_prenda` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prendas`
--

INSERT INTO `prendas` (`id_prenda`, `codigo_prenda`, `descripcion_prenda`, `id_talla`, `color_prenda`, `precio_prenda`) VALUES
(1, 1, 'Jean', 3, 'Azul', 69.9),
(2, 2, 'Blusa', 2, 'Blanco', 49.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `id_talla` int(11) NOT NULL,
  `tallas_prendas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id_talla`, `tallas_prendas`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante_venta`
--

CREATE TABLE `tipo_comprobante_venta` (
  `id_tipo_comprobante_venta` int(11) NOT NULL,
  `tipo_comprobante_venta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_comprobante_venta`
--

INSERT INTO `tipo_comprobante_venta` (`id_tipo_comprobante_venta`, `tipo_comprobante_venta`) VALUES
(1, 'Boleta'),
(2, 'Factura'),
(3, 'Boleta Electronica'),
(4, 'Factura Electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `tipo_documento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `tipo_documento`) VALUES
(1, 'DNI'),
(2, 'Carne de extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `tipo_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_tipo_pago`, `tipo_pago`) VALUES
(1, 'Efectivo'),
(2, 'Credito'),
(3, 'Debito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo_persona` int(11) NOT NULL,
  `tipo_persona` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo_persona`, `tipo_persona`) VALUES
(1, 'Natural'),
(2, 'Juridica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombre_vendedor` varchar(30) NOT NULL,
  `apellido_vendedor` varchar(30) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `numero_documento` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nombre_vendedor`, `apellido_vendedor`, `id_tipo_documento`, `numero_documento`, `id_agencia`) VALUES
(1, 'Leonado', 'Sifuentes', 1, 78452631, 1),
(2, 'Mateo', 'Rojas', 2, 1077238, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_tipo_comprobante_venta` int(11) NOT NULL,
  `id_estado_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `id_vendedor`, `id_tipo_pago`, `id_tipo_comprobante_venta`, `id_estado_venta`, `cantidad`, `fecha`) VALUES
(1, 1, 2, 2, 1, 1, 1, '2022-06-23 16:11:36'),
(2, 2, 1, 2, 4, 2, 12, '2022-06-28 15:35:41'),
(3, 6, 2, 3, 1, 1, 3, '2022-12-14 23:59:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id_agencia`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `id_tipo_persona` (`id_tipo_persona`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_prenda` (`id_prenda`);

--
-- Indices de la tabla `estado_venta`
--
ALTER TABLE `estado_venta`
  ADD PRIMARY KEY (`id_estado_venta`);

--
-- Indices de la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD PRIMARY KEY (`id_prenda`),
  ADD KEY `id_talla` (`id_talla`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id_talla`);

--
-- Indices de la tabla `tipo_comprobante_venta`
--
ALTER TABLE `tipo_comprobante_venta`
  ADD PRIMARY KEY (`id_tipo_comprobante_venta`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id_tipo_persona`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`),
  ADD KEY `id_agencia` (`id_agencia`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_estado_venta` (`id_estado_venta`),
  ADD KEY `id_tipo_comprobante_venta` (`id_tipo_comprobante_venta`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencias`
--
ALTER TABLE `agencias`
  MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado_venta`
--
ALTER TABLE `estado_venta`
  MODIFY `id_estado_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prendas`
--
ALTER TABLE `prendas`
  MODIFY `id_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id_talla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_comprobante_venta`
--
ALTER TABLE `tipo_comprobante_venta`
  MODIFY `id_tipo_comprobante_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `id_tipo_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`id_tipo_persona`) REFERENCES `tipo_persona` (`id_tipo_persona`),
  ADD CONSTRAINT `clientes_ibfk_3` FOREIGN KEY (`id_tipo_persona`) REFERENCES `tipo_persona` (`id_tipo_persona`),
  ADD CONSTRAINT `clientes_ibfk_4` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`),
  ADD CONSTRAINT `clientes_ibfk_5` FOREIGN KEY (`id_tipo_persona`) REFERENCES `tipo_persona` (`id_tipo_persona`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`),
  ADD CONSTRAINT `detalle_venta_ibfk_3` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`);

--
-- Filtros para la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD CONSTRAINT `prendas_ibfk_1` FOREIGN KEY (`id_talla`) REFERENCES `tallas` (`id_talla`);

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencias` (`id_agencia`),
  ADD CONSTRAINT `vendedor_ibfk_2` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_estado_venta`) REFERENCES `estado_venta` (`id_estado_venta`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_tipo_comprobante_venta`) REFERENCES `tipo_comprobante_venta` (`id_tipo_comprobante_venta`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `venta_ibfk_5` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_6` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `venta_ibfk_7` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_8` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
