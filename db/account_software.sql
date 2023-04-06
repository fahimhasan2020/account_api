-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 11:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account_software`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `last_updated` date NOT NULL,
  `Title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `balance`, `last_updated`, `Title`) VALUES
(1, 0, '2023-04-05', 'Joint Account');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  `amount` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `user` int(10) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `title`, `details`, `amount`, `category`, `user`, `date`) VALUES
(3, 'salary', 'salary monthly', 40000, 'salary', 1, '4/6/2023'),
(4, 'salary', 'salary monthly', 40000, 'salary', 1, '4/6/2023'),
(5, 'salary', 'salary monthly', 40000, 'salary', 1, '4/6/2023'),
(6, 'salary', 'salary monthly', 40000, 'salary', 1, '4/6/2023'),
(7, 'salary', 'salary monthly', 40000, 'salary', 1, '4/6/2023');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `amount` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `title`, `details`, `category`, `amount`, `user`, `date`) VALUES
(2, 'bills', 'house keeper bill', 'bills', 2000, 1, '4/6/2023'),
(3, 'bills', 'house keeper bill', 'bills', 2000, 1, '4/6/2023'),
(4, 'bills', 'house keeper bill', 'bills', 2000, 1, '4/6/2023'),
(5, 'bills', 'house keeper bill', 'bills', 2000, 1, '4/6/2023');

-- --------------------------------------------------------

--
-- Table structure for table `saving`
--

CREATE TABLE `saving` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saving`
--

INSERT INTO `saving` (`id`, `title`, `amount`, `user`, `date`) VALUES
(3, 'month end saving', 1000, 1, '4/6/2023'),
(4, 'month end saving', 1000, 1, '4/6/2023'),
(5, 'month end saving', 2000, 1, '4/6/2023'),
(6, 'month end saving', 2000, 1, '4/6/2023'),
(7, 'month end saving', 2000, 1, '4/6/2023'),
(8, 'month end saving', 2000, 1, '4/6/2023');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_deposit`
--

CREATE TABLE `upcoming_deposit` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `amount` int(10) NOT NULL,
  `details` varchar(500) NOT NULL,
  `user` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_deposit`
--

INSERT INTO `upcoming_deposit` (`id`, `title`, `amount`, `details`, `user`, `date`, `category`) VALUES
(1, 'month end saving', 2000, 'house keeper bill', 1, '4/6/2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_expense`
--

CREATE TABLE `upcoming_expense` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `amount` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_expense`
--

INSERT INTO `upcoming_expense` (`id`, `title`, `details`, `amount`, `user`, `category`, `date`) VALUES
(1, 'month end saving', 'house keeper bill', 2000, 1, 'bills', '4/6/2023');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `date`) VALUES
(1, 'fahim', '555566', '2023-04-05'),
(2, 'eylma', '555566', '2023-04-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving`
--
ALTER TABLE `saving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_deposit`
--
ALTER TABLE `upcoming_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_expense`
--
ALTER TABLE `upcoming_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saving`
--
ALTER TABLE `saving`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upcoming_deposit`
--
ALTER TABLE `upcoming_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_expense`
--
ALTER TABLE `upcoming_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
