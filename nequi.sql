-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2024 a las 04:29:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` char(13) NOT NULL,
  `apellidos` char(13) NOT NULL,
  `documento` int(19) NOT NULL,
  `fecha_sys` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellidos`, `documento`, `fecha_sys`) VALUES
(1, 'Juan', 'Pérez', 123456789, '2024-10-01 21:17:19'),
(2, 'Ana', 'García', 987654321, '2024-10-01 21:18:00'),
(3, 'Carlos', 'López', 112233445, '2024-10-01 21:18:00'),
(4, 'María', 'Rodríguez', 998877665, '2024-10-01 21:18:00'),
(5, 'Laura', 'Martínez', 223344556, '2024-10-01 21:19:08'),
(6, 'Pedro', 'Gómez', 334455667, '2024-10-01 21:19:08'),
(7, 'Sofía', 'López', 445566778, '2024-10-01 21:19:08'),
(8, 'Jorge', 'Ramírez', 556677889, '2024-10-01 21:19:08'),
(9, 'Lucía', 'Fernández', 667788990, '2024-10-01 21:19:08'),
(10, 'Andrés', 'Torres', 778899001, '2024-10-01 21:19:08'),
(11, 'Valentina', 'Moreno', 889900112, '2024-10-01 21:19:08'),
(12, 'Gabriel', 'Sánchez', 990011223, '2024-10-01 21:19:08'),
(13, 'Camila', 'Castro', 1122334, '2024-10-01 21:19:08'),
(14, 'Fernando', 'Ruiz', 112233445, '2024-10-01 21:19:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recargas`
--

CREATE TABLE `recargas` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_recarga` timestamp NOT NULL DEFAULT current_timestamp(),
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `recargas`
--

INSERT INTO `recargas` (`id`, `id_persona`, `monto`, `fecha_recarga`, `metodo_pago`) VALUES
(1, 4, 5000.00, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(2, 2, 3000.00, '2024-10-02 02:26:25', 'Transferencia bancaria'),
(3, 8, 20000.75, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(4, 4, 15000.00, '2024-10-02 02:26:25', 'PayPal'),
(5, 13, 75000.00, '2024-10-02 02:26:25', 'Tarjeta de débito'),
(6, 6, 40000.00, '2024-10-02 02:26:25', 'Transferencia bancaria'),
(7, 7, 5500.00, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(8, 8, 60000.00, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(9, 5, 25000.00, '2024-10-02 02:26:25', 'PayPal'),
(10, 10, 10000.00, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(11, 9, 35000.00, '2024-10-02 02:26:25', 'Tarjeta de débito'),
(12, 12, 9000.00, '2024-10-02 02:26:25', 'Transferencia bancaria'),
(13, 7, 2000.00, '2024-10-02 02:26:25', 'PayPal'),
(14, 1, 4500.00, '2024-10-02 02:26:25', 'Tarjeta de crédito'),
(15, 1, 6500.00, '2024-10-02 02:26:25', 'Tarjeta de crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE `transferencias` (
  `id` int(9) NOT NULL,
  `fecha_sys` datetime NOT NULL,
  `nombre` char(13) NOT NULL,
  `apellido` char(13) NOT NULL,
  `documento` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `fecha_sys`, `nombre`, `apellido`, `documento`) VALUES
(1, '2024-10-01 21:22:41', 'Carlos', 'Hernández', 12345678),
(2, '2024-10-01 21:22:41', 'Marta', 'Pérez', 87654321),
(3, '2024-10-01 21:22:41', 'Luis', 'García', 11223344),
(4, '2024-10-01 21:22:41', 'Elena', 'González', 44332211),
(5, '2024-10-01 21:22:41', 'Javier', 'López', 33445566),
(6, '2024-10-01 21:22:41', 'Clara', 'Ramírez', 66554433),
(7, '2024-10-01 21:22:41', 'Fernando', 'Martínez', 77889900),
(8, '2024-10-01 21:22:41', 'Sara', 'Sánchez', 99887766),
(9, '2024-10-01 21:22:41', 'David', 'Torres', 22334455),
(10, '2024-10-01 21:22:41', 'Paula', 'Díaz', 55667788),
(11, '2024-10-01 21:22:41', 'Juan', 'Vargas', 11221122),
(12, '2024-10-01 21:22:41', 'Natalia', 'Morales', 66778899),
(13, '2024-10-01 21:22:41', 'Mario', 'Castro', 44556677),
(14, '2024-10-01 21:22:41', 'Andrea', 'Ortega', 77889911),
(15, '2024-10-01 21:22:41', 'Pedro', 'Ruiz', 99001122);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recargas`
--
ALTER TABLE `recargas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_persona_recarga` (`id_persona`);

--
-- Indices de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `recargas`
--
ALTER TABLE `recargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `recargas`
--
ALTER TABLE `recargas`
  ADD CONSTRAINT `fk_persona_recarga` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
