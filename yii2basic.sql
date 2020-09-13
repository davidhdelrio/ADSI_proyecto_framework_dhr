-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2020 a las 18:26:05
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yii2basic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `productos` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `id_proveedor` varchar(30) NOT NULL,
  `precio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `productos`, `descripcion`, `id_proveedor`, `precio`) VALUES
(1, 'invermectina', 'gotas', '12', '13000'),
(2, 'dolex', 'pasta', '13', '2500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `activate`) VALUES
(1, '1234567', 'dawinalmanza09@gmail.com', 'fsbqobwqC.aMo', '0898162df84a7fc200bc8a377695b1317c180dcaeae7702942330ce5e99ba2c2b28d6fb5ebba76ab565fe6e12c46b2031140ee1201e007b8fdcd5bacd308cae283eecc83f849398787b5fd8ef3ca7d1d8ab83bc6994c543b349c18fb9c53ef5b8a7ce629', '2afc7b2bbca98e18bc642510ed5cdb412c8dc9c041d541b50e70ae6bafe9bb9b3bd632aefe549c04b2c26fa39bc37b9b50c14aa40a86e420d87f6afbdb0525825d53b44af6e19653bc9825c3c72ae9257c24dd58fa9f2db2a4a9ea144d3dcc54aa42d057', 0),
(3, '73189258', 'riodavid82@hotmail.com', 'fsbqobwqC.aMo', '01bd734395dcfb375e716854bbd3874d0d13a26e2141a14430aa686e4adb2418c8c34495aa9efd0c6fe9def92253b358f6af8e990c54c1ba62fc479f397959c7b9e63d410182da1e6eb304bf05e224b12477d004ec100cd51ed543bb1d0c3c87b62d275e', '52672b620d64625890b51676f8066d077558c53a04452f8d3881b904cfe1ea461f331141b5a5142b25682ec7bc14bda4bffb45fe7f36e31ed51c424a0cc590d9ff32a2b2000171d1ff690c8352a96769a0971803b70a051b9aa80c50f83f73b2687adbe9', 0),
(4, '00000', 'danieldiazcuello@hotmail.com', 'fsQonrB5FXZgQ', 'd50c5fb4fd8065e23d8bd7db1e9d30f41cbcd4370684197c3f86d882a7227cfeff0bb7a302699b0cd1474f84079e9dd32b1adebb301e6fdf3a87d8ed9544d8873a2c7ba7555298d6ee0cb83a924db49a99712a831d827279dd569396ca55a93b60ef06f9', '1144217270ee3886b7abd1aceb93ec14a3badc6c4ecbad63512b774e8f985ef62fce285ebc4e343bf97365a12831978f137880191802bcb2eabb010a09280d1ff28e59819762723f8bd3b1b6c8162991f4c8475c25fd7ec88ad8b6ed8de6cd00e9b0adbd', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
