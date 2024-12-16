-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2024 at 09:48 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `price`, `quantity`) VALUES
(17, 'prison breaker', 'reiko', 'prison breaker is a  thriller story', 120, 55),
(7, 'House of Dragon', 'Targeryan', 'house of dragon is a story of ancient peoples in GOT', 1000, 2),
(14, 'logg', 'logg', 'log', 10, 13),
(18, 'hindswaraj', 'mk gandhi', 'story about mahatma gandhi', 900, 35),
(16, 'scam 1999', 'Sucheta Dalal', 'story of a biggest scam ', 560, 60),
(15, 'wings of fire', 'jack', 'its a story ', 1000, 0),
(19, 'cindrella ', 'dani', 'story of a princess', 540, 76);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookid` int NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `bookid`, `quantity`, `userid`) VALUES
(22, 7, '1', 8),
(19, 17, '1', 5),
(23, 17, '1', 8),
(24, 18, '2', 11),
(25, 19, '1', 11),
(36, 17, '1', 5),
(35, 7, '9', 5),
(34, 16, '1', 5),
(39, 17, '2', 7),
(38, 15, '1', 1),
(40, 19, '1', 7),
(41, 16, '1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'jaisil', 'jaisil@gmail.com', '12345', 2147483647, 'kaduthuruthy'),
(3, 'admin', 'admin@gmail.com', 'admin', 12345, 'admin'),
(5, 'abin', 'abin@gmail.com', '12345', 12345, 'htc'),
(7, 'jeron', 'jeron@gmail.com', '12345', 12345, 'htcw'),
(8, 'jacob', 'jacob@gmail.com', '12345', 2147483647, 'mudakotta'),
(17, 'jo', 'jo@gmail.com', '12345', 2147483647, 'kottayam'),
(11, 'mathew', 'm@gmail.com', '12345', 4154646, 'mat'),
(12, 'pooja', 'p@gmail.com', '12345', 6635653, 'pooja'),
(13, 'janteen', 'chandhu@gmail.com', 'bghjg', 12345663, '15146\r\n314'),
(19, 'bolt', 'bolt@gmail.com', '12345', 2147483647, 'kottayam'),
(18, 'jo', 'jo@gmail.com', '12345', 2147483647, 'kottayam'),
(22, 'joyal', 'j@gmail.com', '12345', 9774466, 'kottayam'),
(21, 'bolt', 'bolt1@gmail.com', '0202102123', 2147483647, 'kottayam');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
