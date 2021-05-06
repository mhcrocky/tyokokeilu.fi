-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 04:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(5, 'Summer Job', 'property-type', 'job', 1, 1, '2020-11-18 07:20:08', '2021-01-12 03:05:46', NULL, NULL, NULL),
(6, 'Design Job', 'facilities-1', 'job', 1, NULL, '2020-11-18 07:20:08', '2021-01-12 03:06:08', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'job', NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, NULL, NULL),
(11, 'Event Type', 'event-type', 'event', NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(15, 'Job Category', 'job-category-dsw4', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Location', 'job-location-sda2', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Type', 'job-type-dfa3', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  `wallet_credit_used` double DEFAULT NULL,
  `wallet_total_used` double DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL,
  `is_refund_wallet` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_enquiries`
--

CREATE TABLE `bravo_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_jobs`
--

CREATE TABLE `bravo_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `work_exp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `salary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `contact_email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `duration` int(2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_jobs`
--

INSERT INTO `bravo_jobs` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `work_exp`, `job_type`, `location_id`, `category_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `salary`, `status`, `create_user`, `update_user`, `contact_email`, `contact_phone`, `start_at`, `duration`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 67, NULL, NULL, 'SummerJob', 1, 5, 'Arrondissement de Paris', '19.148665', '72.839670', 12, '{\"main\":\"all\"}', 'publish', 1, 1, 'contact@gamil.com', '23213213213', NULL, 6, NULL, '2020-11-18 07:20:07', '2021-02-05 15:58:57'),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 68, NULL, NULL, 'Practice', 1, 5, 'Porte de Vanves', '19.110390', '72.832764', 12, '{\"hourly\":null}', NULL, 1, 1, '12421@dfa.sdfs', '12312', NULL, 6, NULL, '2020-11-18 07:20:07', '2021-02-04 17:28:03'),
(17, 'Waiter/Waitress at an Indian restaurant in Helsinki centre.', 'job-title', NULL, 203, NULL, 'y15', NULL, 19, 6, NULL, NULL, NULL, NULL, '{\"main\":\"all\"}', 'draft', 1, 24, NULL, NULL, NULL, NULL, NULL, '2021-01-24 16:38:03', '2021-02-05 22:22:38'),
(18, 'Waiter/Waitress at an Indian restaurant in Helsinki centre.', '1', '<p>safsafsafaserewrwe</p>', 204, NULL, NULL, NULL, 17, 6, 'asfsafsafsa', NULL, NULL, NULL, NULL, 'draft', 1, 24, '23432@rew.ewrw', '432432', '2021-01-21', 4, NULL, '2021-01-24 16:45:51', '2021-02-05 22:22:38'),
(19, 'Waiter/Waitress at an Indian restaurant in Helsinki centre.', 'wdwwq', NULL, 205, NULL, 'no', 'Practice', 10, 7, '2421421412', NULL, NULL, NULL, '{\"monthly\":\"3650\"}', 'publish', 1, 24, 'ssaf@sfa.dsf', '234214214', '2021-02-09', 3, NULL, '2021-01-24 16:54:04', '2021-02-05 22:50:11'),
(26, 'test job', 'test-job', '<p>this is job test and test job post and dsfsdfd sss ssssssss sssss ssssss sssss ssss ssssss ssssssssssssssss ssss sssssss sssssss ssssssss sssssssss sssssss ssssss ssssss sss</p>', 181, NULL, 'y01', 'Practice', 20, 1, '21321', NULL, NULL, NULL, NULL, 'publish', 1, NULL, '23213@312.12312', '23112321', '0000-00-00', 1, NULL, '2021-02-24 06:16:48', '2021-02-24 06:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_categories`
--

CREATE TABLE `bravo_job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_categories`
--

INSERT INTO `bravo_job_categories` (`id`, `name`, `slug`, `image_id`, `hidden`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Design', 'design', NULL, 0, 1, 1, NULL, '2021-02-08 15:01:27', '2021-02-16 17:57:42'),
(2, 'Agriculture', 'agriculture', NULL, 0, 1, NULL, NULL, '2021-02-08 15:01:41', '2021-02-08 15:01:41'),
(3, 'Warehouse', 'warehouse', NULL, 0, 1, NULL, NULL, '2021-02-08 15:01:59', '2021-02-08 15:01:59'),
(4, 'Handyman', 'handyman', NULL, 0, 1, 1, NULL, '2021-02-08 15:02:10', '2021-02-16 17:57:32'),
(5, 'Barbershop', 'barbershop', '203', 0, 1, NULL, NULL, '2021-02-08 15:02:24', '2021-02-08 15:02:24'),
(6, 'Restaurant & Bar', 'restaurant-bar', '205', 0, 1, NULL, NULL, '2021-02-08 15:02:39', '2021-02-08 15:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_term`
--

CREATE TABLE `bravo_job_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_term`
--

INSERT INTO `bravo_job_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(34, 43, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(35, 44, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(36, 45, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(37, 46, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(38, 47, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(39, 48, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(40, 42, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(41, 43, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(42, 44, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(43, 45, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(44, 46, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(45, 47, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(46, 48, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(47, 42, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(48, 44, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(49, 45, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(50, 46, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(51, 47, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(52, 42, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(53, 43, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(54, 44, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(55, 45, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(56, 46, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(57, 47, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(58, 48, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(59, 42, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(60, 43, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(61, 44, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(62, 45, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(63, 46, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(64, 48, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(93, 53, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(94, 54, 7, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(95, 50, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(96, 51, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(97, 52, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(98, 55, 8, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(99, 49, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(100, 50, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(101, 51, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(102, 52, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(103, 55, 9, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(104, 49, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(105, 51, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(106, 52, 10, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(107, 50, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(108, 51, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(109, 52, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(110, 55, 11, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_translations`
--

CREATE TABLE `bravo_job_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_translations`
--

INSERT INTO `bravo_job_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `address`, `policy`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 11, 'fi', 'The May Fair Hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 'Paris Cinemas Battery', NULL, 1, NULL, NULL, '2021-01-12 02:14:50', '2021-01-12 02:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Helsinki', '<p>New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...</p>', 'helsinki', 185, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, 1, NULL, NULL, NULL, '2020-11-18 07:20:05', '2021-02-04 15:14:02', 111, '[{\"image_id\":\"112\",\"title\":\"Experiencing the best jazz in Harlem, birthplace of bebop\",\"link\":\"#\",\"content\":\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\"},{\"image_id\":\"113\",\"title\":\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\",\"link\":\"#\",\"content\":\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\"}]'),
(2, 'Lapland', NULL, 'new-york-united-states', 190, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(3, 'Espoo', NULL, 'california', 191, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(4, 'Alajärvi', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(5, 'Alavus', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(6, 'Forssa', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(7, 'Haapajärvi', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(8, 'Haapavesi', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, 1, '2021-02-05 22:20:50', NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 22:20:50', NULL, NULL),
(9, 'Akaa', NULL, 'akaa', NULL, NULL, NULL, 8, 'publish', 17, 18, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:18:30', '2021-02-05 21:18:30', NULL, NULL),
(10, 'Alajärvi', NULL, 'alajarvi', NULL, NULL, NULL, 8, 'publish', 19, 20, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:22:50', '2021-02-05 21:22:50', NULL, NULL),
(11, 'Alavus', NULL, 'alavus', NULL, NULL, NULL, 6, 'publish', 21, 22, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:23:12', '2021-02-05 21:23:12', NULL, NULL),
(12, 'Espoo', NULL, 'espoo', NULL, NULL, NULL, 8, 'publish', 23, 24, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:23:26', '2021-02-05 21:23:26', NULL, NULL),
(13, 'Forssa', NULL, 'forssa', NULL, NULL, NULL, 8, 'publish', 25, 26, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:23:37', '2021-02-05 21:23:37', NULL, NULL),
(14, 'Haapajärvi', NULL, 'haapajarvi', NULL, NULL, NULL, 8, 'publish', 27, 28, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:23:50', '2021-02-05 21:23:50', NULL, NULL),
(15, 'Haapavesi', NULL, 'haapavesi', NULL, NULL, NULL, 8, 'publish', 29, 30, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:24:01', '2021-02-05 21:24:01', NULL, NULL),
(16, 'Hamina', NULL, 'hamina', NULL, NULL, NULL, 8, 'publish', 31, 32, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:24:14', '2021-02-05 21:24:14', NULL, NULL),
(17, 'Hanko', NULL, 'hanko', NULL, NULL, NULL, 8, 'publish', 33, 34, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:24:27', '2021-02-05 21:24:27', NULL, NULL),
(18, 'Harjavalta', NULL, 'harjavalta', NULL, NULL, NULL, 8, 'publish', 35, 36, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:24:38', '2021-02-05 21:24:38', NULL, NULL),
(19, 'Heinola', NULL, 'heinola', NULL, NULL, NULL, 8, 'publish', 37, 38, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:24:52', '2021-02-05 21:24:52', NULL, NULL),
(20, 'Huittinen', NULL, 'huittinen', NULL, NULL, NULL, 8, 'publish', 39, 40, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:25:10', '2021-02-05 21:25:10', NULL, NULL),
(21, 'Hyvinkää', NULL, 'hyvinkaa', NULL, NULL, NULL, 8, 'publish', 41, 42, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:25:21', '2021-02-05 21:25:21', NULL, NULL),
(22, 'Hämeenlinna', NULL, 'hameenlinna', NULL, NULL, NULL, 8, 'publish', 43, 44, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:25:32', '2021-02-05 21:25:32', NULL, NULL),
(23, 'Iisalmi', NULL, 'iisalmi', NULL, NULL, NULL, 8, 'publish', 45, 46, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:26:04', '2021-02-05 21:26:04', NULL, NULL),
(24, 'Ikaalinen', NULL, 'ikaalinen', NULL, NULL, NULL, 8, 'publish', 47, 48, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:26:16', '2021-02-05 21:26:16', NULL, NULL),
(25, 'Imatra', NULL, 'imatra', NULL, NULL, NULL, 8, 'publish', 49, 50, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:26:32', '2021-02-05 21:26:32', NULL, NULL),
(26, 'Joensuu', NULL, 'joensuu', NULL, NULL, NULL, 8, 'publish', 51, 52, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:26:44', '2021-02-05 21:26:44', NULL, NULL),
(27, 'Jyväskylä', NULL, 'jyvaskyla', NULL, NULL, NULL, 8, 'publish', 53, 54, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:26:56', '2021-02-05 21:26:56', NULL, NULL),
(28, 'Jämsä', NULL, 'jamsa', NULL, NULL, NULL, 8, 'publish', 55, 56, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:27:09', '2021-02-05 21:27:09', NULL, NULL),
(29, 'Järvenpää', NULL, 'jarvenpaa', NULL, NULL, NULL, 8, 'publish', 57, 58, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:27:20', '2021-02-05 21:27:20', NULL, NULL),
(30, 'Kaarina', NULL, 'kaarina', NULL, NULL, NULL, 8, 'publish', 59, 60, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:27:32', '2021-02-05 21:27:32', NULL, NULL),
(31, 'Kajaani', NULL, 'kajaani', NULL, NULL, NULL, 8, 'publish', 61, 62, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:27:43', '2021-02-05 21:27:43', NULL, NULL),
(32, 'Kalajoki', NULL, 'kalajoki', NULL, NULL, NULL, 8, 'publish', 63, 64, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:27:53', '2021-02-05 21:27:53', NULL, NULL),
(33, 'Kangasala', NULL, 'kangasala', NULL, NULL, NULL, 8, 'publish', 65, 66, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:28:04', '2021-02-05 21:28:04', NULL, NULL),
(34, 'Kankaanpää', NULL, 'kankaanpaa', NULL, NULL, NULL, 8, 'publish', 67, 68, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:28:17', '2021-02-05 21:28:17', NULL, NULL),
(35, 'Kannus', NULL, 'kannus', NULL, NULL, NULL, 8, 'publish', 69, 70, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:28:27', '2021-02-05 21:28:27', NULL, NULL),
(36, 'Karkkila', NULL, 'karkkila', NULL, NULL, NULL, 7, 'publish', 71, 72, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:28:39', '2021-02-05 21:28:39', NULL, NULL),
(37, 'Kaskinen', NULL, 'kaskinen', NULL, NULL, NULL, 7, 'publish', 73, 74, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:28:49', '2021-02-05 21:28:49', NULL, NULL),
(38, 'Kauhajoki', NULL, 'kauhajoki', NULL, NULL, NULL, 7, 'publish', 75, 76, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:00', '2021-02-05 21:29:00', NULL, NULL),
(39, 'Kauhava', NULL, 'kauhava', NULL, NULL, NULL, 7, 'publish', 77, 78, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:10', '2021-02-05 21:29:10', NULL, NULL),
(40, 'Kauniainen', NULL, 'kauniainen', NULL, NULL, NULL, 7, 'publish', 79, 80, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:21', '2021-02-05 21:29:21', NULL, NULL),
(41, 'Kemi', NULL, 'kemi', NULL, NULL, NULL, 7, 'publish', 81, 82, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:32', '2021-02-05 21:29:32', NULL, NULL),
(42, 'Kemijärvi', NULL, 'kemijarvi', NULL, NULL, NULL, 8, 'publish', 83, 84, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:43', '2021-02-05 21:29:43', NULL, NULL),
(43, 'Kerava', NULL, 'kerava', NULL, NULL, NULL, 8, 'publish', 85, 86, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:29:55', '2021-02-05 21:29:55', NULL, NULL),
(44, 'Keuruu', NULL, 'keuruu', NULL, NULL, NULL, 7, 'publish', 87, 88, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:06', '2021-02-05 21:30:06', NULL, NULL),
(45, 'Kitee', NULL, 'kitee', NULL, NULL, NULL, 7, 'publish', 89, 90, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:16', '2021-02-05 21:30:16', NULL, NULL),
(46, 'Kiuruvesi', NULL, 'kiuruvesi', NULL, NULL, NULL, 7, 'publish', 91, 92, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:27', '2021-02-05 21:30:27', NULL, NULL),
(47, 'Kokemäki', NULL, 'kokemaki', NULL, NULL, NULL, 7, 'publish', 93, 94, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:38', '2021-02-05 21:30:38', NULL, NULL),
(48, 'Kokkola', NULL, 'kokkola', NULL, NULL, NULL, 8, 'publish', 95, 96, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:49', '2021-02-05 21:30:49', NULL, NULL),
(49, 'Kotka', NULL, 'kotka', NULL, NULL, NULL, 8, 'publish', 97, 98, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:30:59', '2021-02-05 21:30:59', NULL, NULL),
(50, 'Kouvola', NULL, 'kouvola', NULL, NULL, NULL, 8, 'publish', 99, 100, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:31:10', '2021-02-05 21:31:10', NULL, NULL),
(51, 'Kristiinankaupunki', NULL, 'kristiinankaupunki', NULL, NULL, NULL, 8, 'publish', 101, 102, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:31:23', '2021-02-05 21:31:23', NULL, NULL),
(52, 'Kuhmo', NULL, 'kuhmo', NULL, NULL, NULL, 8, 'publish', 103, 104, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:31:36', '2021-02-05 21:31:36', NULL, NULL),
(53, 'Kuopio', NULL, 'kuopio', NULL, NULL, NULL, 8, 'publish', 105, 106, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:31:48', '2021-02-05 21:31:48', NULL, NULL),
(54, 'Kurikka', NULL, 'kurikka', NULL, NULL, NULL, 8, 'publish', 107, 108, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:32:01', '2021-02-05 21:32:01', NULL, NULL),
(55, 'Kuusamo', NULL, 'kuusamo', NULL, NULL, NULL, 7, 'publish', 109, 110, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:32:15', '2021-02-05 21:32:15', NULL, NULL),
(56, 'Lahti', NULL, 'lahti', NULL, NULL, NULL, 8, 'publish', 111, 112, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:32:25', '2021-02-05 21:32:25', NULL, NULL),
(57, 'Laitila', NULL, 'laitila', NULL, NULL, NULL, 7, 'publish', 113, 114, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:32:36', '2021-02-05 21:32:36', NULL, NULL),
(58, 'Lappeenranta', NULL, 'lappeenranta', NULL, NULL, NULL, 8, 'publish', 115, 116, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:32:50', '2021-02-05 21:32:50', NULL, NULL),
(59, 'Lapua', NULL, 'lapua', NULL, NULL, NULL, 8, 'publish', 117, 118, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:33:04', '2021-02-05 21:33:04', NULL, NULL),
(60, 'Lieksa', NULL, 'lieksa', NULL, NULL, NULL, 8, 'publish', 119, 120, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:33:15', '2021-02-05 21:33:15', NULL, NULL),
(61, 'Lohja', NULL, 'lohja', NULL, NULL, NULL, 8, 'publish', 121, 122, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:36:50', '2021-02-05 21:36:50', NULL, NULL),
(62, 'Loimaa', NULL, 'loimaa', NULL, NULL, NULL, 8, 'publish', 123, 124, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:37:07', '2021-02-05 21:37:07', NULL, NULL),
(63, 'Loviisa', NULL, 'loviisa', NULL, NULL, NULL, 6, 'publish', 125, 126, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:37:23', '2021-02-05 21:37:23', NULL, NULL),
(64, 'Maarianhamina', NULL, 'maarianhamina', NULL, NULL, NULL, 8, 'publish', 127, 128, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:37:41', '2021-02-05 21:37:41', NULL, NULL),
(65, 'Mikkeli', NULL, 'mikkeli', NULL, NULL, NULL, 7, 'publish', 129, 130, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:37:51', '2021-02-05 21:37:51', NULL, NULL),
(66, 'Mänttä-Vilppula', NULL, 'mantta-vilppula', NULL, NULL, NULL, 8, 'publish', 131, 132, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:38:04', '2021-02-05 21:38:04', NULL, NULL),
(67, 'Naantali', NULL, 'naantali', NULL, NULL, NULL, 7, 'publish', 133, 134, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:38:14', '2021-02-05 21:38:14', NULL, NULL),
(68, 'Nivala', NULL, 'nivala', NULL, NULL, NULL, 8, 'publish', 135, 136, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:38:26', '2021-02-05 21:38:26', NULL, NULL),
(69, 'Nokia', NULL, 'nokia', NULL, NULL, NULL, 8, 'publish', 137, 138, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:38:39', '2021-02-05 21:38:39', NULL, NULL),
(70, 'Nurmes', NULL, 'nurmes', NULL, NULL, NULL, 8, 'publish', 139, 140, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:38:50', '2021-02-05 21:38:50', NULL, NULL),
(71, 'Närpiö', NULL, 'narpio', NULL, NULL, NULL, 8, 'publish', 141, 142, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:39:03', '2021-02-05 21:39:03', NULL, NULL),
(72, 'Orimattila', NULL, 'orimattila', NULL, NULL, NULL, 8, 'publish', 143, 144, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:40:40', '2021-02-05 21:40:40', NULL, NULL),
(73, 'Orivesi', NULL, 'orivesi', NULL, NULL, NULL, 8, 'publish', 145, 146, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:40:51', '2021-02-05 21:40:51', NULL, NULL),
(74, 'Oulainen', NULL, 'oulainen', NULL, NULL, NULL, 6, 'publish', 147, 148, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:41:02', '2021-02-05 21:41:02', NULL, NULL),
(75, 'Oulu', NULL, 'oulu', NULL, NULL, NULL, 8, 'publish', 149, 150, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:41:16', '2021-02-05 21:41:16', NULL, NULL),
(76, 'Outokumpu', NULL, 'outokumpu', NULL, NULL, NULL, 8, 'publish', 151, 152, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:41:30', '2021-02-05 21:41:30', NULL, NULL),
(77, 'Paimio', NULL, 'paimio', NULL, NULL, NULL, 8, 'publish', 153, 154, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:41:41', '2021-02-05 21:41:41', NULL, NULL),
(78, 'Parainen', NULL, 'parainen', NULL, NULL, NULL, 8, 'publish', 155, 156, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:41:52', '2021-02-05 21:41:52', NULL, NULL),
(79, 'Parkano', NULL, 'parkano', NULL, NULL, NULL, 8, 'publish', 157, 158, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:42:02', '2021-02-05 21:42:02', NULL, NULL),
(80, 'Pieksämäki', NULL, 'pieksamaki', NULL, NULL, NULL, 8, 'publish', 159, 160, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:42:15', '2021-02-05 21:42:15', NULL, NULL),
(81, 'Pietarsaari', NULL, 'pietarsaari', NULL, NULL, NULL, 8, 'publish', 161, 162, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:42:29', '2021-02-05 21:42:29', NULL, NULL),
(82, 'Pori', NULL, 'pori', NULL, NULL, NULL, 8, 'publish', 163, 164, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:42:39', '2021-02-05 21:42:39', NULL, NULL),
(83, 'Porvoo', NULL, 'porvoo', NULL, NULL, NULL, 6, 'publish', 165, 166, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:42:51', '2021-02-05 21:42:51', NULL, NULL),
(84, 'Pudasjärvi', NULL, 'pudasjarvi', NULL, NULL, NULL, 8, 'publish', 167, 168, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:43:05', '2021-02-05 21:43:05', NULL, NULL),
(85, 'Pyhäjärvi', NULL, 'pyhajarvi', NULL, NULL, NULL, 8, 'publish', 169, 170, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:43:17', '2021-02-05 21:43:17', NULL, NULL),
(86, 'Raahe', NULL, 'raahe', NULL, NULL, NULL, 8, 'publish', 171, 172, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:43:28', '2021-02-05 21:43:28', NULL, NULL),
(87, 'Raasepori', NULL, 'raasepori', NULL, NULL, NULL, 8, 'publish', 173, 174, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:43:38', '2021-02-05 21:43:38', NULL, NULL),
(88, 'Raisio', NULL, 'raisio', NULL, NULL, NULL, 8, 'publish', 175, 176, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:43:50', '2021-02-05 21:43:50', NULL, NULL),
(89, 'Rauma', NULL, 'rauma', NULL, NULL, NULL, 8, 'publish', 177, 178, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:44:01', '2021-02-05 21:44:01', NULL, NULL),
(90, 'Riihimäki', NULL, 'riihimaki', NULL, NULL, NULL, 8, 'publish', 179, 180, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:44:14', '2021-02-05 21:44:14', NULL, NULL),
(91, 'Rovaniemi', NULL, 'rovaniemi', NULL, NULL, NULL, 8, 'publish', 181, 182, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:44:27', '2021-02-05 21:44:27', NULL, NULL),
(92, 'Saarijärvi', NULL, 'saarijarvi', NULL, NULL, NULL, 8, 'publish', 183, 184, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:44:39', '2021-02-05 21:44:39', NULL, NULL),
(93, 'Salo', NULL, 'salo', NULL, NULL, NULL, 8, 'publish', 185, 186, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:44:50', '2021-02-05 21:44:50', NULL, NULL),
(94, 'Sastamala', NULL, 'sastamala', NULL, NULL, NULL, 8, 'publish', 187, 188, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:45:02', '2021-02-05 21:45:02', NULL, NULL),
(95, 'Savonlinna', NULL, 'savonlinna', NULL, NULL, NULL, 8, 'publish', 189, 190, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:45:13', '2021-02-05 21:45:13', NULL, NULL),
(96, 'Seinäjoki', NULL, 'seinajoki', NULL, NULL, NULL, 8, 'publish', 191, 192, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:46:26', '2021-02-05 21:46:26', NULL, NULL),
(97, 'Somero', NULL, 'somero', NULL, NULL, NULL, 8, 'publish', 193, 194, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:46:54', '2021-02-05 21:46:54', NULL, NULL),
(98, 'Suonenjoki', NULL, 'suonenjoki', NULL, NULL, NULL, 8, 'publish', 195, 196, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:47:12', '2021-02-05 21:47:12', NULL, NULL),
(99, 'Tampere', NULL, 'tampere', NULL, NULL, NULL, 8, 'publish', 197, 198, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:47:39', '2021-02-05 21:47:39', NULL, NULL),
(100, 'Tornio', NULL, 'tornio', NULL, NULL, NULL, 8, 'publish', 199, 200, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:47:53', '2021-02-05 21:47:53', NULL, NULL),
(101, 'Turku', NULL, 'turku', NULL, NULL, NULL, 6, 'publish', 201, 202, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:48:10', '2021-02-05 21:48:10', NULL, NULL),
(102, 'Ulvila', NULL, 'ulvila', NULL, NULL, NULL, 8, 'publish', 203, 204, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:48:27', '2021-02-05 21:48:27', NULL, NULL),
(103, 'Uusikaarlepyy', NULL, 'uusikaarlepyy', NULL, NULL, NULL, 8, 'publish', 205, 206, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:48:43', '2021-02-05 21:48:43', NULL, NULL),
(104, 'Uusikaupunki', NULL, 'uusikaupunki', NULL, NULL, NULL, 8, 'publish', 207, 208, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:49:29', '2021-02-05 21:49:29', NULL, NULL),
(105, 'Vaasa', NULL, 'vaasa', NULL, NULL, NULL, 8, 'publish', 209, 210, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:49:40', '2021-02-05 21:49:40', NULL, NULL),
(106, 'Valkeakoski', NULL, 'valkeakoski', NULL, NULL, NULL, 8, 'publish', 211, 212, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:01', '2021-02-05 21:50:01', NULL, NULL),
(107, 'Vantaa', NULL, 'vantaa', NULL, NULL, NULL, 8, 'publish', 213, 214, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:14', '2021-02-05 21:50:14', NULL, NULL),
(108, 'Varkaus', NULL, 'varkaus', NULL, NULL, NULL, 8, 'publish', 215, 216, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:26', '2021-02-05 21:50:26', NULL, NULL),
(109, 'Viitasaari', NULL, 'viitasaari', NULL, NULL, NULL, 8, 'publish', 217, 218, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:36', '2021-02-05 21:50:36', NULL, NULL),
(110, 'Virrat', NULL, 'virrat', NULL, NULL, NULL, 8, 'publish', 219, 220, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:49', '2021-02-05 21:50:49', NULL, NULL),
(111, 'Ylivieska', NULL, 'ylivieska', NULL, NULL, NULL, 8, 'publish', 221, 222, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:50:59', '2021-02-05 21:50:59', NULL, NULL),
(112, 'Ylöjärvi', NULL, 'ylojarvi', NULL, NULL, NULL, 8, 'publish', 223, 224, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:51:10', '2021-02-05 21:51:10', NULL, NULL),
(113, 'Ähtäri', NULL, 'ahtari', NULL, NULL, NULL, 8, 'publish', 225, 226, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:51:25', '2021-02-05 21:51:25', NULL, NULL),
(114, 'Äänekoski', NULL, 'aanekoski', NULL, NULL, NULL, 8, 'publish', 227, 228, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 21:51:37', '2021-02-05 21:51:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 10, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(2, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 16, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(3, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(4, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 13, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(5, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(6, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 14, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 4),
(7, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 7, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 4),
(8, 3, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 15, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 4),
(9, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 10, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(10, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(11, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 8, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(12, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 8, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', 1),
(13, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(14, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 8, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(15, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(16, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 10, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(17, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(18, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(19, 6, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(20, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(21, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(22, 7, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 16, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(23, 7, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 8, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(24, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(25, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 7, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(26, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 10, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(27, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(28, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 11, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(29, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(30, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 4),
(31, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(32, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 16, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(33, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(34, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(35, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(36, 12, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 11, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(37, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(38, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 6),
(39, 14, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(40, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(41, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(42, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(43, 15, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 5),
(44, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(45, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(46, 16, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(47, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(48, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(49, 1, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(50, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', 1),
(51, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(52, 2, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(53, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(54, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(55, 3, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(56, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(57, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(58, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(59, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(60, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(61, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(62, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(63, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(64, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(65, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(66, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(67, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(68, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(69, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(70, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(71, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(72, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(73, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(74, 9, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(75, 9, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(76, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(77, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(78, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(79, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(80, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(81, 11, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 5),
(82, 1, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(83, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(84, 1, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(85, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(86, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(87, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(88, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(89, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(90, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(91, 3, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(92, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(93, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 1),
(94, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(95, 5, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(96, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(97, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(98, 6, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(99, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(100, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 4),
(101, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(102, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(103, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', 6),
(104, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 9, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 6),
(105, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 4),
(106, 8, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 11, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 4),
(107, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 4),
(108, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 4),
(109, 9, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 13, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 1),
(110, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 14, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 1),
(111, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 12, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 1),
(112, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 1),
(113, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 12, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 1),
(114, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 6),
(115, 10, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 9, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 6),
(116, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 6),
(117, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 10, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', 6),
(118, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(119, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(120, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(121, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 13, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(122, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(123, 3, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(124, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(125, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(126, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(127, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(128, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(129, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(130, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(131, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(132, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(133, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(134, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 1),
(135, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(136, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(137, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(138, 7, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(139, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(140, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(141, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(142, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(143, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(144, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(145, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(146, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 4),
(147, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(148, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(149, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(150, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(151, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(152, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 5),
(153, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(154, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 13, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(155, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(156, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(157, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(158, 13, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', 6),
(159, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(160, 1, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(161, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 9, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(162, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 15, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(163, 2, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 15, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(164, 2, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(165, 2, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 16, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(166, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 5),
(167, 3, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 10, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 5),
(168, 3, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 7, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 5),
(169, 3, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 5),
(170, 4, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 10, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(171, 4, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(172, 4, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 1),
(173, 5, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 6),
(174, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 6),
(175, 5, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 14, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 6),
(176, 5, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 14, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 6),
(177, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 7, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', 6),
(178, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 9, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 6),
(179, 6, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 11, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 6),
(180, 6, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 6),
(181, 6, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 14, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 6),
(182, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 12, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(183, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(184, 8, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 13, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(185, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 15, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(186, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 12, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(187, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 16:22:52', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:52', 5),
(188, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 16, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 5),
(189, 10, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 16, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 6),
(190, 10, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 7, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 6),
(191, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 4),
(192, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 7, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 4),
(193, 11, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 4),
(194, 11, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 11, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 4),
(195, 12, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 15, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 1),
(196, 12, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 1),
(197, 12, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 16:22:23', NULL, '2020-11-18 07:20:10', '2020-12-21 16:22:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(2, 1, 1, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(3, 1, 1, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(4, 1, 1, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(5, 1, 1, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(6, 2, 2, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(7, 2, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(8, 2, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(9, 2, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(10, 2, 2, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(11, 3, 2, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(12, 3, 2, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(13, 3, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(14, 3, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(15, 3, 2, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(16, 4, 2, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(17, 4, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(18, 4, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(19, 4, 2, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(20, 4, 2, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(21, 5, 2, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(22, 5, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(23, 5, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(24, 5, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(25, 5, 2, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(26, 6, 3, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(27, 6, 3, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(28, 6, 3, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(29, 6, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(30, 6, 3, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(31, 7, 3, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(32, 7, 3, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(33, 7, 3, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(34, 7, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(35, 7, 3, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(36, 8, 3, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(37, 8, 3, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(38, 8, 3, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(39, 8, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(40, 8, 3, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(41, 9, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(42, 9, 4, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(43, 9, 4, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(44, 9, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(45, 9, 4, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(46, 10, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(47, 10, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(48, 10, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(49, 10, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(50, 10, 4, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(51, 11, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(52, 11, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(53, 11, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(54, 11, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(55, 11, 4, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(56, 12, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(57, 12, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(58, 12, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(59, 12, 4, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(60, 12, 4, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(61, 13, 5, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(62, 13, 5, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(63, 13, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(64, 13, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(65, 13, 5, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(66, 14, 5, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(67, 14, 5, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(68, 14, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(69, 14, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(70, 14, 5, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(71, 15, 5, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(72, 15, 5, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(73, 15, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(74, 15, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(75, 15, 5, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(76, 16, 6, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(77, 16, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(78, 16, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(79, 16, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(80, 16, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(81, 17, 6, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(82, 17, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(83, 17, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(84, 17, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(85, 17, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(86, 18, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(87, 18, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(88, 18, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(89, 18, 6, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(90, 18, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(91, 19, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(92, 19, 6, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(93, 19, 6, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(94, 19, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(95, 19, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(96, 20, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(97, 20, 6, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(98, 20, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(99, 20, 6, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(100, 20, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(101, 21, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(102, 21, 7, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(103, 21, 7, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(104, 21, 7, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(105, 21, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(106, 22, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(107, 22, 7, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(108, 22, 7, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(109, 22, 7, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(110, 22, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(111, 23, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(112, 23, 7, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(113, 23, 7, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(114, 23, 7, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(115, 23, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(116, 24, 8, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(117, 24, 8, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(118, 24, 8, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(119, 24, 8, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(120, 24, 8, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(121, 25, 9, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(122, 25, 9, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(123, 25, 9, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(124, 25, 9, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(125, 25, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(126, 26, 9, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(127, 26, 9, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(128, 26, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(129, 26, 9, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(130, 26, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(131, 27, 9, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(132, 27, 9, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(133, 27, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(134, 27, 9, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(135, 27, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(136, 28, 10, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(137, 28, 10, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(138, 28, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(139, 28, 10, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(140, 28, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(141, 29, 10, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(142, 29, 10, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(143, 29, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(144, 29, 10, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(145, 29, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(146, 30, 10, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(147, 30, 10, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(148, 30, 10, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(149, 30, 10, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(150, 30, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(151, 31, 11, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(152, 31, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(153, 31, 11, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(154, 31, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(155, 31, 11, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(156, 32, 11, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(157, 32, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(158, 32, 11, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(159, 32, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(160, 32, 11, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(161, 33, 11, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(162, 33, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(163, 33, 11, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(164, 33, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(165, 33, 11, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(166, 34, 12, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(167, 34, 12, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(168, 34, 12, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(169, 34, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(170, 34, 12, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(171, 35, 12, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(172, 35, 12, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(173, 35, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(174, 35, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(175, 35, 12, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(176, 36, 12, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(177, 36, 12, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(178, 36, 12, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(179, 36, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(180, 36, 12, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(181, 37, 13, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(182, 37, 13, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(183, 37, 13, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(184, 37, 13, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(185, 37, 13, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(186, 38, 13, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(187, 38, 13, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(188, 38, 13, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(189, 38, 13, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(190, 38, 13, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(191, 39, 14, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(192, 39, 14, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(193, 39, 14, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(194, 39, 14, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(195, 39, 14, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(196, 40, 14, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(197, 40, 14, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(198, 40, 14, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(199, 40, 14, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(200, 40, 14, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(201, 41, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(202, 41, 15, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(203, 41, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(204, 41, 15, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(205, 41, 15, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(206, 42, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(207, 42, 15, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(208, 42, 15, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(209, 42, 15, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(210, 42, 15, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(211, 43, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(212, 43, 15, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(213, 43, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(214, 43, 15, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(215, 43, 15, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(216, 44, 16, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(217, 44, 16, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(218, 44, 16, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(219, 44, 16, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(220, 44, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(221, 45, 16, 'tour', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(222, 45, 16, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(223, 45, 16, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(224, 45, 16, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(225, 45, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(226, 46, 16, 'tour', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(227, 46, 16, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(228, 46, 16, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(229, 46, 16, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(230, 46, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(231, 47, 1, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(232, 47, 1, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(233, 47, 1, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(234, 47, 1, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(235, 47, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(236, 48, 1, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(237, 48, 1, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(238, 48, 1, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(239, 48, 1, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(240, 48, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(241, 49, 1, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(242, 49, 1, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(243, 49, 1, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(244, 49, 1, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(245, 49, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06'),
(246, 50, 2, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(247, 50, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(248, 50, 2, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(249, 50, 2, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(250, 50, 2, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(251, 51, 2, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(252, 51, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(253, 51, 2, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(254, 51, 2, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(255, 51, 2, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(256, 52, 2, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(257, 52, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(258, 52, 2, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(259, 52, 2, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(260, 52, 2, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(261, 53, 2, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(262, 53, 2, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(263, 53, 2, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(264, 53, 2, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(265, 53, 2, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(266, 54, 3, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(267, 54, 3, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(268, 54, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(269, 54, 3, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(270, 54, 3, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(271, 55, 3, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(272, 55, 3, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(273, 55, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(274, 55, 3, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(275, 55, 3, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(276, 56, 3, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(277, 56, 3, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(278, 56, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(279, 56, 3, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(280, 56, 3, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(281, 57, 4, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(282, 57, 4, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(283, 57, 4, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(284, 57, 4, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(285, 57, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(286, 58, 4, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(287, 58, 4, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(288, 58, 4, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(289, 58, 4, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(290, 58, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(291, 59, 4, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(292, 59, 4, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(293, 59, 4, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(294, 59, 4, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(295, 59, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(296, 60, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(297, 60, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(298, 60, 5, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(299, 60, 5, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(300, 60, 5, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(301, 61, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(302, 61, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(303, 61, 5, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(304, 61, 5, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(305, 61, 5, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(306, 62, 5, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(307, 62, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(308, 62, 5, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(309, 62, 5, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(310, 62, 5, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(311, 63, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(312, 63, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(313, 63, 5, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(314, 63, 5, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(315, 63, 5, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(316, 64, 6, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(317, 64, 6, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(318, 64, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(319, 64, 6, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(320, 64, 6, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(321, 65, 6, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(322, 65, 6, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(323, 65, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(324, 65, 6, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(325, 65, 6, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(326, 66, 6, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(327, 66, 6, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(328, 66, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(329, 66, 6, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(330, 66, 6, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(331, 67, 7, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(332, 67, 7, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(333, 67, 7, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(334, 67, 7, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(335, 67, 7, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(336, 68, 7, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(337, 68, 7, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(338, 68, 7, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(339, 68, 7, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(340, 68, 7, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(341, 69, 7, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(342, 69, 7, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(343, 69, 7, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(344, 69, 7, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(345, 69, 7, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(346, 70, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(347, 70, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(348, 70, 8, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(349, 70, 8, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(350, 70, 8, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(351, 71, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(352, 71, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(353, 71, 8, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(354, 71, 8, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(355, 71, 8, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(356, 72, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(357, 72, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(358, 72, 8, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(359, 72, 8, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(360, 72, 8, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(361, 73, 9, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(362, 73, 9, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(363, 73, 9, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(364, 73, 9, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(365, 73, 9, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(366, 74, 9, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(367, 74, 9, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(368, 74, 9, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(369, 74, 9, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(370, 74, 9, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(371, 75, 9, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(372, 75, 9, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(373, 75, 9, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(374, 75, 9, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(375, 75, 9, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(376, 76, 10, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(377, 76, 10, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(378, 76, 10, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(379, 76, 10, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(380, 76, 10, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(381, 77, 10, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(382, 77, 10, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(383, 77, 10, 'space', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(384, 77, 10, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(385, 77, 10, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(386, 78, 10, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(387, 78, 10, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(388, 78, 10, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(389, 78, 10, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(390, 78, 10, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(391, 79, 11, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(392, 79, 11, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(393, 79, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(394, 79, 11, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(395, 79, 11, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(396, 80, 11, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(397, 80, 11, 'space', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(398, 80, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(399, 80, 11, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(400, 80, 11, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(401, 81, 11, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(402, 81, 11, 'space', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(403, 81, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(404, 81, 11, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(405, 81, 11, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(406, 82, 1, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(407, 82, 1, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(408, 82, 1, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(409, 82, 1, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(410, 82, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(411, 83, 1, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(412, 83, 1, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(413, 83, 1, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(414, 83, 1, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(415, 83, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(416, 84, 1, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(417, 84, 1, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(418, 84, 1, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(419, 84, 1, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(420, 84, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(421, 85, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(422, 85, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(423, 85, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(424, 85, 2, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(425, 85, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(426, 86, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(427, 86, 2, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(428, 86, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(429, 86, 2, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(430, 86, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(431, 87, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(432, 87, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(433, 87, 2, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(434, 87, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(435, 87, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(436, 88, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(437, 88, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(438, 88, 2, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(439, 88, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(440, 88, 2, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(441, 89, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(442, 89, 2, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(443, 89, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(444, 89, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(445, 89, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(446, 90, 3, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(447, 90, 3, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(448, 90, 3, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(449, 90, 3, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(450, 90, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(451, 91, 3, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(452, 91, 3, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(453, 91, 3, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(454, 91, 3, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(455, 91, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(456, 92, 4, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(457, 92, 4, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(458, 92, 4, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(459, 92, 4, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(460, 92, 4, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(461, 93, 4, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(462, 93, 4, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(463, 93, 4, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(464, 93, 4, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(465, 93, 4, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(466, 94, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(467, 94, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(468, 94, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(469, 94, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(470, 94, 5, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(471, 95, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(472, 95, 5, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(473, 95, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(474, 95, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(475, 95, 5, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(476, 96, 5, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(477, 96, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(478, 96, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(479, 96, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(480, 96, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(481, 97, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(482, 97, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(483, 97, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(484, 97, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(485, 97, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(486, 98, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(487, 98, 6, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(488, 98, 6, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(489, 98, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(490, 98, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(491, 99, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(492, 99, 6, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(493, 99, 6, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(494, 99, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(495, 99, 6, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(496, 100, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(497, 100, 6, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(498, 100, 6, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(499, 100, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(500, 100, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(501, 101, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(502, 101, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(503, 101, 7, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(504, 101, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(505, 101, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(506, 102, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(507, 102, 7, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(508, 102, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(509, 102, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(510, 102, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(511, 103, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(512, 103, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(513, 103, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(514, 103, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(515, 103, 7, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07'),
(516, 104, 7, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(517, 104, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(518, 104, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(519, 104, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(520, 104, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(521, 105, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(522, 105, 8, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(523, 105, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(524, 105, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(525, 105, 8, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(526, 106, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(527, 106, 8, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(528, 106, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(529, 106, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(530, 106, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(531, 107, 8, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(532, 107, 8, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(533, 107, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(534, 107, 8, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(535, 107, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(536, 108, 8, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(537, 108, 8, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(538, 108, 8, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(539, 108, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(540, 108, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(541, 109, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(542, 109, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(543, 109, 9, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(544, 109, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(545, 109, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(546, 110, 9, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(547, 110, 9, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(548, 110, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(549, 110, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(550, 110, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(551, 111, 9, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(552, 111, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(553, 111, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(554, 111, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(555, 111, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(556, 112, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(557, 112, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(558, 112, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(559, 112, 9, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(560, 112, 9, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(561, 113, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(562, 113, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(563, 113, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(564, 113, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(565, 113, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(566, 114, 10, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(567, 114, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(568, 114, 10, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(569, 114, 10, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(570, 114, 10, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(571, 115, 10, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(572, 115, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(573, 115, 10, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(574, 115, 10, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(575, 115, 10, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(576, 116, 10, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(577, 116, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(578, 116, 10, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(579, 116, 10, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(580, 116, 10, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(581, 117, 11, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(582, 117, 11, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(583, 117, 11, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(584, 117, 11, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(585, 117, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08'),
(586, 118, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(587, 118, 1, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(588, 118, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(589, 118, 1, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(590, 118, 1, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(591, 119, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(592, 119, 1, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(593, 119, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(594, 119, 1, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(595, 119, 1, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(596, 120, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(597, 120, 1, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(598, 120, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(599, 120, 1, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(600, 120, 1, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(601, 121, 2, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(602, 121, 2, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(603, 121, 2, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(604, 121, 2, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(605, 121, 2, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(606, 122, 2, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(607, 122, 2, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(608, 122, 2, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(609, 122, 2, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(610, 122, 2, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(611, 123, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(612, 123, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(613, 123, 3, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(614, 123, 3, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(615, 123, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(616, 124, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(617, 124, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(618, 124, 3, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(619, 124, 3, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(620, 124, 3, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(621, 125, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(622, 125, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(623, 125, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(624, 125, 3, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(625, 125, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(626, 126, 3, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(627, 126, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(628, 126, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(629, 126, 3, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(630, 126, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(631, 127, 4, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(632, 127, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(633, 127, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(634, 127, 4, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(635, 127, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(636, 128, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(637, 128, 4, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(638, 128, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(639, 128, 4, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(640, 128, 4, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(641, 129, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(642, 129, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(643, 129, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(644, 129, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(645, 129, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(646, 130, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(647, 130, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(648, 130, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(649, 130, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(650, 130, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(651, 131, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(652, 131, 4, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(653, 131, 4, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(654, 131, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(655, 131, 4, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(656, 132, 5, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(657, 132, 5, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(658, 132, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(659, 132, 5, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(660, 132, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(661, 133, 5, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(662, 133, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(663, 133, 5, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(664, 133, 5, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(665, 133, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(666, 134, 5, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(667, 134, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(668, 134, 5, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(669, 134, 5, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(670, 134, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(671, 135, 6, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(672, 135, 6, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(673, 135, 6, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(674, 135, 6, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(675, 135, 6, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(676, 136, 6, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(677, 136, 6, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(678, 136, 6, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(679, 136, 6, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(680, 136, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(681, 137, 7, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(682, 137, 7, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(683, 137, 7, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(684, 137, 7, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(685, 137, 7, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(686, 138, 7, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(687, 138, 7, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(688, 138, 7, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(689, 138, 7, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(690, 138, 7, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(691, 139, 8, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(692, 139, 8, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(693, 139, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(694, 139, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(695, 139, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(696, 140, 8, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(697, 140, 8, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(698, 140, 8, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(699, 140, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(700, 140, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(701, 141, 8, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(702, 141, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(703, 141, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(704, 141, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(705, 141, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(706, 142, 8, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(707, 142, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(708, 142, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(709, 142, 8, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(710, 142, 8, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(711, 143, 9, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(712, 143, 9, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(713, 143, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(714, 143, 9, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(715, 143, 9, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(716, 144, 9, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(717, 144, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(718, 144, 9, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(719, 144, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(720, 144, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(721, 145, 9, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(722, 145, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(723, 145, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(724, 145, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(725, 145, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(726, 146, 9, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(727, 146, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(728, 146, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(729, 146, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(730, 146, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(731, 147, 10, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(732, 147, 10, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(733, 147, 10, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(734, 147, 10, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(735, 147, 10, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(736, 148, 10, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(737, 148, 10, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(738, 148, 10, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(739, 148, 10, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(740, 148, 10, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(741, 149, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(742, 149, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(743, 149, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(744, 149, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(745, 149, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(746, 150, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(747, 150, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(748, 150, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(749, 150, 11, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(750, 150, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(751, 151, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(752, 151, 11, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(753, 151, 11, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(754, 151, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(755, 151, 11, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(756, 152, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(757, 152, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(758, 152, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(759, 152, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(760, 152, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(761, 153, 12, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(762, 153, 12, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(763, 153, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(764, 153, 12, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(765, 153, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(766, 154, 12, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(767, 154, 12, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(768, 154, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(769, 154, 12, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(770, 154, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(771, 155, 12, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(772, 155, 12, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(773, 155, 12, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(774, 155, 12, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(775, 155, 12, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(776, 156, 13, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(777, 156, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(778, 156, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(779, 156, 13, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(780, 156, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(781, 157, 13, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(782, 157, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(783, 157, 13, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(784, 157, 13, 'car', 'Facility', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(785, 157, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(786, 158, 13, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(787, 158, 13, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(788, 158, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(789, 158, 13, 'car', 'Facility', '5', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(790, 158, 13, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09'),
(791, 159, 1, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(792, 159, 1, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(793, 159, 1, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(794, 159, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(795, 159, 1, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(796, 160, 1, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(797, 160, 1, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(798, 160, 1, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(799, 160, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(800, 160, 1, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(801, 161, 1, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(802, 161, 1, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(803, 161, 1, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(804, 161, 1, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(805, 161, 1, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(806, 162, 1, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(807, 162, 1, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(808, 162, 1, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(809, 162, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(810, 162, 1, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(811, 163, 2, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(812, 163, 2, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(813, 163, 2, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(814, 163, 2, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(815, 163, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(816, 164, 2, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(817, 164, 2, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(818, 164, 2, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(819, 164, 2, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(820, 164, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(821, 165, 2, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(822, 165, 2, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(823, 165, 2, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(824, 165, 2, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(825, 165, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(826, 166, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(827, 166, 3, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(828, 166, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(829, 166, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(830, 166, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(831, 167, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(832, 167, 3, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(833, 167, 3, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(834, 167, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(835, 167, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(836, 168, 3, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(837, 168, 3, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(838, 168, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(839, 168, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(840, 168, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(841, 169, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(842, 169, 3, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(843, 169, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(844, 169, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(845, 169, 3, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(846, 170, 4, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(847, 170, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(848, 170, 4, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(849, 170, 4, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(850, 170, 4, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(851, 171, 4, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(852, 171, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(853, 171, 4, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(854, 171, 4, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(855, 171, 4, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(856, 172, 4, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(857, 172, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(858, 172, 4, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(859, 172, 4, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(860, 172, 4, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(861, 173, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(862, 173, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(863, 173, 5, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(864, 173, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(865, 173, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(866, 174, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(867, 174, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(868, 174, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(869, 174, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(870, 174, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(871, 175, 5, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(872, 175, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(873, 175, 5, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(874, 175, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(875, 175, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(876, 176, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(877, 176, 5, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(878, 176, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(879, 176, 5, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(880, 176, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(881, 177, 5, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(882, 177, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(883, 177, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(884, 177, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(885, 177, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(886, 178, 6, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(887, 178, 6, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(888, 178, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(889, 178, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(890, 178, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(891, 179, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(892, 179, 6, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(893, 179, 6, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(894, 179, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(895, 179, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(896, 180, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(897, 180, 6, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(898, 180, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(899, 180, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(900, 180, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(901, 181, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(902, 181, 6, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(903, 181, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(904, 181, 6, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(905, 181, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(906, 182, 7, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(907, 182, 7, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(908, 182, 7, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(909, 182, 7, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(910, 182, 7, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(911, 183, 7, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(912, 183, 7, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(913, 183, 7, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(914, 183, 7, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(915, 183, 7, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(916, 184, 8, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(917, 184, 8, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(918, 184, 8, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(919, 184, 8, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(920, 184, 8, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(921, 185, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(922, 185, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(923, 185, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(924, 185, 9, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(925, 185, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(926, 186, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(927, 186, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(928, 186, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(929, 186, 9, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(930, 186, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(931, 187, 9, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(932, 187, 9, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(933, 187, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(934, 187, 9, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(935, 187, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(936, 188, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(937, 188, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(938, 188, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(939, 188, 9, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(940, 188, 9, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(941, 189, 10, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(942, 189, 10, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(943, 189, 10, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(944, 189, 10, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(945, 189, 10, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(946, 190, 10, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(947, 190, 10, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(948, 190, 10, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(949, 190, 10, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(950, 190, 10, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(951, 191, 11, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(952, 191, 11, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(953, 191, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(954, 191, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(955, 191, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(956, 192, 11, 'event', 'Service', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(957, 192, 11, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(958, 192, 11, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(959, 192, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(960, 192, 11, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(961, 193, 11, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(962, 193, 11, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(963, 193, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(964, 193, 11, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(965, 193, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(966, 194, 11, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(967, 194, 11, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(968, 194, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(969, 194, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(970, 194, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(971, 195, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(972, 195, 12, 'event', 'Organization', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(973, 195, 12, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(974, 195, 12, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(975, 195, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(976, 196, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(977, 196, 12, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(978, 196, 12, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(979, 196, 12, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(980, 196, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(981, 197, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(982, 197, 12, 'event', 'Organization', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(983, 197, 12, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(984, 197, 12, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10'),
(985, 197, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seo`
--

INSERT INTO `bravo_seo` (`id`, `object_id`, `object_model`, `seo_index`, `seo_title`, `seo_desc`, `seo_image`, `seo_share`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 17, 'tour', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2020-11-18 07:45:56', '2020-11-18 07:45:56'),
(2, 1, 'sauna', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2020-11-18 08:15:26', '2020-11-18 08:16:00'),
(3, 1, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2020-11-19 12:24:44', '2020-11-19 12:28:34'),
(4, 2, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2020-11-19 12:38:54', '2020-11-19 12:39:39'),
(5, 3, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2020-11-19 12:40:57', '2020-11-19 12:44:33'),
(6, 18, 'tour', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-24 10:46:35', '2020-11-24 10:46:35'),
(7, 23, 'tour', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-12-12 23:26:25', '2020-12-12 23:28:00'),
(8, 11, 'space', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-12-21 21:54:16', '2020-12-21 21:54:16'),
(9, 12, 'space', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-12-21 22:00:44', '2020-12-21 22:00:44'),
(10, 2, 'sauna', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-12-21 23:20:53', '2020-12-21 23:21:16'),
(11, 12, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-01-09 23:56:26', '2021-01-09 23:56:26'),
(12, 1, 'hotel_translation_fi', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null},\"twitter\":{\"title\":null,\"desc\":null}}', 1, NULL, NULL, NULL, '2021-01-12 02:14:51', '2021-01-12 02:14:51'),
(13, 7, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2021-01-12 02:39:13', '2021-01-12 02:39:19'),
(14, 13, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2021-01-12 04:22:21', '2021-01-12 05:17:04'),
(15, 4, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 00:17:46', '2021-01-13 00:17:52'),
(16, 14, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 00:20:52', '2021-01-13 00:21:17'),
(17, 6, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 00:23:42', '2021-01-13 00:23:48'),
(18, 15, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-13 00:36:24', '2021-01-13 00:36:24'),
(19, 3, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-13 01:13:49', '2021-01-13 01:13:49'),
(20, 5, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 01:14:21', '2021-01-13 01:14:32'),
(21, 6, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 07:23:09', '2021-01-13 07:23:30'),
(22, 5, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 08:24:49', '2021-01-20 15:45:19'),
(23, 17, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, NULL, '2021-01-24 16:38:03', '2021-02-05 22:19:31'),
(24, 18, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, NULL, '2021-01-24 16:45:51', '2021-02-05 22:19:06'),
(25, 19, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-24 16:54:04', '2021-02-05 22:49:32'),
(26, 20, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-27 08:16:29', '2021-01-27 08:16:29'),
(27, 21, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-28 19:07:31', '2021-01-28 19:07:31'),
(28, 22, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-03 14:58:53', '2021-02-03 15:01:35'),
(29, 4, 'page', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-04 15:09:15', '2021-02-04 15:09:15'),
(30, 2, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-04 17:23:44', '2021-02-04 17:24:12'),
(31, 23, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 12:28:49', '2021-02-05 12:28:49'),
(32, 24, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 12:29:27', '2021-02-05 12:29:27'),
(33, 25, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-05 12:37:49', '2021-02-05 15:55:58'),
(34, 1, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 15:58:57', '2021-02-05 15:58:57'),
(35, 9, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:18:30', '2021-02-05 21:18:30'),
(36, 4, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 21:19:33', '2021-02-05 21:19:33'),
(37, 5, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 21:20:38', '2021-02-05 21:20:38'),
(38, 6, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 21:21:28', '2021-02-05 21:21:28'),
(39, 7, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 21:21:47', '2021-02-05 21:21:47'),
(40, 8, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 21:22:06', '2021-02-05 21:22:06'),
(41, 10, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:22:50', '2021-02-05 21:22:50'),
(42, 11, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:23:12', '2021-02-05 21:23:12'),
(43, 12, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:23:26', '2021-02-05 21:23:26'),
(44, 13, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:23:37', '2021-02-05 21:23:37'),
(45, 14, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:23:50', '2021-02-05 21:23:50'),
(46, 15, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:24:01', '2021-02-05 21:24:01'),
(47, 16, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:24:14', '2021-02-05 21:24:14'),
(48, 17, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:24:27', '2021-02-05 21:24:27'),
(49, 18, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:24:38', '2021-02-05 21:24:38'),
(50, 19, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:24:52', '2021-02-05 21:24:52'),
(51, 20, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:25:10', '2021-02-05 21:25:10'),
(52, 21, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:25:21', '2021-02-05 21:25:21'),
(53, 22, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:25:32', '2021-02-05 21:25:32'),
(54, 23, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:26:04', '2021-02-05 21:26:04'),
(55, 24, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:26:16', '2021-02-05 21:26:16'),
(56, 25, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:26:32', '2021-02-05 21:26:32'),
(57, 26, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:26:44', '2021-02-05 21:26:44'),
(58, 27, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:26:56', '2021-02-05 21:26:56'),
(59, 28, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:27:09', '2021-02-05 21:27:09'),
(60, 29, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:27:20', '2021-02-05 21:27:20'),
(61, 30, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:27:32', '2021-02-05 21:27:32'),
(62, 31, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:27:43', '2021-02-05 21:27:43'),
(63, 32, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:27:53', '2021-02-05 21:27:53'),
(64, 33, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:28:04', '2021-02-05 21:28:04'),
(65, 34, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:28:17', '2021-02-05 21:28:17'),
(66, 35, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:28:27', '2021-02-05 21:28:27'),
(67, 36, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:28:39', '2021-02-05 21:28:39'),
(68, 37, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:28:49', '2021-02-05 21:28:49'),
(69, 38, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:00', '2021-02-05 21:29:00'),
(70, 39, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:10', '2021-02-05 21:29:10'),
(71, 40, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:21', '2021-02-05 21:29:21'),
(72, 41, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:32', '2021-02-05 21:29:32'),
(73, 42, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:43', '2021-02-05 21:29:43'),
(74, 43, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:29:55', '2021-02-05 21:29:55'),
(75, 44, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:07', '2021-02-05 21:30:07'),
(76, 45, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:16', '2021-02-05 21:30:16'),
(77, 46, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:27', '2021-02-05 21:30:27'),
(78, 47, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:38', '2021-02-05 21:30:38'),
(79, 48, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:49', '2021-02-05 21:30:49'),
(80, 49, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:30:59', '2021-02-05 21:30:59'),
(81, 50, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:31:10', '2021-02-05 21:31:10'),
(82, 51, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:31:23', '2021-02-05 21:31:23'),
(83, 52, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:31:36', '2021-02-05 21:31:36'),
(84, 53, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:31:48', '2021-02-05 21:31:48'),
(85, 54, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:32:01', '2021-02-05 21:32:01'),
(86, 55, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:32:15', '2021-02-05 21:32:15'),
(87, 56, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:32:25', '2021-02-05 21:32:25'),
(88, 57, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:32:36', '2021-02-05 21:32:36'),
(89, 58, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:32:50', '2021-02-05 21:32:50'),
(90, 59, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:33:04', '2021-02-05 21:33:04'),
(91, 60, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:33:15', '2021-02-05 21:33:15'),
(92, 61, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:36:50', '2021-02-05 21:36:50'),
(93, 62, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:37:07', '2021-02-05 21:37:07'),
(94, 63, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:37:23', '2021-02-05 21:37:23'),
(95, 64, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:37:41', '2021-02-05 21:37:41'),
(96, 65, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:37:51', '2021-02-05 21:37:51'),
(97, 66, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:38:04', '2021-02-05 21:38:04'),
(98, 67, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:38:14', '2021-02-05 21:38:14'),
(99, 68, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:38:26', '2021-02-05 21:38:26'),
(100, 69, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:38:39', '2021-02-05 21:38:39'),
(101, 70, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:38:50', '2021-02-05 21:38:50'),
(102, 71, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:39:03', '2021-02-05 21:39:03'),
(103, 72, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:40:40', '2021-02-05 21:40:40'),
(104, 73, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:40:51', '2021-02-05 21:40:51'),
(105, 74, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:41:02', '2021-02-05 21:41:02'),
(106, 75, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:41:16', '2021-02-05 21:41:16'),
(107, 76, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:41:30', '2021-02-05 21:41:30'),
(108, 77, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:41:41', '2021-02-05 21:41:41'),
(109, 78, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:41:52', '2021-02-05 21:41:52'),
(110, 79, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:42:02', '2021-02-05 21:42:02'),
(111, 80, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:42:15', '2021-02-05 21:42:15'),
(112, 81, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:42:29', '2021-02-05 21:42:29'),
(113, 82, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:42:39', '2021-02-05 21:42:39'),
(114, 83, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:42:51', '2021-02-05 21:42:51'),
(115, 84, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:43:05', '2021-02-05 21:43:05'),
(116, 85, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:43:17', '2021-02-05 21:43:17'),
(117, 86, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:43:28', '2021-02-05 21:43:28'),
(118, 87, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:43:38', '2021-02-05 21:43:38'),
(119, 88, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:43:50', '2021-02-05 21:43:50'),
(120, 89, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:44:01', '2021-02-05 21:44:01'),
(121, 90, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:44:14', '2021-02-05 21:44:14'),
(122, 91, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:44:27', '2021-02-05 21:44:27'),
(123, 92, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:44:39', '2021-02-05 21:44:39'),
(124, 93, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:44:50', '2021-02-05 21:44:50'),
(125, 94, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:45:02', '2021-02-05 21:45:02'),
(126, 95, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:45:13', '2021-02-05 21:45:13'),
(127, 96, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:46:26', '2021-02-05 21:46:26'),
(128, 97, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:46:54', '2021-02-05 21:46:54'),
(129, 98, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:47:12', '2021-02-05 21:47:12'),
(130, 99, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:47:39', '2021-02-05 21:47:39'),
(131, 100, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:47:53', '2021-02-05 21:47:53'),
(132, 101, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:48:10', '2021-02-05 21:48:10'),
(133, 102, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:48:27', '2021-02-05 21:48:27'),
(134, 103, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:48:43', '2021-02-05 21:48:43'),
(135, 104, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:49:29', '2021-02-05 21:49:29'),
(136, 105, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:49:40', '2021-02-05 21:49:40'),
(137, 106, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:01', '2021-02-05 21:50:01'),
(138, 107, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:14', '2021-02-05 21:50:14'),
(139, 108, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:26', '2021-02-05 21:50:26'),
(140, 109, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:36', '2021-02-05 21:50:36'),
(141, 110, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:49', '2021-02-05 21:50:49'),
(142, 111, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:50:59', '2021-02-05 21:50:59'),
(143, 112, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:51:10', '2021-02-05 21:51:10'),
(144, 113, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:51:25', '2021-02-05 21:51:25'),
(145, 114, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 21:51:37', '2021-02-05 21:51:37'),
(146, 26, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-24 06:16:48', '2021-02-24 06:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2020-11-18 07:20:06', '2020-11-18 07:20:06', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2020-11-18 07:20:07', '2020-11-18 07:20:07', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:08', '2020-11-18 07:20:08', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2020-11-18 07:20:09', '2020-11-18 07:20:09', NULL, 140, NULL),
(75, 'Field Day', NULL, 11, 'field-day', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(76, 'Glastonbury', NULL, 11, 'glastonbury', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(77, 'Green Man', NULL, 11, 'green-man', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(78, 'Latitude', NULL, 11, 'latitude', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(79, 'Boomtown', NULL, 11, 'boomtown', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(80, 'Wilderness', NULL, 11, 'wilderness', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(81, 'Exit Festival', NULL, 11, 'exit-festival', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL),
(82, 'Primavera Sound', NULL, 11, 'primavera-sound', NULL, NULL, NULL, NULL, '2020-11-18 07:20:10', '2020-11-18 07:20:10', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '739.00', 3, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '307.00', 7, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '380.00', 7, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '558.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '1585.00', 1, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '472.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.4', NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '240.00', 7, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1700.00', 8, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '687.00', 2, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1140.00', 5, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '993.00', 6, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '837.00', 2, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '593.00', 7, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.5', NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1307.00', 4, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1155.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(17, 'Helsinki food tour', 'helsinki-food-tour', NULL, 183, 183, NULL, 1, 1, NULL, NULL, NULL, 8, NULL, NULL, NULL, '49.00', NULL, 4, 2, 5, NULL, 'publish', NULL, 18, NULL, NULL, NULL, NULL, '2020-11-18 07:45:56', '2020-11-18 07:45:56', 0, NULL, NULL, NULL, NULL, NULL),
(18, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1, NULL, '2020-11-26 10:56:53', NULL, NULL, '2020-11-24 10:46:35', '2020-11-26 10:56:53', 0, NULL, NULL, NULL, NULL, NULL),
(19, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-26 11:02:31', '2020-11-27 22:07:51', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(20, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 22:07:26', '2020-11-27 22:07:48', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(21, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 22:07:29', '2020-11-27 22:07:44', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(22, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 22:07:31', '2020-11-27 22:07:40', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(23, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\n<h4>HIGHLIGHTS</h4>\n<ul>\n<li>Visit the Museum of Modern Art in Manhattan</li>\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\n</ul>', 188, 188, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 22:07:33', '2020-12-12 23:28:57', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(2, 'ja', 'Japanese', 'jp', 'draft', 1, NULL, NULL, NULL, '2020-11-18 07:20:03', '2020-12-21 14:52:06'),
(3, 'egy', 'Egyptian', 'eg', 'draft', 1, NULL, NULL, '2020-11-18 16:58:41', '2020-11-18 07:20:03', '2020-11-18 16:58:41'),
(4, 'fi', 'Suomi', 'fi', 'publish', 1, NULL, NULL, NULL, '2020-11-18 16:57:50', '2020-11-18 16:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"_open\":false,\"model_name\":\"Custom\",\"is_removed\":true},{\"name\":\"Practice\",\"url\":\"\\/job?job_type%5B%5D=practice\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Internship\",\"url\":\"\\/job?job_type%5B%5D=intership\",\"item_model\":\"custom\",\"_open\":false,\"model_name\":\"Custom\",\"is_removed\":true},{\"name\":\"Summer Job\",\"url\":\"\\/job?job_type%5B%5D=SummerJob\",\"item_model\":\"custom\",\"_open\":true,\"model_name\":\"Custom\",\"is_removed\":true}]', 1, 1, NULL, NULL, '2020-11-18 07:20:05', '2021-02-05 19:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2020-11-18 07:20:05', NULL),
(2, 1, 'egy', '[{\"name\":\"Home\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/egy\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/egy\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/egy\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/egy\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/egy\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/egy\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/egy\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/egy\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/egy\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/egy\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/egy\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/egy\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/egy\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/egy\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/egy\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/egy\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/egy\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2020-11-18 07:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_permissions`
--

INSERT INTO `core_model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(67, 'App\\User', 1),
(67, 'App\\User', 19),
(67, 'App\\User', 24),
(67, 'App\\User', 25),
(68, 'App\\User', 1),
(68, 'App\\User', 19),
(68, 'App\\User', 24),
(68, 'App\\User', 25),
(69, 'App\\User', 1),
(69, 'App\\User', 19),
(69, 'App\\User', 24),
(69, 'App\\User', 25),
(70, 'App\\User', 1),
(70, 'App\\User', 19),
(70, 'App\\User', 24),
(70, 'App\\User', 25);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(1, 'App\\User', 18),
(2, 'App\\User', 3),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(3, 'App\\User', 1),
(3, 'App\\User', 7),
(3, 'App\\User', 19),
(3, 'App\\User', 24),
(3, 'App\\User', 25);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 1, 114, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 4, 115, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 2, 116, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 1, 117, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 3, 118, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 4, 119, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 4, 120, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 1, 115, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, '2021-02-04 15:07:22', NULL, NULL, '2020-11-18 07:20:05', '2021-02-04 15:07:22'),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, '2021-02-04 15:07:22', NULL, NULL, '2020-11-18 07:20:05', '2021-02-04 15:07:22'),
(4, 'job', 'Home Job', NULL, NULL, 'publish', NULL, NULL, 1, 1, 1, '2021-02-04 15:09:42', NULL, NULL, '2020-11-18 07:20:05', '2021-02-04 15:09:42'),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, '2021-02-04 15:07:22', NULL, NULL, '2020-11-18 07:20:05', '2021-02-04 15:07:22'),
(7, 'privacy-policy', 'Privacy policy', '<h1>Privacy policy</h1>\n<p> This privacy policy (\"Policy\") describes how the personally identifiable information (\"Personal Information\") you may provide on the <a target=\"_blank\" href=\"http://dev.bookingcore.org\" rel=\"noreferrer noopener\">dev.bookingcore.org</a> website (\"Website\" or \"Service\") and any of its related products and services (collectively, \"Services\") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you (\"User\", \"you\" or \"your\") and this Website operator (\"Operator\", \"we\", \"us\" or \"our\"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\n<h2>Automatic collection of information</h2>\n<p>When you open the Website, our servers automatically record information that your browser sends. This data may include information such as your device\'s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to the Website and Services, pages of the Website and Services that you visit, the time spent on those pages, information you search for on the Website, access times and dates, and other statistics.</p>\n<p>Information collected automatically is used only to identify potential cases of abuse and establish statistical information regarding the usage and traffic of the Website and Services. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\n<h2>Collection of personal information</h2>\n<p>You can access and use the Website and Services without telling us who you are or revealing any information by which someone could identify you as a specific, identifiable individual. If, however, you wish to use some of the features on the Website, you may be asked to provide certain Personal Information (for example, your name and e-mail address). We receive and store any information you knowingly provide to us when you create an account, publish content,  or fill any online forms on the Website. When required, this information may include the following:</p>\n<ul>\n<li>Personal details such as name, country of residence, etc.</li>\n<li>Contact information such as email address, address, etc.</li>\n<li>Account details such as user name, unique user ID, password, etc.</li>\n<li>Information about other individuals such as your family members, friends, etc.</li>\n</ul>\n<p>Some of the information we collect is directly from you via the Website and Services. However, we may also collect Personal Information about you from other sources such as public databases and our joint marketing partners. You can choose not to provide us with your Personal Information, but then you may not be able to take advantage of some of the features on the Website. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\n<h2>Use and processing of collected information</h2>\n<p>In order to make the Website and Services available to you, or to meet a legal obligation, we need to collect and use certain Personal Information. If you do not provide the information that we request, we may not be able to provide you with the requested products or services. Any of the information we collect from you may be used for the following purposes:</p>\n<ul>\n<li>Create and manage user accounts</li>\n<li>Send administrative information</li>\n<li>Request user feedback</li>\n<li>Improve user experience</li>\n<li>Enforce terms and conditions and policies</li>\n<li>Run and operate the Website and Services</li>\n</ul>\n<p>Processing your Personal Information depends on how you interact with the Website and Services, where you are located in the world and if one of the following applies: (i) you have given your consent for one or more specific purposes; this, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (iii) processing is necessary for compliance with a legal obligation to which you are subject; (iv) processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) processing is necessary for the purposes of the legitimate interests pursued by us or by a third party.</p>\n<p> Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Information is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\n<h2>Managing information</h2>\n<p>You are able to delete certain Personal Information we have about you. The Personal Information you can delete may change as the Website and Services change. When you delete Personal Information, however, we may maintain a copy of the unrevised Personal Information in our records for the duration necessary to comply with our obligations to our affiliates and partners, and for the purposes described below. If you would like to delete your Personal Information or permanently delete your account, you can do so by contacting us.</p>\n<h2>Disclosure of information</h2>\n<p> Depending on the requested Services or as necessary to complete any transaction or provide any service you have requested, we may share your information with your consent with our trusted third parties that work with us, any other affiliates and subsidiaries we rely upon to assist in the operation of the Website and Services available to you. We do not share Personal Information with unaffiliated third parties. These service providers are not authorized to use or disclose your information except as necessary to perform services on our behalf or comply with legal requirements. We may share your Personal Information for these purposes only with third parties whose privacy policies are consistent with ours or who agree to abide by our policies with respect to Personal Information. These third parties are given Personal Information they need only in order to perform their designated functions, and we do not authorize them to use or disclose Personal Information for their own marketing or other purposes.</p>\n<p>We will disclose any Personal Information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request.</p>\n<h2>Retention of information</h2>\n<p>We will retain and use your Personal Information for the period necessary to comply with our legal obligations, resolve disputes, and enforce our agreements unless a longer retention period is required or permitted by law. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\n<h2>The rights of users</h2>\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\n<h2>Privacy of children</h2>\n<p>We do not knowingly collect any Personal Information from children under the age of 18. If you are under the age of 18, please do not submit any Personal Information through the Website and Services. We encourage parents and legal guardians to monitor their children\'s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through the Website and Services without their permission. If you have reason to believe that a child under the age of 18 has provided Personal Information to us through the Website and Services, please contact us. You must also be old enough to consent to the processing of your Personal Information in your country (in some countries we may allow your parent or guardian to do so on your behalf).</p>\n<h2>Cookies</h2>\n<p>The Website and Services use \"cookies\" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.</p>\n<p>We may use cookies to collect, store, and track information for statistical purposes to operate the Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. To learn more about cookies and how to manage them, visit <a target=\"_blank\" href=\"https://www.internetcookies.org\" rel=\"noreferrer noopener\">internetcookies.org</a></p>\n<h2>Do Not Track signals</h2>\n<p>Some browsers incorporate a Do Not Track feature that signals to websites you visit that you do not want to have your online activity tracked. Tracking is not the same as using or collecting information in connection with a website. For these purposes, tracking refers to collecting personally identifiable information from consumers who use or visit a website or online service as they move across different websites over time. How browsers communicate the Do Not Track signal is not yet uniform. As a result, the Website and Services are not yet set up to interpret or respond to Do Not Track signals communicated by your browser. Even so, as described in more detail throughout this Policy, we limit our use and collection of your personal information.</p>\n<h2>Email marketing</h2>\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. We are committed to keeping your e-mail address confidential and will not disclose your email address to any third parties except as allowed in the information use and processing section or for the purposes of utilizing a third party provider to send such emails. We will maintain the information sent via e-mail in accordance with applicable laws and regulations.</p>\n<p>In compliance with the CAN-SPAM Act, all e-mails sent from us will clearly state who the e-mail is from and provide clear information on how to contact the sender. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\n<h2>Links to other resources</h2>\n<p>The Website and Services contain links to other resources that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other resources or third parties. We encourage you to be aware when you leave the Website and Services and to read the privacy statements of each and every resource that may collect Personal Information.</p>\n<h2>Information security</h2>\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and the Website and Services cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>\n<h2>Data breach</h2>\n<p>In the event we become aware that the security of the Website and Services has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do, we will post a notice on the Website, send you an email.</p>\n<h2>Changes and amendments</h2>\n<p>We reserve the right to modify this Policy or its terms relating to the Website and Services from time to time in our discretion and will notify you of any material changes to the way in which we treat Personal Information. When we do, we will post a notification on the main page of the Website. We may also provide notice to you in other ways in our discretion, such as through contact information you have provided. Any updated version of this Policy will be effective immediately upon the posting of the revised Policy unless otherwise specified. Your continued use of the Website and Services after the effective date of the revised Policy (or such other act specified at that time) will constitute your consent to those changes. However, we will not, without your consent, use your Personal Information in a manner materially different than what was stated at the time your Personal Information was collected. Policy was created with <a style=\"color:inherit;\" target=\"_blank\" href=\"https://www.websitepolicies.com/privacy-policy-generator\" rel=\"noreferrer noopener\">WebsitePolicies</a>.</p>\n<h2>Acceptance of this policy</h2>\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By accessing and using the Website and Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to access or use the Website and Services.</p>\n<h2>Contacting us</h2>\n<p>If you would like to contact us to understand more about this Policy or wish to contact us concerning any matter relating to individual rights and your Personal Information, you may do so via the <a target=\"_blank\" href=\"http://dev.bookingcore.org/contact\" rel=\"noreferrer noopener\">contact form</a></p>\n<p>This document was last updated on October 6, 2020</p>', NULL, 'publish', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(2, 'contact_manage', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(3, 'newsletter_manage', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(4, 'language_manage', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(5, 'language_translation', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(6, 'booking_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(7, 'booking_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(8, 'booking_manage_others', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(9, 'enquiry_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(10, 'enquiry_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(11, 'enquiry_manage_others', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(12, 'template_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(13, 'template_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(14, 'template_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(15, 'template_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(21, 'role_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(22, 'role_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(23, 'role_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(24, 'role_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(25, 'permission_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(26, 'permission_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(27, 'permission_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(28, 'permission_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(29, 'dashboard_access', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(30, 'dashboard_vendor_access', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(31, 'setting_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(32, 'menu_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(33, 'menu_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(34, 'menu_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(35, 'menu_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(36, 'user_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(37, 'user_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(38, 'user_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(39, 'user_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(40, 'page_view', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(41, 'page_create', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(42, 'page_update', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(43, 'page_delete', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(44, 'page_manage_others', 'web', '2020-11-18 07:20:01', '2020-11-18 07:20:01'),
(45, 'setting_view', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(46, 'media_upload', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(47, 'media_manage', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(54, 'location_view', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(55, 'location_create', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(56, 'location_update', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(57, 'location_delete', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(58, 'location_manage_others', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(59, 'review_manage_others', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(60, 'system_log_view', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(67, 'job_view', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(68, 'job_create', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(69, 'job_update', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(70, 'job_delete', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(71, 'job_manage_others', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(72, 'job_manage_categories', 'web', '2020-11-18 07:20:02', '2020-11-18 07:20:02'),
(85, 'social_manage_forum', 'web', '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(86, 'plugin_manage', 'web', '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(87, 'vendor_payout_view', 'web', '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(88, 'vendor_payout_manage', 'web', '2020-11-18 07:20:03', '2020-11-18 07:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(2, 'customer', 'web', NULL, NULL, '2020-11-18 07:20:03', '2020-11-18 07:20:03'),
(3, 'administrator', 'web', NULL, NULL, '2020-11-18 07:20:03', '2020-11-18 07:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 1),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 1),
(46, 3),
(47, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(2, 'site_enable_multi_lang', 'general', '1', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(3, 'enable_rtl_egy', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'menu_locations', 'general', '{\"primary\":1}', NULL, 1, 1, NULL, NULL, '2021-01-11 12:52:06'),
(5, 'admin_email', 'general', 'mail@bookme.fi', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(6, 'email_from_name', 'general', 'Bookme', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(7, 'email_from_address', 'general', 'mail@bookme.fi', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(8, 'logo_id', 'general', '', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(9, 'site_favicon', 'general', '', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(10, 'topbar_left_text', 'general', '', NULL, 1, 1, NULL, NULL, '2020-12-21 15:35:03'),
(11, 'footer_text_left', 'general', '<p style=\"text-align: center;\">Copyright &copy; 2020 Bookme - All Rights Reserved</p>', NULL, 1, 1, NULL, NULL, '2020-12-21 15:41:43'),
(12, 'footer_text_right', 'general', '', NULL, 1, 1, NULL, NULL, '2020-12-21 15:41:43'),
(13, 'list_widget_footer', 'general', '[{\"title\":\"Contact US\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            BOOKME\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, 1, 1, NULL, NULL, '2020-12-21 15:58:19'),
(14, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(16, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(17, 'page_contact_desc', 'general', '<h3>Bookme</h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tell. + 00 222 444 33</p>\r\n<p>Email. hello@yoursite.com</p>\r\n<p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p>', NULL, 1, 1, NULL, NULL, '2020-12-21 15:25:13'),
(18, 'page_contact_image', 'general', '', NULL, 1, 1, NULL, NULL, '2020-12-21 15:25:13'),
(19, 'home_page_id', 'general', '1', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(20, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_main', 'payment', 'eur', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(27, 'currency_format', 'payment', 'right_space', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(28, 'currency_decimal', 'payment', ',', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(29, 'currency_thousand', 'payment', '.', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(30, 'currency_no_decimal', 'payment', '0', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(31, 'extra_currency', 'payment', '[{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"}]', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(32, 'map_provider', 'advance', 'gmap', NULL, 1, 1, NULL, NULL, '2020-12-21 11:12:22'),
(33, 'map_gmap_key', 'advance', '', NULL, 1, 1, NULL, NULL, '2020-12-21 11:12:22'),
(34, 'g_offline_payment_enable', 'payment', '', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(35, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, 1, NULL, NULL, NULL, '2020-11-19 12:21:59'),
(36, 'date_format', 'general', 'd/m/Y', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(37, 'site_title', 'general', 'Bookme Finland - Search for Activity, Tour, Boat and Cottage', NULL, 1, 1, NULL, NULL, '2020-12-21 15:27:50'),
(38, 'site_timezone', 'general', 'Europe/Helsinki', NULL, 1, 1, NULL, NULL, '2020-11-18 16:53:35'),
(39, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_header', 'general', '<h1 class=\"site-title\" style=\"text-align: center\">Booking Core</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'email_footer', 'general', '<p class=\"\" style=\"text-align: center\">&copy; 2019 Booking Core. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'enable_mail_user_registered', 'user', '1', NULL, 1, NULL, NULL, NULL, '2021-02-06 17:52:18'),
(43, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center;\">Welcome!</h1>\r\n<h3>Hello&nbsp;</h3>\r\n<p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n<p>Regards,</p>\r\n<p>&nbsp;</p>', NULL, 1, NULL, NULL, NULL, '2021-02-06 17:52:18'),
(44, 'admin_enable_mail_user_registered', 'user', '1', NULL, 1, NULL, NULL, NULL, '2021-02-06 17:52:18'),
(45, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n<p>We have new registration</p>\r\n<p>Email: [email]</p>\r\n<p>Regards,</p>\r\n<p>Booking Core</p>', NULL, 1, NULL, NULL, NULL, '2021-02-06 17:52:18'),
(46, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n<p>You are receiving this email because we received a password reset request for your account.</p>\r\n<p style=\"text-align: center;\">[button_reset_password]</p>\r\n<p>This password reset link expire in 60 minutes.</p>\r\n<p>If you did not request a password reset, no further action is required.</p>\r\n<p>Regards,</p>\r\n<p>Booking Core</p>', NULL, 1, NULL, NULL, NULL, '2021-02-06 17:52:18'),
(47, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'booking_enquiry_for_hotel', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'booking_enquiry_for_tour', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'booking_enquiry_for_space', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'booking_enquiry_for_car', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'booking_enquiry_for_event', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'booking_enquiry_type', 'enquiry', 'booking_and_enquiry', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'booking_enquiry_enable_mail_to_vendor', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'booking_enquiry_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'booking_enquiry_enable_mail_to_admin', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'booking_enquiry_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Vendor:[vendor_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'vendor_content_email_registered', 'vendor', '<h1 style=\"text-align: center;\">Welcome!</h1>\n                            <h3>Hello [first_name] [last_name]</h3>\n                            <p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\n                            <p>An user has been registered as Vendor. Please check the information bellow:</p>\n                            <p>Full name: [first_name] [last_name]</p>\n                            <p>Email: [email]</p>\n                            <p>Registration date: [created_at]</p>\n                            <p>You can approved the request here: [link_approved]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'cookie_agreement_enable', 'advance', '', NULL, 1, 1, NULL, NULL, '2020-12-21 11:12:22'),
(81, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, 1, 1, NULL, NULL, '2020-12-21 11:12:22'),
(82, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\"#\">More info</a></p>', NULL, 1, 1, NULL, NULL, '2020-12-21 11:12:22'),
(83, 'logo_invoice_id', 'booking', '8', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'invoice_company_info', 'booking', '<p><span style=\"font-size: 14pt;\"><strong>Booking Core Company</strong></span></p>\n                                <p>Ha Noi, Viet Nam</p>\n                                <p>www.bookingcore.org</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'tour_page_limit_item', 'tour', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'tour_map_search_fields', 'tour', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'tour_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'space_page_limit_item', 'space', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'space_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'hotel_page_search_title', 'job', 'Search for Job', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:26'),
(109, 'hotel_page_limit_item', 'job', '9', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(110, 'hotel_page_search_banner', 'job', '', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:26'),
(111, 'hotel_layout_item_search', 'job', 'list', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:26'),
(112, 'hotel_attribute_show_in_listing_page', 'job', '6', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(113, 'hotel_layout_search', 'job', 'normal', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:26'),
(114, 'hotel_enable_review', 'job', '1', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(115, 'hotel_review_approved', 'job', '', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(116, 'hotel_review_stats', 'job', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(117, 'hotel_booking_buyer_fees', 'job', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_fi\":null,\"desc_fi\":null,\"price\":\"100\",\"unit\":\"fixed\",\"type\":\"one_time\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(118, 'hotel_map_search_fields', 'job', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(119, 'hotel_search_fields', 'job', '[{\"title\":\"Location\",\"title_fi\":null,\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"Check In - Out\",\"title_fi\":null,\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"title_fi\":null,\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 21:49:27'),
(120, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'car_page_limit_item', 'car', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'car_search_fields', 'car', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'event_page_search_title', 'event', 'Search for event', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'event_page_limit_item', 'event', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'event_page_search_banner', 'event', '161', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'event_layout_search', 'event', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'event_enable_review', 'event', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'event_review_approved', 'event', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'event_review_stats', 'event', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'event_booking_buyer_fees', 'event', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'event_map_search_fields', 'event', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'event_search_fields', 'event', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'update_to_110', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:19', '2020-11-18 07:20:19'),
(141, 'update_to_120', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:20', '2020-11-18 07:20:20'),
(142, 'update_to_130', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:20', '2020-11-18 07:20:20'),
(143, 'update_to_140', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:21', '2020-11-18 07:20:21'),
(144, 'update_to_150', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:21', '2020-11-18 07:20:21'),
(145, 'update_to_151', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:21', '2020-11-18 07:20:21'),
(146, 'update_to_160', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:21', '2020-11-18 07:20:21'),
(147, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'update_to_170', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:22', '2020-11-18 07:20:22'),
(150, 'check_db_engine', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:22', '2020-11-18 07:20:22'),
(151, 'wallet_credit_exchange_rate', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(152, 'wallet_deposit_rate', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(153, 'wallet_deposit_type', NULL, 'list', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(154, 'wallet_deposit_lists', NULL, '[{\"name\":\"100$\",\"amount\":100,\"credit\":100},{\"name\":\"Bonus 10%\",\"amount\":500,\"credit\":550},{\"name\":\"Bonus 15%\",\"amount\":1000,\"credit\":1150}]', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(155, 'wallet_new_deposit_admin_subject', NULL, 'New credit purchase', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(156, 'wallet_new_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(157, 'wallet_new_deposit_customer_subject', NULL, 'Thank you for your purchasing', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(158, 'wallet_new_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(159, 'wallet_update_deposit_admin_subject', NULL, 'Credit purchase updated', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(160, 'wallet_update_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(161, 'wallet_update_deposit_customer_subject', NULL, 'Your credit purchase updated', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(162, 'wallet_update_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(163, 'update_to_181', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(164, 'update_to_182', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 07:20:23', '2020-11-18 07:20:23'),
(165, 'google_client_secret', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(166, 'google_client_id', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(167, 'google_enable', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(168, 'facebook_client_secret', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(169, 'facebook_client_id', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(170, 'facebook_enable', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(171, 'twitter_enable', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(172, 'twitter_client_id', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(173, 'twitter_client_secret', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(174, 'recaptcha_enable', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(175, 'recaptcha_api_key', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(176, 'recaptcha_api_secret', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(177, 'head_scripts', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(178, 'body_scripts', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(179, 'footer_scripts', 'advance', '', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(180, 'size_unit', 'advance', 'm2', NULL, 1, 1, NULL, '2020-11-18 07:57:57', '2020-12-21 11:12:22'),
(181, 'site_desc', 'general', '', NULL, 1, 1, NULL, '2020-11-18 14:51:52', '2020-11-18 16:53:35'),
(182, 'site_first_day_of_the_weekin_calendar', 'general', '1', NULL, 1, 1, NULL, '2020-11-18 14:51:52', '2020-11-18 16:53:35'),
(183, 'enable_rtl', 'general', '', NULL, 1, 1, NULL, '2020-11-18 14:51:52', '2020-11-18 16:53:35'),
(184, 'g_offline_payment_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(185, 'g_offline_payment_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(186, 'g_offline_payment_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(187, 'g_offline_payment_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(188, 'g_paypal_enable', 'payment', '1', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(189, 'g_paypal_name', 'payment', 'Paypal', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(190, 'g_paypal_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(191, 'g_paypal_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(192, 'g_paypal_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(193, 'g_paypal_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(194, 'g_paypal_test', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(195, 'g_paypal_convert_to', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(196, 'g_paypal_exchange_rate', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(197, 'g_paypal_test_account', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(198, 'g_paypal_test_client_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(199, 'g_paypal_test_client_secret', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(200, 'g_paypal_account', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(201, 'g_paypal_client_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(202, 'g_paypal_client_secret', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(203, 'g_stripe_enable', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(204, 'g_stripe_name', 'payment', 'Stripe', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(205, 'g_stripe_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(206, 'g_stripe_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(207, 'g_stripe_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(208, 'g_stripe_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(209, 'g_stripe_stripe_secret_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(210, 'g_stripe_stripe_publishable_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(211, 'g_stripe_stripe_enable_sandbox', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(212, 'g_stripe_stripe_test_secret_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(213, 'g_stripe_stripe_test_publishable_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(214, 'g_two_checkout_gateway_enable', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(215, 'g_two_checkout_gateway_name', 'payment', 'Two Checkout', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(216, 'g_two_checkout_gateway_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(217, 'g_two_checkout_gateway_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(218, 'g_two_checkout_gateway_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(219, 'g_two_checkout_gateway_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(220, 'g_two_checkout_gateway_twocheckout_account_number', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(221, 'g_two_checkout_gateway_twocheckout_secret_word', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(222, 'g_two_checkout_gateway_twocheckout_enable_sandbox', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 12:21:59', '2020-11-19 12:21:59'),
(223, 'style_main_color', 'style', '#2c241b', NULL, 1, 1, NULL, '2020-12-03 00:34:06', '2021-01-09 02:10:56'),
(224, 'style_custom_css', 'style', '.listbox .form-control{\r\n    height:auto;\r\n}', NULL, 1, 1, NULL, '2020-12-03 00:34:06', '2021-01-09 02:12:30'),
(225, 'style_typo', 'style', '{\"font_family\":\"Source Sans Pro\",\"color\":null,\"font_size\":null,\"line_height\":null,\"font_weight\":null}', NULL, 1, 1, NULL, '2020-12-03 00:34:06', '2021-01-09 02:10:56'),
(226, 'hotel_disable', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:26', '2021-01-09 21:49:26'),
(227, 'hotel_location_search_style', 'job', 'normal', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(228, 'hotel_enable_review_after_booking', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(229, 'hotel_review_number_per_page', 'job', '5', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(230, 'hotel_page_list_seo_title', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(231, 'hotel_page_list_seo_desc', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(232, 'hotel_page_list_seo_image', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(233, 'hotel_page_list_seo_share', 'job', '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(234, 'hotel_vendor_create_service_must_approved_by_admin', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(235, 'hotel_allow_vendor_can_change_their_booking_status', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(236, 'hotel_allow_review_after_making_completed_booking', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(237, 'hotel_deposit_enable', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(238, 'hotel_deposit_type', 'job', 'fixed', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(239, 'hotel_deposit_amount', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 21:49:27', '2021-01-09 21:49:27'),
(240, 'hotel_deposit_fomular', 'job', 'default', NULL, 1, NULL, NULL, '2021-01-09 21:49:28', '2021-01-09 21:49:28'),
(241, 'job_disable', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(242, 'job_page_search_title', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(243, 'job_page_search_banner', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(244, 'job_layout_search', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(245, 'job_layout_item_search', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(246, 'job_attribute_show_in_listing_page', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(247, 'job_location_search_style', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(248, 'job_page_limit_item', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:17'),
(249, 'job_enable_review', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(250, 'job_review_approved', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(251, 'job_enable_review_after_booking', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(252, 'job_review_number_per_page', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(253, 'job_review_stats', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(254, 'job_page_list_seo_title', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(255, 'job_page_list_seo_desc', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(256, 'job_page_list_seo_image', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(257, 'job_page_list_seo_share', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(258, 'job_booking_buyer_fees', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(259, 'job_vendor_create_service_must_approved_by_admin', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(260, 'job_allow_vendor_can_change_their_booking_status', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(261, 'job_search_fields', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(262, 'job_map_search_fields', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(263, 'job_allow_review_after_making_completed_booking', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:28', '2021-01-12 05:15:18'),
(264, 'job_deposit_enable', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:29', '2021-01-12 05:15:18'),
(265, 'job_deposit_type', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:29', '2021-01-12 05:15:18'),
(266, 'job_deposit_amount', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:29', '2021-01-12 05:15:18'),
(267, 'job_deposit_fomular', 'job', '', NULL, 1, 1, NULL, '2021-01-12 05:14:29', '2021-01-12 05:15:18'),
(268, 'user_enable_login_recaptcha', 'user', '', NULL, 1, NULL, NULL, '2021-02-06 17:52:18', '2021-02-06 17:52:18'),
(269, 'user_enable_register_recaptcha', 'user', '', NULL, 1, NULL, NULL, '2021-02-06 17:52:18', '2021-02-06 17:52:18'),
(270, 'inbox_enable', 'user', '', NULL, 1, NULL, NULL, '2021-02-06 17:52:18', '2021-02-06 17:52:18'),
(271, 'subject_email_verify_register_user', 'user', '', NULL, 1, NULL, NULL, '2021-02-06 17:52:18', '2021-02-06 17:52:18'),
(272, 'content_email_verify_register_user', 'user', '', NULL, 1, NULL, NULL, '2021-02-06 17:52:18', '2021-02-06 17:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_subscribers`
--

INSERT INTO `core_subscribers` (`id`, `email`, `first_name`, `last_name`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'fdsf2d@dfsd.dsfsd', 'sdsadsa', 'sdasdasd', 1, 1, NULL, '2021-02-24 08:55:28', '2021-02-24 09:02:54'),
(2, 'dfsd@sfas.sdfds', NULL, NULL, 1, NULL, NULL, '2021-02-24 08:56:00', '2021-02-24 08:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 07:20:05', '2020-11-18 07:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_job\",\"name\":\"Job: Form Search\",\"model\":{\"title\":\"Löydä työkokeilusi juuri kiinnostuksesi perusteella\",\"sub_title\":\"Apply privately to  %s Startup jobs with one application\",\"bg_image\":175},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_job_category\",\"name\":\"Job: Category list\",\"model\":{\"title\":\"Featured Categories\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_job\",\"name\":\"Job: List Items\",\"model\":{\"title\":\"New Jobs Listing\",\"desc\":\"\",\"number\":5,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"ads_txt\":\"this is car site and ddd ......................\",\"bg_image\":211,\"ads_link\":\"\",\"ads_css\":\"color:white;\\ntop:100px;\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, 1, NULL, NULL, '2020-11-18 07:20:05', '2021-02-24 07:51:52'),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-11-18 07:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\",\"sauna\",\"event\",\"boat\",\"activity\",\"accommodation\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16,\"title_for_accommodation\":\"\",\"title_for_activity\":\"\",\"title_for_boat\":\"\",\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_hotel\":\"\",\"title_for_sauna\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"hide_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\",\"custom_ids\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Read the latest from blog\",\"desc\":\"Contrary to popular belief\",\"number\":6,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\",\"bg_color\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, 1, '2020-11-18 07:20:05', '2020-11-18 07:31:12'),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 07:20:05', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 07:20:05', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 07:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'banner-search-event', 'demo/event/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'event-1', 'demo/event/event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'event-2', 'demo/event/event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'event-3', 'demo/event/event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'event-4', 'demo/event/event-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'event-5', 'demo/event/event-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'event-6', 'demo/event/event-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'event-7', 'demo/event/event-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'event-8', 'demo/event/event-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'event-9', 'demo/event/event-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'event-10', 'demo/event/event-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'event-11', 'demo/event/event-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'event-12', 'demo/event/event-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'gallery-event-1', 'demo/event/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'gallery-event-2', 'demo/event/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'gallery-event-3', 'demo/event/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'gallery-event-4', 'demo/event/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'gallery-event-5', 'demo/event/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'gallery-event-6', 'demo/event/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'banner-event-1', 'demo/event/banner-detail/banner-event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'banner-event-2', 'demo/event/banner-detail/banner-event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'banner-event-3', 'demo/event/banner-detail/banner-event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'red-cottage', '0000/1/2020/12/22/red-cottage.jpg', '1307455', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1906, 1263, '2020-12-21 22:00:32', '2020-12-21 22:00:32'),
(197, 'home-mix', '0000/1/2020/12/22/home-mix.jpg', '1568330', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1920, 1280, '2020-12-21 22:31:39', '2020-12-21 22:31:39'),
(198, 'sauna-accessories-with-birch-broom-hat-and-towels-rduwahq1-copy', '0000/1/2020/12/22/sauna-accessories-with-birch-broom-hat-and-towels-rduwahq1-copy.jpg', '270717', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1280, 853, '2020-12-21 23:20:46', '2020-12-21 23:20:46'),
(202, 'profile-logo-nacwz-b6ab460874f75b62b290c28a908339bb', '0000/19/2021/01/21/profile-logo-nacwz-b6ab460874f75b62b290c28a908339bb.png', '6070', 'image/jpeg', 'png', 19, NULL, NULL, NULL, NULL, 280, 280, '2021-01-21 13:39:51', '2021-01-21 13:39:51'),
(203, '3', '0000/1/2021/01/27/3.png', '935341', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 727, 555, '2021-01-27 07:33:56', '2021-01-27 07:33:56'),
(204, '1', '0000/1/2021/01/27/1.png', '438061', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 525, 406, '2021-01-27 07:33:56', '2021-01-27 07:33:56'),
(205, '2', '0000/1/2021/01/27/2.png', '689509', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 724, 559, '2021-01-27 07:33:56', '2021-01-27 07:33:56'),
(206, 'screenshot-1', '0000/23/2021/02/05/screenshot-1.jpg', '557', 'image/png', 'jpg', 23, NULL, NULL, NULL, NULL, 157, 177, '2021-02-05 17:53:27', '2021-02-05 17:53:27'),
(211, 'screenshot-20210218-203748-samsung-internet-1', '0000/1/2021/02/24/screenshot-20210218-203748-samsung-internet-1.jpg', '509044', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1080, 2400, '2021-02-24 07:38:05', '2021-02-24 07:38:05');

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
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_07_202152_update_transfers_table', 1),
(6, '2018_11_15_124230_create_wallets_table', 1),
(7, '2018_11_19_164609_update_transactions_table', 1),
(8, '2018_11_20_133759_add_fee_transfers_table', 1),
(9, '2018_11_22_131953_add_status_transfers_table', 1),
(10, '2018_11_22_133438_drop_refund_transfers_table', 1),
(11, '2019_03_13_174533_create_permission_tables', 1),
(12, '2019_03_17_114820_create_table_core_pages', 1),
(13, '2019_03_17_140539_create_media_files_table', 1),
(14, '2019_03_20_072502_create_bravo_tours', 1),
(15, '2019_03_20_081256_create_core_news_category_table', 1),
(16, '2019_03_27_081940_create_core_setting_table', 1),
(17, '2019_03_28_101009_create_bravo_booking_table', 1),
(18, '2019_03_28_165911_create_booking_meta_table', 1),
(19, '2019_03_29_093236_update_bookings_table', 1),
(20, '2019_04_01_045229_create_user_meta_table', 1),
(21, '2019_04_01_150630_create_menu_table', 1),
(22, '2019_04_02_150630_create_core_news_table', 1),
(23, '2019_04_03_073553_bravo_tour_category', 1),
(24, '2019_04_03_080159_bravo_location', 1),
(26, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(27, '2019_05_07_085430_create_core_languages_table', 1),
(28, '2019_05_07_085442_create_core_translations_table', 1),
(29, '2019_05_13_111553_update_status_transfers_table', 1),
(30, '2019_05_17_074008_create_bravo_review', 1),
(31, '2019_05_17_074048_create_bravo_review_meta', 1),
(32, '2019_05_17_113042_create_tour_attrs_table', 1),
(33, '2019_05_21_084235_create_bravo_contact_table', 1),
(34, '2019_05_28_152845_create_core_subscribers_table', 1),
(35, '2019_06_17_142338_bravo_seo', 1),
(36, '2019_06_25_103755_add_exchange_status_transfers_table', 1),
(37, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(38, '2019_07_08_075436_create_core_vendor_plans', 1),
(39, '2019_07_08_083733_create_vendors_plan_payments', 1),
(40, '2019_07_11_083501_update_from_110_to_120', 1),
(41, '2019_07_29_184926_decimal_places_wallets_table', 1),
(42, '2019_07_30_072809_create_space_table', 1),
(43, '2019_07_30_072809_create_tour_dates_table', 1),
(44, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(45, '2019_08_09_163909_create_inbox_table', 1),
(46, '2019_08_16_094354_update_from_120_to_130', 1),
(47, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(48, '2019_09_13_070650_update_from_130_to_140', 1),
(49, '2019_09_20_072809_create_hotel_table', 1),
(50, '2019_10_02_193759_add_discount_transfers_table', 1),
(51, '2019_10_22_151319_create_car_table', 1),
(52, '2019_10_22_151319_create_social_table', 1),
(53, '2019_11_05_092516_update_from_140_to_150', 1),
(54, '2019_11_18_085024_update_from_150_to_151', 1),
(55, '2020_03_09_102753_update_from_151_to_160', 1),
(56, '2020_04_02_150631_create_core_tags_table', 1),
(57, '2020_04_05_101016_create_event_table', 1),
(58, '2020_05_16_073120_update_from_160_to_170', 1),
(59, '2020_11_16_191727_create_bravo_activities', 1),
(60, '2020_11_16_191827_create_bravo_activity_category', 1),
(61, '2020_11_16_191856_create_bravo_activity_meta', 1),
(62, '2020_11_16_191932_create_bravo_activity_term', 1),
(63, '2020_11_16_193347_create_bravo_activity_translations', 1),
(64, '2020_11_16_193429_create_bravo_activity_category_translations', 1),
(65, '2020_11_16_203237_create_activity_dates_table', 1),
(66, '2020_11_16_235436_add_business_id_to_users_table', 1),
(67, '2020_11_17_072809_create_accommodation_table', 1),
(68, '2020_11_17_151319_create_boat_table', 1),
(69, '2020_11_17_201016_create_sauna_table', 1),
(70, '2021_04_02_150632_create_core_tag_new_table', 1),
(72, '2021_01_19_150511_create_bravo_job_categories_table', 2);

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
('mail@dorica.fi', '$2y$10$v4FMfMniF.h6VuGxLnr0L.zF5cWVr3gVjMX8rGb4.ZK57uKByMlU2', '2021-01-11 21:05:50'),
('admin@dev.com', '$2y$10$jcjdvHS/x.WTTPiIvSc94.L4JRdSz6xEh2UP4CQHTJiqk7eFBNsra', '2021-01-21 15:32:49'),
('pancyboxi@gmail.com', '$2y$10$nkDA5BixIfthdcPbCXlKa.XHK7OjtJsPquNDNtgTll.fN7hxzMAnm', '2021-01-21 15:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `social_forums`
--

CREATE TABLE `social_forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_forums`
--

INSERT INTO `social_forums` (`id`, `name`, `content`, `slug`, `status`, `icon`, `icon_image`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 'Solo Travel', NULL, 'solo-travel', 'publish', 'fa fa-cloud', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(2, 'Road Trips', NULL, 'road-trips', 'publish', 'fa fa-bear', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(3, 'Travel Gadgets and Gear', NULL, 'travel-gadgets-and-gear', 'publish', 'fa fa-gear', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(4, 'Family Travel', NULL, 'family-travel', 'publish', 'fa fa-map-o', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(5, 'Honeymoons and Romance', NULL, 'honeymoons-and-romance', 'publish', 'fa fa-heartbeat', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(6, 'Outdoors', NULL, 'outdoors', 'publish', 'fa fa-paper-plane-o', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11'),
(7, 'Traveling with Pets', NULL, 'traveling-with-pets', 'publish', 'fa fa-paw', NULL, NULL, NULL, '2020-11-18 07:20:11', '2020-11-18 07:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `social_groups`
--

CREATE TABLE `social_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `banner_image` bigint(20) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_group_user`
--

CREATE TABLE `social_group_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_posts`
--

CREATE TABLE `social_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `comment_disabled_by` bigint(20) DEFAULT NULL,
  `privary` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `privacy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_post_comments`
--

CREATE TABLE `social_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_user_follow`
--

CREATE TABLE `social_user_follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `mobile`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_id`, `business_name`, `verify_submit_status`, `is_verified`, `contact_email`) VALUES
(1, 'Dorica B', 'Dorica', 'B', 'info@dorica.fi', NULL, '$2y$10$fMOKoDO1ZfOSNfbG/J7mBe8ZnWyP.ybo1/jC/QJDmibNlu3Zbs1de', 'fgfdgdfgd', '123213213', '23441124', '1970-01-01', '1', NULL, 'FI', NULL, NULL, 203, '<p>We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.</p>', 'publish', NULL, NULL, NULL, NULL, NULL, 'CtfCjXoIy9g8l72t3hKbBfY2kHQYy0PwxMDTR4u7bsuDqmLGdDw5kkkn4mCU', '2020-11-18 07:20:03', '2021-05-04 02:48:21', NULL, NULL, NULL, '3096971-4', 'Masala Restaurant', NULL, NULL, '21321@w.w'),
(18, 'Dorica Oy', 'Dorica', 'Oy', 'mail@dorica.fi', NULL, '$2y$10$mXr74P9FRhz5EtSShwH1COhfWH4fR3vRNLSFa02uiPGCtInn1uC8a', NULL, NULL, '0403772034', '0001-11-30', 'Helsinki', NULL, 'FI', NULL, NULL, 193, '', 'publish', NULL, NULL, 10, 'percent', NULL, 'RLOvkFHPKp9JYd8wWfKCp1UEUjrZtSZlmHWbOb5jo8sXunXycgsDLRRJpYZX', '2020-11-18 07:39:03', '2020-12-22 17:39:23', NULL, NULL, NULL, '3096974-4', 'Finnloma', NULL, NULL, NULL),
(23, 'dfsd dsfsd', 'dfsd', 'dsfsd', 'temp@gmail.com', NULL, '$2y$10$QnKvEusJRi1InXWJDJd39eivl3ckYElh/EkzRRDkEgUPapZl2PYfG', 'temp address2312', '2312', '12312', '1970-01-01', '5', NULL, 'AL', NULL, NULL, 206, '', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-05 17:52:03', '2021-02-05 18:39:49', NULL, NULL, NULL, 'temp id', 'temp company', NULL, NULL, 'temp@gmail.com'),
(24, 'Urakka Vertailu', 'Urakka', 'Vertailu', 'mail@urakkavertailu.fi', NULL, '$2y$10$DEFENJrZbCgW9Rg3hak86.5yy3yVeVG.93RYnm89LxkU/Em8k1hJe', 'Laivurinkatu 41', '040-12345678', '0912345678', '1970-01-01', '1', NULL, 'FI', NULL, NULL, 207, '', 'publish', NULL, NULL, NULL, NULL, NULL, 'BZSKtCEYmgph0e0ZMyRFM5Tn7p2KFSi4eO4aNC6bZcR5vGfsryEelzznQf9f', '2021-02-05 18:57:36', '2021-02-05 22:17:14', NULL, NULL, NULL, '1234567-8', 'UrakkaVertailu', NULL, NULL, 'mail@urakkavertailu.fi'),
(25, 'Marko N', 'Marko', 'N', 'mn@dev.com', NULL, '$2y$10$dDGBsj0KxymFbS2ayAphD.iOjD9GVZwTvuiPli6kvkZKMSy05Wuz.', 'Sombor', NULL, '4444444444444', '0000-00-00', 'Sombor', 'Sombor', 'RS', 420201, NULL, 203, '', 'publish', NULL, NULL, NULL, NULL, NULL, 'Ak782pk8TABb1HmDdq8l047thl03Tjo0CI2i9eCk2DlpKbP8jMCjOkDSMBrC', '2021-02-09 14:18:48', '2021-02-10 15:40:55', NULL, NULL, NULL, 'dev-business', 'Marko N', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_transactions`
--

CREATE TABLE `user_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_transactions`
--

INSERT INTO `user_transactions` (`id`, `payable_type`, `payable_id`, `wallet_id`, `type`, `amount`, `confirmed`, `meta`, `uuid`, `created_at`, `updated_at`, `create_user`, `update_user`, `payment_id`, `booking_id`) VALUES
(1, 'App\\User', 19, 19, 'deposit', '22', 1, '{\"admin_deposit\":1}', '0b3f8c8c-f53e-4e36-a567-8a8ba247c17c', '2021-02-05 18:59:16', '2021-02-05 18:59:16', 1, NULL, NULL, NULL),
(2, 'App\\User', 19, 19, 'deposit', '2000000', 1, '{\"admin_deposit\":1}', 'b4f7d73c-bc30-48de-9b79-5551633d8c89', '2021-02-05 18:59:23', '2021-02-05 18:59:23', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_transfers`
--

CREATE TABLE `user_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`, `create_user`, `update_user`) VALUES
(1, 'App\\User', 1, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:20:43', '2020-11-18 07:20:43', NULL, NULL),
(2, 'App\\User', 2, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:21:32', '2020-11-18 07:21:32', NULL, NULL),
(3, 'App\\User', 17, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(4, 'App\\User', 16, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(5, 'App\\User', 15, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(6, 'App\\User', 14, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(7, 'App\\User', 13, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(8, 'App\\User', 12, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(9, 'App\\User', 11, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(10, 'App\\User', 10, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(11, 'App\\User', 9, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(12, 'App\\User', 8, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(13, 'App\\User', 7, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(14, 'App\\User', 6, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(15, 'App\\User', 5, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(16, 'App\\User', 4, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(17, 'App\\User', 3, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:33:00', '2020-11-18 07:33:00', NULL, NULL),
(18, 'App\\User', 18, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 07:39:19', '2020-11-18 07:39:19', NULL, NULL),
(19, 'App\\User', 19, 'Default Wallet', 'default', NULL, '2000022', 2, '2021-01-04 19:03:10', '2021-02-05 18:59:23', NULL, NULL),
(20, 'App\\User', 20, 'Default Wallet', 'default', NULL, '0', 2, '2021-01-27 12:53:23', '2021-01-27 12:53:23', NULL, NULL),
(21, 'App\\User', 23, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-05 17:55:36', '2021-02-05 17:55:36', NULL, NULL),
(22, 'App\\User', 24, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-05 18:57:41', '2021-02-05 18:57:41', NULL, NULL),
(23, 'App\\User', 25, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-09 14:18:52', '2021-02-09 14:18:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`id`, `object_id`, `object_model`, `user_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(3, 9, 'hotel', 1, 1, NULL, '2020-12-12 13:12:51', '2020-12-12 13:12:51'),
(5, 22, 'tour', 1, 1, NULL, '2020-12-12 13:19:37', '2020-12-12 13:19:37'),
(6, 21, 'tour', 1, 1, NULL, '2020-12-12 13:19:39', '2020-12-12 13:19:39'),
(7, 20, 'tour', 1, 1, NULL, '2020-12-12 13:19:40', '2020-12-12 13:19:40'),
(8, 19, 'tour', 1, 1, NULL, '2020-12-12 13:19:42', '2020-12-12 13:19:42'),
(9, 10, 'space', 1, 1, NULL, '2020-12-12 13:19:56', '2020-12-12 13:19:56'),
(10, 2, 'space', 1, 1, NULL, '2020-12-12 13:19:57', '2020-12-12 13:19:57'),
(11, 1, 'space', 1, 1, NULL, '2020-12-12 13:19:58', '2020-12-12 13:19:58'),
(12, 5, 'car', 1, 1, NULL, '2020-12-12 13:20:04', '2020-12-12 13:20:04'),
(13, 4, 'car', 1, 1, NULL, '2020-12-12 13:20:06', '2020-12-12 13:20:06'),
(14, 3, 'car', 1, 1, NULL, '2020-12-12 13:20:07', '2020-12-12 13:20:07'),
(15, 2, 'car', 1, 1, NULL, '2020-12-12 13:20:08', '2020-12-12 13:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_jobs`
--
ALTER TABLE `bravo_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indexes for table `bravo_job_categories`
--
ALTER TABLE `bravo_job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_job_term`
--
ALTER TABLE `bravo_job_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_job_translations`
--
ALTER TABLE `bravo_job_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indexes for table `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indexes for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indexes for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indexes for table `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indexes for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indexes for table `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indexes for table `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indexes for table `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
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
-- Indexes for table `social_forums`
--
ALTER TABLE `social_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_groups`
--
ALTER TABLE `social_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_group_user`
--
ALTER TABLE `social_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_posts`
--
ALTER TABLE `social_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transactions_uuid_unique` (`uuid`),
  ADD KEY `user_transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `user_transactions_type_index` (`type`),
  ADD KEY `user_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transfers_uuid_unique` (`uuid`),
  ADD KEY `user_transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `user_transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `user_transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `user_transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `user_wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `user_wallets_slug_index` (`slug`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_jobs`
--
ALTER TABLE `bravo_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bravo_job_categories`
--
ALTER TABLE `bravo_job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bravo_job_term`
--
ALTER TABLE `bravo_job_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `bravo_job_translations`
--
ALTER TABLE `bravo_job_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `social_forums`
--
ALTER TABLE `social_forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_groups`
--
ALTER TABLE `social_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_group_user`
--
ALTER TABLE `social_group_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_posts`
--
ALTER TABLE `social_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_transfers`
--
ALTER TABLE `user_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD CONSTRAINT `user_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `user_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD CONSTRAINT `user_transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
