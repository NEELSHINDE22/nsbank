-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 12:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `srno` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Current_Balance` int(11) NOT NULL,
  `Account_no` int(11) NOT NULL,
  `Phone_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`srno`, `fname`, `Email`, `Current_Balance`, `Account_no`, `Phone_No`) VALUES
(1, 'Neel Shinde', 'n@gmail.com', 149600, 10111, 915218618),
(2, 'Aayush Juhukar', 'a@gmail.com', 140400, 10112, 915218616),
(3, 'Varun Nagdev', 'v@gmailcom', 5000, 10113, 987634529),
(4, 'Chaitanya Mestry', 'c@gmail.com', 450, 10114, 987635626),
(5, 'Vaibhav Turare', 't@gmail.com', 45000, 10115, 967453854),
(6, 'Aditya Rane', 'r@gmail.com', 34566, 10116, 965625264),
(7, 'Robert Bias', 'b@gmail.com', 10000, 10117, 934563789),
(8, 'Aakash Kamtekar', 'k@gmail.com', 45364, 10118, 898876355),
(9, 'Raj Shah', 's@gmail.com', 12345, 10119, 897632465),
(10, 'Ashraf Meuwa', 'm@gmail.com', 129485, 10110, 913452682);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `srno` int(11) NOT NULL,
  `sender_account_no` int(11) NOT NULL,
  `receiver_account_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`srno`, `sender_account_no`, `receiver_account_no`, `amount`, `date_time`, `stat`) VALUES
(1, 10111, 10112, 100, '2023-01-05 15:45:26', 0),
(2, 10111, 10112, 100, '2023-01-05 16:26:10', 0),
(3, 10114, 10111, 500, '2023-01-05 16:30:28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
