-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2026 at 09:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_crud3`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `update_at`) VALUES
(1, 'Fariz Irvansyah', 'fariz.irvansyah@gmail.com', 'Ini Subject', 'eeaa', '2026-08-05 01:38:43', NULL),
(2, 'Fariz Irvansyah', 'fariz.irvansyah@gmail.com', 'Ini Subject', 'eeaa2', '2026-08-05 01:39:16', NULL),
(3, 'Fariz Irvansyah', 'fariz.irvansyah@gmail.com', 'Ini Subject', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis laboriosam numquam ad illum nesciunt consequatur, dicta sint deserunt velit sequi fugit quos. Amet consequuntur repellat nobis placeat eligendi aut hic.', '2026-08-05 02:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `myblog`
--

CREATE TABLE `myblog` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `link` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myblog`
--

INSERT INTO `myblog` (`id`, `title`, `subtitle`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Blog 1', 'Lorem ipsum', '6a718ff9dc4db_japan1.jpg', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '2026-08-04 07:08:41', NULL),
(2, 'Blog 2', 'Lorem ipsum', '6a71902875346_japan2.jpg', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '2026-08-04 07:09:16', '2026-08-04 07:09:28'),
(3, 'Blog 3', 'Lorem ipsum', '6a7190342c670_japan3.jpg', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '2026-08-04 07:09:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `link` varchar(50) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `subtitle`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Japan', 'Aih', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '6a716f1c93a7b_japan1.jpg', '2026-08-04 04:25:23', '2026-08-04 04:49:27'),
(2, 'Japan', 'Aih', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '6a716f63e23c4_japan2.jpg', '2026-08-04 04:49:39', NULL),
(3, 'Japan', 'Aih', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '6a716f6db49bd_japan3.jpg', '2026-08-04 04:49:49', NULL),
(4, 'Japan', 'Aih', 'https://bootstrapmade.com/bootstrap-portfolio-temp', '6a716f75bd701_japan4.jpg', '2026-08-04 04:49:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `year_start` year(4) NOT NULL,
  `year_end` year(4) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `title`, `year_start`, `year_end`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bachelors Computer Science', '2022', '2026', 'Budi Luhur University', 'GPA: 3.87 / 4.00', '2026-08-03 03:48:36', '2026-08-03 03:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `ig` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `email`, `phone`, `address`, `description`, `ig`, `created_at`, `updated_at`) VALUES
(1, 'https://farizirvansyah.github.io/', 'fariz.irvansyah@gmail.com', '082122852770', 'Jalan Juraganan 1 No.46', 'Deskripsi Settings', 'https://www.instagram.com/farizirvansyah', '2026-08-03 04:11:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `progress` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated-at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `progress`, `created_at`, `updated-at`) VALUES
(1, 'HTML5', 95, '0000-00-00 00:00:00', '2026-08-04 01:15:22'),
(2, 'CSS3', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'C#', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Unity Engine', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'C++', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Java', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `button1_text` varchar(30) NOT NULL,
  `button1_link` varchar(50) NOT NULL,
  `button2_text` varchar(30) NOT NULL,
  `button2_link` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `description`, `button1_text`, `button1_link`, `button2_text`, `button2_link`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PPKD JP', 'Pusat Pelatihan Kerja Daerah - Jakarta Pusat', 'Pusat Pelatihan Kerja Daerah (PPKD) Jakarta Pusat adalah program pelatihan kerja berbasis kompetensi gratis yang diselenggarakan oleh Pemerintah Provinsi DKI Jakarta. Program ini berada di bawah naungan Unit Pelaksana Teknis (UPT) Dinas Tenaga Kerja, Transmigrasi, dan Energi Provinsi DKI Jakarta.', 'Butt 1', 'https://Linkbut1.com', 'Butt 2', 'https://Linkbut2.com', '6a716d5a94de5_logo_ppkdjp.jpg', 1, '2026-08-03 03:44:55', '2026-08-04 04:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Fariz Irvansyah', 'fariz.irvansyah@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myblog`
--
ALTER TABLE `myblog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myblog`
--
ALTER TABLE `myblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
