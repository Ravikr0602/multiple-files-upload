-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 08:28 PM
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
-- Database: `ravi`
--

-- --------------------------------------------------------

--
-- Table structure for table `multiple_file_upload`
--

CREATE TABLE `multiple_file_upload` (
  `sno` int(8) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `uploading_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `multiple_file_upload`
--

INSERT INTO `multiple_file_upload` (`sno`, `file_name`, `uploading_time`) VALUES
(1, '70748647_counter1.png', '2021-08-06 17:35:52'),
(2, '30384163_customer.jpg', '2021-08-06 17:35:52'),
(3, '85521181_location.png', '2021-08-06 17:38:14'),
(4, '61981447_location1.png', '2021-08-06 17:38:14'),
(5, '44369516_phone.png', '2021-08-06 17:38:14'),
(6, '', '2021-08-06 17:48:44'),
(7, '', '2021-08-06 17:48:44'),
(8, '', '2021-08-06 17:55:36'),
(9, '', '2021-08-06 17:55:36'),
(10, 'ravi.txt', '2021-08-06 18:27:56'),
(11, 'timepicker.txt', '2021-08-06 18:27:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multiple_file_upload`
--
ALTER TABLE `multiple_file_upload`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `multiple_file_upload`
--
ALTER TABLE `multiple_file_upload`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
