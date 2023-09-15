-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2023 a las 01:31:03
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
(13, 'Oso Blanco en extinsión', 'Este tipo de mamífero es una de las especies más amenazadas de la Tierra, y algunos no les pronostican más de un siglo de vida. La razón principal del peligro que corren los osos polares (Ursus maritimus) es el deshielo del Ártico o Polo Norte, su hábitat', 'https://cdn0.ecologiaverde.com/es/posts/5/7/3/el_oso_blanco_u_oso_polar_en_peligro_de_extincion_375_0_orig.jpg', '2023-09-14 23:14:34', '2023-09-14 23:14:34'),
(14, 'Veganismo y Salud', 'Los profesionales sanitarios han descubierto una característica común con aquellos que adoptan una dieta vegana, la anemia, común a los que adoptan esta dieta, sobre todo al principio.  Si la anemia está presente durante demasiado tiempo, se produce tambi', 'https://as01.epimg.net/deporteyvida/imagenes/2019/08/11/portada/1565542062_388191_1565542414_noticia_normal_recorte1.jpg', '2023-09-14 23:18:17', '2023-09-14 23:18:17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
