-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2017 at 02:22 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `all_world_shirts`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id_collection` int(11) NOT NULL,
  `collection_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id_collection`, `collection_name`, `enabled`, `description`) VALUES
(1, 'Invierno 2016', 1, 'La coleccion de invierno es la mejor propuesta para ahorrar'),
(2, 'Primavera 2017', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id_product` int(11) NOT NULL,
  `id_collection` int(11) DEFAULT '0',
  `name_product` char(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `img_default` char(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_product`, `id_collection`, `name_product`, `price`, `img_default`, `description`) VALUES
(1, 1, 'AEROSMIT', 250000, 'aerosmit.jpg', 'La mejor camite de aeros mit la puedes encontrar aqui'),
(2, 1, 'COLDPLAY', 300000, 'cold_play.jpg', 'Solo los mejores y excluisvas camisetas'),
(7, 1, 'COLDPLAY', 300000, 'cold_play.jpg', 'Solo los mejores y excluisvas camisetas'),
(8, 1, 'COLDPLAY', 300000, 'cold_play.jpg', 'Solo los mejores y excluisvas camisetas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id_collection`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_collection_fk` (`id_collection`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id_collection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
