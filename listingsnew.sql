-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 07:16 AM
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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `hotelid` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `rating` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`hotelid`, `name`, `city`, `rating`) VALUES
(1, 'EXPEDIA HOTEL', 'BANGALORE', 5),
(2, 'OBEROI HOTEL', 'BANGALORE', 5),
(3, 'CHENG HOTEL', 'BANGALORE', 4),
(4, 'GUPTA''S HOTEL', 'DELHI', 4),
(5, 'LEELA PALACE', 'DELHI', 4),
(6, 'PATEL''S HOTEL', 'DELHI', 5),
(7, 'CHAUDHARY''S HOTEL', 'KOLKATA', 4),
(8, 'BACON''S HOTEL', 'KOLKATA', 4),
(9, 'SINDH ROY PALACE', 'KOLKATA', 5),
(10, 'CHUNDURY HOTEL', 'HYDERABAD', 5),
(11, 'REDDY''S HOUSE OF JOY', 'HYDERABAD', 5),
(12, 'SINGH''S HOTEL', 'HYDERABAD', 4),
(13, 'CHOPRA PALACE', 'MUMBAI', 4),
(14, 'KAPOOR HOUSE', 'MUMBAI', 4),
(15, 'BIJLANI HOTEL', 'MUMBAI', 5),
(16, 'RAO''S HOTEL', 'BANGALORE', 4),
(17, 'GUTTA''S PALACE', 'BANGALORE', 4),
(18, 'HOTEL KUKREJA', 'DELHI', 4),
(19, 'RAJ MAHAL HOTEL', 'DELHI', 4),
(20, 'JESSICA HOTEL', 'KOLKATA', 4),
(21, 'PRIMAR''S HOTEL', 'KOLKATA', 5),
(22, 'VICTORIA''S HOTEL', 'MUMBAI', 5),
(23, 'BANDARA PALACE', 'MUMBAI', 4),
(24, 'PREM HOTEL', 'HYDERABAD', 4),
(25, 'NAIDU''S HOUSE OF JOY', 'HYDERABAD', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`hotelid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
