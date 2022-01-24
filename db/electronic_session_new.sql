-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 07:24 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronic_session`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda_item`
--

CREATE TABLE `agenda_item` (
  `id` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `is_accepted` tinyint(4) NOT NULL,
  `is_vote_enabled` tinyint(4) NOT NULL,
  `is_discussion_enabled` tinyint(4) NOT NULL,
  `is_public_voting` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda_item`
--

INSERT INTO `agenda_item` (`id`, `id_session`, `name`, `is_accepted`, `is_vote_enabled`, `is_discussion_enabled`, `is_public_voting`) VALUES
(8, 31, 'Adoption of conlusion', 1, 0, 0, 0),
(9, 31, 'Adoption of agenda items', 0, 0, 0, 0),
(10, 31, 'Questions and notices ', 0, 0, 0, 0),
(12, 39, 'Adoption of agenda items', 1, 0, 0, 0),
(13, 39, 'Adoption of conlusion', 0, 0, 0, 0),
(14, 39, 'Questions and notices ', 0, 0, 0, 0),
(15, 39, 'prvi', 0, 0, 0, 0),
(16, 40, 'Adoption of agenda items ', 0, 0, 0, 0),
(17, 40, 'Adoption of conlusion', 0, 0, 0, 0),
(18, 40, 'Questions and notices ', 0, 0, 0, 0),
(19, 40, 'Predlog 1', 1, 1, 1, 1),
(20, 41, 'Adoption of agenda items ', 0, 0, 0, 0),
(21, 41, 'Adoption of conlusion', 0, 0, 0, 0),
(22, 41, 'Questions and notices ', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'a113edebd174e96ac4ab70ec3c9a2ec6', '2021-09-03 04:43:12'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'a113edebd174e96ac4ab70ec3c9a2ec6', '2021-09-03 04:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Admin'),
(2, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 3),
(2, 10),
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 04:43:35', 1),
(2, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 04:58:40', 1),
(3, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:10:58', 1),
(4, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:21:55', 1),
(5, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:22:35', 1),
(6, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:31:23', 1),
(7, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:38:38', 1),
(8, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:57:29', 1),
(9, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 07:59:47', 1),
(10, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 08:05:33', 1),
(11, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-03 08:17:08', 1),
(12, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-05 23:50:52', 1),
(13, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 02:50:09', 1),
(14, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 03:00:46', 1),
(15, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 03:01:11', 1),
(16, '::1', 'Zika', 4, '2021-09-06 04:13:52', 0),
(17, '::1', 'pera@gmail.com', 3, '2021-09-06 04:23:43', 0),
(18, '::1', 'pera@gmail.com', 3, '2021-09-06 04:26:27', 1),
(19, '::1', 'pera@gmail.com', 3, '2021-09-06 04:27:33', 1),
(20, '::1', 'pera@gmail.com', 3, '2021-09-06 04:28:52', 1),
(21, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 04:34:13', 1),
(22, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:22:14', 1),
(23, '::1', 'pera@gmail.com', 3, '2021-09-06 05:22:54', 1),
(24, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:23:19', 1),
(25, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:24:08', 1),
(26, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:24:39', 1),
(27, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:28:41', 1),
(28, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:31:30', 1),
(29, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 05:33:53', 1),
(30, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 06:13:36', 1),
(31, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 06:15:17', 1),
(32, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 07:10:30', 1),
(33, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 07:39:48', 1),
(34, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 07:42:50', 1),
(35, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 07:48:34', 1),
(36, '::1', 'pera@gmail.com', 3, '2021-09-06 07:49:48', 1),
(37, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:17:15', 1),
(38, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:20:53', 1),
(39, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:28:03', 1),
(40, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:29:11', 1),
(41, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:33:26', 1),
(42, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-06 09:34:14', 1),
(43, '::1', 'Mika', NULL, '2021-09-07 01:59:45', 0),
(44, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 02:34:09', 1),
(45, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 02:37:06', 1),
(46, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 02:37:35', 1),
(47, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:08:25', 1),
(48, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:22:04', 1),
(49, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:24:35', 1),
(50, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:26:22', 1),
(51, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:31:19', 1),
(52, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 03:45:06', 1),
(53, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 04:14:27', 1),
(54, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:10:33', 1),
(55, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:10:54', 1),
(56, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:13:43', 1),
(57, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:15:31', 1),
(58, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:24:20', 1),
(59, '::1', 'pera@gmail.com', 3, '2021-09-07 05:25:01', 1),
(60, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:28:32', 1),
(61, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:28:51', 1),
(62, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:29:03', 1),
(63, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:30:07', 1),
(64, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:30:37', 1),
(65, '::1', 'Pera', NULL, '2021-09-07 05:32:34', 0),
(66, '::1', 'pera@gmail.com', 3, '2021-09-07 05:32:54', 1),
(67, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 05:33:25', 1),
(68, '::1', 'pera@gmail.com', 3, '2021-09-07 05:34:07', 1),
(69, '::1', 'pera@gmail.com', 3, '2021-09-07 05:36:54', 1),
(70, '::1', 'pera@gmail.com', 3, '2021-09-07 05:44:43', 1),
(71, '::1', 'pera@gmail.com', 3, '2021-09-07 05:59:50', 1),
(72, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 06:00:31', 1),
(73, '::1', 'pera@gmail.com', 3, '2021-09-07 06:47:28', 1),
(74, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 06:52:24', 1),
(75, '::1', 'pera@gmail.com', 3, '2021-09-07 06:52:52', 1),
(76, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 06:53:31', 1),
(77, '::1', 'pera@gmail.com', 3, '2021-09-07 06:53:56', 1),
(78, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 06:54:49', 1),
(79, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 06:55:30', 1),
(80, '::1', 'pera@gmail.com', 3, '2021-09-07 06:56:25', 1),
(81, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:13:17', 1),
(82, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:15:35', 1),
(83, '::1', 'pera@gmail.com', 3, '2021-09-07 07:15:53', 1),
(84, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:28:03', 1),
(85, '::1', 'pera@gmail.com', 3, '2021-09-07 07:31:47', 1),
(86, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:33:03', 1),
(87, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:35:52', 1),
(88, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:38:19', 1),
(89, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:43:55', 1),
(90, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:44:30', 1),
(91, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:45:12', 1),
(92, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:45:51', 1),
(93, '::1', 'pera@gmail.com', 3, '2021-09-07 07:46:11', 1),
(94, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:46:50', 1),
(95, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:47:22', 1),
(96, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:48:11', 1),
(97, '::1', 'Mika', NULL, '2021-09-07 07:50:50', 0),
(98, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:51:15', 1),
(99, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:51:57', 1),
(100, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:52:34', 1),
(101, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:55:59', 1),
(102, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:57:55', 1),
(103, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 07:59:29', 1),
(104, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:00:02', 1),
(105, '::1', 'pera@gmail.com', 3, '2021-09-07 08:00:16', 1),
(106, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:01:15', 1),
(107, '::1', 'pera@gmail.com', 3, '2021-09-07 08:01:39', 1),
(108, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:01:54', 1),
(109, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:02:43', 1),
(110, '::1', 'pera@gmail.com', 3, '2021-09-07 08:03:02', 1),
(111, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:03:26', 1),
(112, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:03:54', 1),
(113, '::1', 'pera@gmail.com', 3, '2021-09-07 08:04:08', 1),
(114, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:05:27', 1),
(115, '::1', 'pera@gmail.com', 3, '2021-09-07 08:05:42', 1),
(116, '::1', 'pera@gmail.com', 3, '2021-09-07 08:05:55', 1),
(117, '::1', 'pera@gmail.com', 3, '2021-09-07 08:06:12', 1),
(118, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:08:25', 1),
(119, '::1', 'pera@gmail.com', 3, '2021-09-07 08:08:36', 1),
(120, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:08:59', 1),
(121, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:09:19', 1),
(122, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:09:46', 1),
(123, '::1', 'pera@gmail.com', 3, '2021-09-07 08:10:12', 1),
(124, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:10:36', 1),
(125, '::1', 'pera@gmail.com', 3, '2021-09-07 08:10:48', 1),
(126, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:14:28', 1),
(127, '::1', 'pera@gmail.com', 3, '2021-09-07 08:14:39', 1),
(128, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:16:20', 1),
(129, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:53:03', 1),
(130, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:53:46', 1),
(131, '::1', 'pera@gmail.com', 3, '2021-09-07 08:53:59', 1),
(132, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 08:54:14', 1),
(133, '::1', 'Mika', NULL, '2021-09-07 09:05:50', 0),
(134, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 09:06:01', 1),
(135, '::1', 'pera@gmail.com', 3, '2021-09-07 09:39:42', 1),
(136, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 09:39:55', 1),
(137, '::1', 'pera@gmail.com', 3, '2021-09-07 09:40:07', 1),
(138, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 09:41:00', 1),
(139, '::1', 'pera@gmail.com', 3, '2021-09-07 09:41:16', 1),
(140, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 10:14:41', 1),
(141, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:46:39', 1),
(142, '::1', 'pera@gmail.com', 3, '2021-09-07 12:47:28', 1),
(143, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:48:14', 1),
(144, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:49:22', 1),
(145, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:49:34', 1),
(146, '::1', 'pera@gmail.com', 3, '2021-09-07 12:49:46', 1),
(147, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:50:08', 1),
(148, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-07 12:50:28', 1),
(149, '::1', 'pera@gmail.com', 3, '2021-09-07 12:50:48', 1),
(150, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 02:36:11', 1),
(151, '::1', 'pera@gmail.com', 3, '2021-09-08 02:36:27', 1),
(152, '::1', 'pera@gmail.com', 3, '2021-09-08 02:37:30', 1),
(153, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 02:37:44', 1),
(154, '::1', 'pera@gmail.com', 3, '2021-09-08 02:40:13', 1),
(155, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 04:23:21', 1),
(156, '::1', 'pera@gmail.com', 3, '2021-09-08 04:35:33', 1),
(157, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 04:40:45', 1),
(158, '::1', 'pera@gmail.com', 3, '2021-09-08 04:59:40', 1),
(159, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 05:08:47', 1),
(160, '::1', 'pera@gmail.com', 3, '2021-09-08 05:10:53', 1),
(161, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 05:16:20', 1),
(162, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 05:59:58', 1),
(163, '::1', 'pera@gmail.com', 3, '2021-09-08 06:01:44', 1),
(164, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 07:23:44', 1),
(165, '::1', 'ika@gmail.com', 11, '2021-09-08 08:01:34', 1),
(166, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 10:14:35', 1),
(167, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 10:15:56', 1),
(168, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 10:20:04', 1),
(169, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 10:20:44', 1),
(170, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 12:06:36', 1),
(171, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 12:07:29', 1),
(172, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-08 12:09:35', 1),
(173, '::1', 'pera@gmail.com', 3, '2021-09-08 12:13:11', 1),
(174, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-09 03:02:56', 1),
(175, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-09 03:03:14', 1),
(176, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-09 03:03:25', 1),
(177, '::1', 'pera@gmail.com', 3, '2021-09-09 03:03:37', 1),
(178, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-09 04:21:43', 1),
(179, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-09 04:21:59', 1),
(180, '::1', 'pera@gmail.com', 3, '2021-09-09 07:48:51', 1),
(181, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-13 02:45:56', 1),
(182, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-13 06:47:20', 1),
(183, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-14 02:27:08', 1),
(184, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-14 06:15:24', 1),
(185, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-14 07:46:54', 1),
(186, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-15 05:23:58', 1),
(187, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 03:31:18', 1),
(188, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 05:55:54', 1),
(189, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 06:17:14', 1),
(190, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 06:19:42', 1),
(191, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 06:20:01', 1),
(192, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 07:37:59', 1),
(193, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 07:41:25', 1),
(194, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 08:10:58', 1),
(195, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 08:12:48', 1),
(196, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 08:13:07', 1),
(197, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-16 08:14:12', 1),
(198, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-17 03:59:58', 1),
(199, '::1', 'pera@gmail.com', 3, '2021-09-17 04:39:37', 1),
(200, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-17 04:52:01', 1),
(201, '::1', 'pera@gmail.com', 3, '2021-09-17 04:52:30', 1),
(202, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-17 05:43:00', 1),
(203, '::1', 'pera@gmail.com', 3, '2021-09-17 05:51:54', 1),
(204, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-19 12:14:00', 1),
(205, '::1', 'Pera', NULL, '2021-09-19 12:18:59', 0),
(206, '::1', 'pera@gmail.com', 3, '2021-09-19 12:19:07', 1),
(207, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-19 13:06:04', 1),
(208, '::1', 'pera@gmail.com', 3, '2021-09-19 13:06:25', 1),
(209, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-19 13:43:43', 1),
(210, '::1', 'pera@gmail.com', 3, '2021-09-19 13:56:59', 1),
(211, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-21 06:33:10', 1),
(212, '::1', 'pera@gmail.com', 3, '2021-09-21 06:37:16', 1),
(213, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-24 02:17:36', 1),
(214, '::1', 'pera@gmail.com', 3, '2021-09-24 02:52:09', 1),
(215, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-24 03:05:28', 1),
(216, '::1', 'mikaorganizator@gmail.com', 1, '2021-09-24 03:47:41', 1),
(217, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-06 03:51:40', 1),
(218, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-20 03:09:49', 1),
(219, '::1', 'pera@gmail.com', 3, '2021-10-20 04:24:53', 1),
(220, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-20 04:28:33', 1),
(221, '::1', 'pera@gmail.com', 3, '2021-10-20 07:32:01', 1),
(222, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-20 08:24:40', 1),
(223, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-20 11:46:33', 1),
(224, '::1', 'pera@gmail.com', 3, '2021-10-21 02:17:12', 1),
(225, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-21 02:20:09', 1),
(226, '::1', 'pera@gmail.com', 3, '2021-10-21 02:25:58', 1),
(227, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-21 02:26:31', 1),
(228, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-21 06:01:36', 1),
(229, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-21 12:03:17', 1),
(230, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-22 04:12:09', 1),
(231, '::1', 'pera@gmail.com', 3, '2021-10-22 06:20:15', 1),
(232, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-22 06:21:16', 1),
(233, '::1', 'pera@gmail.com', 3, '2021-10-22 08:06:03', 1),
(234, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-22 09:38:28', 1),
(235, '::1', 'pera@gmail.com', 3, '2021-10-22 09:55:45', 1),
(236, '::1', 'pera@gmail.com', 3, '2021-10-22 09:57:09', 1),
(237, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-22 23:38:23', 1),
(238, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-23 12:53:22', 1),
(239, '::1', 'pera@gmail.com', 3, '2021-10-23 12:59:31', 1),
(240, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-23 12:59:48', 1),
(241, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-24 01:35:53', 1),
(242, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-25 13:28:48', 1),
(243, '::1', 'pera@gmail.com', 3, '2021-10-25 14:42:20', 1),
(244, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-25 14:43:07', 1),
(245, '::1', 'mikaorganizator@gmail.com', 1, '2021-10-25 18:22:14', 1),
(246, '::1', 'pera@gmail.com', 3, '2021-10-25 18:22:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(3, 'create_session', 'Permission to create a session.');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_agenda_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `id_user`, `id_agenda_item`) VALUES
(1, 'kkkk', 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `is_material` tinyint(4) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_agenda_item` int(11) DEFAULT NULL,
  `filename` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1630657273, 1);

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `content_observation` varchar(250) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `archived` tinyint(4) NOT NULL,
  `conclusion` varchar(1000) NOT NULL,
  `active_from` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_public` tinyint(4) NOT NULL,
  `discussion_until` timestamp NOT NULL DEFAULT current_timestamp(),
  `active_until` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `name`, `id_user`, `archived`, `conclusion`, `active_from`, `is_public`, `discussion_until`, `active_until`) VALUES
(28, 'dadas', 1, 1, '', '2021-09-19 17:15:08', 0, '2021-09-16 12:38:05', '2021-09-16 12:38:05'),
(29, 'nnnn', 1, 1, '', '2021-09-24 07:18:45', 0, '2021-09-19 17:15:39', '2021-09-19 17:15:39'),
(31, 'Nova sednica', 1, 1, 'bbb', '2021-10-25 12:37:52', 0, '2021-09-24 08:06:15', '2021-09-24 08:06:15'),
(39, 'Dnevni red', 1, 1, 'hjkhkjhjk', '2021-10-25 12:43:40', 0, '2021-10-25 12:38:31', '2021-10-25 12:38:31'),
(40, 'Ponedeljak', 1, 1, 'zakljucak', '2021-10-25 16:51:04', 0, '2021-10-25 16:23:36', '2021-10-25 16:23:36'),
(41, 'bla', 1, 1, 'ggg', '2021-10-25 17:17:03', 0, '2021-10-25 17:16:49', '2021-10-25 17:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mikaorganizator@gmail.com', 'Mika', '$2y$10$ougLDpVbSoE0tRv4bM0.3.7A9TAK1DhV8p9mOqHCaqca1ZBumnd0i', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-09-03 04:42:56', '2021-09-03 04:43:12', NULL),
(3, 'pera@gmail.com', 'Pera', '$2y$10$kkMpVaAfSRAIev1VdUiBBOfhWPmTuoSa/YBVS2Gh42tqw7HmhoUs.', NULL, NULL, NULL, '95dd3664cd892a412e27d0be8b416202', NULL, NULL, 1, 0, '2021-09-06 04:05:52', '2021-09-06 04:05:52', NULL),
(10, 'zika@gmail.com', 'Zika', '$2y$10$w56TTd15btU6JF1v5o0aqu7hlZ2eWR5rznodYtw2Icj./iXFUg0eG', NULL, NULL, NULL, 'fa6fe03947d93552fa9bd6dfe2174fe7', NULL, NULL, 1, 0, '2021-09-08 07:51:15', '2021-09-08 07:51:15', NULL),
(11, 'ika@gmail.com', 'Ika', '$2y$10$taxb7G.vzf87s7qNYGuSru8jmmCzDls/6.4aNEY2aAo1VnqAxWgG2', NULL, NULL, NULL, '68b5a0b798c724126feb0156517f1858', NULL, NULL, 1, 0, '2021-09-08 07:55:39', '2021-09-08 07:55:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_agenda_item_access`
--

CREATE TABLE `user_agenda_item_access` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_agenda_item` int(11) NOT NULL,
  `enable_voting` tinyint(4) NOT NULL,
  `enable_discussion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_agenda_item_access`
--

INSERT INTO `user_agenda_item_access` (`id_user`, `id_agenda_item`, `enable_voting`, `enable_discussion`) VALUES
(3, 15, 1, 1),
(3, 19, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `id` int(11) NOT NULL,
  `for` tinyint(4) NOT NULL,
  `against` tinyint(4) NOT NULL,
  `restrained` tinyint(4) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_agenda_item` int(11) NOT NULL,
  `date_voted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`id`, `for`, `against`, `restrained`, `id_user`, `id_agenda_item`, `date_voted`) VALUES
(1, 1, 0, 0, 3, 19, '2021-10-25 16:25:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda_item`
--
ALTER TABLE `agenda_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agenda_item_session_idx` (`id_session`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_user1_idx` (`id_user`),
  ADD KEY `fk_comment_agenda_item1_idx` (`id_agenda_item`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_document_user1_idx` (`id_user`),
  ADD KEY `fk_document_agenda_item1_idx` (`id_agenda_item`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_observation_user1_idx` (`id_user`),
  ADD KEY `fk_observation_session1_idx` (`id_session`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_session_users` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_agenda_item_access`
--
ALTER TABLE `user_agenda_item_access`
  ADD PRIMARY KEY (`id_user`,`id_agenda_item`),
  ADD KEY `fk_user_has_agenda_item_agenda_item1_idx` (`id_agenda_item`),
  ADD KEY `fk_user_has_agenda_item_user1_idx` (`id_user`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_voting_user1_idx` (`id_user`),
  ADD KEY `fk_voting_agenda_item1_idx` (`id_agenda_item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda_item`
--
ALTER TABLE `agenda_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agenda_item`
--
ALTER TABLE `agenda_item`
  ADD CONSTRAINT `fk_agenda_item_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_agenda_item1` FOREIGN KEY (`id_agenda_item`) REFERENCES `agenda_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_document_agenda_item1` FOREIGN KEY (`id_agenda_item`) REFERENCES `agenda_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_document_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `remark`
--
ALTER TABLE `remark`
  ADD CONSTRAINT `fk_observation_session1` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_remerk_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `fk_session_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_agenda_item_access`
--
ALTER TABLE `user_agenda_item_access`
  ADD CONSTRAINT `fk_user_has_agenda_item_agenda_item1` FOREIGN KEY (`id_agenda_item`) REFERENCES `agenda_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_agenda_item_user1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `voting`
--
ALTER TABLE `voting`
  ADD CONSTRAINT `fk_voting_agenda_item1` FOREIGN KEY (`id_agenda_item`) REFERENCES `agenda_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_voting_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
