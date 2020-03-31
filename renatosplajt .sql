-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 07:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renatosplajt`
--

-- --------------------------------------------------------

--
-- Table structure for table `recepcija`
--

CREATE TABLE `recepcija` (
  `Recepcija_id` int(11) NOT NULL,
  `imeGosta` varchar(255) NOT NULL,
  `cijenaSobe` int(11) NOT NULL,
  `obavezanDorucak` varchar(255) DEFAULT 'DA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recepcija`
--

INSERT INTO `recepcija` (`Recepcija_id`, `imeGosta`, `cijenaSobe`, `obavezanDorucak`) VALUES
(1, 'Ivo', 250, 'DA'),
(2, 'Pero', 500, 'DA'),
(3, 'Jasna', 1000, 'NE');

-- --------------------------------------------------------

--
-- Table structure for table `sobe`
--

CREATE TABLE `sobe` (
  `Sobe_id` int(11) NOT NULL,
  `Recepcija_id` int(11) NOT NULL,
  `posteljinaBrojSoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobe`
--

INSERT INTO `sobe` (`Sobe_id`, `Recepcija_id`, `posteljinaBrojSoba`) VALUES
(1, 1, 2),
(2, 2, 5),
(3, 3, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recepcija`
--
ALTER TABLE `recepcija`
  ADD PRIMARY KEY (`Recepcija_id`);

--
-- Indexes for table `sobe`
--
ALTER TABLE `sobe`
  ADD PRIMARY KEY (`Sobe_id`),
  ADD KEY `Recepcija_id` (`Recepcija_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recepcija`
--
ALTER TABLE `recepcija`
  MODIFY `Recepcija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sobe`
--
ALTER TABLE `sobe`
  ADD CONSTRAINT `sobe_ibfk_1` FOREIGN KEY (`Recepcija_id`) REFERENCES `recepcija` (`Recepcija_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
