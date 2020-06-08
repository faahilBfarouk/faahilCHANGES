-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 07:58 PM
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
-- Table structure for table `company_finance`
--

CREATE TABLE `company_finance` (
  `finance_ID` int(3) NOT NULL,
  `title1` varchar(110) NOT NULL,
  `attractiveTitle` varchar(110) NOT NULL,
  `desc1` text NOT NULL,
  `desc2` text NOT NULL,
  `finance_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_finance`
--

INSERT INTO `company_finance` (`finance_ID`, `title1`, `attractiveTitle`, `desc1`, `desc2`, `finance_status`) VALUES
(1, 'Maruti Finance - Creating customer delight', 'ADVANTAGES OF MARUTI FINANCE', 'Maruti Finance, through the finance partners,endeavors to create customer delight by providing the best car finance, financier for every profile and geography, better interest rate, processing time etc.\r\n\r\nMaruti Finance helps customers realize their dream of owning a car, with deals right at the dealership. Starting from choosing the right financier, until the completion of loan formalities, we are there for our customers at every step of the auto finance process.', 'One stop shop for customers’ needs: Maruti Suzuki Finance offers a customer, the convenience of a one stop shop for all his vehicle finance related needs – the customer can complete all finance related formalities at the dealership i.e. buying car, availing finance – all under the same roof.\r\n\r\nWide Choice of financier: Maruti Suzuki Finance has a tie-up with 34 finance partners who have a pan-India presence. This provides a wide variety of choices to the customers, who can avail finance from any of the partners, according to their needs and profiles.\r\n\r\nSpecial offers and benefits: Maruti Suzuki Finance negotiates with its finance partners to launch special sales promotion schemes like low down payment schemes, low interest rates and other promotional offers that are not available otherwise. We also help customers buy cars from the wide network of Maruti Suzuki dealers who help customers with the best car finance interest rates.\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_finance`
--
ALTER TABLE `company_finance`
  ADD PRIMARY KEY (`finance_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_finance`
--
ALTER TABLE `company_finance`
  MODIFY `finance_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
