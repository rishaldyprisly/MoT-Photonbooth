-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2022 at 12:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mot`
--

-- --------------------------------------------------------

--
-- Table structure for table `Galery`
--

CREATE TABLE `Galery` (
  `ID` int(15) NOT NULL,
  `Booth` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Images` varchar(255) NOT NULL,
  `Times` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Layout`
--

CREATE TABLE `Layout` (
  `ID` int(15) NOT NULL,
  `Booth` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Frame` int(1) NOT NULL,
  `Filter` int(1) NOT NULL,
  `Images` varchar(255) NOT NULL,
  `Times` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Log`
--

CREATE TABLE `Log` (
  `ID` int(15) NOT NULL,
  `Booth` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Times` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE `Transaction` (
  `ID` int(15) NOT NULL,
  `Booth` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Amount` varchar(10) NOT NULL,
  `TransactionTime` varchar(50) NOT NULL,
  `TransactionStatus` varchar(50) NOT NULL,
  `Times` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(5) NOT NULL,
  `NIKR` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `BoD` date NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Times` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `NIKR`, `Password`, `Fullname`, `Unit`, `BoD`, `Phone`, `Email`, `Address`, `Role`, `Photo`, `Times`) VALUES
(1, '07', '356a192b7913b04c54574d18c28d46e6395428ab', 'Rishaldy', 'IT', '1993-11-07', '08561947593', 'aldylogy@gmail.com', 'Villa Regency Tangerang II', 'Manager', 'None', '2022-08-20 04:47:37.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Galery`
--
ALTER TABLE `Galery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Layout`
--
ALTER TABLE `Layout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Galery`
--
ALTER TABLE `Galery`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Layout`
--
ALTER TABLE `Layout`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Log`
--
ALTER TABLE `Log`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Transaction`
--
ALTER TABLE `Transaction`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
