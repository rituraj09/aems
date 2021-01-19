-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 12:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eleglt`
--

-- --------------------------------------------------------

--
-- Table structure for table `election_types`
--

CREATE TABLE `election_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `election_types`
--

INSERT INTO `election_types` (`id`, `name`) VALUES
(1, 'Magistrate Duty'),
(2, 'Election Duty'),
(3, 'Poll Duty');

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`id`, `name`) VALUES
(1, 'Petrol'),
(2, 'Diesel');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `phone`, `password`, `user_type`, `status`) VALUES
(1, 'Rituraj Borgohain', 'District Manager', '7002274743', '0192023a7bbd73250516f069df18b500', 2, 1),
(2, 'Shri Bibhas Ch. Modi', 'Deputy Commissioner', '9706786200', '0192023a7bbd73250516f069df18b500', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `owner_phone` varchar(15) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_phone` varchar(15) DEFAULT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `used_type` int(11) DEFAULT NULL,
  `fuel_type` int(11) DEFAULT NULL,
  `used_from` varchar(20) DEFAULT NULL,
  `used_to` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_assign`
--

CREATE TABLE `vehicle_assign` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `person_contact` varchar(20) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `used_on` date DEFAULT NULL,
  `fuel_given` int(11) DEFAULT NULL,
  `used_for` varchar(200) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_trans`
--

CREATE TABLE `vehicle_trans` (
  `id` int(11) NOT NULL,
  `used_on` date DEFAULT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `v_assigned_id` int(11) DEFAULT NULL,
  `loc_from` varchar(100) DEFAULT NULL,
  `loc_to` varchar(100) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `name`) VALUES
(1, 'Car'),
(2, 'SUV'),
(3, 'Van'),
(4, 'Sedan'),
(5, 'Mini Bus'),
(6, 'Bus'),
(7, 'Mini Van'),
(8, 'Truck'),
(9, 'Cariar'),
(10, 'Tempo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_trans`
--
ALTER TABLE `vehicle_trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_trans`
--
ALTER TABLE `vehicle_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
