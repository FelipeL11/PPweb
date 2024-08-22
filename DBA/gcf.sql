-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 05-03-2024 a las 15:49:25
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gcf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Clientes` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nombre` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cedula` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gcf_games`
--

CREATE TABLE `gcf_games` (
  `Clientes` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Juegos` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Proveedores` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Pedidos` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Personal` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `ID_Juegos` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Precio` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Categoria` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Características` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_Juegos` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_Clientes` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `ID_Pers` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido_p` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nombre_p` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cedula_p` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad_p` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cargo` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedores` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nombre_pro` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Contacto` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Precios_Pro` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Clientes`);

--
-- Indices de la tabla `gcf_games`
--
ALTER TABLE `gcf_games`
  ADD PRIMARY KEY (`Clientes`,`Juegos`,`Proveedores`,`Pedidos`,`Personal`),
  ADD KEY `Clientes` (`Clientes`,`Juegos`,`Proveedores`,`Pedidos`,`Personal`),
  ADD KEY `Juegos` (`Juegos`),
  ADD KEY `Proveedores` (`Proveedores`),
  ADD KEY `Pedidos` (`Pedidos`),
  ADD KEY `Personal` (`Personal`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`ID_Juegos`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`,`ID_Juegos`,`ID_Clientes`),
  ADD KEY `ID_Pedido` (`ID_Pedido`,`ID_Juegos`,`ID_Clientes`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`ID_Pers`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedores`),
  ADD KEY `ID_Proveedores` (`ID_Proveedores`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gcf_games`
--
ALTER TABLE `gcf_games`
  ADD CONSTRAINT `gcf_games_ibfk_1` FOREIGN KEY (`Juegos`) REFERENCES `juegos` (`ID_Juegos`),
  ADD CONSTRAINT `gcf_games_ibfk_2` FOREIGN KEY (`Proveedores`) REFERENCES `proveedores` (`ID_Proveedores`),
  ADD CONSTRAINT `gcf_games_ibfk_3` FOREIGN KEY (`Pedidos`) REFERENCES `pedidos` (`ID_Pedido`),
  ADD CONSTRAINT `gcf_games_ibfk_4` FOREIGN KEY (`Personal`) REFERENCES `personal` (`ID_Pers`),
  ADD CONSTRAINT `gcf_games_ibfk_5` FOREIGN KEY (`Clientes`) REFERENCES `clientes` (`ID_Clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
