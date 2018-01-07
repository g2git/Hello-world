-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2018 at 01:25 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `BusinessSpots`
--

CREATE TABLE `BusinessSpots` (
  `id` int(11) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Ownerid` varchar(255) NOT NULL,
  `AvailableSpots` int(11) NOT NULL,
  `TotalSpots` int(11) NOT NULL,
  `CurrentUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BusinessSpots`
--

INSERT INTO `BusinessSpots` (`id`, `Location`, `Ownerid`, `AvailableSpots`, `TotalSpots`, `CurrentUsers`) VALUES
(1, 'Rotterdam', '', 4, 0, 0),
(2, 'Groningen', '4', 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CodeGorillaUsers`
--

CREATE TABLE `CodeGorillaUsers` (
  `UserID` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `Present` tinyint(1) NOT NULL,
  `TimeArrival` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `TimeDeparture` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CodeGorillaUsers`
--

INSERT INTO `CodeGorillaUsers` (`UserID`, `location_id`, `Name`, `E-mail`, `Present`, `TimeArrival`, `TimeDeparture`) VALUES
(3, 0, 'ttttt', '89089', 7, '2018-01-07 11:59:46.851338', '2018-01-07 11:59:46.851338'),
(5, 0, 'yhgkjh', 'jtyf', 2, '2018-01-07 11:59:58.091135', '2018-01-07 11:59:58.091135');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telefoon` int(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `telefoon`, `email`, `username`, `password`) VALUES
(1, 'yt', 1, 's', 'ww', 'w'),
(2, '', 66666, '', '', ''),
(3, '\".Array[\"name\"].\"', 0, '\".Array[\"email\"].\"', '\".Array[\"username\"].\"', '\".Array[\"password\"].\"'),
(4, 'ytje', 36378, 'zzzz', 'kkkkh', '1'),
(5, 'kkjhduje', 36908, 'zz', 'kk', '678'),
(6, 'kkjhduje', 36908, 'zz', 'kk', '678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BusinessSpots`
--
ALTER TABLE `BusinessSpots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CodeGorillaUsers`
--
ALTER TABLE `CodeGorillaUsers`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BusinessSpots`
--
ALTER TABLE `BusinessSpots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `CodeGorillaUsers`
--
ALTER TABLE `CodeGorillaUsers`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8681;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
