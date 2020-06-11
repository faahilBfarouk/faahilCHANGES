-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 12:54 PM
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
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `Br_ID` int(3) NOT NULL,
  `Br_Place` varchar(15) NOT NULL,
  `Br_addr` text NOT NULL,
  `Br_Ph1` varchar(20) NOT NULL,
  `Br_Ph2` varchar(20) NOT NULL,
  `Br_Email` varchar(25) NOT NULL,
  `Br_Status` int(1) NOT NULL DEFAULT '2',
  `Br_img` varchar(50) NOT NULL,
  `Br_gMap` text NOT NULL,
  `Br_clickable_map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`Br_ID`, `Br_Place`, `Br_addr`, `Br_Ph1`, `Br_Ph2`, `Br_Email`, `Br_Status`, `Br_img`, `Br_gMap`, `Br_clickable_map`) VALUES
(1, 'Kannur', 'Kannothumchal, Chovva P.O\r\nKannothumchal, Kannur - 670006\r\nKerala, India', '91 0497 2766477', '91 9048 333 888 ', '', 1, 'img/Contacts/head.jpg', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15617.76405729369!2d75.3869698!3d11.8743487!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc356699674e16786!2sHar%20Cars!5e0!3m2!1sen!2sin!4v1591700569283!5m2!1sen!2sin', ''),
(2, 'Iritty', 'Keezhur P.O, Iritty\r\n670 703', '91 490-2493233', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15611.672788562437!2d75.6711004!3d11.9801621!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x280ce123a4a45811!2sHARCARS%2CIRITTY!5e0!3m2!1sen!2sin!4v1591700887051!5m2!1sen!2sin', 'https://goo.gl/maps/kYXAGodMt3y81yU38'),
(3, 'Calicut', 'Pavangad Junction\r\nKannur Road, Calicut', '91 495 2462123', '91 9745006116', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3912.3133080106704!2d75.75489656480559!3d11.311794891959593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba65f008417e887%3A0xbbe2a3d8153997d6!2sHAR%20CARS%2C%20Edapally%20-%20Panvel%20Hwy%2C%20Pavangad%2C%20Kerala%20673021!5e0!3m2!1sen!2sin!4v1591715488840!5m2!1sen!2sin', 'https://goo.gl/maps/MPuHdmWV8vtAWqnK9'),
(4, 'Kasaragod', 'Near Carewell Hospital\r\nNullipadi P.O., Kasaragod', '91 8589991779 ', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15580.314650242113!2d74.997702!3d12.510945000000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6cbf036138154b57!2sHAR%20COMMERCIAL%20KASARGOD!5e0!3m2!1sen!2sin!4v1591715594338!5m2!1sen!2sin', 'https://www.google.com/maps/dir/12.0297236,75.2595732/har+cars+kasaragod/@12.2693567,74.9898545,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba482595876628f:0x6cbf036138154b57!2m2!1d74.9977022!2d12.5109453'),
(5, 'Pazhayangadi', 'Opp. G.M.U.P School, Pazhayangadi', '91 9539009447 ', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d62435.956437858236!2d75.256894!3d12.02649!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba414bd3a27652f%3A0x6edb5c187aa12be3!2sPazhayangadi%2C%20Kerala!5e0!3m2!1sen!2sin!4v1591715688078!5m2!1sen!2sin', 'https://www.google.com/maps/dir/12.0297236,75.2595732/Har+Cars,+Near+GMUP+School,Matool+Road,+Puthiyangadi+Rd,+Pazhayangadi,+Kerala+670303/@12.0263603,75.258525,16z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba415f3c8da3075:0xe7466d2dd0c4af55!2m2!1d75.2664662!2d12.0241867'),
(6, 'Taliparamba', 'Maruti Suzuki Arena\r\nThrichambaram.Taliparamaba\r\nKannur,670141', '91 4602 200070 ', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3902.020101435017!2d75.370951!3d12.042137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x535ee464ffe399bc!2sMaruti%20Suzuki%20Service%2C%20Taliparamba!5e0!3m2!1sen!2sin!4v1591715766376!5m2!1sen!2sin', 'https://goo.gl/maps/yc8J99df22LzXuP68'),
(7, 'Payyanur', 'Building No : 36/525(1)\r\nNr. Kannada House\r\nKandoth P.O., Payyanur', '91 9539009391', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15603.93746975304!2d75.217654!3d12.113222!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7fc3161df651874d!2sHar%20Cars!5e0!3m2!1sen!2sin!4v1591715838009!5m2!1sen!2sin', 'https://goo.gl/maps/ttuMssoLHCwRXhjF7'),
(8, 'HAR COMMERCIAL', 'VEEKAYS BUILDING\r\nNEAR NANADILATH G.MART MELE CHOVA KANNUR.670006', '91 8589991785 ', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15599.25323020435!2d75.46642!3d12.193103!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x532f9af7686f491a!2sHar%20cars!5e0!3m2!1sen!2sin!4v1591715894561!5m2!1sen!2sin', 'https://www.google.com/maps/dir//Mele+Chovva+Kannur+Side+Bus+Stop,+Edapally+-+Panvel+Hwy,+Melechowa+South,+Kannur,+Kerala+670005/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3ba43cd2de865881:0x3fc3d57709d587b8?sa=X&ved=0ahUKEwj29pyM8vjpAhXPH7cAHckTDb4Q48ADCB0wAA'),
(9, 'Panoor', 'HAR AUTO PVT LTD\r\nMUKUNDAN BUSINESS CENTER\r\nMOKERY P.O., PANOOR\r\nPin : 670692', '91 9539006574 ', '', '', 2, 'img/logo.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15998860.582490984!2d75.576139!3d11.767035000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9c4f87b7f1de88a!2sMaruti%20Suzuki%20HARCARS%20Panoor!5e0!3m2!1sen!2sin!4v1591716479933!5m2!1sen!2sin', 'https://www.google.com/maps/place/HAR+CARS+Panoor/@11.767048,75.576146,15z/data=!4m5!3m4!1s0x0:0x5547cba19143e980!8m2!3d11.767048!4d75.576146');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`Br_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `Br_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
