-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 08:14 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailycar_harcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `insurance_claim_process`
--

CREATE TABLE `insurance_claim_process` (
  `process_id` int(3) NOT NULL,
  `process_description` text NOT NULL,
  `process_step_icon` varchar(100) NOT NULL,
  `process_step_num` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_claim_process`
--

INSERT INTO `insurance_claim_process` (`process_id`, `process_description`, `process_step_icon`, `process_step_num`) VALUES
(1, 'Claim Intimation and Estimation', 'img/insurance/1.png', 1),
(2, 'Surveyor Appointment and Loss Assessment', 'img/insurance/2.png', 2),
(3, 'Loss Assessment Repairs Post Approvals', 'img/insurance/3.png', 3),
(4, 'Vehicle Re-Inspection and Delivery', 'img/insurance/4.png', 4),
(5, 'Claim Settlement by Insurance Company', 'img/insurance/5.png', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insurance_claim_process`
--
ALTER TABLE `insurance_claim_process`
  ADD PRIMARY KEY (`process_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insurance_claim_process`
--
ALTER TABLE `insurance_claim_process`
  MODIFY `process_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
