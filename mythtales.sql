-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2021 at 07:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mythtales`
--
CREATE DATABASE IF NOT EXISTS `mythtales` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mythtales`;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `nombre` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`nombre`, `email`, `asunto`, `mensaje`) VALUES
('Quoc Anh Le Vu', 'miguel.guti.ruano@gmail.com', 'Un 5', 'Por favor'),
('Miguel Gutierrez', 'miguel.guti.ruano@gmail.com', 'Podrias', 'Ponernos'),
('Jiale Chen', 'miguel.guti.ruano@gmail.com', 'Serias', 'tan amable de'),
('Pablo Martín', 'miguel.guti.ruano@gmail.com', 'Hola Sergio!', 'Te queremos mucho');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
