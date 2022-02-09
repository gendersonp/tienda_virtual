-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-08-2021 a las 05:19:24
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Mujer', 'Sección Ropa de Mujer', 'img_c4647afe003ca65278cde74bd0dcfef3.jpg', '2021-06-27 19:42:06', 'mujer', 1),
(2, 'Hombre', 'Sección Ropa de Hombre', 'img_11adca2bbcd3de604a46634d45cece80.jpg', '2021-06-27 19:42:54', 'hombre', 1),
(3, 'Accesorios', 'Sección de accesorios.', 'img_ebecc6440dd6d1da16ffcf76321b42f5.jpg', '2021-06-27 19:45:58', 'accesorios', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `mensaje` text COLLATE utf8_swedish_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `dispositivo` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `useragent` text COLLATE utf8_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 1, 4, '50.00', 3),
(2, 2, 1, '15.00', 1),
(3, 2, 4, '50.00', 1),
(4, 2, 3, '25.00', 1),
(5, 3, 4, '50.00', 3),
(6, 4, 10, '20.00', 3),
(7, 5, 8, '25.00', 10),
(8, 11, 11, '8.00', 3),
(9, 12, 11, '8.00', 3),
(10, 13, 11, '8.00', 3),
(11, 14, 11, '8.00', 3),
(12, 15, 11, '8.00', 3),
(13, 16, 11, '8.00', 3),
(14, 17, 11, '8.00', 3),
(15, 18, 11, '8.00', 3),
(16, 19, 11, '8.00', 3),
(17, 20, 11, '8.00', 3),
(18, 21, 11, '8.00', 3),
(19, 22, 11, '8.00', 3),
(20, 23, 11, '8.00', 3),
(21, 24, 11, '8.00', 3),
(22, 25, 11, '8.00', 3),
(23, 26, 11, '8.00', 3),
(24, 27, 11, '8.00', 3),
(25, 28, 11, '8.00', 3),
(26, 29, 8, '25.00', 6),
(27, 30, 8, '25.00', 3),
(28, 31, 8, '25.00', 3),
(29, 32, 8, '25.00', 3),
(30, 33, 8, '25.00', 3),
(31, 34, 8, '25.00', 3),
(32, 35, 8, '25.00', 3),
(33, 36, 8, '25.00', 3),
(34, 37, 8, '25.00', 3),
(35, 38, 8, '25.00', 3),
(36, 39, 8, '25.00', 3),
(37, 40, 8, '25.00', 3),
(38, 41, 8, '25.00', 2),
(39, 42, 8, '25.00', 1),
(40, 43, 12, '19.99', 2),
(41, 44, 12, '19.99', 1),
(42, 45, 12, '19.99', 1),
(43, 46, 12, '19.99', 1),
(44, 47, 12, '19.99', 1),
(45, 48, 12, '19.99', 1),
(46, 49, 12, '19.99', 1),
(47, 50, 7, '10.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `personaid`, `productoid`, `precio`, `cantidad`, `transaccionid`) VALUES
(1, 1, 2, '7000.00', 3, '78nlk5du98uccogae3sdskavli'),
(11, 1, 4, '10000.00', 1, 'qvdavs80h0rjr5i1ttmoujl4mh'),
(18, 1, 3, '8000.00', 1, '9s6lkdj5kcmb3jssul01hnrnl7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(11, 5, 'pro_54da00ac812b50f8ba6a3fb68ccb4642.jpg'),
(12, 5, 'pro_90d80f483ad807ecc7b8ac229c449a6d.jpg'),
(13, 5, 'pro_1dafff001cdf872e0f4e6b5fb8c75009.jpg'),
(14, 4, 'pro_8e67d9b9de783f65ffe596e164e67c58.jpg'),
(16, 4, 'pro_7b2d5efd8f83d09ba5e040cbe3346882.jpg'),
(17, 4, 'pro_27f0cbbb39224ab2ac2436ac2f9ec7f2.jpg'),
(18, 3, 'pro_f089d6c30b04255b84885e84c364d24b.jpg'),
(19, 3, 'pro_8c078aef704cedf894e7576f4dedcfcd.jpg'),
(21, 2, 'pro_bcdac510877be4a6c5b7b09c1b4c8394.jpg'),
(22, 1, 'pro_24413d18e19855e1791a8a02096cceae.jpg'),
(23, 1, 'pro_d05fbea44fb8e2350704c6b8c3a20602.jpg'),
(24, 6, 'pro_2f8fa77d0914f78a6a601d8b6f42f87d.jpg'),
(25, 6, 'pro_51f52a4f21f90476930a12450ff384a8.jpg'),
(26, 6, 'pro_d1195a2bd07d2d122a31e9a33ffb213b.jpg'),
(27, 7, 'pro_7b2d5efd8f83d09ba5e040cbe3346882.jpg'),
(28, 7, 'pro_b09606fe1f3b37872d58c28b1d265e49.jpg'),
(29, 7, 'pro_8997810f90d48cf29d126039d22ed782.jpg'),
(30, 8, 'pro_0634580cfa40e91be03d931eeaf461fc.jpg'),
(33, 2, 'pro_fc78c3feb874dbc0b5b218e6a0e0777e.jpg'),
(34, 9, 'pro_662dccae303b412eab3d28b92a2f526b.jpg'),
(35, 9, 'pro_39899d0a21b3262fd2d9f80a64357fd2.jpg'),
(36, 9, 'pro_89400a6ae77104e8ddf5b7ab1e5334c6.jpg'),
(37, 10, 'pro_941abe29b2e430f3006d986ee8eff599.jpg'),
(38, 10, 'pro_4d94acba1fd0e56ef884c2ba9c1c8100.jpg'),
(39, 10, 'pro_51bb16b4fe35ae2685c74ad5d575e117.jpg'),
(40, 11, 'pro_c5b39fc0a41bda8b8756117f94e28d47.jpg'),
(41, 11, 'pro_677ed423cf0cd12eeb0eb731ad619c01.jpg'),
(42, 12, 'pro_b2934a45c9c1797affc3c90631abe052.jpg'),
(43, 12, 'pro_706d61b87106322ba4184a7f374c2a3f.jpg'),
(44, 8, 'pro_f78cace7cf4c71c26e1a791c4da78bcf.jpg'),
(45, 8, 'pro_b17c81f190fbbb422498fedf376da2ec.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio Web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(10, 'Paginas', 'Paginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, NULL, '4S020212KA441624J', '{\"id\":\"1FM81072U3816945F\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"153.00\"},\"payee\":{\"email_address\":\"sb-e9coe6686058@business.example.com\",\"merchant_id\":\"HNPQ4S6HAD65W\"},\"description\":\"Compra de artículos en Tienda Virtual por $153 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"San Jose\",\"postal_code\":\"11801\",\"country_code\":\"CR\"}},\"payments\":{\"captures\":[{\"id\":\"4S020212KA441624J\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"153.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-07-03T16:46:13Z\",\"update_time\":\"2021-07-03T16:46:13Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-ndheu6685408@personal.example.com\",\"payer_id\":\"PR3H9QC7A6SLQ\",\"address\":{\"country_code\":\"CR\"}},\"create_time\":\"2021-07-03T16:45:44Z\",\"update_time\":\"2021-07-03T16:46:13Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/1FM81072U3816945F\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2021-07-03 10:46:13', '3.00', '153.00', 1, 'ssss, sssss', 'Completo'),
(2, NULL, '2WA47181R1939384W', '{\"id\":\"0HK12765F12731125\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"93.00\"},\"payee\":{\"email_address\":\"sb-e9coe6686058@business.example.com\",\"merchant_id\":\"HNPQ4S6HAD65W\"},\"description\":\"Compra de artículos en Tienda Virtual por $93 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"San Jose\",\"postal_code\":\"11801\",\"country_code\":\"CR\"}},\"payments\":{\"captures\":[{\"id\":\"2WA47181R1939384W\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"93.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-07-04T05:00:32Z\",\"update_time\":\"2021-07-04T05:00:32Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-ndheu6685408@personal.example.com\",\"payer_id\":\"PR3H9QC7A6SLQ\",\"address\":{\"country_code\":\"CR\"}},\"create_time\":\"2021-07-04T04:59:55Z\",\"update_time\":\"2021-07-04T05:00:32Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/0HK12765F12731125\",\"rel\":\"self\",\"method\":\"GET\"}]}', 12, '2021-07-03 23:00:31', '3.00', '93.00', 1, 'cuidad quesada, san carlos', 'Completo'),
(3, NULL, NULL, NULL, 1, '2021-07-04 16:51:33', '3.00', '153.00', 5, 'aguas zarcas, san carlos', 'Pendiente'),
(4, NULL, NULL, NULL, 1, '2021-07-20 19:02:34', '3.00', '63.00', 2, 'hshshshs, hahaha', 'Pendiente'),
(5, '656465646', NULL, NULL, 1, '2021-08-02 15:33:50', '3.00', '253.00', 2, 'yyy, yyy', 'Completo'),
(6, NULL, '5WH963093H8187455', '{\"id\":\"5S041613V4382153T\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"27.00\"},\"payee\":{\"email_address\":\"sb-e9coe6686058@business.example.com\",\"merchant_id\":\"HNPQ4S6HAD65W\"},\"description\":\"Compra de artículos en Tienda Virtual por $27 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"San Jose\",\"postal_code\":\"11801\",\"country_code\":\"CR\"}},\"payments\":{\"captures\":[{\"id\":\"5WH963093H8187455\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"27.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-08-02T22:17:45Z\",\"update_time\":\"2021-08-02T22:17:45Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-ndheu6685408@personal.example.com\",\"payer_id\":\"PR3H9QC7A6SLQ\",\"address\":{\"country_code\":\"CR\"}},\"create_time\":\"2021-08-02T22:17:24Z\",\"update_time\":\"2021-08-02T22:17:45Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/5S041613V4382153T\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2021-08-02 16:17:46', '3.00', '27.00', 1, 'cakle baaraantes, san ramon', 'Completo'),
(7, NULL, NULL, NULL, 1, '2021-08-02 16:24:54', '3.00', '27.00', 3, 'ssss, sssss', 'Pendiente'),
(8, NULL, NULL, NULL, 1, '2021-08-02 16:40:15', '3.00', '27.00', 2, '3333, 3333', 'Pendiente'),
(9, NULL, NULL, NULL, 1, '2021-08-02 16:52:44', '3.00', '27.00', 2, '11111, 111111fff', 'Pendiente'),
(10, NULL, NULL, NULL, 1, '2021-08-02 16:53:16', '3.00', '27.00', 2, 'dddd, ddddd', 'Pendiente'),
(11, NULL, NULL, NULL, 1, '2021-08-02 17:03:14', '3.00', '27.00', 2, 'ghghhg, fhfhhhf', 'Pendiente'),
(12, NULL, NULL, NULL, 1, '2021-08-02 17:06:38', '3.00', '27.00', 2, 'fddfdfgf, fdfdfdf', 'Pendiente'),
(13, NULL, NULL, NULL, 1, '2021-08-02 17:09:14', '3.00', '27.00', 2, 'ggnhngh, gfgbfgfgf', 'Pendiente'),
(14, NULL, NULL, NULL, 1, '2021-08-02 17:09:53', '3.00', '27.00', 2, 'sd, sf', 'Pendiente'),
(15, NULL, NULL, NULL, 1, '2021-08-02 17:15:24', '3.00', '27.00', 2, 'asd, asd', 'Pendiente'),
(16, NULL, NULL, NULL, 1, '2021-08-02 17:16:30', '3.00', '27.00', 2, 'fss, sf', 'Pendiente'),
(17, NULL, NULL, NULL, 1, '2021-08-02 17:18:42', '3.00', '27.00', 2, 'ertvetr, etvre', 'Pendiente'),
(18, NULL, NULL, NULL, 1, '2021-08-02 17:20:16', '3.00', '27.00', 2, 'dfg, dfg', 'Pendiente'),
(19, NULL, NULL, NULL, 1, '2021-08-02 17:22:05', '3.00', '27.00', 2, 'sdf, sdf', 'Pendiente'),
(20, NULL, NULL, NULL, 1, '2021-08-02 17:23:15', '3.00', '27.00', 2, 'asd, asd', 'Pendiente'),
(21, NULL, NULL, NULL, 1, '2021-08-02 17:23:36', '3.00', '27.00', 2, 'asd, asd', 'Pendiente'),
(22, NULL, NULL, NULL, 1, '2021-08-02 17:25:40', '3.00', '27.00', 2, 'asd, asd', 'Pendiente'),
(23, NULL, NULL, NULL, 1, '2021-08-02 17:30:15', '3.00', '27.00', 2, 'sdf, sdf', 'Pendiente'),
(24, NULL, NULL, NULL, 1, '2021-08-02 17:30:58', '3.00', '27.00', 2, 'sdf, sdf', 'Pendiente'),
(25, NULL, NULL, NULL, 1, '2021-08-02 17:31:36', '3.00', '27.00', 2, 'asd, asd', 'Pendiente'),
(26, NULL, NULL, NULL, 1, '2021-08-02 17:33:21', '3.00', '27.00', 2, 'xcv, xv', 'Pendiente'),
(27, NULL, NULL, NULL, 1, '2021-08-02 17:34:50', '3.00', '27.00', 2, 'dfg, dfg', 'Pendiente'),
(28, NULL, NULL, NULL, 1, '2021-08-02 17:37:04', '3.00', '27.00', 2, 'sdv, sdf', 'Pendiente'),
(29, NULL, NULL, NULL, 1, '2021-08-02 17:38:46', '3.00', '153.00', 2, 'aaa, aaa', 'Pendiente'),
(30, NULL, NULL, NULL, 1, '2021-08-02 17:40:51', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(31, NULL, NULL, NULL, 1, '2021-08-02 17:43:12', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(32, NULL, NULL, NULL, 1, '2021-08-02 17:43:58', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(33, NULL, NULL, NULL, 1, '2021-08-02 17:45:26', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(34, NULL, NULL, NULL, 1, '2021-08-02 17:46:28', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(35, NULL, NULL, NULL, 1, '2021-08-02 17:48:21', '3.00', '78.00', 2, 'wer, wr', 'Pendiente'),
(36, NULL, NULL, NULL, 1, '2021-08-02 17:50:29', '3.00', '78.00', 2, 'sdf, sdf', 'Pendiente'),
(37, NULL, NULL, NULL, 1, '2021-08-02 17:51:47', '3.00', '78.00', 2, 'sd, sdf', 'Pendiente'),
(38, NULL, NULL, NULL, 1, '2021-08-02 17:53:08', '3.00', '78.00', 2, 'asd, as', 'Pendiente'),
(39, NULL, NULL, NULL, 1, '2021-08-02 17:53:53', '3.00', '78.00', 2, 'asd, asd', 'Pendiente'),
(40, NULL, NULL, NULL, 1, '2021-08-02 17:55:22', '3.00', '78.00', 2, 'sd, sdf', 'Pendiente'),
(41, NULL, NULL, NULL, 1, '2021-08-02 17:57:02', '3.00', '53.00', 2, 'sdfsfsd, fsdfsd', 'Pendiente'),
(42, NULL, NULL, NULL, 1, '2021-08-02 17:58:21', '3.00', '28.00', 2, 'asd, asda', 'Pendiente'),
(43, NULL, NULL, NULL, 1, '2021-08-02 17:59:47', '3.00', '42.98', 2, 'asd, asd', 'Pendiente'),
(44, NULL, NULL, NULL, 1, '2021-08-02 18:01:53', '3.00', '22.99', 2, 'sdf, sdfsd', 'Pendiente'),
(45, NULL, NULL, NULL, 1, '2021-08-02 18:02:59', '3.00', '22.99', 2, 'aaaa, aa', 'Pendiente'),
(46, NULL, NULL, NULL, 1, '2021-08-02 18:06:42', '3.00', '22.99', 2, 'asdas, asdas', 'Pendiente'),
(47, NULL, NULL, NULL, 1, '2021-08-02 18:09:40', '3.00', '22.99', 2, 'sd, sd', 'Pendiente'),
(48, NULL, NULL, NULL, 1, '2021-08-02 18:11:03', '3.00', '22.99', 2, 'as, asd', 'Pendiente'),
(49, NULL, NULL, NULL, 1, '2021-08-02 18:13:00', '3.00', '22.99', 2, 'dasd, asd', 'Pendiente'),
(50, NULL, '70G75794PF756244Y', '{\"id\":\"0VJ46757W3316704X\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"23.00\"},\"payee\":{\"email_address\":\"sb-e9coe6686058@business.example.com\",\"merchant_id\":\"HNPQ4S6HAD65W\"},\"description\":\"Compra de artículos en Tienda Virtual por $23 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"San Jose\",\"postal_code\":\"11801\",\"country_code\":\"CR\"}},\"payments\":{\"captures\":[{\"id\":\"70G75794PF756244Y\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"23.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-08-03T00:26:17Z\",\"update_time\":\"2021-08-03T00:26:17Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-ndheu6685408@personal.example.com\",\"payer_id\":\"PR3H9QC7A6SLQ\",\"address\":{\"country_code\":\"CR\"}},\"create_time\":\"2021-08-03T00:25:53Z\",\"update_time\":\"2021-08-03T00:26:17Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/0VJ46757W3316704X\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2021-08-02 18:26:17', '3.00', '23.00', 1, 'fdfgfggf, dgdgdggg', 'Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(230, 2, 1, 1, 0, 0, 0),
(231, 2, 2, 0, 0, 0, 0),
(232, 2, 3, 0, 0, 0, 0),
(233, 2, 4, 0, 0, 0, 0),
(234, 2, 5, 0, 0, 0, 0),
(235, 2, 6, 0, 0, 0, 0),
(296, 7, 1, 1, 0, 0, 0),
(297, 7, 2, 0, 0, 0, 0),
(298, 7, 3, 0, 0, 0, 0),
(299, 7, 4, 0, 0, 0, 0),
(300, 7, 5, 1, 0, 0, 0),
(301, 7, 6, 0, 0, 0, 0),
(317, 1, 1, 1, 1, 1, 1),
(318, 1, 2, 1, 1, 1, 1),
(319, 1, 3, 1, 1, 1, 1),
(320, 1, 4, 1, 1, 1, 1),
(321, 1, 5, 1, 1, 1, 1),
(322, 1, 6, 1, 1, 1, 1),
(323, 1, 7, 1, 1, 1, 1),
(324, 1, 8, 1, 1, 1, 1),
(325, 1, 10, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '207690900', 'Genderson', 'Porras', 88028771, 'genderson@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '207690900', 'Genderson Porras', 'San Carlos, Costa Rica', 'fc3fce99a2dfe459b38c-12afd615baa21d0a2e70-e632f084298d8e72cda9-a43c40fdb78e7c61ef43', 1, '2020-08-13 00:51:44', 1),
(2, '78654141', 'Andres', 'Marin', 789465487, 'andres@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12123455', 'Andres', 'alajuela', '2c52a34f7988a0afc63e-dfe4badca8d2cb2b93e6-94824d050567a0ccd851-56165c5603c4ca020', 7, '2020-08-13 00:54:08', 1),
(3, '879846545454', 'Pablo', 'Arana', 784858856, 'pablo@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2020-08-14 01:42:34', 1),
(4, '65465465', 'Jorge David', 'Arana', 987846545, 'jorge@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-22 00:27:17', 0),
(5, '4654654', 'Carme', 'Arana', 646545645, 'carmen@infom.com', 'be63ad947e82808780278e044bcd0267a6ac6b3cd1abdb107cc10b445a182eb0', '', '', '', '', 9, '2020-08-22 00:35:04', 0),
(6, '8465484', 'Alex Fernando', 'Méndez', 222222222, 'alex@info.com', '608cfa9ffc1dac43e8710cb23bbcf1d5215beee7ca8632c6a4a5a63a56f59aeb', '', '', '', '', 7, '2020-08-22 00:48:50', 0),
(7, '54684987', 'Francisco', 'Herrera', 6654456545, 'francisco@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-22 01:55:57', 0),
(8, '54646849844', 'Axel Gudiel', 'Vela', 654687454, 'axel@info.com', '993fdea29acd1f7c6a6423c038601b175bb282382fc85b306a85f134fff4a63e', '', '', '', '', 3, '2020-09-07 01:30:52', 0),
(9, '205260214', 'Maria', 'Soler', 65643322, 'maria@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2021-06-26 16:21:57', 0),
(10, '2506311', 'Marta M', 'Marin P', 56758887, 'martap@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '111111154', 'marta p', 'alajuela', '', 7, '2021-06-26 21:17:59', 0),
(11, '123456789', 'Carlos', 'Hernandez', 88675789, 'carlos@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2021-06-27 18:19:24', 1),
(12, '208790675', 'Freddy', 'Araya', 70876345, 'freddy@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '208790675', 'Freddy Araya', 'San Carlos, Costa Rica', '', 7, '2021-07-03 22:58:27', 1),
(13, '123344554', 'Nadia', 'Porras', 6575757576567, 'nadiaporras@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2021-07-13 22:10:05', 1),
(14, '3445556666', 'Gerardo', 'Rocha', 76665643, 'gerardorocha@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2021-08-03 17:52:26', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `contenido` text COLLATE utf8_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Nosotros', '<h1>contenido de la pagina nosotros</h1>', 'bg-01.jpg', '2021-07-30 14:38:31', 'nosotros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '12344555', 'Blusa AERO', '<ul> <li><em>Talla: S</em></li> <li><em>color:&nbsp; Blanco</em></li> </ul>', '15.00', 3, '', '2021-06-29 11:42:41', 'blusa-aero', 1),
(2, 3, '1342567', 'Cinturon F21', '<ul> <li>Color: Negro</li> <li>Material: Cuero</li> <li>Talla: S</li> </ul>', '10.00', 5, '', '2021-06-30 15:20:12', 'cinturon-f21', 1),
(3, 2, '3467786868', 'Camisa F21', '<ul> <li>Color: blanco.</li> <li>Marca: Forever 21</li> <li>Talla: M</li> </ul>', '25.00', 10, '', '2021-06-30 15:21:50', 'camisa-f21', 1),
(4, 1, '35677878689', 'Buttom Front Jacket', '<ul> <li>Color: Cafe</li> <li>Talla: S</li> </ul>', '30.00', 8, '', '2021-06-30 15:29:13', 'buttom-front-jacket', 1),
(5, 3, '1234555555', 'Men Round Sunglasses', '<section class=\"d_wrapper\"> <h3>&nbsp;</h3> <h3><em>Details</em></h3> <div class=\"d_content\">A high-polish pair of sunglasses featuring round frames, tinted lens, and nose pads.</div> </section> <section class=\"d_wrapper\"> <h3><em>Content + Care</em></h3> <div class=\"d_content\"> <p>- 100% UV protection</p> </div> </section> <section class=\"d_wrapper\"> <h3><em>Size + Fit</em></h3> <div class=\"d_content\"> <p>- Height: 2.25\"</p> <p>- Width: 6\"</p> </div> </section>', '5.00', 5, '', '2021-07-05 13:30:56', 'men-round-sunglasses', 1),
(6, 3, '123544578', 'Cinturon AERO', '<p>Color: Cafe</p> <p>Talla: M</p> <p><em><strong>Comodo cinturon para mujer</strong></em></p>', '15.00', 4, '', '2021-07-07 22:38:23', 'cinturon-aero', 1),
(7, 3, '9765432', 'Beanie Hollister', '<ul style=\"list-style-type: circle;\"> <li><strong>Color: Amarillo</strong></li> <li><strong>Talla: M</strong></li> <li><strong>Unisex</strong></li> </ul>', '10.00', 7, '', '2021-07-07 22:40:58', 'beanie-hollister', 1),
(8, 2, '2357853', 'Hoodie Green White F21', '<p>Talla: M</p> <p>Color: Green White</p> <p>100% algodon</p>', '25.00', 1, '', '2021-07-07 22:42:13', 'hoodie-green-white-f21', 1),
(9, 2, '23356768', 'Short F21', '<p>Short sleeve</p> <p>Talla M</p> <p>Color Negro</p> <p>&nbsp;</p>', '10.00', 60, '', '2021-07-07 22:47:00', 'short-f21', 1),
(10, 2, '436768545', 'Jeans Bershka', '<p>Jeans Bershka</p> <p>Talla M</p> <p>Slim</p>', '20.00', 5, '', '2021-07-07 22:49:13', 'jeans-bershka', 1),
(11, 1, '1246445', 'Minifalda de cuadros escalonados', '<p>&nbsp;</p> <p>Minifalda de cuadros escalonados</p> <p>Talla S</p> <p style=\"box-sizing: border-box; margin: 0.5em 0px; padding: 0px; color: #888888; font-family: arial, helvetica, san-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>', '8.00', 6, '', '2021-07-07 22:53:43', 'minifalda-de-cuadros-escalonados', 1),
(12, 1, '2000440264', 'Joggers con cordón y estampado de camuflaje', '<p>Detalles</p> <p>Un par de joggers tejidos con estampado de camuflaje en toda la prenda, ribete el&aacute;stico, cinturilla con cord&oacute;n y bolsillos delanteros inclinados.</p> <p>Contenido + Cuidado</p> <p>- 100% algod&oacute;n</p> <p>- Lavar a m&aacute;quina en fr&iacute;o</p> <p>Talla + Ajuste</p> <p>- La modelo mide 5\'8.5 \"y usa un peque&ntilde;o</p>', '19.99', 3, '', '2021-07-07 22:57:41', 'joggers-con-cordon-y-estampado-de-camuflaje', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `idtransaccion` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `datosreembolso` text COLLATE utf8_swedish_ci NOT NULL,
  `observacion` text COLLATE utf8_swedish_ci NOT NULL,
  `status` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(6, 'Resporteria', 'Resporteria Sistema', 2),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 1),
(9, 'Coordinador', 'Coordinador', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Genderson Porras', 'genderson@info.com', '2021-07-13 13:16:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Sinpe', 1),
(5, 'Deposito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
