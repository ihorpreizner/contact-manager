-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2015 at 11:46 AM
-- Server version: 5.5.23
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact-raw-mandebura`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `WorkPhone` varchar(20) DEFAULT NULL,
  `CellPhone` varchar(20) DEFAULT NULL,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Zip` varchar(20) NOT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `BirthDate` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `FirstName`, `LastName`, `Email`, `HomePhone`, `WorkPhone`, `CellPhone`, `Address1`, `Address2`, `City`, `State`, `Zip`, `Country`, `BirthDate`) VALUES
(3, 'anrii', 'manbursg', 'mandeburaav@gmail.com', '555-25-25', '555-65-65', '555-75-57', 'Luchakivskogo 5', 'ddd', 'Ternopil', 'Ternopil', '46027', 'Ukraine', '05.12.1994');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
