-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2024 a las 22:55:23
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
-- Base de datos: `vjuegos`
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
  `f_agregado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
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
-- Estructura de tabla para la tabla `desarrolladores`
--

CREATE TABLE `desarrolladores` (
  `id_desarrolladores` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL
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
  `id_eventos_usuarios` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `f_inicio` varchar(100) NOT NULL,
  `f_finalizacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_usuarios`
--

CREATE TABLE `eventos_usuarios` (
  `id_eventos_usuarios` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_evento` int(100) NOT NULL,
  `f_registro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foros`
--

CREATE TABLE `foros` (
  `id_foro` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_mensaje` int(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `f_creacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juegos` int(100) NOT NULL,
  `id_genero` int(100) NOT NULL,
  `id_desarrollador` int(100) NOT NULL,
  `id_clasificacion` int(100) NOT NULL,
  `id_juegos_categoria` int(100) NOT NULL,
  `id_reseñas` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `id_carro_compras` int(100) NOT NULL,
  `id_juego_plataforma` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `lanzamiento` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_categorias`
--

CREATE TABLE `juegos_categorias` (
  `id_juego_categoria` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `id_categoria` int(100) NOT NULL
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
-- Estructura de tabla para la tabla `lista_deseos`
--

CREATE TABLE `lista_deseos` (
  `id_lista_deseos` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `f_agregado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logros`
--

CREATE TABLE `logros` (
  `id_logros` int(100) NOT NULL,
  `id_juego` int(100) NOT NULL,
  `id_logros_usuarios` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `puntos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logros_usuarios`
--

CREATE TABLE `logros_usuarios` (
  `id_logros_usuarios` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `id_logro` int(100) NOT NULL,
  `f_desbloqueado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_pago`
--

CREATE TABLE `medios_pago` (
  `id_medio_pago` int(100) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_foro`
--

CREATE TABLE `mensajes_foro` (
  `id_mensaje` int(100) NOT NULL,
  `id_foro` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `contenido` varchar(100) NOT NULL,
  `f_publicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(100) NOT NULL,
  `id_compra` int(100) NOT NULL,
  `id_medio_pago` int(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
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
-- Estructura de tabla para la tabla `reseñas`
--

CREATE TABLE `reseñas` (
  `id_reseñas` int(100) NOT NULL,
  `id_juegos` int(100) NOT NULL,
  `id_usuario` int(100) NOT NULL,
  `calificacion` varchar(100) NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `fecha_reseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(100) NOT NULL,
  `id_eventos_usuarios` int(100) NOT NULL,
  `id_foro` int(100) NOT NULL,
  `id_logros_usuarios` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fecha_registro` varchar(100) NOT NULL,
  `rol` varchar(100) NOT NULL
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
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`),
  ADD KEY `id_categorias` (`id_categorias`);

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
-- Indices de la tabla `desarrolladores`
--
ALTER TABLE `desarrolladores`
  ADD PRIMARY KEY (`id_desarrolladores`),
  ADD KEY `id_desarrolladores` (`id_desarrolladores`);

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
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_eventos_usuarios` (`id_eventos_usuarios`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `eventos_usuarios`
--
ALTER TABLE `eventos_usuarios`
  ADD PRIMARY KEY (`id_eventos_usuarios`),
  ADD KEY `id_eventos_usuarios` (`id_eventos_usuarios`,`id_usuario`,`id_evento`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `foros`
--
ALTER TABLE `foros`
  ADD PRIMARY KEY (`id_foro`),
  ADD KEY `id_foro` (`id_foro`,`id_usuario`),
  ADD KEY `id_mensaje` (`id_mensaje`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`),
  ADD KEY `id_generos` (`id_generos`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juegos`),
  ADD KEY `id_juegos` (`id_juegos`,`id_genero`,`id_desarrollador`),
  ADD KEY `id_desarrollador` (`id_desarrollador`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_clasificacion` (`id_clasificacion`),
  ADD KEY `id_categoria` (`id_juegos_categoria`),
  ADD KEY `id_reseñas` (`id_reseñas`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_carro_compras` (`id_carro_compras`),
  ADD KEY `id_juegos_categoria` (`id_juegos_categoria`),
  ADD KEY `id_juego_plataforma` (`id_juego_plataforma`);

--
-- Indices de la tabla `juegos_categorias`
--
ALTER TABLE `juegos_categorias`
  ADD PRIMARY KEY (`id_juego_categoria`),
  ADD KEY `id_juego_categoria` (`id_juego_categoria`,`id_juego`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `juegos_plataforma`
--
ALTER TABLE `juegos_plataforma`
  ADD PRIMARY KEY (`id_juego_plataforma`),
  ADD KEY `id_juego_plataforma` (`id_juego_plataforma`,`id_juego`,`id_plataforma`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD PRIMARY KEY (`id_lista_deseos`),
  ADD KEY `id_lista_deseos` (`id_lista_deseos`,`id_usuario`,`id_juego`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `logros`
--
ALTER TABLE `logros`
  ADD PRIMARY KEY (`id_logros`),
  ADD KEY `id_logros` (`id_logros`,`id_juego`,`id_logros_usuarios`);

--
-- Indices de la tabla `logros_usuarios`
--
ALTER TABLE `logros_usuarios`
  ADD PRIMARY KEY (`id_logros_usuarios`),
  ADD KEY `id_logros_usuarios` (`id_logros_usuarios`,`id_usuario`,`id_logro`),
  ADD KEY `id_logro` (`id_logro`);

--
-- Indices de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  ADD PRIMARY KEY (`id_medio_pago`),
  ADD KEY `id_medio_pago` (`id_medio_pago`,`id_pago`);

--
-- Indices de la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id_mensaje` (`id_mensaje`,`id_foro`,`id_usuario`);

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
-- Indices de la tabla `reseñas`
--
ALTER TABLE `reseñas`
  ADD PRIMARY KEY (`id_reseñas`),
  ADD KEY `id_reseñas` (`id_reseñas`,`id_juegos`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_eventos_usuarios` (`id_eventos_usuarios`),
  ADD KEY `id_foro` (`id_foro`),
  ADD KEY `id_logros_usuarios` (`id_logros_usuarios`);

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
-- Filtros para la tabla `desarrolladores`
--
ALTER TABLE `desarrolladores`
  ADD CONSTRAINT `desarrolladores_ibfk_1` FOREIGN KEY (`id_desarrolladores`) REFERENCES `juegos` (`id_desarrollador`);

--
-- Filtros para la tabla `eventos_usuarios`
--
ALTER TABLE `eventos_usuarios`
  ADD CONSTRAINT `eventos_usuarios_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Filtros para la tabla `foros`
--
ALTER TABLE `foros`
  ADD CONSTRAINT `foros_ibfk_1` FOREIGN KEY (`id_mensaje`) REFERENCES `mensajes_foro` (`id_mensaje`);

--
-- Filtros para la tabla `generos`
--
ALTER TABLE `generos`
  ADD CONSTRAINT `generos_ibfk_1` FOREIGN KEY (`id_generos`) REFERENCES `juegos` (`id_genero`);

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_reseñas`) REFERENCES `reseñas` (`id_reseñas`),
  ADD CONSTRAINT `juegos_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `juegos_ibfk_3` FOREIGN KEY (`id_carro_compras`) REFERENCES `carro_compras` (`id_carro_compras`),
  ADD CONSTRAINT `juegos_ibfk_4` FOREIGN KEY (`id_juegos_categoria`) REFERENCES `juegos_categorias` (`id_juego_categoria`),
  ADD CONSTRAINT `juegos_ibfk_5` FOREIGN KEY (`id_juego_plataforma`) REFERENCES `juegos_plataforma` (`id_juego_plataforma`);

--
-- Filtros para la tabla `juegos_categorias`
--
ALTER TABLE `juegos_categorias`
  ADD CONSTRAINT `juegos_categorias_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categorias`);

--
-- Filtros para la tabla `juegos_plataforma`
--
ALTER TABLE `juegos_plataforma`
  ADD CONSTRAINT `juegos_plataforma_ibfk_1` FOREIGN KEY (`id_plataforma`) REFERENCES `plataformas` (`id_plataforma`);

--
-- Filtros para la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD CONSTRAINT `lista_deseos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `lista_deseos_ibfk_2` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id_juegos`);

--
-- Filtros para la tabla `logros_usuarios`
--
ALTER TABLE `logros_usuarios`
  ADD CONSTRAINT `logros_usuarios_ibfk_1` FOREIGN KEY (`id_logro`) REFERENCES `logros` (`id_logros`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_medio_pago`) REFERENCES `medios_pago` (`id_medio_pago`);

--
-- Filtros para la tabla `reseñas`
--
ALTER TABLE `reseñas`
  ADD CONSTRAINT `reseñas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_eventos_usuarios`) REFERENCES `eventos_usuarios` (`id_eventos_usuarios`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_foro`) REFERENCES `foros` (`id_foro`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_logros_usuarios`) REFERENCES `logros_usuarios` (`id_logros_usuarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
