-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221207.ce5ce76a8d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 09:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `referral`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_21_132941_create_networks_table', 2),
(6, '2022_12_27_074635_create_cruds_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`id`, `referral_code`, `user_id`, `user_name`, `parent_user_id`, `parent_user_name`, `created_at`, `updated_at`) VALUES
(1, 'Bz81vRyO5j', 3, 'Rohit', '1', 'Ram', '2022-12-25 18:18:10', '2022-12-25 18:18:10'),
(2, 'Bz81vRyO5j', 4, 'Mohit', '1', 'Ram', '2022-12-25 18:18:36', '2022-12-25 18:18:36'),
(3, 'Bz81vRyO5j', 5, 'Rahul', '1', 'Ram', '2022-12-25 18:19:00', '2022-12-25 18:19:00'),
(4, 'VKI5z5cHXa', 6, 'Akash', '2', 'Saurabh', '2022-12-25 18:21:26', '2022-12-25 18:21:26'),
(5, 'VKI5z5cHXa', 7, 'Suraj', '2', 'Saurabh', '2022-12-25 18:22:23', '2022-12-25 18:22:23'),
(6, 'VKI5z5cHXa', 8, 'Rohan', '2', 'Saurabh', '2022-12-25 18:22:44', '2022-12-25 18:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_verified` int(10) DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_verified`, `password`, `referral_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ram', 'ram@gmail.com', '2022-12-25 12:49:38', 1, '$2y$10$AATmrWpjm7Z6ufipYXVu.eyb/64VjmZ/3A7t2QzzZyKtQw4OlkhRC', 'Bz81vRyO5j', 'xoWynmvhd3UEWLWhcB9x60Mj1f5CQvIIGWaOMuzzWMOQph2GliDXQM5KjmMO', '2022-12-25 18:16:30', '2023-02-01 05:26:28'),
(2, 'Saurabh', 'saurabh@gmail.com', '2022-12-25 12:53:43', 1, '$2y$10$qvxIH6YmT2e.sWJxS40BoepMxZA6cBAVFqHMjOjquqW7PXXDm7fPy', 'VKI5z5cHXa', 'sz5whqlUKM0u7EwflEyiGwUn0MRn6MGxJsv1dZtSkQ7KONlSGeKNNyM6L324', '2022-12-25 18:17:05', '2022-12-25 12:53:43'),
(3, 'Rohit', 'rohit@gmail.com', NULL, 0, '$2y$10$MiQ7Mj3AqViSgt6GlJXGleCTqZp7SItSjBiy44urHrKRgQ.VuMbEi', 'rxvZXsiYf4', '6eeQzLuHmhCePBK2VwlWKFs5Qb7P51VTEANh7RhXstKbDOV7RS', '2022-12-25 18:18:10', '2022-12-25 18:18:10'),
(4, 'Mohit', 'mohit@gmail.com', NULL, 0, '$2y$10$Ol1USEIqVn49Lm76ltwvauCDqvSgPZOCIF/y9tPCrXjRW//OPVN5i', 'NsXRCTZnEu', 'H4apnnRgavgqZW4NRvX6wgxNs1JZS4ZP4Dr8rnf4C3NsmKMLaA', '2022-12-25 18:18:36', '2022-12-25 18:18:36'),
(5, 'Rahul', 'rahul@gmail.com', NULL, 0, '$2y$10$KoiYkAF6yjBDCtEEOxVA0eeXAvkfb0vHTKS0KqDKoovOpM6WOwYem', 'B0jCzj05Nj', '9yIBPATNUTIFaWwqOL3O0eIMilpDTXoXROjWTlPAahSpwhb9rG', '2022-12-25 18:19:00', '2022-12-25 18:19:00'),
(6, 'Akash', 'akash@gmail.com', NULL, 0, '$2y$10$9dYft9sx4BoTjz0Qs5i7uux4EIiMFn0WAqeeODbmyP7Cs8NQzXS3e', 'eqi4OGwszf', 'oaDZlq0rRxKjlBmz0fwnSQGROVNziOW7ZFKc2J1RwayEJI1d8U', '2022-12-25 18:21:26', '2022-12-25 18:21:26'),
(7, 'Suraj', 'suraj@gmail.com', NULL, 0, '$2y$10$SXt7m1M17RPIv0yeLLulJulsrl/kSxd1Bao3BLZPZ54A9snIS4Mme', '31PPu6CXqg', 't7eZnZueDI9pLCM0hJn7LwzNDkXTeHumJgpGxjYPCZEsr1Wa0IihOFOwFAOF', '2022-12-25 18:22:23', '2022-12-25 18:22:23'),
(8, 'Rohan', 'rohan@gmail.com', NULL, 0, '$2y$10$Ejs9azjNn3tpGYxVlHuQzOkiG6Sdl6jNur/fuyad7SGA1M8MGUw4.', '8nCHCgTVTq', '8Ff0ZPWTKRgrn7DrPnaEkMFh0ViYKdMn4xgpt1lAbdyLqR29KX', '2022-12-25 18:22:44', '2022-12-25 18:22:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
