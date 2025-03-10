-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 06:34 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteLogo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `email`, `contactNumber`, `address`, `siteLogo`, `terms`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 'test2dh@gmail.com', 912352458523, 'surat', 'null', 'Write here terms & conditions', 'write Here Privacy & Policy', '2019-05-07 05:12:19', '2019-05-07 05:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagefile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_imagefile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phoneNumber`, `countryCode`, `countryName`, `email`, `message`, `imagefile`, `response`, `response_imagefile`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jatin', '8596458595', '91', 'in', 'jtn@gmail.com', 'just test', 'Contact-5cee0ba802518.PNG', 'fghfghfgh', 'Contact-5cee0c7ee0656.png', 'replied', '2019-05-29 04:33:44', '2019-05-29 04:37:18'),
(2, 'Andy', '90624421', '65', 'sg', 'andy@disrupttech.io', 'hi can i buy more than 1 card? how can i do so?', 'Contact-5d33b6bfe9e1c.png', 'Hi, will u be interested to know more about another card program?', 'Contact-5d33b9a3ab7d3.png', 'replied', '2019-07-21 00:50:07', '2019-07-21 01:02:27'),
(3, 'Tib', '97958888', '65', 'sg', 'tibbear1337@gmail.com', 'Test', 'Contact-5d36b94f886bf.jpg', 'lul test', NULL, 'replied', '2019-07-23 07:37:51', '2019-07-23 07:39:25'),
(4, 'tib', NULL, '1', 'us', 'tibbear1337@gmail.com', 'lul', NULL, 'lol', NULL, 'replied', '2019-07-23 13:17:11', '2019-07-23 13:17:57'),
(5, 'jonathan', NULL, '1', 'us', 'jon@pornking.com', 'hihi, just testing hehe', NULL, 'ok noted prawn king', NULL, 'replied', '2019-07-24 11:19:49', '2019-08-08 10:55:35'),
(6, 'AngYS', NULL, '1', 'us', 'andy@disrupttech.io', 'hi i wanna buy many cards! is there a reseller program?', NULL, 'heyhey! welcome! sure, pls email us at reseller@x-pay.vip asap!', NULL, 'replied', '2019-07-25 10:34:27', '2019-07-25 10:36:23'),
(7, 'YS', NULL, '1', 'us', 'andy@disrupttech.io', 'hello testing 123!', NULL, 'hey what\'s up! sucessful!', NULL, 'replied', '2019-07-25 10:37:22', '2019-07-25 10:37:41'),
(8, 'andy', NULL, '1', 'us', 'andy@disrupttech.io', 'hello one final test!', NULL, 'hellooooo bye bye', 'Contact-5d3986d54e628.jpeg', 'replied', '2019-07-25 10:38:13', '2019-07-25 10:39:17'),
(9, 'Mr Ang', NULL, '1', 'us', 'andy@disrupttech.io', 'hihi! hehe', 'Contact-5d3988684e7d8.jpeg', 'xsxssx', 'Contact-5d398966640c0.txt', 'replied', '2019-07-25 10:46:00', '2019-07-25 10:50:14'),
(10, 'ANDY PEEPEE', NULL, '1', 'us', 'andy@disrupttech.io', 'helloooo', 'Contact-5d39894b06ce7.pdf', 'heya!', 'Contact-5d39896965d92.pdf', 'replied', '2019-07-25 10:49:47', '2019-07-25 10:50:17'),
(11, 'Yee Sian', '81234658', '1', 'us', 'andy@antihack.me', 'hihi hehe!', 'Contact-5d39995b6cb28.pdf', NULL, NULL, 'pending', '2019-07-25 11:58:19', '2019-07-25 11:58:19'),
(12, 'yS', NULL, '1', 'us', 'andy@disrupttech.io', 'hihi haha', NULL, 'heyo! whats up', 'Contact-5d399b888af17.pdf', 'replied', '2019-07-25 12:01:38', '2019-07-25 12:07:36'),
(13, 'tib', NULL, '1', 'us', 'tibbear1337@gmail.com', 'oi', NULL, 'tesxt', NULL, 'replied', '2019-07-29 08:53:35', '2019-07-29 08:54:15'),
(14, 'hi', '174890141', '1', 'us', 'sasukeang007@hotmail.com', 'damn', 'Contact-5d42f4f430d6c.jpg', 'thx', 'Contact-5d42f514635b1.jpg', 'replied', '2019-08-01 14:19:32', '2019-08-01 14:20:04'),
(15, 'jon', NULL, '1', 'us', 'jon@yopmail.com', 'hurr', NULL, 'derp', NULL, 'replied', '2019-08-05 12:13:48', '2019-08-05 12:14:14'),
(16, 'hi', '174890141', '1', 'us', 'sasukeang007@hotmail.com', 'yo...', NULL, 'noted', 'Contact-5d498c87ad98f.jpg', 'replied', '2019-08-06 14:17:01', '2019-08-06 14:19:51'),
(17, 'ss', '11', '1', 'us', 'sasukeang007@gmail.com', '123', NULL, 'ok', NULL, 'replied', '2019-08-06 14:23:04', '2019-08-06 14:24:44'),
(18, 'ya', '174890141', '1', 'us', 'sasukeang007@hotmail.com', 'ta', NULL, 'yoh', NULL, 'replied', '2019-08-06 14:25:37', '2019-08-06 14:26:07'),
(19, 'ww', '11', '1', 'us', 'ausd.send@gmail.com', 'haha', NULL, 'laugh', NULL, 'replied', '2019-08-06 14:27:21', '2019-08-06 14:27:36'),
(20, 'ww', '123', '1', 'us', 'ausd.send@gmail.com', 'hohoho', NULL, 'sc', 'Contact-5d498e9514bde.jpg', 'replied', '2019-08-06 14:28:23', '2019-08-06 14:28:37'),
(21, 'roy tay', '123465798', '1', 'us', 'ruth@yopmail.com', 'hihi hehe', NULL, 'heyo!', NULL, 'replied', '2019-08-06 14:41:27', '2019-08-06 14:41:56'),
(22, 'test', '8596562325', '1', 'us', 'donotreplay@gmail.com', 'hii', NULL, NULL, NULL, 'pending', '2019-08-07 05:30:04', '2019-08-07 05:30:04'),
(23, 'test', '1234567895', '1', 'us', 'donot@gmail.com', 'hiiii', NULL, NULL, NULL, 'pending', '2019-08-07 05:30:28', '2019-08-07 05:30:28'),
(24, 'andy', '785564521', '1', 'us', 'andy@hello.com', 'asfjhjasdf dafbasdfnadsf fsaf', NULL, NULL, NULL, 'pending', '2019-08-07 06:42:53', '2019-08-07 06:42:53'),
(25, 'max', NULL, '1', 'us', 'maxmax@yopmail.com', 'hello', NULL, NULL, NULL, 'pending', '2019-08-07 07:51:54', '2019-08-07 07:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `loadcard`
--

CREATE TABLE `loadcard` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerFee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardLoadFee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finalAmount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentType` enum('erc20','xif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','confirm','cancelByUser','cancelByAdmin','loaded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loadId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loadcard`
--

INSERT INTO `loadcard` (`id`, `userId`, `amount`, `partnerFee`, `cardLoadFee`, `finalAmount`, `paymentType`, `status`, `created_at`, `updated_at`, `loadId`) VALUES
(7, 38, '100', '1.5', '3', '95.5', 'erc20', 'confirm', '2019-07-25 09:21:26', '2019-07-30 04:17:09', NULL),
(8, 7, '120', '1.8', '3', '115.2', 'erc20', 'confirm', '2019-07-25 10:28:11', '2019-07-25 10:55:46', NULL),
(9, 7, '200', '3', '3', '194', 'erc20', 'cancelByUser', '2019-07-25 12:03:44', '2019-07-25 12:05:47', NULL),
(11, 7, '100', '1.5', '3', '95.5', 'erc20', 'pending', '2019-07-29 11:37:52', '2019-07-29 11:37:52', NULL),
(12, 38, '1337', '20.06', '13.37', '1303.58', 'erc20', 'pending', '2019-07-31 10:57:42', '2019-07-31 10:57:42', NULL),
(14, 5, '100', '1.5', '-2.01', '100.51', 'erc20', 'pending', '2019-08-01 12:59:19', '2019-08-01 12:59:19', NULL),
(15, 64, '123', '1.85', '-2.01', '123.17', 'erc20', 'confirm', '2019-08-05 08:42:10', '2019-08-05 09:05:39', NULL),
(16, 64, '123', '1.85', '3', '118.16', 'erc20', 'confirm', '2019-08-05 09:26:22', '2019-08-05 11:33:40', NULL),
(17, 70, '250', '3.75', '3', '243.25', 'erc20', 'confirm', '2019-08-05 13:36:22', '2019-08-05 13:45:59', NULL),
(18, 71, '570', '8.55', '5.7', '555.75', 'erc20', 'confirm', '2019-08-06 04:26:41', '2019-08-06 04:33:54', NULL),
(19, 71, '1234', '18.51', '12.34', '1203.15', 'erc20', 'confirm', '2019-08-06 04:31:50', '2019-08-06 04:34:19', NULL),
(22, 71, '388', '5.82', '3.88', '378.3', 'xif', 'confirm', '2019-08-06 06:56:26', '2019-08-06 06:58:46', NULL),
(23, 73, '301', '4.51', '3.01', '293.48', 'erc20', 'confirm', '2019-08-06 07:32:43', '2019-08-06 07:33:13', NULL),
(24, 73, '301', '4.51', '3.01', '293.48', 'erc20', 'confirm', '2019-08-06 08:29:00', '2019-08-06 08:29:17', NULL),
(25, 76, '500', '7.5', '5', '487.5', 'xif', 'confirm', '2019-08-06 14:34:49', '2019-08-06 14:36:42', NULL),
(26, 76, '600', '9', '6', '585', 'erc20', 'confirm', '2019-08-06 14:38:18', '2019-08-06 14:39:50', NULL),
(27, 81, '280', '4.2', '3', '272.8', 'xif', 'cancelByUser', '2019-08-07 06:07:35', '2019-08-07 06:10:51', NULL),
(28, 81, '960', '14.4', '9.6', '936', 'erc20', 'confirm', '2019-08-07 06:08:20', '2019-08-07 06:12:53', NULL),
(29, 81, '800', '12', '8', '780', 'erc20', 'confirm', '2019-08-07 06:22:13', '2019-08-07 06:23:55', NULL),
(30, 79, '240', '3.6', '3', '233.4', 'erc20', 'confirm', '2019-08-07 09:03:11', '2019-08-07 09:03:38', NULL),
(31, 74, '50', '0.75', '3', '46.25', 'erc20', 'pending', '2019-08-07 12:51:50', '2019-08-07 12:51:50', NULL),
(32, 79, '0', '0', '3', '-3', 'erc20', 'cancelByUser', '2019-08-08 05:02:24', '2019-08-08 08:35:37', NULL),
(33, 79, '0', '0', '3', '-3', 'erc20', 'cancelByUser', '2019-08-08 06:56:26', '2019-08-08 08:35:38', NULL),
(34, 109, '100', '1.5', '3', '95.5', 'erc20', 'confirm', '2019-08-10 09:28:36', '2019-08-10 09:32:04', NULL),
(35, 120, '860', '12.9', '8.6', '838.5', 'xif', 'confirm', '2019-08-16 06:16:15', '2019-08-16 06:22:55', NULL),
(36, 124, '25', '0.38', '3', '21.63', 'erc20', 'loaded', '2019-08-16 12:35:32', '2019-08-16 14:09:06', '78'),
(37, 120, '500', '7.5', '5', '487.5', 'xif', 'loaded', '2019-08-17 10:30:46', '2019-08-17 11:00:02', '79'),
(38, 120, '2000', '30', '20', '1950', 'erc20', 'pending', '2019-08-17 10:41:27', '2019-08-17 10:41:27', NULL),
(39, 138, '2400', '36', '24', '2340', 'erc20', 'loaded', '2019-08-20 09:21:07', '2019-08-20 10:00:02', '83'),
(40, 140, '2400', '36', '24', '2340', 'xif', 'pending', '2019-08-20 10:36:57', '2019-08-20 10:36:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_15_062044_cms', 1),
(4, '2019_04_15_064502_plan', 1),
(5, '2019_04_29_052410_contact_us', 1),
(6, '2019_05_20_111025_entrust_setup_tables', 1),
(7, '2019_05_25_052809_add_card_count_into_users', 1),
(8, '2019_06_01_041656_add_plan_image_into_plan', 1),
(9, '2019_07_03_100131_add_app_id_into_users_table', 2),
(10, '2019_07_03_115241_add_kyc_fields_into_users', 2),
(13, '2019_07_09_052022_payment', 5),
(14, '2019_07_18_115544_add_coins_to_users', 6),
(17, '2019_07_09_102147_loadcard', 7),
(18, '2019_07_30_061407_add_delivery_fields_into_users', 8),
(20, '2019_08_13_072203_remove_cardinfo_from_users', 9),
(21, '2019_08_13_073651_add_inspection_id_into_users', 10),
(23, '2019_08_16_125800_add_load_id_into_cardload', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('andy@disrupt-x.com', '$2y$10$z1zufNMNQ4YTflW7AYYcxOsW//7QALABB0nzM5K/0NBEfvwNaXtUm', '2019-07-23 12:42:53'),
('maxmax@yopmail.com', '$2y$10$KUZYd8ewiY0zb0m4EbIxgO4Z/FkM8zNtMRk5clnyk4iXJc.gOYIDC', '2019-08-08 10:48:05'),
('test2dh@gmail.com', '$2y$10$JVLZrkdT9wmMmQlan/m6FObYF/k5Yqvpy08vqhFKfZy7kNsEbcX66', '2019-08-08 11:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_securities`
--

CREATE TABLE `password_securities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `google2fa_enable` tinyint(1) NOT NULL DEFAULT 0,
  `google2fa_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_securities`
--

INSERT INTO `password_securities` (`id`, `user_id`, `google2fa_enable`, `google2fa_secret`, `qr_image`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 'VYKWJ2WNHQM3XNVT', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFIUlEQVR4nO3d0W7sJhSG0Z6jvv8jR71odTRV6hYKH/Yka11GHsaJfpEtjDc/Pj4+foPdft59A3xNgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSv+8d7ufP/Ul9fVd7dvzZz15df/W++OyYs58dubdd9r4Tb8YiIVgkBIvE5hrr1cr/7KJ2Wal1RuqtkRpopc4buX5WUav9NXI0Lt+cYJEQLBJhjfVqV60wss40UkuNXD9yb7P1Vr0WVddkE3dy4Dv4hgSLhGCROFRjFU6uY13Ztb515X17WpuxSAgWCcEi8WY11khNc/Iern4+u441uw/s+cxYJASLhGCROFRjFbXCyHrV6zWz189+18j1u+qzK8+pycxYJASLhGCRCGusbj/1n3a9Mzh7/WwNVO/Nqv/O/88T74kvQLBICBaJH89Z+Rgxu5509dnZ33pXnwXPCmGJYJEQLBI39MfatVd95R5mrx9Zc9rVu+HKrv3yu/7O/86MRUKwSAgWiUPrWLN1ya67mh1z5VlesXa1stZ17zqZGYuEYJEQLBKH1rFm65VdtdHsvV2ZXaPatWdrxF3PT/9j5I1jwS+CRUKwSNzcg7SoD3a9bzhi5b3C4j3B2R6t+rzzZgSLhGCR2PyscNc61shnd+3TWnnWVowz65n7681YJASLhGCR2LyOtfJ/+mn9n1Z6Ljxhf9XsM8q9zFgkBIuEYJEI97w/4VznYk/SSq2z69521Wqz9zPOjEVCsEgIFolwz/uufe5Fz4LZM6Hr3qG79rw/p8+WGYuEYJEQLBKH+ryP7DdfqclGfj47zso6UNGj6+q7Zse35503JlgkBIvEg54VrjznWhnzavziOWax12qEdSy+CMEiIVgkbuiPtWuclfpp9t52rXVd2bW2VPchG2fGIiFYJASLxA3vFRY9OVfWt1Z6d52s864UfU3XmbFICBYJwSLxoB6ku877q5/xnVxnKu7HfizemGCRECwSh/a8v3paH6yReyjqmJUzfIperHuZsUgIFgnBInHzeYW7zl0eub44O3m27jn/ft9nZ+pXMxYJwSIhWCS+yHuF9fnHJ9/721WDvnKWDl+EYJEQLBKH1rFenawnRtTrZ/UZiyP79/Vu4IsQLBKCReKGdayij9TIPRRn1zxhnFf1et44MxYJwSIhWCRu3o81cs3Vnqr6TMO6Hpod50pxdtA6MxYJwSIhWCRu6I91df2u9ZWTz9fqveq7+oieP7vQjEVCsEgIFokH7ceaHedqzCsra2y79jnt2kN2pX6WOnEnG8eCXwSLhGCReNA61oj6/bhn9kz/fA9XnnOOoRmLhGCRECwSN6xjzZrdjzW7D6k4Y7Fe39r1fNA6Fm9GsEgIFomwz3uxp2pXv9Dze8A/38Oru9b/OmYsEoJFQrBI3Hxe4auVs2Vmv+vq+l3PBIt99LueA+rdwBsTLBKCReJQjVWo93TP9kpdOW+nOA/x/NrV37798PfxTQgWCcEi8WY11q5a59VsX67Ze9vV42rku2bZj8WbESwSgkXiUI1VrKOs9EAf6Y+10gt019nYJ89z3MuMRUKwSAgWibDGelqPg3o/067ftxizvud/+MZoXL45wSIhWCTC8wr5zsxYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJP4ATuLH/VCsHrIAAAAASUVORK5CYII=', '2019-05-14 07:10:50', '2019-05-14 07:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `paymentType` enum('alipay','wechat','erc20','xif','free') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','confirm','cancelByUser','cancelByAdmin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `userId`, `paymentType`, `amount`, `account`, `status`, `created_at`, `updated_at`) VALUES
(2, 47, 'alipay', 563.00, 'No Need', 'pending', '2019-07-25 05:05:24', '2019-07-25 05:05:24'),
(3, 51, 'free', 0.00, '987654321000', 'pending', '2019-07-26 14:05:16', '2019-07-26 14:05:16'),
(4, 51, 'alipay', 563.00, 'No Need', 'pending', '2019-07-26 14:14:40', '2019-07-26 14:14:40'),
(9, 51, 'alipay', 563.00, 'null', 'pending', '2019-07-27 12:24:39', '2019-07-27 12:24:39'),
(10, 51, 'erc20', 80.00, 'null', 'pending', '2019-07-27 12:24:55', '2019-07-27 12:24:55'),
(11, 51, 'free', 0.00, '123123123123', 'pending', '2019-07-27 12:25:20', '2019-07-27 12:25:20'),
(12, 53, 'xif', 80.00, 'null', 'confirm', '2019-07-30 04:04:10', '2019-07-30 04:04:24'),
(13, 5, 'alipay', 563.00, 'null', 'pending', '2019-07-30 07:52:59', '2019-07-30 07:52:59'),
(14, 56, 'free', 0.00, '111111111111', 'pending', '2019-07-31 10:53:57', '2019-07-31 10:53:57'),
(15, 61, 'alipay', 563.00, 'null', 'pending', '2019-08-02 11:41:25', '2019-08-02 11:41:25'),
(16, 62, 'alipay', 563.00, 'null', 'confirm', '2019-08-03 04:57:01', '2019-08-03 04:58:08'),
(17, 63, 'alipay', 563.00, 'null', 'pending', '2019-08-05 07:43:54', '2019-08-05 07:43:54'),
(18, 65, 'alipay', 563.00, 'null', 'pending', '2019-08-05 09:40:59', '2019-08-05 09:40:59'),
(19, 66, 'alipay', 563.00, 'null', 'confirm', '2019-08-05 11:49:13', '2019-08-05 12:01:10'),
(20, 67, 'alipay', 563.00, 'null', 'pending', '2019-08-05 11:57:47', '2019-08-05 11:57:47'),
(21, 68, 'erc20', 80.00, 'null', 'pending', '2019-08-05 12:11:45', '2019-08-05 12:11:45'),
(22, 69, 'alipay', 563.00, 'null', 'confirm', '2019-08-05 13:23:21', '2019-08-05 13:24:34'),
(23, 70, 'alipay', 563.00, 'null', 'confirm', '2019-08-05 13:33:20', '2019-08-05 13:34:21'),
(24, 71, 'xif', 80.00, 'null', 'confirm', '2019-08-06 04:21:24', '2019-08-06 04:22:03'),
(25, 73, 'alipay', 563.00, 'null', 'confirm', '2019-08-06 07:30:56', '2019-08-06 07:31:45'),
(26, 74, 'erc20', 80.00, 'null', 'confirm', '2019-08-06 14:10:55', '2019-08-06 14:22:11'),
(27, 75, 'alipay', 563.00, 'null', 'confirm', '2019-08-06 14:27:20', '2019-08-06 14:28:46'),
(28, 76, 'xif', 80.00, 'null', 'confirm', '2019-08-06 14:33:13', '2019-08-06 14:33:34'),
(29, 79, 'erc20', 80.00, 'null', 'confirm', '2019-08-07 04:32:18', '2019-08-07 09:03:57'),
(30, 80, 'alipay', 563.00, 'null', 'confirm', '2019-08-07 05:41:48', '2019-08-07 05:44:12'),
(31, 81, 'alipay', 563.00, 'null', 'confirm', '2019-08-07 06:01:53', '2019-08-07 06:03:05'),
(32, 87, 'alipay', 563.00, 'null', 'pending', '2019-08-07 08:54:20', '2019-08-07 08:54:20'),
(33, 92, 'alipay', 563.00, 'null', 'confirm', '2019-08-08 08:47:58', '2019-08-08 08:49:39'),
(34, 93, 'alipay', 563.00, 'null', 'confirm', '2019-08-08 09:02:45', '2019-08-08 09:02:54'),
(35, 109, 'alipay', 563.00, 'null', 'confirm', '2019-08-10 09:22:34', '2019-08-10 09:23:45'),
(36, 120, 'alipay', 563.00, 'null', 'confirm', '2019-08-16 05:29:34', '2019-08-16 05:52:04'),
(37, 123, 'free', 0.00, '888888888888', 'confirm', '2019-08-16 08:26:59', '2019-08-16 08:28:23'),
(38, 126, 'free', 0.00, '1234567', 'pending', '2019-08-17 07:44:28', '2019-08-17 07:44:28'),
(39, 127, 'free', 0.00, '45645645645644', 'confirm', '2019-08-17 08:20:54', '2019-08-17 08:21:28'),
(40, 137, 'alipay', 563.00, 'null', 'confirm', '2019-08-19 11:01:58', '2019-08-19 11:02:08'),
(41, 138, 'erc20', 80.00, 'null', 'pending', '2019-08-20 09:15:43', '2019-08-20 09:15:43'),
(42, 140, 'erc20', 80.00, 'null', 'pending', '2019-08-20 10:33:20', '2019-08-20 10:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'Create Users', 'Create New Users', '2019-05-06 07:08:51', '2019-05-06 07:08:51'),
(2, 'edit-users', 'Edit Users', 'Edit Users', '2019-05-06 07:08:51', '2019-05-06 07:08:51'),
(3, 'delete-users', 'Delete Users', 'Delete Users', '2019-05-06 07:08:51', '2019-05-06 07:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(10) UNSIGNED NOT NULL,
  `planName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `year` int(11) NOT NULL,
  `eLearning` double(8,2) NOT NULL,
  `rewardPoint` double(8,2) NOT NULL,
  `mangoCoinEarn` double(8,2) NOT NULL,
  `referralFee` double(8,2) NOT NULL,
  `status` enum('active','deactive','Expired') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `planImage` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `planName`, `price`, `year`, `eLearning`, `rewardPoint`, `mangoCoinEarn`, `referralFee`, `status`, `created_at`, `updated_at`, `planImage`) VALUES
(1, 'Bronz', 450.00, 5, 2.00, 4.00, 90.00, 3.00, 'active', '2019-05-07 05:15:13', '2019-06-01 05:31:11', 'Plan-5cf20d9f31d98.png'),
(2, 'Silver', 1500.00, 5, 3.00, 3.50, 300.00, 3.00, 'active', '2019-05-17 12:28:28', '2019-06-01 05:31:20', 'Plan-5cf20da8a1d9d.png'),
(3, 'Golden', 3000.00, 5, 4.00, 4.00, 600.00, 5.00, 'active', '2019-05-17 12:28:56', '2019-06-01 05:31:28', 'Plan-5cf20db062e94.png'),
(4, 'Platinum', 4500.00, 5, 5.00, 4.00, 900.00, 5.00, 'active', '2019-05-17 12:29:19', '2019-06-01 05:31:35', 'Plan-5cf20db77bfd9.png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'User is Admin of UBank Admin', '2019-05-06 07:08:51', '2019-05-06 07:08:51'),
(2, 'user', 'User', 'User of UBank', '2019-05-06 07:08:51', '2019-05-06 07:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(77, 1),
(78, 1),
(82, 1),
(85, 1),
(95, 1),
(120, 2),
(122, 2),
(123, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `contactNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','active','deactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `countryCode` int(11) NOT NULL,
  `cardNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardStatus` enum('unpaid','paid','pending','assigned','verified','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `google2fa_enable` tinyint(1) NOT NULL DEFAULT 0,
  `google2fa_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google2fa_qr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardCount` int(11) NOT NULL DEFAULT 0,
  `appid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_kyc_approved` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kycres` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_btc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_eth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inspectionId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `contactNumber`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `countryCode`, `cardNumber`, `cardStatus`, `google2fa_enable`, `google2fa_secret`, `google2fa_qr`, `countryName`, `cardCount`, `appid`, `is_kyc_approved`, `kycres`, `balance_usd`, `balance_btc`, `balance_eth`, `address1`, `address2`, `city`, `state`, `pincode`, `d_country`, `inspectionId`, `deleted_at`) VALUES
(1, 'WOS', 'Software', 'admin@gmail.com', '2019-06-13 00:00:00', '8569541258', '$2y$10$Mcn.wCzJHBQyZDmzavQN0uijL8ezDjrZh7MjiuwcBVfMGouqmClr2', 'active', 'u3amdDZzxIsvrdpzli7UufcPZ1u0Z1uoLPruWybCwNZoBRqgOiSPUCLWPysX', '2019-05-06 07:08:51', '2019-08-16 13:00:02', 91, NULL, 'pending', 1, 'B3GSV6CIE4AEBOL7', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEkElEQVR4nO3dwY6dOhBF0Zco///JrTe9EyQ79sZcstawRQNJjpxSYYpfPz8//8Fuv0/fAO8kWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSLx557L/P69P8GfswhHzn81u/Dzd6/OOfLzq3PO3s/seWbdM8PRikVCsEgIFombaqxPK//Hr9QcV7XRbP2065yz1zr19/aXV7z5evwjBIuEYJE4UGN92tXvme1RjdzDyO/O1j2zddXIea6c/eaIFYuEYJEQLBKHa6zCSl218uxv5B5W6rnvYsUiIVgkBIvES2qskRpo1zEjx88+K3yfN//ZOEiwSAgWicM1VtGzWXmuV/TARsz+7vN7XVYsEoJFQrBIHKix7uzf7NpvvuvZX/2u4nN8073yRQSLhGCRuKnGOtV3qfdCrTz7e/6+9RVWLBKCRUKwSDxoPtap/en1+4YrPa0Rdz7THGfFIiFYJASLxK/7OyUrtcWu44t5pFfXHbHSS3vmO4lWLBKCRUKwSBzoY+3q/VxZmZ8+W5PN3tude+r1sXghwSIhWCQO9LE+FT2YXXVM8c2cXcfvqiM7ViwSgkVCsEg86L3CetbUrv1P9f6qT1fnufMe/o4Vi4RgkRAsEjf1sYq9U7vu5wlzs1b2uduPxT9EsEgIFokHPStccec7ibvqm13PK2ev5VkhX0ywSAgWiQc9K/y0q/ez8q3oked0s+ccsWt+6dmZpVYsEoJFQrBIPPR7hbv6SbN9rFM1TVEL2o/FCwkWCcEicXgG6a7nYiPH7/qmza46bGVG1xV9LF5OsEgIFokDfaxiDtZsfXZq1tRsj23luod32h28Ni8mWCQEi8Th/Vi7ej9XVnpUI+f8dOp7iCu9sY4Vi4RgkRAsEge+Cb3Sv7nzPbtilunsvc0e85w5DlYsEoJFQrBIPGjPe9HHqmedr8wIHbmfei5rx4pFQrBICBaJw3veV87zWU/s+p7g7HXrb0U/4Xf/jhWLhGCRECwSh2eQ7rKrl1O/6zdyzqtjdp3zHlYsEoJFQrBIPHR2Q3HMyPHF3PmV/VXF8fa888UEi4RgkXh5H2v2+F0zqHZ9q+fKc/pVV6xYJASLhGCR+LL9WJ9G9mMV31oe+fnsvrEnvEe5lxWLhGCRECwSh2eQzpqtRYpndivvNhbz63dday8rFgnBIiFYJA7PbthV0+zah37l1FyulXOerbesWCQEi4RgkXjQfKxC/f5d8Q3BXe8YnmXFIiFYJASLxEtqrF1zqorvOo9c90oxj95+LL6YYJEQLBKHa6zi//uVPenFrNFd7zxeHTPy8/s95T54GcEiIVgkDn8T+pR6PsKu9xlHzjn7Z7nH+X9jXkmwSAgWiZfMx+JprFgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgk/gfKpP7Fo+wvcAAAAABJRU5ErkJggg==', 'in', 5, NULL, '0', NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Cat', 'Cat', 'cat13564052404@163.com', NULL, '0164888745', '$2y$10$lqwJYwXuR.yIOEdBzJciuOTkOYFbhVVYFfMGvu1oUCL1gRoOxoJXC', 'deactive', NULL, '2019-08-06 14:33:44', '2019-08-10 04:36:57', 60, NULL, 'unpaid', 0, NULL, NULL, 'my', 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Max', 'Max', 'MaxMax@gmail.com', NULL, '91111111', '$2y$10$7cuzOF.O96VDMsTvbDuYK.LZwLyHufwKY0g7POYQlYbL3OOfT/8l2', 'deactive', NULL, '2019-08-06 14:42:37', '2019-08-08 10:54:11', 65, NULL, 'unpaid', 0, NULL, NULL, 'sg', 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'andy', 'pee', 'andy@hello.com', NULL, '87556215', '$2y$10$nmisLbW49X9K0iaYWTVJV.blW2vNQSUay2Q9ykZb89T3AptxFcTom', 'deactive', NULL, '2019-08-07 06:27:52', '2019-08-10 04:37:00', 1, NULL, 'unpaid', 0, NULL, NULL, 'us', 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'test', 'tesyhs', 'dasd@gmail.com', NULL, '45646545646464', '$2y$10$q7iGEvdsT9JbYBIi2sEJCOOmoKhXSZ4ZDqeY2iQ1rbkISyofLEPWu', 'deactive', NULL, '2019-08-07 07:43:16', '2019-08-16 04:51:25', 1, NULL, 'unpaid', 0, NULL, NULL, 'us', 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Max', 'Peng', 'max@disrupttech.io', '2019-08-09 07:31:50', '+6591600674', '$2y$10$F3/.pyaZlc.cgsqMpEZ05.g/CNLImA82hR5tm3HU9YexsmtSI4UFe', 'active', 'gG0Tqb7E7KJ1DBdycX8ACjjNvD0yDWeFKcUzMbBKfv8u7bV0CRlRqUZU7uTm', '2019-08-08 10:54:52', '2019-08-09 07:46:06', 1, NULL, 'unpaid', 1, '5B67G32K366Z6TMA', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAE/ElEQVR4nO3dwY7dKBRF0U7U///JUU8yeFFkCRo2tqvWGkYu4yodkSsM1z9+/fr1D+z28+4H4GsSLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJH4d+/tfv7cn9SRs9qf435eP/s8K+fCr8Yqzprf9XceZ8YiIVgkBIvE5hrrU1GvXNVSI88wUpeM1ElXz3D1PHX9V/yd15mxSAgWCcEiEdZYn0b+L5+tmUb+faVmGjFbo4zUWyt12K6/8zozFgnBIiFYJA7VWLus1BDFmtbs9SvjvstX+B14IMEiIVgkXlZjza4/zdZbI/dcqYFW1urexYxFQrBICBaJQzXWrrqhWH+a3Ue1q/Ya2XP26V31mRmLhGCRECwSYY1Vv/Na2c+0si/qrnGvPPPd4hOfiS9AsEgIFonNNVa9jrJSxxTjrvz7rud5JjMWCcEiIVgkfmzuirRpr9JKX4P6nGBdP+16hpM139/MWCQEi4RgkdhcY32aff+1q9foE3qQFvfZ9buc6ZVqxiIhWCQEi0TY53127aTuBVXsl5+9puhftWsf2F5mLBKCRUKwSDz0XeHKuLNrZid7kO7qBW8/Ft+UYJEQLBKHvqWzcv5u9p6zz7PLrr1Qu6654l0hLyZYJASLxKH9WJ+K/dd31Rwrvd2L7//M/h26/e9mLBKCRUKwSNzQg7R+L1b3IF1ZPxt5zqufXelVceYs4R8jHhiDb0iwSAgWiXAd69Oudab6fdxd5xbrd4sr1/8/ZiwSgkVCsEiE5wqL6z+d7NGwaw1sxMoZzJX3kt4V8gKCRUKwSNzcH6voiXX1syPqc4UjY53s9aXG4mUEi4RgkXhQjbXrrN+uemvXPe86z7hyn3VmLBKCRUKwSBza8z5rVz/Pk2cb6/uP3Ge23rIfi5cRLBKCReJQn/fZ64tv7RU934t96LNjjbj63b0r5GUEi4Rgkbi5P9bKfa4UvR7qd3B37euyjsXLCBYJwSLx0N4Nu/ovfKprr5O11K59YGosXkawSAgWiZftx3rC9wFX9uzX32R8zrcOzVgkBIuEYJE49E3ouk/BlSd/O/mudbgr9mPxAoJFQrBI3PxN6E/F/qGTPaVWxlqpKWfPG55hxiIhWCQEi8QN3yscuWbXGk/dm6qu/3adhbQfiy9CsEgIFomb92MV61Ur+6tG7jnSB+HKyjrTSp+I82cMzVgkBIuEYJEI92PddR5wZayrcc/0O/h7rBX39iM1Y5EQLBKCReJQ74Zd6j1bxXnGoh/prp+1jsXLCBYJwSIR9nnfpV4PK/pOze6dKurC2efZy4xFQrBICBaJQ+cKZ83uozq5frNS35zsSXHXu87fIx4Yg29IsEgIFolDe9537Qfa9d2bk706R+q8kTW582tRK970rLyIYJEQLBIP7fO+YlfPqiu7vodTfON55Xr7sXgBwSIhWCReXGOtvC8bMdu7YXa96squPhFXz1D3DPt95+i+fHOCRUKwSDyoB+mKXfvfi94TV+Pu2iO163uLe5mxSAgWCcEiEdZY9f6h2VqhqL1W6pXZsYpn07uBlxEsEoJF4mX9sXgLMxYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBaJ/wC98c1AWuROuAAAAABJRU5ErkJggg==', 'us', 0, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Jonathan', 'Ang', 'jonathan@yopmail.com', '2019-08-15 02:42:34', '87765634', '$2y$10$OBnLHLyO94ICpY65rZwbwOvUpqcDQS2..qFYWMIhfJGnVEh1VTGzG', 'active', 'V6ObvSRNmvv1FpDAlmZWvKYyUubLdj8V96tPYe7tKsadO1e78SWXla5CLT0o', '2019-08-15 02:42:10', '2019-08-16 14:13:27', 1, '1234567898765432', 'verified', 1, 'VLEDU2UKTGAKIZUK', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFBUlEQVR4nO3dwW7jNhSG0U7Q93/koJsu3IUKMuRHyc45y4EjaYwf9AVFXv75/v7+C3b7uvsB+EyCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBJ/773c19f+pI7s1X697+vnZ5+nuNfsXvOR69z1PY8zYpEQLBKCRWJzjfVq5Tf7qoa4qm9GnmGkLlmpXUbutasO2/W3Ra3275Wj6/LLCRYJwSIR1livRn7LZ2umkX+fnRMauc5K3TZ7/Vm7vud1RiwSgkVCsEgcqrF2WakhitpoxEg9V7xzvJcRi4RgkRAsEm9WY83OP83WWyPzVcU7ys/zG//PHCBYJASLxKEaa9cczMqaqpX3jCffY4787a7Pd4xYJASLhGCRCGusev5mZJ5pdu38rnmsXdefXcv1HE98Jj6AYJEQLBKba6x6HmWlfpq1q3ZZWS8/Ozf2HEYsEoJFQrBIPKg/1q6+VsUexpWeVbveUZ6cG1tnxCIhWCQEi8Sf58+IjHhyD9KRe+265tX1X53Zt2jEIiFYJASLxOYaa/b3u+6ZPvJsI54wx7bS6+v8nJYRi4RgkRAsEjfPYxU12co7vl3n3lzZtZ79+bOPRiwSgkVCsEjcsK9wpPfmrr4JV5+pe0Cs7EO8UteF5rF4A4JFQrBIhPNY9XvDkWuOKM5yruueusfEOiMWCcEiIVgkbthXuHKOzRN6kNbnG15Z6VVxZi/hf+544B78QoJFQrBIhGvei97uxfrxeh5oV022q37Su4E3JlgkBIvEzfsKn/C3K9cs3mMWvd3PnzltxCIhWCQEi0S45n3XOX1Fv4OR65zc2zhiV6+vM+dVG7FICBYJwSIRnqWzso677vM5Ytca9rovw8jezPOMWCQEi4RgkbhhX+GVXe/1ntAfqz7vuegHsZcRi4RgkRAsEod6kJ6cU9l1Rs3JOqZeT2Y9Fh9CsEgIFomwd8PKb/aueZ2iX+jIdV7VfeSL73mdEYuEYJEQLBI39Hm/Mlv37JqXOj/H8//3ujK77urM2vYrRiwSgkVCsEjcfF7hq119nop+VLvWe1195squ9V6z911nxCIhWCQEi8Sh/liv6vP7dt3rrnXlT+v18DNGLBKCRUKwSBzqjzV73vNd/Rresa6a/T5H7rvOiEVCsEgIFomwxnp1cu5q5fNXzzPbm7SoXVbOanReIR9CsEgIFolDNdarldpl5V6virP/RhRnEc5+5sz6dyMWCcEiIVgkDtVYu9aS130WZj+zsiZstqacnce6dzeDEYuEYJEQLBIP2lc4oqghdu1DHLHrDMcr9bzdOCMWCcEiIVgkwh6kuzyh3/qIXe/pivk8/bH4EIJFQrBIHNpXOOvkOYB1D4ir6+x671nf62eMWCQEi4RgkbhhPdaVlTqm6O9Q1D0jz3C+z0LhnZ6VNyJYJASLxA37CnfZdfbzrKIX/ErNd7Jf6zgjFgnBIiFYJN64xnr15LMIZ3ux3vU8m+8YXZdfTrBICBaJB/UgLRT902drlJX6ppijOrM2y4hFQrBICBaJsMaq1w+t9KNaeX9X9OXadR5O0eP0Z4xYJASLhGCReLP+WLwLIxYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBaJfwAwPcpVlOZsswAAAABJRU5ErkJggg==', 'us', 2, '5d54c6f90a975a2064f6f8a3', '1', NULL, '240000.0', '0.0', '0.0', 'Blk 123, Jelapang Road', '#12-123', 'Singapore', 'Singapore', '670123', 'Singapore', '5d54c6f90a975a2064f6f8a4', NULL),
(122, 'test', '2dh', 'test2dh@gmail.com', '2019-08-16 05:22:46', '8521597535', '$2y$10$1n42BAEJvFzLqk7mOKk0AOqodXAm6sG4KU2pmDGTBZbXzh.vGEzdC', 'active', NULL, '2019-08-16 05:21:53', '2019-08-20 06:03:32', 1, '8748748748748748', 'verified', 1, 'H6ERFPLJ5K33GHRC', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFD0lEQVR4nO3d0Y7cKBRF0UmU///k1rxEkaORJziwsd291mNUBqd0RF8BBd8+Pj7+gdW+3/0CfE6CRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBI/1jb3/fv6pI78VvvYb/H5s2ePju2ctV/8+yprfxNvxCIhWCQEi8TiGuto5m/2WQ2xqrY4e7e61hl59mr9V3zP84xYJASLhGCRCGuso5G/5VdrhaK2WFVXjbQzUufNzM+NvFvHiEVCsEgIFolNNdYqI7XL0Ugtdfb5eh5upG5775nWRiwSgkVCsEi8rMaaWV+r192utnO1RnxXvWXEIiFYJASLxKYaq6gPVu0BX7WnaqadmfcZaXM/IxYJwSIhWCTCGqvbTz2v2Ns+085Mv8/8np/4TnwCgkVCsEh8e87Mx4iZ/Uw7z0E4e4cja4VwmWCRECwSi2usmVrnajvFOxR7z1d9JyNtjrR/9pm1jFgkBIuEYJHYVGNdNVN7rao/imdn1GerrmXEIiFYJASLxKa1wnrepajtinXJGcV32NVkRiwSgkVCsEiE81j1Weoz9daq/U8777RZ9bvFszbVWLyAYJEQLBLhPNaqOwF31mH1vquRZ++6x1CNxQsIFgnBIrGpxjpT9H7XPco793XNzBGOtDPPiEVCsEgIFomb1wqPVu0Tek6d8f/9XlWfVWEeixcQLBKCReKG87GK3/2tOgehXnd72h3P9mPxMoJFQrBIbDrnfed+rKtzNjvXK88+czTybjvvDvrLXjb0wRckWCQEi8TN57wX+8RH2h+x87zTmXm7ZzJikRAsEoJF4qFnkB4V+7uf8Pu7VTXizBzhTDt/6GVhW/CLYJEQLBKL1wrrs51G6pJiTmjkLueRNovv4czZd7XnnHojFgnBIiFYJB50Pla9bnj12VVtHt115kLxf/xDjwvbgl8Ei4RgkQj3vN91DnuxT6u+13lkTu5qO/feXWjEIiFYJASLRFhjXbVq/mbmM8W5Dzv/feQ9j5xByssIFgnBIrG4xlq15nX2bLF2NtLvmVV7wkbav7oH62qb1gp5AcEiIVgkbj4fq76Pb2Tf98z7jKjXPWf67RixSAgWCcEiEf6u8Or806p6a1UdVt97uGr/+1mbd90d9LP3DX3wBQkWCcEisWmt8Ornd66vXX2fVeuSq9ZPz9q8+XTZG/vmExMsEoJFYtPZDWfuugd65h1WnTEx8qw97/AbwSIhWCRuPud9Zs6pXms7U8917Tkj9L/seecFBIuEYJG4+b7Cq+q7Zep7e2bmzJ45X3X6Jpv744sQLBKCRSLcj7XKzPmcRzN3y8ycMbFq/9bZZ65+P+4r5MUEi4RgkbjhnPcRq+4BnJn7mWm/Pjfh+bOPRiwSgkVCsEhsOue9WOO72m+xt33VOuPVz4xYdVfP3zFikRAsEoJF4kF36Yy46+7nmfMUijMpztxbV/32Jhv64AsSLBKCReJlNdaqemXm/NKr+7qKu6JX7S1zlw4vI1gkBIvEphpr1d/vu85YP3t2pta52u/VeTh36fAJCRYJwSKx6b7CwszvAVfdY7jq7ppV7TzhnK2fPW7ujy9CsEgIFomXnY/FWxixSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSPwL7jTfT7/6ADwAAAAASUVORK5CYII=', 'us', 0, NULL, '1', NULL, NULL, NULL, NULL, 'huiii', 'yhsjbdjsj', 'dsadf', 'sdfsd', '85236954', 'sdfsdf', NULL, NULL),
(123, 'Yee Sian', 'Ang', 'sasukeang007@hotmail.com', '2019-08-16 07:28:29', '174890141', '$2y$10$5..HDH.xHq66PstaPIOlgeH4bcAwwZHAIJsl2W6NN5K.9QFxWN1ti', 'active', NULL, '2019-08-16 07:27:59', '2019-08-16 08:28:09', 60, '4385218805963100', 'assigned', 1, '5E3A23XB2YHRQ7XC', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFDUlEQVR4nO3dzWrmOBCG0elm7v+Swyxm80FjsFr1+Cc5Z9k4tjq8KIUslX99fX39A9N+3z0AvifBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFol/Z2/3+/d8Us+c1f587uf1R+M5uuboWav3OePMs1bHs2P2TLwZi4RgkRAsEsM11qedv9lHNcSZ+uNoDJ8/W9dDq3XSzjXF73mfGYuEYJEQLBJhjfXpzN/y1ZrpzL8X609HVuut1ZpsdQxHrunhaMYiIVgkBIvERTXWlJ0a4kxdNVUnTa23HV3zfGYsEoJFQrBIvKzGWl37Wa236vdxU/XW87113DycYJEQLBIX1VhTazBnao7VdaCpfeur99nZy3VmPPcyY5EQLBKCRSKsseo1mDN1yc7e+dX7F/e564zhvieOiW9AsEgIFonhGqteR5mqn3aee2S1zqvHcy8zFgnBIiFYJH4Nd0XaqCem3tmt1lg7++h36rnV506tgRU16J/MWCQEi4RgkQhrrKIuWX3uVB+s1TGs3rNYA9vpZ7HPjEVCsEgIFonhGuvT6t/yqZ7sq+M5M7Yz96lru53fz/VrWmYsEoJFQrBIXFRjrdYfUz3TizrvzPVHpupC+7H4oQSLhGCRCGusVfV7sanaq/iNFXXn6rOsY/ECgkVCsEjc0Luh6PN5pOiJdeX7uJ36qfi/L4wkui8/nGCRECwSF61j7exh2umDdXSf1bEdKfba1/9H+7F4McEiIVgkHvQtnak1m2L/VrHffHU8O3vC9G7gmxAsEoJF4sX7saa+ozy1b70eQ7FOdnTNPjMWCcEiIVgkXnCu8OieO9efMbUGtnP/HTvvOveZsUgIFgnBInFDf6xPU7XXzniesE9rZz9W3bP075ixSAgWCcEi8dAepE97L3bl2tWV70Dtx+JlBIuEYJF42bnCo3sWtcvUdw+n9rDXdaF1LF5AsEgIFonhc4Wr/ZmOTJ2/2+kRtVNvTf3sp6I2so7FywgWCcEicVHvhiv7Nu30Pi3W286M7cx9jsZQ79P6O2YsEoJFQrBI3NDn/Yyp9ZWps3tT/bSO7Kxd3ftO8IgZi4RgkRAsEjesY0311Txz/53rV+95134s3yvkBxEsEoJF4kF93uve6zvqb93s2NkD53uFvIxgkRAsEsPnCqfeWxXfh3nC2cYns47FCwgWCcEicfM61pnzgDs1SvHebWodq6gLn1PnmbFICBYJwSLxoHeFn+o+BfX5wdXrd/bgH/37vV+iNGORECwSgkXiQd+EPuPe3uV/jqH4Tk7dB/Xoeu8KeQHBIiFYJMIepFOm9nFP7f2aOm849Q60WCfbZ8YiIVgkBItE+K6w/n7z1Hm6nb1NU2tRZ3qKfqp7ze8zY5EQLBKCReKi/VhTdUPdi+HMs1Z/dqqmecv5xP+9aay8iGCRECwSD93zfsbOt3F27r/zrNXvKu6cYVwdp/1YvIBgkRAsEi+usT5N9YAovuV85EytM9X7dKpWO8+MRUKwSAgWiZu/CV3fvz5nN7WetFOfTZ1tnGXGIiFYJASLxEO/Cb3zrPod4pGdvlmra1qfiv37+8xYJASLhGCReFl/LN7CjEVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkXiPxZ/8+kNTHccAAAAAElFTkSuQmCC', 'my', 0, '5d565c750a975a315ecf3e68', '1', '#@#RETRY#@#BAD_PROOF_OF_IDENTITY,BAD_SELFIE', NULL, NULL, NULL, 'Green Land', NULL, 'Green Land', 'Penang', '14000', 'Malaysia', '5d565c750a975a315ecf3e69', NULL),
(126, 'Trupal', 'Gman', 'trupal@yopmail.com', '2019-08-17 05:45:31', '877612345', '$2y$10$g47Yuqegrh2NZqdyvvfaUOdWeUjFJmCzMzgnC7meLz6mFRksWO0a2', 'active', NULL, '2019-08-17 05:43:40', '2019-08-17 07:49:57', 91, '4444555566660000', 'assigned', 1, 'GAGYP7EY6A6PJH6O', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFGUlEQVR4nO3dwY7bOBRFwUmQ///kYHYDb5iQTR7K7qlaGrJENy7YDxT19OP379//wGk/nx4A35NgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi8Svs6f7+fN8Umee1X697uvxq+PZeS58dK3V8c9896m/8zwzFgnBIiFYJA7XWK+KemVUS82MYaYumal1VsewWv+tXqv4O+8zY5EQLBKCRSKssV7N/C9frZlmPi9qpp3z76x17YynuNZfRnLhGvwPCRYJwSJxqcY6ZaeGKNa0Zr47c9269rrPjEVCsEgIFokPq7FO3UebWWcq9kLd3F/1rO/2e3gTgkVCsEhcqrFu3gtbXROaqXtejzlVJ63+lp17qfeZsUgIFgnBIhHWWPXazMya1ure+eLzU9cdec81sHccE9+AYJEQLBKHa6x6HWWnjimuu/P56nVnPn8fZiwSgkVCsEj8ONwV6dBepZ2+VsVzgjPXGh2z6uYaW1ermbFICBYJwSJxuMaaUfQXuNmDtO5reure304/i31mLBKCRUKwSIR93ldrnZ31oaf6NbzD3qlT+8DOMmORECwSgkUiXMfaeT/Mzn7wopf6yM75T/WLf09mLBKCRUKwSDzwLp1TdcnOeG7ejzv1u27WhfvMWCQEi4Rgkbh0r7D+7jv3IL3ZW2G1L6t7hXwYwSIhWCQe7t2wug4042YP0p39+6f2qK3Whd5XyAcTLBKCReJS74ZT/Q529matnufU+WeO3/Ge+7rMWCQEi4RgkXhgz/urU3u2Vs8/8tS9ztXznOofNjpmnxmLhGCRECwSDz9XWNdSdS+rU9eqezqMdGtaZiwSgkVCsEi8Ue+Gne8Waz+j6xa9JEbHvzp1/tXrfo0Zi4RgkRAsEg/vxyreu/wO/bFGVq9b1Kmr5/kaMxYJwSIhWCTC5wqLve0z190Z22gMo/Ps1Go398vv9Kr4GjMWCcEiIVgkwv5Yq8ef6qEwOubVas1R1yX185gj1rH4MIJFQrBIhPcK6/fS7ByzM576nDPnr9//uM+MRUKwSAgWiUs9SHfe2Vf0f6/7YM2M59R+rFO/5SwzFgnBIiFYJML3Fe64+ZzgzOer5zn1TptTe9FGY9s5z1+ucvBc8B/BIiFYJC7tx7rZw31mPCNFf6ydvfOr1z1VO+4zY5EQLBKCReLSfqzivtjomJmxjdzcs7VaUxbsx+LDCBYJwSLx8L3CU301ix5ap/aB7fR0ONXfa6f2/RozFgnBIiFYJB54rrBep9nZD756nlf1fvlV9bsd/8yMRUKwSAgWifBdOoViPeZmXViMbXT8zHWtY/FhBIuEYJF4uAfpjLr/wqn1rVWnvlvs/d9nxiIhWCQEi0S4H6t4Rm+m9/rMGJ5a96rXpUbHdOtVI2YsEoJFQrBIXNrzfmo/0Kn7evWzikWvivtrUTs+aax8EMEiIVgk3rQH6Y6de3mnnh/c6UFa9HG43//djEVCsEgIFolvUmOtvjd655wjN/vRn/ot3dqYGYuEYJEQLBKXaqxiD1DdT6HuI3+q7in6ae0zY5EQLBKCRSKssd6hD9bM8aNjXs2sk80cP3Lq3c8337f9Z2YsEoJFQrBIfFh/LD6FGYuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIvEv+VZ4i5PKp3NAAAAAElFTkSuQmCC', 'in', 1, NULL, '1', NULL, NULL, NULL, NULL, '123 Surat Gold Coast', '#01-123', 'Surat', 'Chennai', '0123456', 'India', NULL, NULL),
(127, 'Dexter', 'Ng', 'dexxter@yopmail.com', '2019-08-17 08:13:09', '81288993', '$2y$10$fou/K81rTeEoY1tOSpDCne6tec3kTPlkEbq/IBiidWxC9Q5lspFia', 'active', NULL, '2019-08-17 08:12:32', '2019-08-17 08:23:32', 65, '1111222233334444', 'assigned', 1, 'L5QSCVNPME7CVVOJ', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFF0lEQVR4nO3d244jJxhG0cwo7//IrdyNHGUYQWDjQ691aVXhcusT/Qso+PH19fUXnPbz2Q/AZxIsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4Rgkfj7bHM/f55P6uO72qvtr947c/3o3fFT7Rf3rra/T49FQrBICBaJwzXWo53/2av1zejeU7XITq22c82p79pp/3+2HLXLNydYJASLRFhjPSpqhcc2R/fujEutftfOvTvtj9oZubOHox6LhGCRECwSl2qswql5wFF9M9P+ap33feixSAgWCcEi8cY11oyZsavV+mnm+pGd8bb38gm/gRckWCQEi8SlGqsYy5mpgVbHrh4Va6rqubzXGTPTY5EQLBKCRSKssYrxmJ266tTYVf35zPOMrnkdr/hMfADBIiFYJA7XWDfHUU6tE3+0Ope38/nIZ6zx0mORECwSgkXi0v5Yq+/37axDX322nXGgnbX2p94ffIV2ftPywbbgF8EiIVgkwnGsU/XHqZrs0c29GGbs7JW1+ne7Q49FQrBICBaJH4dHLzb2Rj9Vb+20P+PmbzxVI97fN0uPRUKwSAgWicM11oxi3dKjU/e++96hz92PVI9FQrBICBaJJ9dYpzyrJpt5nmfN5RXr8efpsUgIFgnBIhHWWKfGgXau6WqIPyvOSZxp/1njcL9p+WBb8ItgkRAsEpfGsU7tX7AzFjVqf9TOzvjTTi048zwz3zVDjcWbESwSgkXijcexduqSmetP/WWKWm3U/irrsXgzgkVCsEiE7xU+q2YaKeYZT83ZzbQ5w1whH06wSAgWiUv7vBdzf6fqhnrvhtU2T+2VNfN5R49FQrBICBaJF927YUc9V3hzT6+Z55y5xjgWH0KwSAgWifBM6EfF3gcz33VqDftOrbZ6zcwzjNqp3xWYp8ciIVgkBIvEpRprZPV8mNVrZuzURqfOby7mT1drR+NYvAHBIiFYJMIzoVfPct4Zoxq186wz+3Z+b7G+3jgWH0KwSAgWiXAcqzgTcPWamTpjZ438aExr9d5iDnHmGTp6LBKCRUKwSFx6r3B0zepaoldYR7Xazql5zJFX2APsv/RYJASLhGCRuLQH6Y5Te1YVbRbvBs6o953fp8ciIVgkBItEuB7r0c75xKfWbq+uVR8pqtJizf79uupf3xK1yzcnWCQEi8ST3yt8tDPGc/OMmnofh2Is7Qm7oF3+Pr4JwSIhWCQunaVTn6P8Cvtp7cxdjhTrsUb3mivkDQgWCcEi8eRxrGKPg5tjVKvtr9578+zCs/RYJASLhGCRuPRe4ak9BYq15Df3Tdh5nlNjWnf2DNNjkRAsEoJF4tKa9x2re5mO7h3ZqatGn586G3vmGXbmAbt6S49FQrBICBaJcK5wZ1ynOMvvWedPn9rjdHTNjJn998/SY5EQLBKCReKFzoS+uc5pxqn66VQds/P89+mxSAgWCcEi8UJ7N+xYHacp3n8ctb9z786zPbcm02ORECwSgkXizWqsem/SGcV4WL2v6f2zsfVYJASLhGCRuFRj1fNlp+bp6nMJi3cni3G4fXosEoJFQrBIhDXW/bGTPyvW0a+2vzN3WewTYQ9S3oxgkRAsEuGZ0HxneiwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwS/wAsqdCOxrhEfAAAAABJRU5ErkJggg==', 'sg', 1, '5d57b7730a975a6779078ee4', '1', NULL, NULL, NULL, NULL, 'Blk 402, Bukit Batok Crescent', '#12-456', 'Singapore', 'SIngapore', '680402', 'Singapore', '5d57b7730a975a6779078ee5', NULL),
(128, 'Kooi Heong', 'Chai', 'chai@yopmail.com', '2019-08-17 08:43:39', '845125632', '$2y$10$eyQnFVb41MDhtABWENydxOFFysGihJNi68ip2/1CZTAGrblTzM3Ey', 'active', NULL, '2019-08-17 08:41:39', '2019-08-17 08:48:34', 1, NULL, 'unpaid', 1, 'JDDCA3SZQHK76KJP', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEkUlEQVR4nO3dwa6cOBCG0UmU93/kq9nMgg0jW/aH6c45y4hrulu/nBIUxa+fn59/YLffpz8A30mwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCReLPM6f5/Xt/gu9mEV7PNXvMyN+OGPm+I+s/+bvtZcciIVgkBIvEQzXWVVG7zNZMK3XVyPGz37FY8279Z9ixSAgWCcEicaDGutp1vWekZpqtt2bP9aRdv1vHjkVCsEgIFonDNdYuKzXHrrpqpVb7PnYsEoJFQrBIfEmNdVffzN6D21Wrzd6L3NUH9h52LBKCRUKwSByusXbVEyP1TdGHvtLjtXKf8f11mB2LhGCRECwSB2qsUz1MKz1bu55DHFln5G/f75M+Kx9EsEgIFolf778isqLoYf87r0vNsmORECwSgkXioRprV/0xu05RD42ca6Qv/s6pa2x72bFICBYJwSLx0L3CXfMOVu6vzc6dmu2pWvlexexTsxv4QoJFQrBIfNi9wtm5CXUf+spMh3oO6ll2LBKCRUKwSBx4l87KO2Tq+4a75mDtqpNGnmG8O/6Od+nwwQSLhGCReNGc99n5VU9ev1m5z7hy/N0x7593asciIVgkBIvEB8wgrXu6n6zhVtavj9/LjkVCsEgIFokX1Vj1tZyV+mal1+punWJOxBuu+f139ofPx19CsEgIFokDsxt2vWfmDT3sI+cqvtfIee/ox+KDCRYJwSJxeHbDyP/3s8/lza6zy8j6u/rP3llXXdmxSAgWCcEicXh2w8pzeSPrjNg1j2qX4trV7Prr7FgkBIuEYJF40fsKi/cxr6y/YteciLu/HTnv2fcb2rFICBYJwSJxoMba1av+hrkPd+vv6sFf6aM/W2/ZsUgIFgnBIvGiOe9vm/9UXA8revNXztuxY5EQLBKCReLAnPerlft9K33lI1Z6wmY/58pneE9ddWXHIiFYJASLxOF7hVcrsxhmrwMV78mZvV85e8zVym+l550PJlgkBIvES+dj1X3rTz5LWN8ffCc7FgnBIiFYJA7PeS+u8dRzSkfOO7L+rucKd9Wme9mxSAgWCcEi8aKe9xXFtasn67OrlRkWZ9+fc2XHIiFYJASLxOGe9xWzfVF3ds3z3PVeoJHjZ9d0HYsvIVgkBIvEi3reR6y8C3llntapd1HPvmvo7t+fr7fsWCQEi4RgkTjcj1XPLxhZ58n5Dle7npF8p2/4DryQYJEQLBKHa6zCrt7zXX1Rs59hRL3+OjsWCcEiIVgkvrDGuto1c2vX/bi3zU3t2LFICBYJwSJxeD7WrnV2zdkq3rt86lxmkPKFBIuEYJE4cB2r7jdaqatWeuTv1rxbZ1eNeOp9jv/PjkVCsEgIFokvmY/F29ixSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSPwLAubvbsdFJwYAAAAASUVORK5CYII=', 'us', 0, '5d57be5f0a975a21f89415a4', '0', '#@#RETRY#@#INCOMPLETE_DOCUMENT,GRAPHIC_EDITOR', NULL, NULL, NULL, '132 Perak Drive', '#01-123', 'Perak', 'KL', '0123456', 'Malaysia', '5d57be5f0a975a21f89415a5', NULL),
(129, 'yang', 'Yi', 'yang@yopmail.com', '2019-08-17 09:02:35', '88754215', '$2y$10$dlFD/QdDkWmRfSpx94bIfe7cgUz2MvPv/uQmrc1JxqHEkEAiOr10i', 'active', NULL, '2019-08-17 09:00:03', '2019-08-17 09:16:58', 1, NULL, 'unpaid', 1, 'OV7FRDV75GOGNJQA', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEhklEQVR4nO3dy27lKhRF0aro/v8nR9U9Ha5AMP04GqNZcrATLVFbeBv+/v7+/oHTfu5+AL6TYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIvEf9fc5ufnfIJHexF+3mv1mtV/H5n5fU+Ns+qaPRzNWCQEi4Rgkbioxvq083/8qOZYrY1Wn2G13lodvxhzNP41zFgkBIuEYJG4ocb6dGq959Ra1Oj61Wtqp/5uHTMWCcEiIVgkbq6xTtmpOVbrpFO113efu2bGIiFYJASLxJfUWKP6ZmftanUNrO7xehczFgnBIiFYJG6usU7VFjN1zMz60+qYox6vU7XdyPNrMjMWCcEiIVgkbqix7uph2nmXV3xvuNMX/3xvelZeRLBICBaJv89fEdmxWpes9rzv3GtmzPcyY5EQLBKCReKiGutU/bFTM516npl7narPdtbS7u33MmORECwSgkXioneFV75f2+l5H40zun6m32vmOeu+tOuZsUgIFgnBIvHidaydvaxOrW8V+2nVfV3XMGORECwSgkXiQd8Vru7hvnOvU+OvvhMcWX22nRrRWTq8mGCRECwSN78rXL3+yvWbmfpp5z3j6n1X1/BW73uWGYuEYJEQLBIv2IO0rg92ztVZdWWdpB+LLyRYJASLxIPOhD61JlTvv3BqL/gZxXeI1zBjkRAsEoJF4ub9sU71M9U99TvPcGof+dX7jujH4sUEi4RgkXjBu8Jib89iHehU//7Od5Qzz3YNMxYJwSIhWCQetHfDqb0YTu2/UNxr9b4jz99T3oxFQrBICBaJB9VYn4rv9Wac6m2/8nvD0Tj13+r/mbFICBYJwSLx0PMKT9Ui9VpRsaY1eoZ39b+bsUgIFgnBInFDjVW8ByzWb+7qf59x1zrfPDMWCcEiIVgkLup5P7WvQX3G806v+mpdWJyrs/qzHTMWCcEiIVgkbv6usDjjb3WPq5lxVr8rXH22ned/5pqWGYuEYJEQLBI39LzX61in3hve1f++Os4zmbFICBYJwSLxoBpr5mdH7uptP/Uur9gDYnTNNcxYJASLhGCReOh3haueUFvU616jez3n/JxPZiwSgkVCsEjc0PN+yuq5hyPFO7uiL74+k+csMxYJwSIhWCQedCb0jGLfrNE4xbeKq7970Wuv550XEywSgkXiod8Vfip6qlbHn6lXTq2fFWt+1/uG34EHEiwSgkXiBWdC7yjOQNzZK7XYH7UYf58Zi4RgkRAsEl9YY62uV632Qp3qnVr92RnP+YLBjEVCsEgIFokX7N0wM86p/bGKveZP3cuZ0CBYNASLxA3rWFf2G53aB2Hm+tHPrl5f7AvvXSFfQrBICBaJL9kfi6cxY5EQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJH4BzHJASYXlTFZAAAAAElFTkSuQmCC', 'us', 0, '5d57c2c50a975a6779080f1b', '0', 'Unfortunately, we could not verify your profile. Please, contact the service you want to pass verification for. Or email us: support@sumsub.com#@#FINAL#@#INCONSISTENT_PROFILE', NULL, NULL, NULL, 'blk 123, hello road', '#12-123', 'china', 'china', '123465', 'china', '5d57c2c50a975a6779080f1c', NULL),
(130, 'mcfee', 'low', 'mcfee@yopmail.com', '2019-08-17 09:22:44', '87554212', '$2y$10$72nRy77DcF9CVyPcikaT6.74/I7GrAJwCKU.dxRZDGMWznY3nl0cK', 'active', NULL, '2019-08-17 09:22:05', '2019-08-17 09:33:41', 1, NULL, 'unpaid', 1, 'WK2BAVFDCQJF3SDG', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFCUlEQVR4nO3d0W7jNhRF0U7Q///koC+DgYFWA3LITVnuWo+BQtnBAXNBUZc/vr+//4Ldvu7+AHwmwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBaJv/cO9/W1P6lX72q/3mvlfe6rzzx735HvvjLm7L1m7X0n3oxFQrBICBaJzTXWq6LuGaktZmum2bqnqKtmf3f2mitFrfZz5Ghc/ucEi4RgkQhrrFdFPfE6ZrEWNVsbzdY6I7Xa7Frdrr/zOjMWCcEiIVgkDtVYu4zUN7vqjF33GlE/BzzvE74Db0iwSAgWiYfVWMUeqZHxR67ftb6163fvZcYiIVgkBIvEoRprV60w++xstt6aXbu62qd1NeZsTbbyfe9lxiIhWCQEi0RYY73DM6+V9/Xu+vmsd/g7/9s7fiY+gGCRECwSP95n5aNQrBU9sT/FeWYsEoJFQrBIvFF/rF3rOiM9GorxRxTPDXf9fC8zFgnBIiFYJA6tY638X69rhZW+D1dWvuPVOLv27xd78//jLhvHgl8Ei4RgkdhcY+36/32y5hj5DLt6PYxcP+s917TMWCQEi4Rgkbh5P1bR72q2j+jKnvSTdcyz9maZsUgIFgnBInFoHWtE8f7dybWrk/0pdj17fWUdiwcQLBKCReLm8wpX/t8X7wCujFnUPUXNd6anvBmLhGCRECwS4bPCukfUrnMGZ+915eTZO1eK8xn/jBmLhGCRECwSN/du2NW/auUduvq5213vRc5+nr3MWCQEi4Rgkfjwdaxde9ivrnm1ax9V/U6l/Vg8mGCRECwS4Z73XbXOyL1mf3d2nOIMnPoZ4l179n+OvHEs+EWwSAgWiRvOhH63dZpdvUbrXqazf7d7zzE0Y5EQLBKCReJQjXVl17mBu57rFXXSyn6yK7veGbQfi4cRLBKCRSKssa5qi5VnWEVv9JVrrq4veiis1EMja12eFfIAgkVCsEhsrrF2/S8v+raP2FX/za6NjVxf7FW3jsXDCBYJwSLxRn3er9R75EfuuzLmrjN56vvuZcYiIVgkBIvEofMKix4KV06eM/iU8a9+t2PGIiFYJASLxA37sUZ+ftd62Mj1s/urivWwkZ/P3st+LB5AsEgIFomwz/uud+Vm7zsy5sq+sV1923ed+fM+ZxS+MmORECwSgkXihh6kr4q+6nf1Jr1SP/dcYT8WDyNYJASLxKEa6+qaK7t6rJ98D7E4l7A4n2fXZ/s9MxYJwSIhWCRuqLFGfnfWmbrh9+p1uFn39iM1Y5EQLBKCReLQe4W7FH3YR8aZHbN4d7I4w9E6Fg8jWCQEi0S4532Xor/5iNk+9St751/N9iMteoOtM2ORECwSgkUi7N1w8j3Bk3vtZz/nyfMKVz7DXmYsEoJFQrBIHDoTun4WNmJlfWjl7MVd3+v8WtSKJ31WHkSwSAgWiUM1Vm12fWhXv9CVPVUnezqc7/9uxiIhWCQEi8SH1FivdvUjnb1m1srz0F17y7q1MTMWCcEiIVgkDtVYxR6gon/pyPi79tHPfs4rxZnT68xYJASLhGCROHReYT3+yd7rI06eIbjrzGnPCnkAwSIhWCQe1h+LpzBjkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkfgHOb/0Fn546CsAAAAASUVORK5CYII=', 'us', 0, '5d57c7890a975a21f8947fa1', '0', '#@#RETRY#@#SELFIE_WITH_PAPER', NULL, NULL, NULL, 'blk123 , mario road', '#12-123', 'singapore', 'singapore', '123456', 'singapore', '5d57c7890a975a21f8947fa2', NULL),
(131, 'minggan', 'xiao', 'ming@yopmail.com', '2019-08-17 09:43:28', '8755421', '$2y$10$KiavYBu/bOtiydz07p64VenZbCZUSbPxIi5bqQkHHLIz92U5wAUta', 'active', NULL, '2019-08-17 09:41:34', '2019-08-17 09:54:19', 1, NULL, 'unpaid', 1, 'KICL5B5N6ONQRV54', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEfElEQVR4nO3dwYrcMBBF0WTI/3/ykG1vDBbStdTmnGXosT3JQynk6tLf39/fP7Daz+4H4J0Ei4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCT+PXObn5/1Cb6aRfh5r5nPrPr8lVXXGfXMDEcrFgnBIiFYJB6qsT7N/B9/VXNc1UBXfz5ae9255qfR37G45tX1n2HFIiFYJASLxIYa69Oq/Z47NdCqvairaz5p1d9bx4pFQrBICBaJzTXWKnWtdudeo7XXu89ds2KRECwSgkXiJTXWVX2zqu9qpsdr1b7ad7FikRAsEoJFYnONtaq2uFPH3Nl/ujLa4zXaXzVab51fk1mxSAgWCcEisaHG2tXDNNNHVfR4zfTFn++bnpUvIlgkBIvE3/N3RGaM9kXN9FHN1EDv+1ewYpEQLBKCReKhGmtV/TF6ndF6aLSPavQ56+c5p9/LikVCsEgIFokv63kfrVFm5k6N1jGr3j/OOKeP3opFQrBICBaJzftYq/aoZvaB7jxn8Qx3rnnlnFrqihWLhGCRECwSD+1jjdYBq76jt+oZrtT3mplTP3qvtaxYJASLhGCROKjnvejZevJswTvXLJ7nnLrqkxWLhGCRECwSG86Envn/vjjH5sl3c6N99J+KfbiOFYuEYJEQLBJfdl7hqs8X80JH+72KORG+V8jLCRYJwSKxoef9ye/QnTAfa9XZO1dWzbNYy4pFQrBICBaJzT3vq+ZIrbrOjNHzpFftmY0+2zOsWCQEi4RgkTi0H2v0TMBPT9ZVd655wvz3598bWrFICBYJwSJx6Hys0fdrq55tVU99MVuh6EXrWLFICBYJwSKxeXZDXXut6pGaudcdq57n6pr2sXgJwSIhWCQ297yvOvuvmK1wda/iOk+ew/gMKxYJwSIhWCQ2z25Y9W5r1bvFJ2dfFefqjP5sx4pFQrBICBaJQ8+Ermd1Fntjq875Ge2jP3NPy4pFQrBICBaJL3hXeOead362njt1pX4/eCYrFgnBIiFYJA6dQfrkGXy7aqmiX/6c94ZWLBKCRUKwSBx0JvSMeqbDp3r+1sz8sL3n53yyYpEQLBKCRWLDDNJVVp3l/OSzzfTF12fyrGXFIiFYJASLxIae912zFUbPsRl9hpn7Xil67fW888UEi4Rgkdj8vcIT5heM7g+tql1mZjqc7w2/AwcSLBKCReLQ2Q0zit7zO/XWnXvVM071vPNygkVCsEi8sMZa1as+U/fM1F4z9dA532CwYpEQLBKCReLQ2Q2j1ynOK7yyaiZqfS8zSHkhwSIhWCQ27GPV/UarZpPOvI/7/MxMX9eq2VreFfISgkVCsEi8ZD4Wp7FikRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkfgPlZ7+HcwEwBIAAAAASUVORK5CYII=', 'us', 0, '5d57cc580a975a6779088036', '0', '#@#RETRY#@#INCOMPLETE_DOCUMENT', NULL, NULL, NULL, '132 hello bye', 'yoyoyo', 'china', 'china', '123465', 'china', '5d57cc580a975a6779088037', NULL),
(132, 'cong', 'ming', 'cong@yopmail.com', '2019-08-17 09:59:57', '88754211', '$2y$10$VPWpYUern5AwUsTKrdhm7u3AG3frizEjNrykQp7OU7kYng3k1vWHS', 'active', NULL, '2019-08-17 09:59:43', '2019-08-17 10:04:35', 1, NULL, 'unpaid', 1, 'ZOODH5VSKI3DCWFL', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEg0lEQVR4nO3dwY6jOhCG0ZnWff9Hbs2WDZJ97Q+c6JxlKwHS+lUqmcL8/f39/QO7/bx9AXwnwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBaJ/545zc/P/gTf7UV4PdfsZ0a+O2Lk944c/8n/214qFgnBIiFYJB7qsa6K3mW2Z9rV39wdZ/Y3jvR2dc+3l4pFQrBICBaJF3qsq13rPSN9VdHHPN+7jJ/33XeOqFgkBIuEYJF4ucfa5YR7c3f93Mr1fC4Vi4RgkRAsEl/SY931N7PzVSuzWbPrZ7tmv86kYpEQLBKCReLlHmtXbzHSx9ytLc32PSMzXrP3JVd6wTOpWCQEi4RgkXihx3prhmn2Xt7VrrWolbWrt/5v/88nXSsfRLBICBaJv+eviKxYmYsaWfeaPdfsNXwuFYuEYJEQLBIP9VhPzpLffXfkenada1d/tjLX9e68l4pFQrBICBaJg+axVnqIO/Vc1Mi818q1zTpnjl7FIiFYJASLxMt7kM7ey5vtt+o93FeuYeSYI8c58z6jikVCsEgIFomHeqyVfRNmj7NyDVcrPdPsuVaeYbz7/Oy59lKxSAgWCcEi8cL7Clf6j/r+2qxd8/Ij3125Z2oeiy8hWCQEi8QLzxUW8++nzTOdNi//PBWLhGCRECwSBz1XWLynud5/YWX/0tnjjxznnJktFYuEYJEQLBIH9Vgjds3L333m6snP73q2cYR5LD6YYJEQLBIv91hP7nVe7LN1p94X/sy+6krFIiFYJASLxAs9VjGvffLxZxVrV7PHX6dikRAsEoJF4tB36RQ9Td27jJxrZX2rvje6l4pFQrBICBaJg54rnO1Ldn1m1xpYvQfEZ82/q1gkBIuEYJH4gHWsO8WaTf384wnPGz5DxSIhWCQEi8RBM+9v9Te7jlOvk+26zmeoWCQEi4RgkfiS9xXOevJdPbveaXi16x5iR8UiIVgkBIvEy88V7jrm1cps0+x539rv9HwqFgnBIiFYJF5Yx7p68h18xXuUi5n0O0++o3qdikVCsEgIFolDZ95n7drzc+SYd5/ZZdd+Xeax+EKCRUKwSDy0jvVWL1LPjK/scTWy/lTsSfEMFYuEYJEQLBIvz7zPWtkLaqTnKPZwX+l1VvpI+2PxhQSLhGCROGge687KWtRsXzVyDfWzjcWa3/O+4TdwIMEiIVgkXu6xCnf90MrM+Mq7nEf+vmvvLjPvfDnBIiFYJL6wx9rVD12tzKGPnGvX2tg5TzCoWCQEi4Rgkfiw/bF2vVP5hOcEi/chnrOPg4pFQrBICBaJF9ax6nmju15q17N+VyPHHLmelX1Ni73E1qlYJASLhGCR+JL9sTiNikVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkXiH4FK+xfrMpH8AAAAAElFTkSuQmCC', 'us', 0, '5d57d0390a975a21f894e708', '0', '#@#RETRY#@#SELFIE_WITH_PAPER', NULL, NULL, NULL, 'Blk 402, Bukit Batok Crescent', '#12-456', 'Singapore', 'SIngapore', '680402', 'Singapore', '5d57d0390a975a21f894e709', NULL),
(133, 'Maxsta', 'Dt', 'maxsta@yopmail.com', NULL, '91600674', '$2y$10$kvp3yjGnzULRL5x4NHNZbuvdex0VljE6rxApU8gvOmNMVAlIlGbd6', 'active', NULL, '2019-08-19 07:15:34', '2019-08-19 07:15:34', 1, NULL, 'unpaid', 0, NULL, NULL, 'us', 0, NULL, '0', NULL, NULL, NULL, NULL, 'Singapore', NULL, 'Singapore', 'Singapore', '640640', 'Singapore', NULL, NULL),
(134, 'Max', 'Dt', 'maxsta8@yopmail.com', '2019-08-19 07:21:09', '91600674', '$2y$10$Fy7GGRFWBgMMtngKzJDueeTTO/dyHjXjKzeqBCwYqUInn1tYPFWyq', 'active', NULL, '2019-08-19 07:19:19', '2019-08-19 07:21:25', 1, NULL, 'unpaid', 0, 'T5KMF4NEYKSR5PVJ', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFBUlEQVR4nO3dy27kNhRF0bSR//9kI4P0QECHAWVy62GvNSzILNk4oC8o6vLX5+fnX7Dbx903wPckWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSLx997hPj72J3X0rvbxu1be5x7d83HMs7/XrvuZ+d132ftOvBmLhGCRECwSm2uso6LumaktZmqmmc931XAjZ3+Xs/e/6x6+OHI0Lj+cYJEQLBJhjXU08798plYYrS2dratGtcvZ2u7sOtPZ3/GsXX/ndWYsEoJFQrBIXFRj7bLrud5KPberrrpr/ewaZiwSgkVCsEi8rMbatS51dvyz9dZZM+tn76q3zFgkBIuEYJG4qMYqapGVtaiZ8UfjrOj2P/3rOXWYGYuEYJEQLBJhjVXXE2fvYWYtqvh8ZNc4T/g7/+mJ98Q3IFgkBIvEr+esfBTO7t86+9dYeRb53ueAM8xYJASLhGCReFB/rJV9VKNxVsafqc9mxlx5b3GkWHvby4xFQrBICBaJi9axdtUQo2tW7OrLMPrZosfpjKKvxDwzFgnBIiFYJDbXWEUtNXN9UZOd7ddQPGdcqdXuXdMyY5EQLBKCReLm/Vi7eofuuuZszbGrN0Rdz13PjEVCsEgIFolwHWvXGtXomrP3MGOlf+nb18+sY/ECgkVCsEhs3vNePPubUfcgXXFNTfPnd+3a+//FO4nG5YcTLBKCReLmPe9F3/aVverFmMV63szPHtmPxTchWCQEi8QNfd5XznKeGfOo7o81GnN0D2e/d9eeML0b+CYEi4RgkQj7Y62cqVzsSbrmGdn/f+/o813rW8U7BF9jxiIhWCQEi8TL+mPVPRrOjrPy7PLsPRR7y9RYvIxgkRAsEhedV7irx/rMmGdrpivXeOpeozN/h2uYsUgIFgnBIvGgs3SOinOXj3ad8XxXL4ni+eNeZiwSgkVCsEjc3Od9xpXPDVdc2R9rZRz9sXgxwSIhWCQueq9wZGWv0lv2MNVnRRfvQq4zY5EQLBKCReLm3g0ju85pXqm3RrXUXf26VvafXb83y4xFQrBICBaJ8L3CXb2pdp2FvHIPI8U5zcX4o5/tmLFICBYJwSJxwzrWSL3WUj+b29VfdNd7kSP2Y/FigkVCsEg8dM/7rrNrZly5nlSf8bzrftaZsUgIFgnBIhHWWEW9MjPOyF3n0uw6r7qgxuJlBIuEYJF46HuFK3uqZsZfOYdnpN7LX1yjzzsvI1gkBIvERTXWSv1xtGsd6Mq94XV9Nrpm1/rf15ixSAgWCcEicdF5hbvs6ukwstIfq+gdunJvMz9rHYuXESwSgkXioWfpHO3qsXnl/qeithuN/4R3Nv/jGy/+Pn4IwSIhWCTCZ4V3reWsjDNz/RP2vJ/dQ3bNu4RHZiwSgkVCsEg8aD9W8d7f6PP6mdqu62f6uT/Tm+6VFxEsEoJF4ub3ClesvA9Y752f+fzKZ6DOhOabECwSgkXixTXWSLFnfNc1Z+uhXWta1/foMmORECwSgkXiQWfpnLXrvJp6TajeC/W0+/n9LdG4/HCCRUKwSIQ11pP3D9XPzoq+oEV/Ub0beBnBIiFYJF7WH4u3MGORECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCR+AevB51wZGZGbwAAAABJRU5ErkJggg==', 'us', 0, NULL, '0', NULL, NULL, NULL, NULL, 'Singapore', NULL, 'Singapore', 'Singapore', '640640', 'Singapore', NULL, NULL),
(135, 'Catherine', 'Tay', 'taykl60@gmail.com', NULL, '164888745', '$2y$10$X6uL7tMwQ7FAT6KU24XnPuS1COwL1SpeFD5jr.UCQ5NPftKq6gyxi', 'active', NULL, '2019-08-19 10:30:16', '2019-08-19 10:30:16', 60, NULL, 'unpaid', 0, NULL, NULL, 'my', 0, NULL, '0', NULL, NULL, NULL, NULL, 'Bayan Lepas', NULL, 'Bayan Lepas', 'Pulau Pinang', '11950', 'Malaysia', NULL, NULL),
(136, 'Catherine', 'Tay', 'catherinetay@xinfinity.expert', '2019-08-19 10:45:45', '123466789', '$2y$10$b2YmD94WAVEDPRhEOicdlO1o.4KPv76He.aKBL7W6DbO7exrVEM.e', 'active', 'tnUDD0ZNaW5DyalQSo4ubGHz3x0y0kHHvkOhF0if3FlKpR4lguFj9vr2XPg4', '2019-08-19 10:43:35', '2019-08-19 11:14:09', 1, '1234123412341234', 'assigned', 1, '6NW3S4ZYYNNPRDDB', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFJElEQVR4nO3dwW7cNhSG0Sbo+z+y0U0RaFE1pHU/aWZyzjKQKdr5QVyQFPnj6+vrL5j28+kO8JkEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCT+nm3u58/5pJ59q31815XvuVfaOfu9js/vtjP1rimz38QbsUgIFgnBIjFcYx1N1T0r/777zLFvK3XS2TNnz++2c0Xxd77OiEVCsEgIFomwxjrarXtWnjmrdVaeX+nbnfXWmd0aaOrvfJ0Ri4RgkRAsEjfVWFOu1FK7c0h3zm8ddXNLd/qE34EXJFgkBIvEm9VYu/ucpvZs1fXQZ9RVR5/2+/AiBIuEYJG4qcaaWp/arZmK+a3dd63Ufytt7vbhWUYsEoJFQrBIhDXWK8zNXKlvVtpZsTKv9nlri6/YJz6AYJEQLBLDNVY9j3LW/tR7p+qho6k676yfr8mIRUKwSAgWiR/DpyIFa21T7UydWVXs97ryrmJu7DojFgnBIiFYJIZrrKOV/U9nz99fE6wr+nnnXNfu/8v3GLFICBYJwSLxwJ73qXNEi7rkaGVdcmo9cfddu8/Uf6v/eGPULn84wSIhWCTCeayj+mzMqbmZK+dmrZjqzyvM5/0/IxYJwSIhWCRu+q7wyjxWPe9S139X5rd221lhrZA3JlgkBIvEw3fpTK3HTf3sSjtX3lWfd7XyLmuFvDHBIiFYJIZrrN1v9Kbmq6bqid2zIXbrpytzSLt7rXafmWXEIiFYJASLxAPzWLvnoU+990xR202t/U2dQersBj6EYJEQLBLhGaRTdcPuHM+VuagzV/pZrPetzGmt9KGrt4xYJASLhGCReOAM0ivnY521M7Vmt9L+rnqv+sp7V9pUY/EGBIuEYJF44AzSo7re2n3XyvNFP6fWK1/nfh4jFgnBIiFYJB4+g7Q4k3OlnSttnpmqjeozS1fauc6IRUKwSAgWifC7whVT81hXXDmva2qv1ZW6asWd3xn82/JgW/CLYJEQLBIP78cq7vhb6U+9F+rOd73m/Y9GLBKCRUKwSLzBfqyz56f2XV3p29QzV/qw8rP338ljxCIhWCQEi8Sb7ceqz/y88/z3uv1n7zo0YpEQLBKCRSJcKyzu0SvO9tx157rklf+d+r7q37x9sC34RbBICBaJm+6EXrE7x7PyruJc0KlvD4uz7J+9o/DIiEVCsEgIFokH5rGm9irteoXzsVbUfxNrhbwxwSIhWCRu2o91Zmq/0dRdPVfuqLmzn1eeuWeflhGLhGCRECwSD9wJfbS7F363/TNTZ3VeWaebuotwtz/3MGKRECwSgkUiPLuhUNxLeFSfiVqc47DSjjuh+RCCRUKwSDxwBumuYs5p5fkzU98/7nrqe8nvMWKRECwSgkUiXCsszh2YWl+78y7qleeLuvD+s92PjFgkBIuEYJF4eD/W0ZXv+IqzPXf7Vp9ldc+ZC1Peqa+8EcEiIVgkHv6ucMpu7TV1x9+d59RP7QPzXSFvTLBICBaJN66x7qx7pubJzt571s7UHqxi/9Zv3hi1yx9OsEgIFokH7iss2nzq3sOVNu882724P/F7jFgkBIuEYJF4obt0rrjzTsPdM0un1vim1jdXfvY6IxYJwSIhWCTe7Hws3oURi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi8Q/2NXoee23b7EAAAAASUVORK5CYII=', 'us', 0, '5d5a7f6b0a975a10ed9f6f17', '0', '#@#RETRY#@#BAD_PROOF_OF_IDENTITY,BAD_SELFIE', NULL, NULL, NULL, 'Bayan', NULL, 'Bayan', 'Penang', '11950', 'Malaysia', '5d5a7f6b0a975a10ed9f6f18', NULL),
(137, 'Andy', 'Prakesh', 'andy@antihack.me', '2019-08-19 10:55:47', '8775421', '$2y$10$qmmmEB4SOjN4gQwEn/8ZFeoSJcvYDIPPBy.uqRSwrPFYmrd0uU7c.', 'active', NULL, '2019-08-19 10:51:15', '2019-08-19 11:02:25', 1, '9999888877776666', 'assigned', 1, 'KXC4KL27XOHMI7GQ', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEb0lEQVR4nO3dwY6cOhRF0ZdW/v+TW2/KBMnE3hjQWsMWgarSkXNlX5s/v7+//8FqP7s/AN8kWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSLx957H/PysT/DZWYTHZ9XXnBn5viP3vPN3W8uIRUKwSAgWiZtqrKOZ/+PPao6zeujs73XtNVOTrbrn2f3vYcQiIVgkBIvEhhrraNV8z0hdNfP3kWfdadXv1jFikRAsEoJFYnONtcpMzXG1ZlpVe337vWtGLBKCRUKwSHykxjqrb2Z6qkbmuo6uzpON/Nv3MmKRECwSgkVic421qp4YqW9G5p/OXO3xquuq59dhRiwSgkVCsEhsqLF29TDN9FHNzFGtus+u3+3fvOmz8iKCRUKwSPx5/ozIjKt1ydWe95lnjdzzvYxYJASLhGCReMH5WDPzT6vW6VbtN7xanxX7Je9hxCIhWCQEi8RNNdZM/TFyn1U971f3A470e42o+9LuZ8QiIVgkBIvETWuFRT/TiFXzPavmruq+rucwYpEQLBKCRWJDP1a93nfnO3Dquqqeh+sYsUgIFgnBIrGhH2tmve+oWF+7aqb/febs0+efd2rEIiFYJASLxIP6sXb1dM+8V+eqol/+jH4sPkiwSAgWiResFV616n3PM886U6yTnl1vXyEfJFgkBIvEy2qsuid9xsx5Dbv2AXSMWCQEi4Rgkdi8r3Dk+jOrzo4aMTNfVZ8LP8I8Fh8hWCQEi8SDznlfNc90tS65swa6c//gGfNYvJhgkRAsEpv3FR7deQb6iFXvNLx6zcznKfr0/40Ri4RgkRAsEhvWCo9Wnbd55zt2ir2HRZ/+3v53IxYJwSIhWCQ297yvWgdcdf/6Pkf1exhHru8YsUgIFgnBIvGgnvdVZ2mumjO7+hmKtbz6+3aMWCQEi4RgkbipH+tMvR9w5LlHq+qS4oyJs/s8c07LiEVCsEgIFokHvRP6aKbeWnUmVr137/nnL8wwYpEQLBKCReJBa4VX73N059nuZ1ad3XDncztGLBKCRUKwSDzofKwZT3gv8p3nhdbvcJxnxCIhWCQEi8SG87FWGakhntAzPrPuueosCfNYfIRgkRAsEht63netFY5cv2rf31l9c/W7z9SRzsfigwSLhGCReNC+wjMza2er5rpm5pBm5q7e6wvfgQcSLBKCRWJzjVWY6X+q1+xGPsOIq/WZtUI+QrBICBaJD9ZYR084o2FVDbfq89zDiEVCsEgIFonNNdade/3OnjvTt3TnnNmq6/Vj8WKCRUKwSGyosXb1G9XveJ5ZHyzOWT27/h5GLBKCRUKwSHzkfCyexohFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJF4n/zhAFHs4Q8lQAAAABJRU5ErkJggg==', 'us', 0, '5d5a80c60a975a667704d912', '1', NULL, NULL, NULL, NULL, 'adasfdsdf', 'dfdsf', 'sadfsadf', 'sadfdsa', '23412', 'dsfasfsfdf', '5d5a80c60a975a667704d913', NULL),
(138, 'Max', 'DT', 'disrupttech.test@gmail.com', '2019-08-19 13:30:03', '91600674', '$2y$10$lhiP2sW19FPsZI3inWKQfO3LBTcC4/xTHVn7TKfcYJVpWS9FglxhC', 'active', NULL, '2019-08-19 13:25:18', '2019-08-20 09:18:29', 1, '9575149098850812', 'verified', 1, 'KQXUMTULFBSJZR6T', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAE+klEQVR4nO3dwW7tJhSG0d6o7//IUScdnIlVKHzYTtYaXjm2c/WLbAHe/Pn+/v4Ldvu6+wX4mQSLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJASLhGCRECwSgkVCsEgIFgnBIiFYJP7ee7uvr/1JHflW+/O5n9eP/PvIs0aun73n1f1nr99l7zfxRiwSgkVCsEhsrrE+rfzNvqohZmuRkRpoxOyzPs0+d+V3nFXUav/eObovv5xgkRAsEmGN9Wnkb/lKPbFS34zMe11ZmScbeVYxv3Wmh6MRi4RgkRAsEodqrF1WaojZOmakTrqrLny+n/A78ECCRUKwSLysxpqdB9o1vzX7s1fX/55zQIxYJASLhGCROFRj7aotRuqb2fmnz+tX6raRd5jdFz/7//acGs6IRUKwSAgWibDGqte8Vr4fLK4fqZNWvn9819riE9+JH0CwSAgWiT/PmfmYVezvXtkjP6Le8/4cRiwSgkVCsEg8qD9WUbuMqHs6rLxDMQd2pm4zYpEQLBKCRSKcx9o1T7OrP8Kua+qeW7vW/lb6qa4zYpEQLBKCRWJzjVX3cyq+B1xZT9xVF6545pyWEYuEYJEQLBJhjXXlrvW12XdY2W++a9/VmTmnghGLhGCRECwSm/djzc7ZrMz3rPQ1WDmvsDg/cfZZK/NP1gp5McEiIVgkDs1j1eci7zqzr177W1k/Ldb+rBXyMoJFQrBI3LxWWOwTekKdd1fPqpUaUY3FCwgWCcEiEa4VXtm1DnjyPJwRxZ6qXT1I9W7ghxAsEoJF4oZ5rCsn65Kr60cU65Ir+8NGnN9Hb8QiIVgkBIvEof5YV4q+CbPvcGVXf6xiD9YI+7H4gQSLhGCROHSWzhN6lO+qY+repLPqnqj/jxGLhGCRECwSL5jHenJ/qV1zS/Vertn3WWfEIiFYJASLxOY9759OzveM1Aq7zs9ZeYdPJ+vCq/tbK+RlBIuEYJG4oT/WyTNtdin2qp8899B3hfwQgkVCsEg8dB6rWCNbOQ9npVf77HteGZmLGrn+DCMWCcEiIVgkXjCPVd9zV5/0kXcr9mM986xDIxYJwSIhWCTCGuuu7/6ufnblubM/e/IdZu95xX4sXkCwSAgWiXCtsO5HenX9rne4uk/Rg7Q+b/HM3NUnIxYJwSIhWCRu2I81cs2uvlm7el+NmP3ZYv/77P62T+axeAHBIiFYJMIaa8TK+uDK3vPiu7+V97x6t5W9XCPv1jFikRAsEoJF4uYaa2Uea9ezrsyuwdX7una98xlGLBKCRUKwSBw6S2eXk3vDi/mkkXeov3Mcee46IxYJwSIhWCQ2z2MVa1J3nRtT9B2t323k+jOMWCQEi4RgkTi0533Wrr5Qu/Zd1T1Uiz4L53u7fzJikRAsEoJF4tB+rLqP1KyVbx6vPO386Xu96V15EcEiIVgkbt7zvmLXmdMr5z3v+v6x/h7wfP93IxYJwSIhWCReXGPt6ndV9zhdqW921V7Fd5r/8cTovvxygkVCsEgcqrHqPUB1f6xd71D0uNp1vuFeRiwSgkVCsEg89CydEbN1w137q3b1oy/Ot9a7gZcRLBKCReJl/bF4CyMWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWCcEiIVgkBIuEYJEQLBKCRUKwSAgWiX8AtwTTXjc7WY8AAAAASUVORK5CYII=', 'us', 1, '5d5aa5b70a975a10eda15230', '1', '#@#RETRY#@#BAD_FACE_MATCHING', '240000.0', '0.0', '0.0', '9 Craig Road 03-01', NULL, 'Singapore', 'Singapore', '089669', 'Singapore', '5d5aa5b70a975a10eda15231', NULL),
(139, 'Kumar', 'Muthi', 'kumar.muthi@yopmail.com', NULL, '92353535', '$2y$10$W1zTfLeBEf3G0iyia.urNer9GPrX1HsmwtzCBZ0QaroATO3oiFBqG', 'active', NULL, '2019-08-20 10:19:29', '2019-08-20 10:19:29', 65, NULL, 'unpaid', 0, NULL, NULL, 'sg', 0, NULL, '0', NULL, NULL, NULL, NULL, 'CRAIG ROAD', NULL, 'SINGAPORE', 'Singapore', '018980', 'Singapore', NULL, NULL),
(140, 'Kumar', 'Muthi', 'kumar.muthi1@yopmail.com', '2019-08-20 10:22:20', '92353535', '$2y$10$uVb4.7bMJ03zjD1dpBPS7u1dLKwfzStEg7Gs.3v6a37Y0e76qaoTC', 'active', NULL, '2019-08-20 10:21:24', '2019-08-20 10:35:12', 65, '6600611729000761', 'verified', 1, 'VIQFODGXXKOWWAPF', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAFA0lEQVR4nO3dwY7kJhSG0WSU93/kURYZRbVxAgMftrvPWbbclFX6RV0Bvv7z58+ff8BuP+6+Ab4mwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBaJv/YO9+PH/qSOPKv9+bmf11/dz9U1s5+14uqzRu7nru95nBmLhGCRECwSm2usTyu/2Vc1xGw9dFVLrdQoI/XZSp00+70V3/M6MxYJwSIhWCTCGuvTyG/5bM008vfZdawVK/XWyprW1fVXzvRwNGORECwSgkXiUI21y0oNMVJX7VpbOllXPZMZi4RgkRAsEi+rsXatD508j7Wyb/jeesuMRUKwSAgWiUM11q76YKS+mV2LWqm3Vs6kz57TH/GcOsyMRUKwSAgWibDG6s5T/2P27PmnlbWrlbW02XFWasp7PfGe+AIEi4RgkdhcY9XrKEX9tEuxLnXlOetVV8xYJASLhGCReFB/rJW6ZPZ/ixpo9kzY7P2srIGt7If+HjMWCcEiIVgk/gx/ZQ/ux+1aQ6r7nY6MuUvdl+u/mbFICBYJwSLx0P5Ys70VVsbcZaXfab2Gd3If89fI0bh8c4JFQrBIhOtYu6z0xJpds6n7OKz02VoZ5zwzFgnBIiFYJB7aH6s4S7Syr3f1uSd7Uuz6HuwV8mKCRUKwSIRn3lfOTu36vV/p+T7r3jPm459lr5AXEywSgkXi5r3CXf2idq1R7bq+Pms/O875+s+MRUKwSAgWiZvPvBc91keu2dWz9Opse/Fc5EpPeb0b+CIEi4Rgkbihd8NKvVXUaivrQyPjFP9bPHtoHYsXECwSgkVic421q37aVZcUPVGLuudK/e5Ce4W8jGCRECwSh85j1T0U6nsYsWsd7srJmnKdGYuEYJEQLBKH1rE+rfQaqM+/77qHKys15V17oL/HjEVCsEgIFolDZ9531UZX19f3sFKLjIw5e82ue7BXyMsIFgnBIhHWWCf3zmbfx1zUfCP/u+tZyJHrR1jH4mUEi4Rgkfgifd5X1r1OPnNXnMGvz2n9HjMWCcEiIVgkHtqDdOSauqfUlV013+z4u+7h0FMOBz6Db0iwSAgWiRvWsUb6fNaKs/O7znjN1kbeV8g3IlgkBItE+L7CT7v6to8o9sjqnlh3nUvzvkJeRrBICBaJsHfDyshFn6e610NRr5w8U2UdixcQLBKCReJBe4WfdtU0d+27Xdn1HsOVa84wY5EQLBKCReKGd0Lf1T+z7l9avzNx9pqbn2a48bP5wgSLhGCRuPm5wln39i5fv4fiGcmRezv5zqJfI28cC/4lWCQEi8ShM+8rZs/LF+8lnF27WlmXKtar7BXyRQgWCcEicajP+6xd/QV2rSddjVmfqdr1nOb5PUQzFgnBIiFYJG44j3Xl5HrMSB0zUt/ses/gM9eiVrzpXnkRwSIhWCQe+i6dFUW/9U8re3lFD9LZ+lUPUl5MsEgIFokX11i7zmmNXD+yLjVbz508n1688+d/PjEal29OsEgIFolDNVZxBqjov1D3XNh1Rmrl/NaZs1lmLBKCRUKwSIQ11tPODz2tZ/pK3VO8G9teIS8gWCQEi8TL+mPxFmYsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEoJFQrBICBYJwSIhWCQEi4RgkRAsEn8DwBO7Lo7AUd8AAAAASUVORK5CYII=', 'sg', 1, '5d5bca6b0a975a66770fc3bd', '1', '#@#RETRY#@#SCREENSHOTS', '240000.0', '0.0', '0.0', 'Singapore', NULL, 'Singapore', 'Singapore', '018980', 'Singapore', '5d5bca6b0a975a66770fc3be', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loadcard`
--
ALTER TABLE `loadcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_securities`
--
ALTER TABLE `password_securities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `loadcard`
--
ALTER TABLE `loadcard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `password_securities`
--
ALTER TABLE `password_securities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
