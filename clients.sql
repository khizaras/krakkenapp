-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2014 at 10:47 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `savi`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_code` char(20) DEFAULT NULL,
  `cli_company` char(100) DEFAULT NULL,
  `cli_address` text,
  `cli_phone` char(100) NOT NULL,
  `cli_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`cli_id`),
  KEY `cli_id` (`cli_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`cli_id`, `cli_code`, `cli_company`, `cli_address`, `cli_phone`, `cli_status`) VALUES
(1, 'PPAL', 'Paypal', '25 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414658', NULL),
(2, 'Ebay', NULL, NULL, '', NULL),
(3, 'PPAL', 'Paypal', '27 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414660', NULL),
(4, 'PPAL', 'Paypal', '28 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414661', NULL),
(5, 'PPAL', 'Paypal', '29 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414662', NULL),
(6, 'Ebay', NULL, NULL, '', NULL),
(7, 'PPAL', 'Paypal', '31 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414664', NULL),
(8, 'PPAL', 'Paypal', '32 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414665', NULL),
(9, 'PPAL', 'Paypal', '33 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414666', NULL),
(10, 'PPAL', 'Paypal', '34 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414667', NULL),
(11, 'PPAL', 'Paypal', '35 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414668', NULL),
(12, 'PPAL', 'Paypal', '36 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414669', NULL),
(13, 'PPAL', 'Paypal', '37 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414670', NULL),
(14, 'PPAL', 'Paypal', '38 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414671', NULL),
(15, 'PPAL', 'Paypal', '39 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414672', NULL),
(16, 'PPAL', 'Paypal', '40 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414673', NULL),
(17, 'PPAL', 'Paypal', '41 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414674', NULL),
(18, 'PPAL', 'Paypal', '42 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414675', NULL),
(19, 'PPAL', 'Paypal', '43 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414676', NULL),
(20, 'PPAL', 'Paypal', '44 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414677', NULL),
(21, 'PPAL', 'Paypal', '45 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414678', NULL),
(22, 'PPAL', 'Paypal', '46 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414679', NULL),
(23, 'PPAL', 'Paypal', '47 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414680', NULL),
(24, 'PPAL', 'Paypal', '48 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414681', NULL),
(25, 'PPAL', 'Paypal', '49 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414682', NULL),
(26, 'PPAL', 'Paypal', '50 SE Main road, Sholinganallur, Omr Road, Chennai-106', '+91 9884001323 + 91 044 28414683', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
