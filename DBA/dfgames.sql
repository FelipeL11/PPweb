-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 07-10-2024 a las 20:02:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dfgames`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro_compras`
--

CREATE TABLE `carro_compras` (
  `id_carro_compras` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `cantidad` varchar(100) NOT NULL,
  `f_agregado` varchar(100) NOT NULL,
  `lista_deseos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `id_clasificacion` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `edad_minima` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `id_devolucion` int(100) NOT NULL,
  `id_pago` int(100) NOT NULL,
  `f_compra` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `id_devolucion` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `estado_devolucion` varchar(100) NOT NULL,
  `f_devolucion` varchar(100) NOT NULL,
  `f_resolucion` varchar(100) NOT NULL,
  `valor_reembolsado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `nom_evento` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `F_inicio` varchar(100) NOT NULL,
  `F_final` varchar(100) NOT NULL,
  `tipo_evento` varchar(100) NOT NULL,
  `estado_evento` varchar(100) NOT NULL,
  `aforo_usuarios` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juegos` int(100) NOT NULL,
  `id_clasificacion` int(100) NOT NULL,
  `id_juegos_categoria` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `id_carro_compras` int(100) NOT NULL,
  `id_juego_plataforma` int(100) NOT NULL,
  `id_evento` int(100) NOT NULL,
  `nombre_j` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `distribuidor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_categorias`
--

CREATE TABLE `juegos_categorias` (
  `id_juego_categoria` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_plataforma`
--

CREATE TABLE `juegos_plataforma` (
  `id_juego_plataforma` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `id_plataforma` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `id_medio_pago` int(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `f_pago` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas`
--

CREATE TABLE `plataformas` (
  `id_plataforma` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fabricante` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(100) NOT NULL,
  `id_evento` int(100) NOT NULL,
  `nombre_c` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carro_compras`
--
ALTER TABLE `carro_compras`
  ADD PRIMARY KEY (`id_carro_compras`),
  ADD KEY `id_carro_compras` (`id_carro_compras`,`id_usuario`,`id_juego`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`id_clasificacion`),
  ADD KEY `id_clasificacion` (`id_clasificacion`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_compra` (`id_compra`,`id_usuario`,`id_juego`),
  ADD KEY `id_devolucion` (`id_devolucion`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `id_devolucion` (`id_devolucion`,`id_compra`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_usuario` (`id_usuario`,`id_juego`,`nom_evento`,`ubicacion`,`F_inicio`,`F_final`,`tipo_evento`,`estado_evento`,`aforo_usuarios`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juegos`),
  ADD KEY `id_juegos` (`id_juegos`),
  ADD KEY `id_clasificacion` (`id_clasificacion`),
  ADD KEY `id_categoria` (`id_juegos_categoria`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_carro_compras` (`id_carro_compras`),
  ADD KEY `id_juegos_categoria` (`id_juegos_categoria`),
  ADD KEY `id_juego_plataforma` (`id_juego_plataforma`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `juegos_categorias`
--
ALTER TABLE `juegos_categorias`
  ADD PRIMARY KEY (`id_juego_categoria`),
  ADD KEY `id_juego_categoria` (`id_juego_categoria`,`id_juego`,`categoria`),
  ADD KEY `id_categoria` (`categoria`);

--
-- Indices de la tabla `juegos_plataforma`
--
ALTER TABLE `juegos_plataforma`
  ADD PRIMARY KEY (`id_juego_plataforma`),
  ADD KEY `id_juego_plataforma` (`id_juego_plataforma`,`id_juego`,`id_plataforma`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_pago` (`id_pago`,`id_compra`,`id_medio_pago`),
  ADD KEY `id_medio_pago` (`id_medio_pago`);

--
-- Indices de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`id_plataforma`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carro_compras`
--
ALTER TABLE `carro_compras`
  ADD CONSTRAINT `carro_compras_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `carro_compras_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`);

--
-- Filtros para la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD CONSTRAINT `clasificacion_ibfk_1` FOREIGN KEY (`id_clasificacion`) REFERENCES `juegos` (`id_clasificacion`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_devolucion`) REFERENCES `devoluciones` (`id_devolucion`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id_pago`);

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `juegos_ibfk_3` FOREIGN KEY (`id_carro_compras`) REFERENCES `carro_compras` (`id_carro_compras`),
  ADD CONSTRAINT `juegos_ibfk_4` FOREIGN KEY (`id_juegos_categoria`) REFERENCES `juegos_categorias` (`id_juego_categoria`),
  ADD CONSTRAINT `juegos_ibfk_5` FOREIGN KEY (`id_juego_plataforma`) REFERENCES `juegos_plataforma` (`id_juego_plataforma`),
  ADD CONSTRAINT `juegos_ibfk_6` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Filtros para la tabla `juegos_plataforma`
--
ALTER TABLE `juegos_plataforma`
  ADD CONSTRAINT `juegos_plataforma_ibfk_1` FOREIGN KEY (`id_plataforma`) REFERENCES `plataformas` (`id_plataforma`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
