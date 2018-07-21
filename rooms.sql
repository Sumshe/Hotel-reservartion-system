-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2016 at 09:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `hotelid` int(5) NOT NULL,
  `roomtype` varchar(32) NOT NULL,
  `features` varchar(600) NOT NULL,
  `price` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`hotelid`, `roomtype`, `features`, `price`) VALUES
(1, 'DELUXE', 'Breakfast ,Lunch included/ 10% discount/Free Parking/Internet charges applicable\r\n\r\n', 7000),
(1, 'EXECUTIVE', 'Lunch included/ 7% discount/Free Parking/Free Internet \r\n\r\n', 10000),
(1, 'SUITE', 'Breakfast ,Dinner included/ 5% discount/ Parking charges appliable/Internet charges applicable.\r\n\r\n', 9000),
(2, 'DELUXE', 'Breakfast included/ 10% discount/Free Parking/Free Internet \r\n\r\n', 7500),
(1, 'SUITE', 'Breakfast ,Dinner included/ 5% discount/ Parking charges appliable/Internet charges applicable.\r\n\r\n', 9000),
(2, 'DELUXE', 'Breakfast included/ 10% discount/Free Parking/Free Internet \r\n\r\n', 7500),
(2, 'EXECUTIVE', 'Breakfast ,Lunch,Dinner  included/ 5% discount/Free Parking/Internet charges applicable\r\n\r\n', 12000),
(2, 'SUITE', 'Dinner,Lunch included/ 8% discount/ Parking charges applicable/Internet charges applicable\r\n\r\n', 11000),
(3, 'DELUXE', 'Breakfast,Lunch included/10% discount/Free parking/Internet charges applicable', 7500),
(3, 'EXECUTIVE', 'Lunch included/5% discount/ Parking charges applicable/Free Internet ', 10000),
(3, 'SUITE', 'Breakfast,Dinner included/15% discount/Free parking/Internet charges applicable', 9000),
(4, 'DELUXE', 'Lunch,Dinner included/7% discount/Free parking/Free Internet ', 8000),
(3, 'EXECUTIVE', 'Breakfast included/10% discount/Free parking/Internet charges applicable', 9500),
(4, 'DELUXE', 'Breakfast,Lunch included/5% discount/ Parking charges applicable/Internet charges applicable', 8000),
(4, 'EXECUTIVE', 'Lunch,Dinner included/10% discount/Free parking/Internet charges applicable', 10500),
(4, 'SUITE', 'Breakfast included/8% discount/Free parking/Free Internet ', 9000),
(5, 'DELUXE', 'Breakfast,Lunch included/12% discount/ Parking charges applicable/Internet charges applicable', 7500),
(5, 'EXECUTIVE', 'Breakfast included/10% discount/Free parking/Internet charges applicable', 9500),
(5, 'SUITE', 'Lunch,Dinner included/5% discount/Free parking/Internet charges applicable', 8700),
(6, 'DELUXE', 'Breakfast,Lunch,Dinner included/5% discount/Parking charges applicable/Internet charges applicable', 9000),
(6, 'EXECUTIVE', 'Lunch included/10% discount/Free parking/Free Internet ', 9500),
(6, 'SUITE', 'Breakfast,Dinner included/12% discount/ Parking charges applicable/Internet charges applicable', 8000),
(7, 'DELUXE', 'Breakfast,Lunch included/10% discount/Free parking/Internet charges applicable', 7000),
(7, 'EXECUTIVE', 'Lunch,Dinner included/7% discount/Parking charges applicable/Internet charges applicable', 10000),
(7, 'SUITE', 'Breakfast,Lunch,Dinner included/5% discount/Free parking/Free Internet ', 9500),
(8, 'DELUXE', 'Breakfast,Dinner included/10% discount/ Parking charges applicable/Free Internet', 8400),
(8, 'EXECUTIVE', 'Lunch included/9% discount/Free parking/Internet charges applicable', 9999),
(8, 'SUITE', 'Breakfast,Dinner included/5% discount/Free parking/Free Internet', 7499),
(9, 'DELUXE', 'Lunch,Dinner included/7% discount/Free parking/Internet charges applicable', 6499),
(9, 'EXECUTIVE', 'Breakfast,Lunch,Dinner included/10% discount/Free parking/Free Internet  applicable', 10499),
(9, 'SUITE', 'Lunch,Dinner included/13% discount/ Parking charges applicable/Internet charges applicable', 7799),
(10, 'DELUXE', 'Breakfast,Dinner included/10% discount/Free parking/Internet charges applicable', 6999),
(10, 'EXECUTIVE', 'Lunch included/5% discount/ Parking charges applicable/Internet charges applicable', 10499),
(10, 'SUITE', 'Breakfast,Dinner included/9% discount/ Parking charges applicable/Free Internet', 8999),
(11, 'DELUXE', 'Lunch,Dinner included/12% discount/Free parking/Internet charges applicable', 8400),
(11, 'EXECUTIVE', 'Breakfast,Dinner included/6.5% discount/Parking charges applicable/Internet charges applicable', 10299),
(11, 'SUITE', 'Breakfast included/8% discount/Free parking/Free Internet ', 9500),
(12, 'DELUXE', 'Breakfast,Dinner included/4% discount/Free parking/Internet charges applicable', 5500),
(12, 'EXECUTIVE', 'Breakfast,Lunch included/10% discount/Free parking/Free Internet', 9999),
(12, 'SUITE', 'Lunch included/9% discount/ Parking charges applicable/Internet charges applicable', 8500),
(13, 'DELUXE', 'Breakfast,Lunch included/4.5% discount/ Parking charges applicable/Free Internet ', 8500),
(13, 'EXECUTIVE', 'Lunch,Dinner included/11% discount/Free parking/Free Internet ', 10499),
(13, 'SUITE', 'Breakfast,Lunch included/8% discount/Parking charges applicable/Internet charges applicable', 8799),
(14, 'DELUXE', 'Breakfast,Lunch included/5% discount/Free parking/Internet charges applicable', 5799),
(14, 'EXECUTIVE', 'Breakfast,Dinner included/7.5% discount/Parking charges applicable/Free Internet', 9999),
(14, 'SUITE', 'Breakfast included/10% discount/Free parking/Free Internet', 8999),
(15, 'DELUXE', 'Breakfast,Lunch included/7.5% discount/Free parking/Free Internet ', 2500),
(15, 'EXECUTIVE', 'Lunch,Dinner included/6% discount/Free parking/Internet charges applicable', 3499),
(15, 'SUITE', 'Breakfast,Lunch included/10% discount/Free parking/Free Internet', 2799);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
