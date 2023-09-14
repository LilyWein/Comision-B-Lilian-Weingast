-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2023 a las 18:57:37
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
-- Base de datos: `db_publi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `poster`, `createdAt`, `updatedAt`) VALUES
(6, 'Lilian', 'Quiero vertegóiwergj eriog eqorigheirogh eqr´giheqríogeqrioghqeroigheqrígoheroighqerigohríog ero´gihqe riog heríogherígo eróig eríog erqóigheq´gioehq´gioe gói hrgóierhgíoe rhgíorhgóierg éirog', 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg', '2023-09-14 13:07:45', '2023-09-14 13:07:45'),
(7, 'Lilian', 'Quiero verte', 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg', '2023-09-14 14:03:19', '2023-09-14 14:03:19'),
(8, 'Lilian', 'Quiero vertegóiwergj eriog eqorigheirogh eqr´giheqríogeqrioghqeroigheqrígoheroighqerigohríog ero´gihqe riog heríogherígo eróig eríog erqóigheq´gioehq´gioe gói hrgóierhgíoe rhgíorhgóierg éirog', 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg', '2023-09-14 14:04:42', '2023-09-14 14:04:42'),
(9, 'Lilian', 'Quiero verte', 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg', '2023-09-14 15:15:59', '2023-09-14 15:15:59'),
(10, 'Lilian', 'o icrwejórgiqenrg b45+g0v1ong+35gv´091543g0', 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg', '2023-09-14 16:34:15', '2023-09-14 16:34:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
