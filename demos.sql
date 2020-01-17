-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2020 at 11:16 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demos`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `userName`, `password`) VALUES
(1, 'admin', 'Test@123'),
(2, 'anuj', 'Demo@123');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `username`, `actionTime`) VALUES
(1, 1, 'admin', '2016-06-29 05:56:57'),
(2, 1, 'admin', '2016-06-29 05:57:23'),
(3, 2, 'anuj', '2016-06-29 05:57:31'),
(4, 1, 'admin', '2016-06-29 06:06:47'),
(5, 1, 'admin', '2016-06-29 06:28:59'),
(6, 1, 'admin', '2016-06-29 06:38:53'),
(7, 1, 'admin', '2019-02-05 16:50:02'),
(9, 1, 'admin', '2019-02-05 16:55:01'),
(11, 1, 'admin', '2019-02-05 16:56:09'),
(12, 1, 'admin', '2019-02-05 16:56:32'),
(13, 1, 'admin', '2019-02-05 16:57:11'),
(14, 1, 'admin', '2020-01-17 14:53:12'),
(15, 1, 'admin', '2020-01-17 14:53:37'),
(16, 2, 'anuj', '2020-01-17 14:53:57'),
(17, 2, 'anuj', '2020-01-17 14:54:17'),
(87, 1, 'admin', '2020-01-17 20:55:18'),
(105, 2, 'anuj', '2020-01-17 21:18:02'),
(106, 2, 'anuj', '2020-01-17 21:18:13'),
(107, 2, 'anuj', '2020-01-17 21:53:12'),
(108, 2, 'anuj', '2020-01-17 21:53:30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
