-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 06:20 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cell` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(20) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `cell`, `username`, `password`, `gender`, `age`, `photo`, `status`, `trash`, `created_at`, `updated_at`) VALUES
(14, 'Sadman', 'ahsan.susmoy@gmail.com', '01756938000', 'sadman_dev', '$2y$10$jBnNRy8M6ezAQUCZ9c2kFOnpu5KKTL7yBjKaxdXNIxqjwuGTZp/pi ', 'Male', 0, '', 1, 0, '2021-10-23 10:31:17', '2021-10-23 10:31:17'),
(15, 'Assad Valla', 'admin@gmail.com', '01819430461', 'asaad_vala', '$2y$10$f3u009jjuSeilSsOmmCxO.qRTzOI.FzV7zP1FI2Y4AOgRvQUpIYHi ', 'Male', 0, '', 1, 0, '2021-10-24 08:47:33', '2021-10-24 08:47:33'),
(16, 'demo', 'sadmansusmoy1995@gmail.com', '01819430463', 'dev_sadman_008', '$2y$10$0i8KWMHmuuPkxRjuXKrVgOBca12E8WpuixVAQSqpqQ7NVZVehH4QK ', 'Male', 0, '', 1, 0, '2021-10-24 09:01:23', NULL),
(17, 'xsfsdgfdh', 'user14@gmail.com', '01616938390', 'xsdsg', '$2y$10$1WvMmPnHk./eIz.T8N0I/eq4ZcecKpPAPC6vvhvCKUQXI9hGBxTI.', 'male', 0, '', 1, 0, '2021-10-24 09:21:50', NULL),
(18, 'Solaiman Silla', 'silla@gmail.com', '01616938396', 'sdaf', '$2y$10$92lyZxxWGfrnzkx0LsOB8.JYw6j840dL.ShZXIwM1qRftxT0sniQ.', 'male', 0, '', 1, 0, '2021-10-24 09:45:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
