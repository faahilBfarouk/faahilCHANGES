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
-- Table structure for table `insurance_y_choose_us`
--

CREATE TABLE `insurance_y_choose_us` (
  `choose_id` int(3) NOT NULL,
  `choose_icon` varchar(110) NOT NULL,
  `choose_heading` varchar(110) NOT NULL,
  `choose_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_y_choose_us`
--

INSERT INTO `insurance_y_choose_us` (`choose_id`, `choose_icon`, `choose_heading`, `choose_desc`) VALUES
(1, 'img/insurance/choose1.jpg', 'Near Cash-less Accident Repairs', 'You can avail Cash-less accident repairs across India, at Maruti Suzuki’s extensive network of dealers and service stations. You do not have to pay for the whole cost of repairs. You are charged only for the compulsory excess and applicable depreciation as per motor tariff. All other repairs and replacement costs are payable under the policy.'),
(2, 'img/insurance/choose2.png', 'Fair and Transparent Claim Settlement', 'All Electrical / Metal Parts are treated in their respective categories as “Electrical / Metal” and NOT as Plastic. The depreciation on Electrical / Metal parts ranges from 0% to 50% depending upon vehicle age (50% on 10+ year old vehicle) as per Indian Motor Tariff.'),
(3, 'img/insurance/choose3.jpg', 'Quality Repairs at Authorised Dealer Workshops', 'Your car is repaired in authorised Maruti Suzuki service centres, which are state-of-the-art facilities manned by trained and experienced technicians, ensuring you get the best service. Only Maruti Genuine Parts are used, ensuring your car’s safety is not compromised in any way.'),
(4, 'img/insurance/choose4.jpg', 'No Hidden Charges', 'Maruti Insurance policies offer ZERO deduction for SALVAGE and No Filing / Processing Related Charges. Other policies may make significant deductions for salvage and may have file charges and various other charges such as inspection fee, etc.'),
(5, 'img/insurance/choose5.jpg', 'One Stop Shop for All Insurance Needs', 'All services related to your Maruti Insurance policy are delivered at your Doorstep. This results in considerable Saving of Time and Cost, and is Highly Convenient. In other policies, you need to do the running around or follow up with insurance companies yourself.'),
(6, 'img/insurance/choose6.jpg', 'Dealer-assisted Towing Facility', 'In case of requirement, our dealers assist in towing your car to the nearest Maruti Suzuki service centre for free (up to a towing cost of Rs. 1,500).'),
(7, 'img/insurance/choose7.jpg', 'Dedicated Customer Care', 'Our customer care specialists are available from the morning till night. Our experts can assist you in case of claim initiation, policy renewal, grievance redressal, changes in policy or even for general queries.\r\n'),
(8, 'img/insurance/choose8.jpg', 'Instant Policy Issuance', 'You get your Maruti Insurance policy instantly at the time of purchase of your vehicle. You can also download the policy directly from our website without having to wait for it to arrive later. Maruti Insurance offers extremely easy ways for renewing your policy – you can renew it online, call our support centre, SMS your request, email policy details, write to us or visit the nearest dealership.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insurance_y_choose_us`
--
ALTER TABLE `insurance_y_choose_us`
  ADD PRIMARY KEY (`choose_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insurance_y_choose_us`
--
ALTER TABLE `insurance_y_choose_us`
  MODIFY `choose_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
