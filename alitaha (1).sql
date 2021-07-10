-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 10, 2021 at 09:56 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alitaha`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'brand1', 'brand1', 'brands\\July2021\\6khQKZNe9V9eiSOKGoRZ.jpg', '2021-07-06 20:07:23', '2021-07-06 20:07:23'),
(2, 'brand2', 'brand2', 'brands\\July2021\\e33piWgpujMVcPmdRRWF.jpg', '2021-07-06 20:07:45', '2021-07-06 20:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ac_id` int(99) DEFAULT NULL COMMENT 'americommerce_category_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `ac_id`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-10-16 05:43:17', '2020-10-16 05:43:17', NULL),
(2, NULL, 1, 'AliTaha', 'category-2', '2020-10-16 05:43:17', '2020-10-16 05:43:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `mail`, `message`, `created_at`, `updated_at`) VALUES
(1, 'mail@mail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2021-07-10 08:37:40', '2021-07-10 08:37:40'),
(2, 'mail@mail.com', 'aaaaaaaaaaaaaa', '2021-07-10 08:44:45', '2021-07-10 08:44:45'),
(3, 'mail@mail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2021-07-10 08:56:57', '2021-07-10 08:56:57'),
(4, 'mail@mail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2021-07-10 09:14:03', '2021-07-10 09:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

DROP TABLE IF EXISTS `contact_infos`;
CREATE TABLE IF NOT EXISTS `contact_infos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `phone`, `mail`, `facebook`, `twitter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, '0990000000000000000', 'mail@mail.com', 'facebook.com', 'twitter.com', '0', '2021-07-10 09:06:41', '2021-07-10 09:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `cook_books`
--

DROP TABLE IF EXISTS `cook_books`;
CREATE TABLE IF NOT EXISTS `cook_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(58, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 10),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(63, 8, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":null},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"640\",\"height\":\"640\"}}]}', 7),
(65, 8, 'gallery', 'multiple_images', 'Gallery', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":null},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"850\",\"height\":\"520\"}}]}', 8),
(66, 8, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 9),
(67, 8, 'size', 'text', 'Size', 0, 1, 1, 1, 1, 1, '{}', 10),
(68, 8, 'size_unit_id', 'text', 'Size Unit', 0, 1, 1, 1, 1, 1, '{}', 12),
(69, 8, 'is_active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"display\":{\"width\":6}}', 15),
(70, 8, 'is_offer', 'checkbox', 'Offer', 0, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"display\":{\"width\":6}}', 13),
(71, 8, 'is_large', 'checkbox', 'Large', 0, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"display\":{\"width\":6}}', 16),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 17),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(74, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"},\"display\":{\"width\":6}}', 3),
(75, 7, 'order', 'number', 'Order', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 6),
(76, 7, 'is_more', 'checkbox', 'More Menu', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"on\":\"Yes\",\"off\":\"No\"}', 7),
(77, 7, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:product_categories,slug\"},\"display\":{\"width\":6}}', 3),
(78, 8, 'product_belongsto_size_unit_relationship', 'relationship', 'unit', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\SizeUnit\",\"table\":\"size_units\",\"type\":\"belongsTo\",\"column\":\"size_unit_id\",\"key\":\"id\",\"label\":\"unit\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(79, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 11, 'unit', 'text', 'Unit', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 3),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(83, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 13, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(85, 13, 'author', 'text', 'Author', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 3),
(86, 13, 'description', 'rich_text_box', 'Description', 1, 0, 1, 1, 1, 1, '{}', 4),
(87, 13, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":null},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"660\"}}]}', 5),
(88, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(89, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(90, 13, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 8),
(91, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(93, 14, 'description', 'text', 'Description', 1, 0, 1, 1, 1, 1, '{}', 3),
(94, 14, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":null},\"quality\":\"70%\",\"upsize\":false}', 4),
(95, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 5),
(96, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(97, 7, 'is_homepage', 'checkbox', 'Is Homepage', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 8),
(98, 8, 'product_belongsto_product_category_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(99, 8, 'product_category_id', 'text', 'Product Category Id', 1, 1, 1, 1, 1, 1, '{}', 18),
(100, 7, 'parent_id', 'select_dropdown', 'Parent', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 5),
(101, 7, 'product_category_belongsto_product_category_relationship', 'relationship', 'Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(102, 8, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(103, 8, 'discount', 'number', 'Discount Percent', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 14),
(104, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 16, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 16, 'billing_email', 'text', 'Billing Email', 0, 0, 1, 1, 1, 1, '{}', 3),
(107, 16, 'billing_name', 'text', 'Billing Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 16, 'billing_address', 'text', 'Billing Address', 0, 0, 1, 1, 1, 1, '{}', 5),
(109, 16, 'closest_address', 'text', 'Closest Address', 1, 1, 1, 1, 1, 1, '{}', 6),
(110, 16, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 7),
(111, 16, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 8),
(112, 16, 'billing_postalcode', 'text', 'Billing Postalcode', 0, 0, 1, 1, 1, 1, '{}', 9),
(113, 16, 'billing_phone', 'text', 'Billing Phone', 0, 1, 1, 1, 1, 1, '{}', 10),
(114, 16, 'billing_subtotal', 'text', 'Billing Subtotal', 1, 0, 1, 1, 1, 1, '{}', 11),
(115, 16, 'billing_tax', 'text', 'Billing Tax', 1, 0, 1, 1, 1, 1, '{}', 12),
(116, 16, 'billing_total', 'text', 'Billing Total', 1, 1, 1, 1, 1, 1, '{}', 13),
(117, 16, 'payment_gateway', 'text', 'Payment Gateway', 1, 0, 1, 1, 1, 1, '{}', 14),
(118, 16, 'shipped', 'text', 'Shipped', 1, 0, 1, 1, 1, 1, '{}', 15),
(119, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{\"format\":\"%Y-%m-%d\"}', 16),
(120, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(130, 8, 'cookbook_author', 'text', 'Cookbook Author', 0, 0, 1, 1, 1, 1, '{}', 3),
(131, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(132, 18, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(133, 18, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:recipes,slug\"}}', 3),
(134, 18, 'recipe_category_id', 'text', 'Recipe Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(135, 18, 'preparation_time', 'text', 'Preparation Time', 1, 1, 1, 1, 1, 1, '{}', 5),
(136, 18, 'serving_range', 'text', 'Serving Range', 1, 1, 1, 1, 1, 1, '{}', 6),
(137, 18, 'short_desc', 'text_area', 'Short Desc', 1, 1, 1, 1, 1, 1, '{}', 7),
(138, 18, 'main_desc', 'rich_text_box', 'Main Desc', 1, 1, 1, 1, 1, 1, '{}', 8),
(139, 18, 'recipe_image', 'image', 'Recipe Image', 1, 1, 1, 1, 1, 1, '{}', 9),
(140, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 10),
(141, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(142, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 19, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(144, 19, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:recipe_categories,slug\"}}', 3),
(145, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 4),
(146, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(148, 18, 'recipe_belongsto_recipe_category_relationship', 'relationship', 'recipe_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\RecipeCategory\",\"table\":\"recipe_categories\",\"type\":\"belongsTo\",\"column\":\"recipe_category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 12),
(153, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(154, 22, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 2),
(155, 22, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(156, 22, 'logo', 'image', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 4),
(157, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 5),
(158, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(159, 8, 'product_belongsto_brand_relationship', 'relationship', 'brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":null}', 20),
(160, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 28, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 2),
(162, 28, 'mail', 'text', 'Mail', 1, 1, 1, 1, 1, 1, '{}', 3),
(163, 28, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 4),
(164, 28, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 5),
(165, 28, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 6),
(166, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(167, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(168, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 30, 'mail', 'text', 'Mail', 1, 1, 1, 1, 1, 1, '{}', 2),
(170, 30, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 3),
(171, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(172, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(173, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 31, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 2),
(175, 31, 'mail', 'text', 'Mail', 1, 1, 1, 1, 1, 1, '{}', 3),
(176, 31, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 4),
(177, 31, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 5),
(178, 31, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 6),
(179, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(180, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-16 05:43:16', '2020-11-24 10:40:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(7, 'product_categories', 'product-categories', 'Product Category', 'Product Categories', NULL, 'App\\Models\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-16 06:06:50', '2020-11-24 11:49:47'),
(8, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-16 06:07:44', '2021-01-21 20:37:00'),
(11, 'size_units', 'size-units', 'Size Unit', 'Size Units', NULL, 'App\\Models\\SizeUnit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(13, 'cook_books', 'cook-books', 'Cook Book', 'Cook Books', NULL, 'App\\Models\\CookBook', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-21 19:17:19', '2020-11-21 19:36:44'),
(14, 'slides', 'slides', 'Slide', 'Slides', NULL, 'App\\Models\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-21 19:18:50', '2020-11-21 19:48:37'),
(16, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-20 18:15:22', '2021-01-20 21:40:36'),
(18, 'recipes', 'recipes', 'Recipe', 'Recipes', NULL, 'App\\Models\\Recipe', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(19, 'recipe_categories', 'recipe-categories', 'Recipe Category', 'Recipe Categories', NULL, 'App\\Models\\RecipeCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(22, 'brands', 'brands', 'Brand', 'Brands', NULL, 'App\\Models\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(30, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(31, 'contact_infos', 'contact-infos', 'Contact Info', 'Contact Infos', NULL, 'App\\Models\\ContactInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-10 09:05:33', '2021-07-10 09:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-16 05:43:15', '2020-10-16 05:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-16 05:43:15', '2020-10-16 05:43:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-16 05:43:15', '2020-11-21 19:20:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-16 05:43:15', '2020-10-16 05:43:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-16 05:43:15', '2020-10-16 05:43:15', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2020-10-16 05:43:15', '2020-11-21 19:20:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-10-16 05:43:15', '2020-11-20 21:03:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-10-16 05:43:15', '2020-11-20 21:03:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-10-16 05:43:15', '2020-11-20 21:03:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-10-16 05:43:15', '2020-11-20 21:03:54', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2020-10-16 05:43:15', '2020-11-21 19:20:36', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-10-16 05:43:17', '2020-11-20 21:03:54', 'voyager.hooks', NULL),
(15, 1, 'Product Categories', '', '_self', 'voyager-categories', '#000000', 17, 1, '2020-10-16 06:06:50', '2020-11-20 21:05:56', 'voyager.product-categories.index', 'null'),
(16, 1, 'Products', '', '_self', 'voyager-hotdog', '#000000', 17, 2, '2020-10-16 06:07:44', '2020-11-20 21:07:46', 'voyager.products.index', 'null'),
(17, 1, 'Website Contents', '', '_self', 'voyager-window-list', '#000000', NULL, 4, '2020-11-20 21:03:43', '2020-11-20 21:03:58', NULL, ''),
(18, 1, 'Size Units', '', '_self', 'voyager-barbell', '#000000', 17, 5, '2020-11-20 21:24:10', '2020-11-21 19:20:36', 'voyager.size-units.index', 'null'),
(19, 1, 'Cook Books', '', '_self', 'voyager-book', '#000000', 17, 3, '2020-11-21 19:17:19', '2020-11-21 19:21:05', 'voyager.cook-books.index', 'null'),
(20, 1, 'Slides', '', '_self', 'voyager-photos', '#000000', 17, 4, '2020-11-21 19:18:50', '2020-11-21 19:21:28', 'voyager.slides.index', 'null'),
(21, 1, 'Orders', '', '_self', NULL, NULL, NULL, 8, '2021-01-20 18:15:22', '2021-01-20 18:15:22', 'voyager.orders.index', NULL),
(0, 1, 'Recipes', '', '_self', NULL, NULL, NULL, 9, '2021-07-06 13:33:26', '2021-07-06 13:33:26', 'voyager.recipes.index', NULL),
(0, 1, 'Recipe Categories', '', '_self', NULL, NULL, NULL, 10, '2021-07-06 13:37:18', '2021-07-06 13:37:18', 'voyager.recipe-categories.index', NULL),
(0, 1, 'Brands', '', '_self', NULL, NULL, NULL, 11, '2021-07-06 19:53:41', '2021-07-06 19:53:41', 'voyager.brands.index', NULL),
(0, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 12, '2021-07-10 08:06:18', '2021-07-10 08:06:18', 'voyager.contacts.index', NULL),
(0, 1, 'Contact Infos', '', '_self', NULL, NULL, NULL, 13, '2021-07-10 09:05:33', '2021-07-10 09:05:33', 'voyager.contact-infos.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2020_10_16_084923_create_products_table', 3),
(29, '2020_10_16_084942_create_product_categories_table', 3),
(30, '2020_10_16_085002_create_size_units_table', 3),
(33, '2021_01_11_114949_create_orders_table', 4),
(34, '2021_01_11_120309_create_order_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closest_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` double NOT NULL,
  `billing_tax` double NOT NULL,
  `billing_total` double NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `closest_address`, `billing_city`, `billing_state`, `billing_postalcode`, `billing_phone`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `created_at`, `updated_at`) VALUES
(3, 5, 'safi@gmail.com', 'Mksafi', 'Dekwaneh-tal elzattar', 'Najib EST, INC (7184 Troy Hill Dr, Suite C Elkridge, MD 21075)', 'Bierut new', 'Lebanon', '5123131', '71442157', 97.35, 0, 109.35, 'cash', 0, '2021-01-19 23:58:37', '2021-01-19 23:58:37'),
(4, 5, 'safi@gmail.com', 'Mksafi', 'Dekwaneh-tal elzattar', 'Najib EST, INC (7184 Troy Hill Dr, Suite C Elkridge, MD 21075)', 'Bierut', 'Lebanon new', '5123131', '71442157', 13.15, 0, 25.15, 'cash', 0, '2021-01-20 00:10:06', '2021-01-20 00:10:06'),
(5, 6, 'ali@gmail.com', 'Mksafi', 'Dekwaneh-tal elzattar', 'Thomas Market (2650 University Blvd W, Wheaton, MD 20902)', 'Lattakia', 'Lebanon new', '5123131', '71442157', 48.68, 0, 60.67, 'cash', 0, '2021-01-21 15:06:58', '2021-01-21 15:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 3, 7, 2, '2021-01-19 23:58:37', '2021-01-19 23:58:37'),
(6, 3, 6, 2, '2021-01-19 23:58:37', '2021-01-19 23:58:37'),
(7, 4, 3, 2, '2021-01-20 00:10:06', '2021-01-20 00:10:06'),
(8, 4, 6, 2, '2021-01-20 00:10:06', '2021-01-20 00:10:06'),
(9, 5, 6, 1, '2021-01-21 15:06:58', '2021-01-21 15:06:58'),
(10, 5, 7, 1, '2021-01-21 15:06:58', '2021-01-21 15:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-16 05:43:17', '2020-10-16 05:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(2, 'browse_bread', NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(3, 'browse_database', NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(4, 'browse_media', NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(5, 'browse_compass', NULL, '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(6, 'browse_menus', 'menus', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(7, 'read_menus', 'menus', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(8, 'edit_menus', 'menus', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(9, 'add_menus', 'menus', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(10, 'delete_menus', 'menus', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(11, 'browse_roles', 'roles', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(12, 'read_roles', 'roles', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(13, 'edit_roles', 'roles', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(14, 'add_roles', 'roles', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(15, 'delete_roles', 'roles', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(16, 'browse_users', 'users', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(17, 'read_users', 'users', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(18, 'edit_users', 'users', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(19, 'add_users', 'users', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(20, 'delete_users', 'users', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(21, 'browse_settings', 'settings', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(22, 'read_settings', 'settings', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(23, 'edit_settings', 'settings', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(24, 'add_settings', 'settings', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(25, 'delete_settings', 'settings', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(26, 'browse_categories', 'categories', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(27, 'read_categories', 'categories', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(28, 'edit_categories', 'categories', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(29, 'add_categories', 'categories', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(30, 'delete_categories', 'categories', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(31, 'browse_posts', 'posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(32, 'read_posts', 'posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(33, 'edit_posts', 'posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(34, 'add_posts', 'posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(35, 'delete_posts', 'posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(36, 'browse_pages', 'pages', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(37, 'read_pages', 'pages', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(38, 'edit_pages', 'pages', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(39, 'add_pages', 'pages', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(40, 'delete_pages', 'pages', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(41, 'browse_hooks', NULL, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(42, 'browse_product_categories', 'product_categories', '2020-10-16 06:06:50', '2020-10-16 06:06:50'),
(43, 'read_product_categories', 'product_categories', '2020-10-16 06:06:50', '2020-10-16 06:06:50'),
(44, 'edit_product_categories', 'product_categories', '2020-10-16 06:06:50', '2020-10-16 06:06:50'),
(45, 'add_product_categories', 'product_categories', '2020-10-16 06:06:50', '2020-10-16 06:06:50'),
(46, 'delete_product_categories', 'product_categories', '2020-10-16 06:06:50', '2020-10-16 06:06:50'),
(47, 'browse_products', 'products', '2020-10-16 06:07:44', '2020-10-16 06:07:44'),
(48, 'read_products', 'products', '2020-10-16 06:07:44', '2020-10-16 06:07:44'),
(49, 'edit_products', 'products', '2020-10-16 06:07:44', '2020-10-16 06:07:44'),
(50, 'add_products', 'products', '2020-10-16 06:07:44', '2020-10-16 06:07:44'),
(51, 'delete_products', 'products', '2020-10-16 06:07:44', '2020-10-16 06:07:44'),
(52, 'browse_size_units', 'size_units', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(53, 'read_size_units', 'size_units', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(54, 'edit_size_units', 'size_units', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(55, 'add_size_units', 'size_units', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(56, 'delete_size_units', 'size_units', '2020-11-20 21:24:10', '2020-11-20 21:24:10'),
(57, 'browse_cook_books', 'cook_books', '2020-11-21 19:17:19', '2020-11-21 19:17:19'),
(58, 'read_cook_books', 'cook_books', '2020-11-21 19:17:19', '2020-11-21 19:17:19'),
(59, 'edit_cook_books', 'cook_books', '2020-11-21 19:17:19', '2020-11-21 19:17:19'),
(60, 'add_cook_books', 'cook_books', '2020-11-21 19:17:19', '2020-11-21 19:17:19'),
(61, 'delete_cook_books', 'cook_books', '2020-11-21 19:17:19', '2020-11-21 19:17:19'),
(62, 'browse_slides', 'slides', '2020-11-21 19:18:50', '2020-11-21 19:18:50'),
(63, 'read_slides', 'slides', '2020-11-21 19:18:50', '2020-11-21 19:18:50'),
(64, 'edit_slides', 'slides', '2020-11-21 19:18:50', '2020-11-21 19:18:50'),
(65, 'add_slides', 'slides', '2020-11-21 19:18:50', '2020-11-21 19:18:50'),
(66, 'delete_slides', 'slides', '2020-11-21 19:18:50', '2020-11-21 19:18:50'),
(67, 'browse_orders', 'orders', '2021-01-20 18:15:22', '2021-01-20 18:15:22'),
(68, 'read_orders', 'orders', '2021-01-20 18:15:22', '2021-01-20 18:15:22'),
(69, 'edit_orders', 'orders', '2021-01-20 18:15:22', '2021-01-20 18:15:22'),
(70, 'add_orders', 'orders', '2021-01-20 18:15:22', '2021-01-20 18:15:22'),
(71, 'delete_orders', 'orders', '2021-01-20 18:15:22', '2021-01-20 18:15:22'),
(0, 'browse_recipes', 'recipes', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(0, 'read_recipes', 'recipes', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(0, 'edit_recipes', 'recipes', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(0, 'add_recipes', 'recipes', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(0, 'delete_recipes', 'recipes', '2021-07-06 13:33:26', '2021-07-06 13:33:26'),
(0, 'browse_recipe_categories', 'recipe_categories', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(0, 'read_recipe_categories', 'recipe_categories', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(0, 'edit_recipe_categories', 'recipe_categories', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(0, 'add_recipe_categories', 'recipe_categories', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(0, 'delete_recipe_categories', 'recipe_categories', '2021-07-06 13:37:18', '2021-07-06 13:37:18'),
(0, 'browse_brands', 'brands', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(0, 'read_brands', 'brands', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(0, 'edit_brands', 'brands', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(0, 'add_brands', 'brands', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(0, 'delete_brands', 'brands', '2021-07-06 19:53:41', '2021-07-06 19:53:41'),
(0, 'browse_contacts', 'contacts', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(0, 'read_contacts', 'contacts', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(0, 'edit_contacts', 'contacts', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(0, 'add_contacts', 'contacts', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(0, 'delete_contacts', 'contacts', '2021-07-10 08:06:18', '2021-07-10 08:06:18'),
(0, 'browse_contact_infos', 'contact_infos', '2021-07-10 09:05:33', '2021-07-10 09:05:33'),
(0, 'read_contact_infos', 'contact_infos', '2021-07-10 09:05:33', '2021-07-10 09:05:33'),
(0, 'edit_contact_infos', 'contact_infos', '2021-07-10 09:05:33', '2021-07-10 09:05:33'),
(0, 'add_contact_infos', 'contact_infos', '2021-07-10 09:05:33', '2021-07-10 09:05:33'),
(0, 'delete_contact_infos', 'contact_infos', '2021-07-10 09:05:33', '2021-07-10 09:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(41, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1),
(0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-16 05:43:17', '2020-10-16 05:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookbook_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_unit_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_offer` tinyint(1) DEFAULT NULL,
  `is_large` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `ac_id` int(99) DEFAULT NULL,
  `ac_img_id` int(99) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_list` int(11) NOT NULL DEFAULT '1',
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(10, 'LAODICEA', NULL, 'BGS001', 'products/April2021/tRfAWchpb4N0TMBPgEnJ.png', NULL, '1.19', '0.4', 1, 1, 0, 0, '2021-04-23 19:08:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Sesame</p>', NULL, 3523, 3457, 'Bagel', 1, 0),
(12, 'LAODICEA', NULL, 'BWW013', 'products/April2021/n1hGquibouNRFKosEYYS.png', NULL, '1.19', '0.4', 1, 1, 0, 0, '2021-04-23 19:57:30', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Whole Wheat</p>', NULL, 3524, 3458, 'Bagel', 1, 0),
(13, 'LAODICEA', NULL, 'BGW011', 'products/April2021/ItUbW7gHkX0vUQ2UrRO6.png', NULL, '1.19', '0.4', 1, 1, 0, 0, '2021-04-23 20:00:06', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel White</p>', NULL, 3525, 3459, 'Bagel', 1, 0),
(14, 'LAODICEA', NULL, 'BWG015', 'products/April2021/vGzAZKrWxHTTXsN2vU5u.png', NULL, '1.19', '0.4', 1, 1, 0, 0, '2021-04-23 20:05:08', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Whole Grain</p>', NULL, 3526, 3460, 'Bagel', 1, 0),
(15, 'LAODICEA', NULL, 'BET017', 'products/April2021/qeqTlzCuhuHTkQQZ2bE5.png', NULL, '1.19', '0.4', 1, 1, 0, 0, '2021-04-23 20:09:39', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Everything</p>', NULL, 3527, 3461, 'Bagel', 1, 0),
(21, 'LAODICEA', NULL, '_BGS001OF', 'products/April2021/OXA2hpKsbGHyoyxxMKMH.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 06:26:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Sesame - 12 Pcs.</p>', NULL, 3528, 3463, 'Bagel', 1, 0),
(22, 'LAODICEA', NULL, '_BWW013OF', 'products/April2021/z9FlvSRnyqXBWMoV3fsz.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 06:49:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Whole Wheat - 12 Pcs.</p>', NULL, 3529, 3464, 'Bagel', 1, 0),
(23, 'LAODICEA', NULL, '_BGW011OF', 'products/April2021/NkiPWtXNDUcYMod7GO2Y.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 06:52:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel White - 12 Pcs.</p>', NULL, 3530, 3465, 'Bagel', 1, 0),
(24, 'LAODICEA', NULL, '_BWG015OF', 'products/April2021/b9dA0pIvvZ9Hpnkz0Mv0.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 06:56:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Whole Grain - 12 Pcs.</p>', NULL, 3531, 3466, 'Bagel', 1, 0),
(25, 'LAODICEA', NULL, '_BET017OF', 'products/April2021/9YaplWVCZQiOffiXH9fH.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 06:58:00', '2021-06-12 22:39:20', 'laodicea', 11, '<p>Bagel Everything - 12 Pcs.</p>', NULL, 3532, 3467, 'Bagel', 1, 0),
(26, 'SHAMRA', NULL, '_KAAK023', 'products/April2021/Iz10l3pdfU0Zx6VD2gNo.png', NULL, '5.99', '1.65', 1, 1, 0, 0, '2021-04-24 07:01:00', '2021-06-12 22:40:05', 'shamra', 14, '<p>Cake Rusk</p>', NULL, 3533, 3468, 'Bread Sticks and Toast', 1, 0),
(27, 'SHAMRA', NULL, '_KAAK021', 'products/April2021/Q3waD3uyJleLnsxndr3q.png', NULL, '3.49', '0.84', 1, 1, 0, 0, '2021-04-24 07:03:47', '2021-06-12 22:40:05', 'shamra', 14, '<p>Cake Rusk</p>', NULL, 3534, 3469, 'Bread Sticks and Toast', 1, 0),
(28, 'YARA', NULL, '_KAAY001', 'products/April2021/et3FQJx6CCzoY3On7utj.png', NULL, '5.49', '0.875', 1, 1, 0, 0, '2021-04-24 07:14:20', '2021-06-12 22:40:05', 'yara', 14, '<p>Sesame Bread Sticks - Mini</p>', NULL, 3535, 3470, 'Bread Sticks and Toast', 1, 0),
(29, 'YARA', NULL, '_KAAY003', 'products/April2021/fsjTr6yK9J8QiBuswWqt.png', NULL, '5.49', '0.875', 1, 1, 0, 0, '2021-04-24 07:17:24', '2021-06-12 22:40:05', 'yara', 14, '<p>Sesame Bread Sticks - Long</p>', NULL, 3536, 3471, 'Bread Sticks and Toast', 1, 0),
(30, 'LAODICEA', NULL, '_KAAL101', 'products/April2021/u0pFoun5jh3L2TEY5aId.png', NULL, '4.99', '0.75', 1, 1, 0, 0, '2021-04-24 07:19:37', '2021-06-12 22:40:05', 'laodicea', 14, '<p>Sesame Cookies</p>', NULL, 3537, 3472, 'Bread Sticks and Toast', 1, 0),
(31, 'LAODICEA', NULL, '_KAAL103', 'products/April2021/3C4jlLwwMv6v2ePxaedR.png', NULL, '4.99', '0.75', 1, 1, 0, 0, '2021-04-24 07:23:17', '2021-06-12 22:40:05', 'laodicea', 14, '<p>Sesame Cookies</p>', NULL, 3538, 3473, 'Bread Sticks and Toast', 1, 0),
(32, 'YARA', NULL, '_KAAY003OFF', 'products/April2021/M8zTuvfOFgvjqqGvVYjb.jpg', NULL, '28.99', '0', 1, 1, 1, 0, '2021-04-24 07:25:00', '2021-06-12 22:40:05', 'yara', 14, '<p>Bread Sticks. 14 oz - 3 Pcs</p>', NULL, 3539, 3474, 'Bread Sticks and Toast', 1, 0),
(33, 'ETI', NULL, '_ETI031', 'products/April2021/e71C8XoNFzIGPMbcOHbs.jpg', NULL, '3.49', '0.707', 1, 1, 0, 0, '2021-04-24 07:29:47', '2021-06-12 22:40:05', 'eti', 14, '<p>Biscotte Regular Toast</p>', NULL, 3540, 3475, 'Bread Sticks and Toast', 1, 0),
(34, 'ETI', NULL, '_ETI033', 'products/April2021/JrTtqWWzjLxVccBUyZiy.jpg', NULL, '3.49', '0.707', 1, 1, 0, 0, '2021-04-24 07:33:50', '2021-06-12 22:40:05', 'eti', 14, '<p>Biscotte No Salt Toast</p>', NULL, 3541, 3476, 'Bread Sticks and Toast', 1, 0),
(35, 'ETI', NULL, '_ETI035', 'products/April2021/VWDPaNmxTDic6flLokdl.jpg', NULL, '3.49', '0.707', 1, 1, 0, 0, '2021-04-24 07:36:45', '2021-06-12 22:40:05', 'eti', 14, '<p>Biscotte Whole Wheat Toast</p>', NULL, 3542, 3477, 'Bread Sticks and Toast', 1, 0),
(36, 'PAPADOPOULOS', NULL, '_PAP041', 'products/April2021/LrJPr2NMs5RIV3remcUb.jpg', NULL, '3.49', '0.5', 1, 1, 0, 0, '2021-04-24 07:45:53', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Goldies Toasted Rusks - Wheat</p>', NULL, 3543, 3478, 'Bread Sticks and Toast', 1, 0),
(37, 'PAPADOPOULOS', NULL, '_PAP043', 'products/April2021/kEbKfoOynxdcd7wiDi2s.jpg', NULL, '2.49', '0.352', 1, 1, 0, 0, '2021-04-24 07:48:02', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Goldies Whole Grain</p>', NULL, 3544, 3479, 'Bread Sticks and Toast', 1, 0),
(38, 'PAPADOPOULOS', NULL, '_PAP063', 'products/April2021/Q14gFMzi53CKrpbVRxRi.jpg', NULL, '3.99', '0.45', 1, 1, 0, 0, '2021-04-24 07:50:31', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Krispies Whole Grain</p>', NULL, 3545, 3480, 'Bread Sticks and Toast', 1, 0),
(39, 'PAPADOPOULOS', NULL, '_PAP063OFF', 'products/April2021/Gq69vO2f6TBzMaiCadfq.jpg', NULL, '24.99', '0', 1, 1, 1, 0, '2021-04-24 08:05:00', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Krispies Whole Grain. 200 g - 3 Pcs</p>', NULL, 3546, 3481, 'Bread Sticks and Toast', 1, 0),
(40, 'PAPADOPOULOS', NULL, '_PAP061', 'products/April2021/VRPfbbC86ypXkV9tDkFN.jpg', NULL, '3.99', '0.45', 1, 1, 0, 0, '2021-04-24 08:07:17', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Krispies Wheat</p>', NULL, 3547, 3482, 'Bread Sticks and Toast', 1, 0),
(41, 'PAPADOPOULOS', NULL, '_PAP043OFF', 'products/April2021/Pua6zXGYr77iO8p73YQJ.jpg', NULL, '21.99', '0', 1, 1, 1, 0, '2021-04-24 08:10:00', '2021-06-12 22:40:05', 'papadopoulos', 14, '<p>Goldies Whole Grain - 4 pcs.</p>', NULL, 3548, 3483, 'Bread Sticks and Toast', 1, 0),
(42, 'Bakery Tsatsaronakis', NULL, '_TOB002', 'products/April2021/PC0VWBoGar6Q4bfdobFw.jpg', NULL, '9.99', '1.32', 1, 1, 0, 0, '2021-04-24 08:12:19', '2021-06-12 22:40:05', 'bakery-tsatsaronakis', 14, '<p>Wheat Toast</p>', NULL, 3549, 3484, 'Bread Sticks and Toast', 1, 0),
(43, 'Bakery Tsatsaronakis', NULL, '_TOB004', 'products/April2021/KEYLznsDJblo2JAf5P03.jpg', NULL, '9.99', '1.32', 1, 1, 0, 0, '2021-04-24 08:15:01', '2021-06-12 22:40:05', 'bakery-tsatsaronakis', 14, '<p>Crete Wheat Rusks</p>', NULL, 3550, 3485, 'Bread Sticks and Toast', 1, 0),
(44, 'LAODICEA', NULL, '_SEBL001', 'products/April2021/GCRQzur7ybQNGNKBgGXn.jpg', NULL, '5.99', '0.881', 1, 1, 0, 0, '2021-04-24 08:17:16', '2021-06-12 22:40:05', 'laodicea', 14, '<p>Sesame Bread Sticks</p>', NULL, 3551, 3486, 'Bread Sticks and Toast', 1, 0),
(45, 'LAODICEA', NULL, '_SECL001', 'products/April2021/FXyLAqWnxtCCrWTHnVCm.png', NULL, '5.99', '0.881', 1, 1, 0, 0, '2021-04-24 08:19:19', '2021-06-12 22:40:05', 'laodicea', 14, '<p>Sesame Cookies</p>', NULL, 3552, 3487, 'Bread Sticks and Toast', 1, 0),
(46, 'LAODICEA', NULL, '_BIW011', 'products/April2021/0VmLYjDqzaQXq5jxbb6n.png', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-04-24 18:11:43', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Italian Bread</p>', NULL, 3553, 3488, 'Bread', 1, 0),
(47, 'LAODICEA', NULL, '_BWG001', 'products/April2021/PI2QutIzMJSiap6RBxdD.png', NULL, '5.49', '1.1', 1, 1, 0, 0, '2021-04-24 18:13:00', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Whole Grain Bread</p>', NULL, 3554, 3489, 'Bread', 1, 0),
(48, 'LAODICEA', NULL, '_BAW009', 'products/April2021/Te7n9N094Cjlj9XFJiS8.png', NULL, '2.49', '1', 1, 1, 0, 0, '2021-04-24 18:14:09', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Afghan Bread</p>', NULL, 3555, 3490, 'Bread', 1, 0),
(49, 'LAODICEA', NULL, '_BIW011OF', 'products/April2021/5wYXNFdzj0q9ck85s5AG.png', NULL, '15.99', '0', 1, 1, 1, 0, '2021-04-24 18:16:00', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Italian Bread - 2 Pcs.</p>', NULL, 3556, 3491, 'Bread', 1, 0),
(50, 'LAODICEA', NULL, '_BWG001OF', 'products/April2021/hktrlm2HGt69LdQRcCKw.png', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 18:17:00', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Whole Grain Bread - 2 Pcs.</p>', NULL, 3557, 3492, 'Bread', 1, 0),
(51, 'LAODICEA', NULL, '_SUB001', 'products/April2021/NVppSq22FCBzUOM6o6cN.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-24 18:19:48', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Sub Rolls&nbsp; 6 X 8&rdquo;</p>', NULL, 3558, 3493, 'Bread', 1, 0),
(52, 'LAODICEA', NULL, '_SUB003', 'products/April2021/Q0cJ0wWmgBuY6INMqh3y.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-04-24 18:21:28', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Sub Rolls&nbsp; 6 X 12&rdquo;</p>', NULL, 3559, 3494, 'Bread', 1, 0),
(53, 'LAODICEA', NULL, '_BIT111', 'products/April2021/bbL3byiTWhKwyZMhdYoh.png', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-24 18:24:04', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Turkish Simit - 2 pcs.</p>', NULL, 3560, 3495, 'Bread', 1, 0),
(54, 'LAODICEA', NULL, '_BRL001', 'products/April2021/vY9Y7U9XG3tOltSdZ3pN.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-24 18:26:53', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Ramadan Bread - Large</p>', NULL, 3561, 3496, 'Bread', 1, 0),
(55, 'LAODICEA', NULL, '_BEL001', 'products/April2021/oGi3hhnhJ1WhfMAoPb8T.png', NULL, '7.99', '1', 1, 1, 0, 0, '2021-04-24 18:29:20', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Greek Easter Bread - Medium</p>', NULL, 3562, 3497, 'Bread', 1, 0),
(56, 'LAODICEA', NULL, '_BEL003', 'products/April2021/Hbc4XBd3VBm6wEHsPu0c.jpg', NULL, '11.99', '1.1', 1, 1, 0, 0, '2021-04-24 18:30:42', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Greek Easter Bread - Large</p>', NULL, 3563, 3498, 'Bread', 1, 0),
(57, 'LAODICEA', NULL, '_BAW009OF', 'products/April2021/ZLfQvcGTu8JVXAoc8mHU.png', NULL, '22.99', '0', 1, 1, 1, 0, '2021-04-24 18:33:00', '2021-06-12 22:40:05', 'laodicea', 13, '<p>Afghan Bread - 6 Pcs.</p>', NULL, 3564, 3499, 'Bread', 1, 0),
(58, 'LAODICEA', NULL, '_CRB021', 'products/April2021/M6oidtHy8SN4KFNu0GQK.png', NULL, '1.50', '2.3', 1, 1, 0, 0, '2021-04-24 18:36:29', '2021-06-12 22:40:05', 'laodicea', 15, '<p>Croissant All Butter</p>', NULL, 3565, 3500, 'Croissant', 1, 0),
(59, 'LAODICEA', NULL, '_CRB021OF', 'products/April2021/yZJx2wfxdGX7GEUfVAtj.png', NULL, '18.99', '0', 1, 1, 1, 0, '2021-04-24 18:37:00', '2021-06-12 22:40:05', 'laodicea', 15, '<p>Croissant All Butter - 12 Pcs.</p>', NULL, 3566, 3501, 'Croissant', 1, 0),
(60, 'LAODICEA', NULL, '_FTS015', 'products/April2021/Klfj26g8TOhGoa4Tgjry.png', NULL, '1.99', '0.25', 1, 1, 0, 0, '2021-04-24 18:49:20', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Spinach Fatayer -Small Size - 1 pc</p>', NULL, 3567, 3502, 'Pie', 1, 0),
(61, 'LAODICEA', NULL, '_FTM009', 'products/May2021/cQXOHSsmzfy0ibdwQto8.jpg', NULL, '9.99', '2', 1, 1, 1, 0, '2021-04-24 18:51:00', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Meat Fatayer Sfeha - Small Size - 12 pcs.</p>', NULL, 3568, 3503, 'Pie', 1, 0),
(62, 'LAODICEA', NULL, '_FTCL015', 'products/May2021/IgH49Rii4ZCMwf9psYvM.jpg', NULL, '2.49', '1', 1, 1, 0, 0, '2021-04-24 18:52:00', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Cheese Fatayer - 2 pcs.</p>', NULL, 3569, 3504, 'Pie', 1, 0),
(63, 'LAODICEA', NULL, '_FTLL011', 'products/May2021/YnnwBrXVqPstqrwgd8NI.jpg', NULL, '2.99', '1', 1, 1, 0, 0, '2021-04-24 18:54:00', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Meat Fatayer - Lahmajoun - 2 pcs.</p>', NULL, 3570, 3505, 'Pie', 1, 0),
(64, 'LAODICEA', NULL, '_PLZP001', 'products/May2021/FQJ2LgOUgSCACz5MSdzg.jpg', NULL, '1.99', '0.75', 1, 1, 0, 0, '2021-04-24 19:10:00', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Zaatar Pie (Manakeesh) - 1 pc</p>', NULL, 3571, 3506, 'Pie', 1, 0),
(65, 'LAODICEA', NULL, '_PLZP001OF', 'products/April2021/RSvsHVrldfRXZa2eT0J5.jpg', NULL, '9.99', '2', 1, 1, 1, 0, '2021-04-24 19:11:00', '2021-06-12 22:40:05', 'laodicea', 17, '<p>Manakesh Zaatar - 6 pcs.</p>', NULL, 3572, 3507, 'Pie', 1, 0),
(66, 'LAODICEA', NULL, '_PLLW001', 'products/April2021/TxGRbvMLebp6jcWJTSUy.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:15:47', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Large White</p>', NULL, 3573, 3508, 'Pita Bread', 1, 0),
(67, 'LAODICEA', NULL, '_PLSW001', 'products/April2021/c0B8sqL8y6UP2D2JPifE.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:17:54', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Small White</p>', NULL, 3574, 3509, 'Pita Bread', 1, 0),
(68, 'LAODICEA', NULL, '_PLLW003', 'products/April2021/paPdsXMljoMlxhkP1EkT.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:20:11', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Large Whole Wheat&nbsp;</p>', NULL, 3575, 3510, 'Pita Bread', 1, 0),
(69, 'LAODICEA', NULL, '_PLSW003', 'products/April2021/4wEeGi5dPoZGii5A0jNh.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:22:02', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Small Whole Wheat</p>', NULL, 3576, 3511, 'Pita Bread', 1, 0),
(70, 'LAODICEA', NULL, '_PLMW001', 'products/April2021/TXcGM69yQjkQupWIZTwb.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:23:33', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Medium White</p>', NULL, 3577, 3512, 'Pita Bread', 1, 0),
(71, 'LAODICEA', NULL, '_PLTW001', 'products/April2021/GnF7D5LLpfY4QVEkXeEW.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:26:01', '2021-06-12 22:40:05', 'laodicea', 16, '<p>&nbsp;Pita Bread Medium White Thick</p>', NULL, 3578, 3513, 'Pita Bread', 1, 0),
(72, 'LAODICEA', NULL, '_PLMB001', 'products/April2021/LITKnzktqTI1r1GxwVd5.png', NULL, '1.99', '1.4', 1, 1, 0, 0, '2021-04-24 19:27:31', '2021-06-12 22:40:05', 'laodicea', 16, '<p>&nbsp;Lavash Whole Wheat (Markok)</p>', NULL, 3579, 3514, 'Pita Bread', 1, 0),
(73, 'LAODICEA', NULL, '_PLMB001OF', 'products/April2021/TI2DHPinB2QF4xbBUK0u.png', NULL, '28.99', '0', 1, 1, 1, 0, '2021-04-24 19:30:00', '2021-06-12 22:40:05', 'laodicea', 16, '<p>&nbsp;Lavash Whole Wheat (Markok)&nbsp; 6 x 4 Loaves</p>', NULL, 3580, 3515, 'Pita Bread', 1, 0),
(74, 'LAODICEA', NULL, '_PLTW001OF', 'products/April2021/2T80XrDNJl6ClAUOEGb3.png', NULL, '28.99', '0', 1, 1, 1, 0, '2021-04-24 19:31:00', '2021-06-12 22:40:05', 'laodicea', 16, '<p>&nbsp;Pita Bread Medium White Thick&nbsp;&nbsp;6 x 10 Loaves</p>', NULL, 3581, 3516, 'Pita Bread', 1, 0),
(75, 'LAODICEA', NULL, '_PLMW001OF', 'products/April2021/Vl9KvfJoE6Vg9sjX2Lhi.png', NULL, '28.99', '0', 1, 1, 1, 0, '2021-04-24 19:33:00', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Medium White&nbsp;&nbsp;6 x 10 Loaves</p>', NULL, 3582, 3517, 'Pita Bread', 1, 0),
(76, 'LAODICEA', NULL, '_PLSW003OF', 'products/April2021/NOtuBW0NSJ0UHJz4c12N.png', NULL, '28.99', '0', 1, 1, 0, 0, '2021-04-24 19:35:00', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Small Whole Wheat&nbsp;&nbsp;6 x 12 Loaves</p>', NULL, 3583, 3518, 'Pita Bread', 1, 0),
(77, 'LAODICEA', NULL, '_PLLW003OF', 'products/April2021/u7gzgktvj3iJIXDoWyIi.png', NULL, '28.99', '0', 1, 1, 0, 0, '2021-04-24 19:37:56', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Large Whole Wheat&nbsp;&nbsp;6 x 6 Loaves</p>', NULL, 3584, 3519, 'Pita Bread', 1, 0),
(78, 'LAODICEA', NULL, '_PLSW001OF', 'products/April2021/s8gw9w3DGVEk5v4FGGpR.png', NULL, '28.99', '0', 1, 1, 0, 0, '2021-04-24 19:39:21', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Large White 6 x 12 Loaves</p>', NULL, 3585, 3520, 'Pita Bread', 1, 0),
(79, 'LAODICEA', NULL, '_PLLW001OF', 'products/April2021/0Qy7iqgF5ZpBZVrtTZfp.png', NULL, '28.99', '0', 1, 1, 1, 0, '2021-04-24 19:40:00', '2021-06-12 22:40:05', 'laodicea', 16, '<p>Pita Bread Large White 6 x 6 Loaves</p>', NULL, 3586, 3521, 'Pita Bread', 1, 0),
(80, 'MAATOUK', NULL, '_COLM001', 'products/April2021/VkRDEij3dyOKox3s7hEM.jpg', NULL, '5.49', '0.44', 1, 1, 0, 0, '2021-04-24 19:45:13', '2021-06-12 22:40:05', 'maatouk', 20, '<p>Lebanese Gourmet Ground Coffee Plain</p>', NULL, 3587, 3522, 'Coffee', 1, 0),
(81, 'MAATOUK', NULL, '_COLM005', 'products/April2021/IVpmcBzV3JSMVefIxLT3.jpg', NULL, '5.99', '0.44', 1, 1, 0, 0, '2021-04-24 19:47:08', '2021-06-12 22:40:05', 'maatouk', 20, '<p>Lebanese Gourmet Ground Coffee w/ Cardamon</p>', NULL, 3588, 3523, 'Coffee', 1, 0),
(82, 'MAATOUK', NULL, '_COLM007', 'products/April2021/ealE8ZOZqF89CIXV5PaX.jpg', NULL, '9.99', '0.9', 1, 1, 0, 0, '2021-04-24 19:49:18', '2021-06-12 22:40:05', 'maatouk', 20, '<p>Lebanese Gourmet Ground Coffee w/ Cardamon</p>', NULL, 3589, 3524, 'Coffee', 1, 0),
(83, 'NAJJAR', NULL, '_COLN001', 'products/April2021/HOEvUqMYT7wQ8oEeGDjA.jpg', NULL, '5.49', '0.44', 1, 1, 0, 0, '2021-04-24 19:51:38', '2021-06-12 22:40:05', 'najjar', 20, '<p>Lebanese Ground Coffee Plain</p>', NULL, 3590, 3525, 'Coffee', 1, 0),
(84, 'NAJJAR', NULL, '_COLN003', 'products/April2021/SY0enkGj7CM67k49DeYP.jpg', NULL, '8.99', '0.9', 1, 1, 0, 0, '2021-04-24 19:53:21', '2021-06-12 22:40:05', 'najjar', 20, '<p>Lebanese Ground Coffee Plain</p>', NULL, 3591, 3526, 'Coffee', 1, 0),
(85, 'NAJJAR', NULL, '_COLN005', 'products/April2021/gzFRQOURbGgi1J2RKBYL.jpg', NULL, '5.99', '0.44', 1, 1, 0, 0, '2021-04-24 19:54:49', '2021-06-12 22:40:05', 'najjar', 20, '<p>Lebanese Ground Coffee w/ Cardamon</p>', NULL, 3592, 3527, 'Coffee', 1, 0),
(86, 'NAJJAR', NULL, '_COLN007', 'products/April2021/x2QcM4IjeCPtGdNNq0ca.jpg', NULL, '9.99', '0.9', 1, 1, 0, 0, '2021-04-24 19:56:00', '2021-06-12 22:40:05', 'najjar', 20, '<p>Lebanese Ground Coffee w/ Cardamon</p>', NULL, 3593, 3528, 'Coffee', 1, 0),
(87, 'BRAVO', NULL, '_COGB001', 'products/April2021/XJAAHCLAYYPMVqX1eHiR.jpg', NULL, '6.49', '0.5', 1, 1, 0, 0, '2021-04-24 19:58:19', '2021-06-12 22:40:05', 'bravo', 20, '<p>Greek Ground Coffee</p>', NULL, 3594, 3529, 'Coffee', 1, 0),
(88, 'BRAVO', NULL, '_COGB003', 'products/April2021/cgLL5N0mILRxK1yu1D9N.jpg', NULL, '10.99', '1', 1, 1, 0, 0, '2021-04-24 20:00:13', '2021-06-12 22:40:05', 'bravo', 20, '<p>Greek Ground Coffee</p>', NULL, 3595, 3530, 'Coffee', 1, 0),
(89, 'LOUMIDIS - PAPAGALOS', NULL, '_COGL001', 'products/April2021/wXlDARAmpnIlm7i5mdQS.jpg', NULL, '6.49', '0.425', 1, 1, 0, 0, '2021-04-24 20:02:57', '2021-06-12 22:40:05', 'loumidis-papagalos', 20, '<p>Traditional Greek Ground Coffee</p>', NULL, 3596, 3531, 'Coffee', 1, 0),
(90, 'LOUMIDIS - PAPAGALOS', NULL, '_COGL003', 'products/April2021/9EfANMn0irusoO5tT6aX.png', '[\"products\\/April2021\\/Xzbx6qX5vqIYsIF9pP9R.jpg\"]', '10.99', '1', 1, 1, 0, 0, '2021-04-24 20:05:03', '2021-06-12 22:40:05', 'loumidis-papagalos', 20, '<p>Traditional Greek Ground Coffee</p>', NULL, 3597, 3532, 'Coffee', 1, 0),
(91, 'LOUMIDIS - PAPAGALOS', NULL, '_COGL003OFF', 'products/April2021/2H3nAxOGx6glqPHsAJpu.jpg', NULL, '55.98', '0', 1, 1, 1, 0, '2021-04-24 20:06:00', '2021-06-12 22:40:05', 'loumidis-papagalos', 20, '<p>Papagalos Coffee - 16 oz - 4 Pcs</p>', NULL, 3598, 3533, 'Coffee', 1, 0),
(92, 'NESCAFE', NULL, '_COGN007', 'products/April2021/FtvMJGZkPthQ5Z1uUows.png', NULL, '15.99', '0.44', 1, 1, 0, 0, '2021-04-24 20:08:24', '2021-06-12 22:40:05', 'nescafe', 20, '<p>Frappe - 100 % Instant Decaf Coffee</p>', NULL, 3599, 3534, 'Coffee', 1, 0),
(93, 'NESTLE', NULL, '_COFN111', 'products/April2021/APbGy22SmzMEq2vUtORU.jpg', NULL, '2.99', '1.375', 1, 1, 0, 0, '2021-04-24 20:10:45', '2021-06-12 22:40:05', 'nestle', 20, '<p>Coffee Mate Original Powdered Creamer</p>', NULL, 3600, 3535, 'Coffee', 1, 0),
(94, 'VENIZELOS', NULL, '_COGV001', 'products/April2021/EogAMeLrALcWdfT7JTyz.png', NULL, '8.99', '1', 1, 1, 0, 0, '2021-04-24 20:14:48', '2021-06-12 22:40:05', 'venizelos', 20, '<p>Greek Style Ground Coffee</p>', NULL, 3601, 3536, 'Coffee', 1, 0),
(95, 'EDNA\'S', NULL, '_COAE001', 'products/April2021/UMHKSVIJJziNcaPvL6Ys.jpg', NULL, '10.99', '0.5', 1, 1, 0, 0, '2021-04-24 20:16:19', '2021-06-12 22:40:05', 'edna-s', 20, '<p>Gourmet Ground Coffee</p>', NULL, 3602, 3537, 'Coffee', 1, 0),
(96, 'MEHMET EFENDI', NULL, '_COTM001', 'products/April2021/SArpPyS781Gg6LAZzm1H.jpg', NULL, '9.49', '0.55', 1, 1, 0, 0, '2021-04-24 20:20:15', '2021-06-12 22:40:05', 'mehmet-efendi', 20, '<p>Turkish Ground Coffee</p>', NULL, 3603, 3538, 'Coffee', 1, 0),
(97, 'MEHMET EFENDI', NULL, '_COTM003', 'products/April2021/LWonGTDoJHJU9W7oEki5.jpg', '[\"products\\/April2021\\/KDEh0XfxKPDrl6Xwvufd.jpg\"]', '16.99', '1.1', 1, 1, 0, 0, '2021-04-24 20:21:37', '2021-06-12 22:40:06', 'mehmet-efendi', 20, '<p>Turkish Ground Coffee</p>', NULL, 3604, 3539, 'Coffee', 1, 0),
(98, 'Delight', NULL, '_COFD001', 'products/April2021/eumUqU0uWbXjmpH907TO.jpg', NULL, '5.99', '3', 1, 1, 0, 0, '2021-04-24 20:24:54', '2021-06-12 22:40:06', 'delight', 20, '<p>Delight French Vanilla Cream</p>', NULL, 3605, 3540, 'Coffee', 1, 0),
(99, 'Delight', NULL, '_COFD003', 'products/May2021/U9eosGzT6aQNWOTvHbOH.jpg', NULL, '5.99', '3', 1, 1, 0, 0, '2021-04-24 20:26:00', '2021-06-12 22:40:06', 'delight', 20, '<p>Delight Caramel Macchiato Liquid Coffee Creamer</p>', NULL, 3606, 3541, 'Coffee', 1, 0),
(100, 'BARBICAN', NULL, '_BEEB001', 'products/April2021/j1bMSNXEoKahIrPBRcuo.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:29:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Beer Non Alcoholic</p>', NULL, 3607, 3542, 'Alcohol- Free Beer', 1, 0),
(101, 'BARBICAN', NULL, '_BEEB003', 'products/April2021/sgxVQGumEnUZN6Ga2eQ0.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:30:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Apple Beer Non Alcoholic</p>', NULL, 3608, 3543, 'Alcohol- Free Beer', 1, 0),
(102, 'BARBICAN', NULL, '_BEEB005', 'products/April2021/CRkJUyx6CVTNHmM8s8zA.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:31:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Raspberry Beer Non Alcoholic</p>', NULL, 3609, 3544, 'Alcohol- Free Beer', 1, 0),
(103, 'BARBICAN', NULL, '_BEEB007', 'products/April2021/mM5R0NLiwZTDimIdaS2e.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:33:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Peach Beer Non Alcoholic</p>', NULL, 3610, 3545, 'Alcohol- Free Beer', 1, 0),
(104, 'BARBICAN', NULL, '_BEEB009', 'products/April2021/SD0Aj4P5EosQMRhLwPnc.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:34:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>&nbsp;Pineapple Beer Non Alcoholic</p>', NULL, 3611, 3546, 'Alcohol- Free Beer', 1, 0),
(105, 'BARBICAN', NULL, '_BEEB011', 'products/April2021/phXu96A4jdWVFtemZke7.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:35:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Lemon Beer Non Alcoholic</p>', NULL, 3612, 3547, 'Alcohol- Free Beer', 1, 0),
(106, 'BARBICAN', NULL, '_BEEB013', 'products/April2021/CReyUuiMkdbb75WPYvx1.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:36:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Pomegranate Beer Non Alcoholic</p>', NULL, 3613, 3548, 'Alcohol- Free Beer', 1, 0),
(107, 'BARBICAN', NULL, '_BEEB015', 'products/April2021/WVVdo2uWboStFTMRMVNj.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:37:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Strawberry Beer Non Alcoholic</p>', NULL, 3614, 3549, 'Alcohol- Free Beer', 1, 0),
(108, 'BARBICAN', NULL, '_BEEB021', 'products/April2021/QQaw9ev3VNPIRWQKyaGp.png', NULL, '2.29', '0.727', 1, 1, 0, 0, '2021-04-24 20:38:00', '2021-06-12 22:40:06', 'barbican', 19, '<p>Fusion Mango Beer Non Alcoholic</p>', NULL, 3615, 3550, 'Alcohol- Free Beer', 1, 0),
(109, 'LAZIZA', NULL, '_BEEL001', 'products/April2021/nXEsqSrxf7l7X9FU1T8B.png', NULL, '2.29', '0.715', 1, 1, 0, 0, '2021-04-24 20:40:24', '2021-06-12 22:40:06', 'laziza', 19, '<p>Beer Non Alcoholic</p>', NULL, 3616, 3551, 'Alcohol- Free Beer', 1, 0),
(110, 'LAZIZA', NULL, '_BEEL003', 'products/April2021/7fccwaflfQbviyAYyuYO.png', NULL, '2.29', '0.715', 1, 1, 0, 0, '2021-04-24 20:44:32', '2021-06-12 22:40:06', 'laziza', 19, '<p>Apple Beer Non Alcoholic</p>', NULL, 3617, 3552, 'Alcohol- Free Beer', 1, 0),
(111, 'LAZIZA', NULL, '_BEEL005', 'products/April2021/IDZjExO5hPRCaR4MpPNj.png', NULL, '2.29', '0.715', 1, 1, 0, 0, '2021-04-24 20:45:31', '2021-06-12 22:40:06', 'laziza', 19, '<p>Raspberry Beer Non Alcoholic</p>', NULL, 3618, 3553, 'Alcohol- Free Beer', 1, 0),
(112, 'LAZIZA', NULL, '_BEEL007', 'products/April2021/vrd7qs441R0WJFlVTXSx.png', NULL, '2.29', '0.715', 1, 1, 0, 0, '2021-04-24 20:46:50', '2021-06-12 22:40:06', 'laziza', 19, '<p>Peach Beer Non Alcoholic</p>', NULL, 3619, 3554, 'Alcohol- Free Beer', 1, 0),
(113, 'MARCO POLO', NULL, '_JUM001', 'products/April2021/GNesBMCgDZLYXGT5BYxK.jpg', NULL, '5.99', '2.2', 1, 1, 0, 0, '2021-04-24 20:56:32', '2021-06-12 22:40:06', 'marco-polo', 21, '<p>Pomegranate Juice</p>', NULL, 3620, 3555, 'Juice', 1, 0),
(114, 'BEST', NULL, '_JUB011', 'products/April2021/T0HXVY4rpuhsdmqCgnWa.png', NULL, '1.49', '0.57', 1, 1, 0, 0, '2021-04-24 20:59:01', '2021-06-12 22:40:06', 'best', 21, '<p>Guava Juice</p>', NULL, 3621, 3556, 'Juice', 1, 0),
(115, 'BEST', NULL, '_JUB011OF', 'products/April2021/C1iyqrQcBAISkavj15e6.png', NULL, '19.96', '0', 1, 1, 1, 0, '2021-04-24 21:08:00', '2021-06-12 22:40:06', 'best', 21, '<p>Guava Juice - 6 Bottels</p>', NULL, 3622, 3557, 'Juice', 1, 0),
(116, 'BEST', NULL, '_JUB013', 'products/April2021/JfWmpHgDZoBHHaGCVVzF.png', NULL, '4.99', '2.2', 1, 1, 0, 0, '2021-04-24 21:10:10', '2021-06-12 22:40:06', 'best', 21, '<p>Guava Juice</p>', NULL, 3623, 3558, 'Juice', 1, 0),
(117, 'BEST', NULL, '_JUB013OF', 'products/April2021/PjqXuHWsYDPMlwuJKVET.png', NULL, '24.99', '0', 1, 1, 1, 0, '2021-04-24 21:12:00', '2021-06-12 22:40:06', 'best', 21, '<p>Guava Juice. 1 Liter - 2 Bottels</p>', NULL, 3624, 3559, 'Juice', 1, 0),
(118, 'BEST', NULL, '_JUB021', 'products/April2021/Yk9gQKv2lgO3LFPTEW7V.png', NULL, '1.49', '2.2', 1, 1, 0, 0, '2021-04-24 21:21:56', '2021-06-12 22:40:06', 'best', 21, '<p>Cocktail Juice</p>', NULL, 3625, 3560, 'Juice', 1, 0),
(119, 'BEST', NULL, '_JUB021OF', 'products/April2021/i20IQe2EpchAXaROMnnv.jpg', NULL, '19.96', '0', 1, 1, 1, 0, '2021-04-24 21:27:00', '2021-06-12 22:40:06', 'best', 21, '<p>Cocktail Juice. 9 oz - 6 Bottels</p>', NULL, 3626, 3561, 'Juice', 1, 0),
(120, 'BEST', NULL, '_JUB001', 'products/April2021/5xse5DIEzjGPA51Ozowu.png', NULL, '1.49', '2.2', 1, 1, 0, 0, '2021-04-24 21:34:00', '2021-06-12 22:40:06', 'best', 21, '<p>Mango Juice</p>', NULL, 3627, 3562, 'Juice', 1, 0),
(121, 'BEST', NULL, '_JUB001OF', 'products/April2021/QA2rnTFpF4urqqZCpJDZ.jpg', NULL, '24.99', '0', 1, 1, 1, 0, '2021-04-24 21:44:00', '2021-06-12 22:40:06', 'best', 21, '<p>Mango Juice.&nbsp; 1 Liter - 2 Bottels</p>', NULL, 3628, 3563, 'Juice', 1, 0),
(122, 'BEST', NULL, '_JUB003', 'products/April2021/PCZKRJTJGkXIRgU1QZ3i.png', NULL, '4.99', '2.2', 1, 1, 0, 0, '2021-04-24 21:50:00', '2021-06-12 22:40:06', 'best', 21, '<p>Mango Juice</p>', NULL, 3629, 3564, 'Juice', 1, 0),
(123, 'BEST', NULL, '_JUB003OF', 'products/April2021/G1sFhUDXsh3zOhKGcio8.jpg', NULL, '24.99', '0', 1, 1, 1, 0, '2021-04-24 21:51:00', '2021-06-12 22:40:06', 'best', 21, '<p>Mango Juice. 1 Liter - 2 Bottels</p>', NULL, 3630, 3565, 'Juice', 1, 0),
(124, 'EPSA', NULL, '_JUE001', 'products/April2021/Do6CN6cLCaxM0a4zMqtQ.png', NULL, '1.99', '0.487', 1, 1, 0, 0, '2021-04-24 21:53:41', '2021-06-12 22:40:06', 'epsa', 21, '<p>Carbonated Orangeade</p>', NULL, 3631, 3566, 'Juice', 1, 0),
(125, 'EPSA', NULL, '_JUE003', 'products/April2021/4JCh6khSIaGKqp5tunT6.png', NULL, '1.25', '0.487', 1, 1, 0, 0, '2021-04-24 21:55:08', '2021-06-12 22:40:06', 'epsa', 21, '<p>Carbonated Lemonade</p>', NULL, 3632, 3567, 'Juice', 1, 0),
(126, 'RANI', NULL, '_JUR001', 'products/April2021/2WocZvYhf9iIkGrBBJtj.png', NULL, '1.49', '0.5', 1, 1, 0, 0, '2021-04-24 21:56:58', '2021-06-12 22:40:06', 'rani', 21, '<p>Mango Juice</p>', NULL, 3633, 3568, 'Juice', 1, 0),
(127, 'RANI', NULL, '_JUR003', 'products/April2021/sMcRzYO5zFOMb8WBEEgd.png', NULL, '1.49', '0.5', 1, 1, 0, 0, '2021-04-24 22:02:21', '2021-06-12 22:40:06', 'rani', 21, '<p>Peach Juice</p>', NULL, 3634, 3569, 'Juice', 1, 0),
(128, 'RANI', NULL, '_JUR005', 'products/April2021/mSltid16Zw0pKAnuqslh.png', NULL, '1.49', '0.5', 1, 1, 0, 0, '2021-04-24 22:03:31', '2021-06-12 22:40:06', 'rani', 21, '<p>Orange Juice</p>', NULL, 3635, 3570, 'Juice', 1, 0),
(129, 'RANI', NULL, '_JUR007', 'products/April2021/nxOZ4OIruuDAdaJxskMm.png', NULL, '1.49', '0.5', 1, 1, 0, 0, '2021-04-24 22:04:44', '2021-06-12 22:40:06', 'rani', 21, '<p>Strawberry Banana Juice</p>', NULL, 3636, 3571, 'Juice', 1, 0),
(130, 'RANI', NULL, '_JUR009', 'products/April2021/lv3DAA3I20Go66ZtqvbC.png', NULL, '1.49', '0.5', 1, 1, 0, 0, '2021-04-24 22:06:15', '2021-06-12 22:40:06', 'rani', 21, '<p>Pineapple Juice</p>', NULL, 3637, 3572, 'Juice', 1, 0),
(131, 'AMITA', NULL, '_JUSA001', 'products/April2021/fJF1Q2aLp1UK63OPJEoa.png', NULL, '3.99', '2.2', 1, 1, 0, 0, '2021-04-24 22:07:54', '2021-06-12 22:40:06', 'amita', 21, '<p>Motion Multivitamin Juice</p>', NULL, 3638, 3573, 'Juice', 1, 0),
(132, 'AMITA', NULL, '_JUSA003', 'products/May2021/MOOIiHxNaetLDkOsRbBQ.png', NULL, '3.99', '2.2', 1, 1, 0, 0, '2021-04-24 22:09:00', '2021-06-12 22:40:06', 'amita', 21, '<p>Orange, Appel, Apricot Nectar</p>', NULL, 3639, 3574, 'Juice', 1, 0),
(133, 'AMITA', NULL, '_JUSA005', 'products/April2021/i3ByaMmzT229j47NmVS1.png', NULL, '3.99', '2.2', 1, 1, 0, 0, '2021-04-24 22:10:56', '2021-06-12 22:40:06', 'amita', 21, '<p>Sour Cherry Drink</p>', NULL, 3640, 3575, 'Juice', 1, 0),
(134, 'AMITA', NULL, '_JUSA007', 'products/April2021/tOVPx6iY5KWFLjTZpnNE.png', NULL, '3.99', '2.2', 1, 1, 0, 0, '2021-04-24 22:11:46', '2021-06-12 22:40:06', 'amita', 21, '<p>Peach Drink</p>', NULL, 3641, 3576, 'Juice', 1, 0),
(135, 'MIRA', NULL, '_JUM131', 'products/April2021/RtHjK83rtfATbJvZOY8o.png', NULL, '0.99', '2.2', 1, 1, 0, 0, '2021-04-24 22:13:32', '2021-06-12 22:40:06', 'mira', 21, '<p>Mango Juice</p>', NULL, 3642, 3577, 'Juice', 1, 0),
(136, 'Simply', NULL, '_JUSI001', 'products/April2021/9dcNX5rb6dAugnjd6iO1.jpg', NULL, '8.99', '0', 1, 1, 1, 0, '2021-04-24 22:15:00', '2021-06-12 22:40:06', 'simply', 21, '<p>Orange Pulp-Free Orange Juice.&nbsp; 2 Pack x 52 Oz.</p>', NULL, 3643, 3578, 'Juice', 1, 0),
(137, 'Simply', NULL, '_JUSI003', 'products/April2021/MQxwG2TS6VDHiQ0juphU.jpg', NULL, '8.99', '0', 1, 1, 1, 0, '2021-04-24 22:17:00', '2021-06-12 22:40:06', 'simply', 21, '<p>Orange Pulp Free Juice with Calcium &amp; Vitamin D</p>\r\n<p>&nbsp;2 Pack x 52 Oz.</p>', NULL, 3644, 3579, 'Juice', 1, 0),
(138, 'Sprite', NULL, '_BSO001', 'products/April2021/s4cidAn0E48qAe6Ais8i.jpeg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:19:00', '2021-06-12 22:40:06', 'sprite', 23, '<p>Lemon Lime Soda Soft Drinks</p>\r\n<p>12 Pack x 12 Oz.</p>', NULL, 3645, 3580, 'Soft Drinks', 1, 0),
(139, 'Fanta', NULL, '_BFA111', 'products/April2021/6fnoCp565cL68p8g079t.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:21:00', '2021-06-12 22:40:06', 'fanta', 23, '<p>Orange Soda Fruit Flavored Soft Drink</p>\r\n<p>12 Pack x 12 Oz.</p>', NULL, 3646, 3581, 'Soft Drinks', 1, 0),
(140, 'Pepsi', NULL, '_BPE001', 'products/April2021/ESK5nTrO2U1k96n3YT6E.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:24:00', '2021-06-12 22:40:06', 'pepsi', 23, '<p>Cola Cans. 12 Pack x 12 Oz.</p>', NULL, 3647, 3582, 'Soft Drinks', 1, 0),
(141, 'Pepsi', NULL, '_BPE003', 'products/April2021/APIE1b3bAAGgdZwn8Ys4.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:25:00', '2021-06-12 22:40:06', 'pepsi', 23, '<p>&nbsp;Diet Pepsi Cola. 12 Pack x 12 Oz.</p>', NULL, 3648, 3583, 'Soft Drinks', 1, 0),
(142, 'Coca-Cola', NULL, '_BCO111', 'products/April2021/HwD2ILFD0Bngf741gdBY.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:27:00', '2021-06-12 22:40:06', 'coca-cola', 23, '<p>Coke Soda. 12 Pack x 12 Oz.</p>', NULL, 3649, 3584, 'Soft Drinks', 1, 0),
(143, 'Coca-Cola', NULL, '_BCO113', 'products/April2021/agkwWVz9mwPq73kyCbMs.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-04-24 22:28:00', '2021-06-12 22:40:06', 'coca-cola', 23, '<p>Diet Coke. 12 Pack x 12 Oz.</p>', NULL, 3650, 3585, 'Soft Drinks', 1, 0),
(144, 'FREEZ', NULL, '_BEFR001', 'products/April2021/VAzcN9WXq9CtqaEeGqOH.png', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 22:51:07', '2021-06-12 22:40:06', 'freez', 23, '<p>Lemon &amp; Ginger Drink</p>', NULL, 3651, 3586, 'Soft Drinks', 1, 0),
(145, 'FREEZ', NULL, '_BEFR003', 'products/April2021/IqtL5AvsuzFPqiJOixbJ.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 22:53:05', '2021-06-12 22:40:06', 'freez', 23, '<p>Apple Grape Drink</p>', NULL, 3652, 3587, 'Soft Drinks', 1, 0),
(146, 'FREEZ', NULL, '_BEFR005', 'products/April2021/HMDh1rtkEVY4nuEpDO17.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 22:54:48', '2021-06-12 22:40:06', 'freez', 23, '<p>Berry Drink</p>', NULL, 3653, 3588, 'Soft Drinks', 1, 0),
(147, 'FREEZ', NULL, '_BEFR007', 'products/April2021/O4CvNE2yKRv0NnibMVPn.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 22:55:59', '2021-06-12 22:40:06', 'freez', 23, '<p>Blue Hawaii Drink</p>', NULL, 3654, 3589, 'Soft Drinks', 1, 0),
(148, 'FREEZ', NULL, '_BEFR009', 'products/April2021/bqeUvrG0Lc0LIvO1FMtP.png', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 22:57:00', '2021-06-12 22:40:06', 'freez', 23, '<p>Kiwi Lime Drink</p>', NULL, 3655, 3590, 'Soft Drinks', 1, 0),
(149, 'FREEZ', NULL, '_BEFR011', 'products/April2021/iRhILUDf7XKdYMcvoMiD.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 23:01:00', '2021-06-12 22:40:06', 'freez', 23, '<p>Lemon Mint Drink</p>', NULL, 3656, 3591, 'Soft Drinks', 1, 0),
(150, 'FREEZ', NULL, '_BEFR013', 'products/April2021/tvegQY2O7zZssHKl6qqJ.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 23:02:25', '2021-06-12 22:40:06', 'freez', 23, '<p>Lychee&nbsp; Drink</p>', NULL, 3657, 3592, 'Soft Drinks', 1, 0),
(151, 'FREEZ', NULL, '_BEFR015', 'products/April2021/XqNkhpW7AKTC1rN44pkg.jpg', NULL, '2.99', '0', 1, 1, 0, 0, '2021-04-24 23:03:26', '2021-06-12 22:40:06', 'freez', 23, '<p>Mango Peach Drink</p>', NULL, 3658, 3593, 'Soft Drinks', 1, 0),
(152, 'FREEZ', NULL, '_BEFR017', 'products/April2021/enBvFnLEDnrJDnMzkel2.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 23:08:44', '2021-06-12 22:40:06', 'freez', 23, '<p>Pineapple Coconut Drink</p>', NULL, 3659, 3594, 'Soft Drinks', 1, 0),
(153, 'FREEZ', NULL, '_BEFR019', 'products/April2021/XGvMHSM3tqBmkYOYoAtu.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 23:10:47', '2021-06-12 22:40:06', 'freez', 23, '<p>Pomegranate Drink</p>', NULL, 3660, 3595, 'Soft Drinks', 1, 0),
(154, 'FREEZ', NULL, '_BEFR021', 'products/April2021/Q5MMhBAHF5hCyX2VAIlE.jpg', NULL, '2.99', '0.606', 1, 1, 0, 0, '2021-04-24 23:11:55', '2021-06-12 22:40:06', 'freez', 23, '<p>Strawberry Drink</p>', NULL, 3661, 3596, 'Soft Drinks', 1, 0),
(155, 'S. PELLEGRINO', NULL, '_WMS111', 'products/April2021/wB5eCUHaXnfw2Zki8A33.png', NULL, '1.99', '1.056', 1, 1, 0, 0, '2021-04-24 23:16:04', '2021-06-12 22:40:06', 's-pellegrino', 22, '<p>Sparkling Natural Mineral Water</p>', NULL, 3662, 3597, 'Sparkling Water', 1, 0),
(156, 'Vimto', NULL, '_JUV001', 'products/April2021/8DrdnR95tttKC3iVoOih.png', NULL, '1.25', '0.78', 1, 1, 0, 0, '2021-04-24 23:17:21', '2021-06-12 22:40:06', 'vimto', 22, '<p>Sparkling Fruit Flavor Drink</p>', NULL, 3663, 3598, 'Sparkling Water', 1, 0),
(157, 'AHMAD TEA OF LONDON', NULL, '_TEAA001', 'products/April2021/juYWpz90LQnBwREZOjOX.png', NULL, '7.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:20:51', '2021-06-12 22:40:06', 'ahmad-tea-of-london', 24, '<p>Ceylon Tea</p>', NULL, 3664, 3599, 'Tea', 1, 0),
(158, 'AHMAD TEA OF LONDON', NULL, '_TEAA003', 'products/April2021/sm4R01xTgIPfTEFUWmCa.png', '[\"products\\/April2021\\/Xy3fL1CoF2drF05ty6p6.png\"]', '9.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:23:14', '2021-06-12 22:40:06', 'ahmad-tea-of-london', 24, '<p>Ceylon with Earl Grey Aromatic Tea - Tin</p>', NULL, 3665, 3600, 'Tea', 1, 0),
(159, 'AHMAD TEA OF LONDON', NULL, '_TEAA005', 'products/April2021/KIQ2tVK2ZkBI7DYcJcsg.png', NULL, '9.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:24:54', '2021-06-12 22:40:06', 'ahmad-tea-of-london', 24, '<p>Ceylon with Earl Grey Tea - Tin</p>', NULL, 3666, 3601, 'Tea', 1, 0),
(160, 'AHMAD TEA OF LONDON', NULL, '_TEAA007', 'products/April2021/2S3hFR9PZxLyhFhUlxCu.png', NULL, '10.94', '1.1', 1, 1, 0, 0, '2021-04-24 23:26:56', '2021-06-12 22:40:06', 'ahmad-tea-of-london', 24, '<p>Ceylon Tea with Cardamom</p>', NULL, 3667, 3602, 'Tea', 1, 0),
(161, 'AHMAD TEA OF LONDON', NULL, '_TEAA027', 'products/April2021/pOhOZeM9HbxQ61Td0KYF.png', '[\"products\\/April2021\\/PFtqLZTbLhDKkRTIFFqk.png\"]', '7.49', '0.44', 1, 1, 0, 0, '2021-04-24 23:29:04', '2021-06-12 22:40:06', 'ahmad-tea-of-london', 24, '<p>Ceylon Tea with Cardamom - Tea Bags</p>', NULL, 3668, 3603, 'Tea', 1, 0),
(162, 'AL-WAZAH', NULL, '_TEAA041', 'products/April2021/Mwau817ISdqaXFVpkkPO.png', NULL, '6.99', '0.44', 1, 1, 0, 0, '2021-04-24 23:31:15', '2021-06-12 22:40:06', 'al-wazah', 24, '<p>Pure Ceylon Tea</p>', NULL, 3669, 3604, 'Tea', 1, 0),
(163, 'AL-WAZAH', NULL, '_TEAA043', 'products/April2021/OEPP4RiVc234uHIS6R4W.png', NULL, '5.99', '0.44', 1, 1, 0, 0, '2021-04-24 23:32:53', '2021-06-12 22:40:06', 'al-wazah', 24, '<p>Pure Ceylon Tea - Tea Bags</p>', NULL, 3670, 3605, 'Tea', 1, 0),
(164, 'AL GHAZALEEN', NULL, '_TEAA051', 'products/April2021/Ape828658sGhFWQ82pPo.png', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-24 23:35:41', '2021-06-12 22:40:06', 'al-ghazaleen', 24, '<p>Pure Ceylon Tea</p>', NULL, 3671, 3606, 'Tea', 1, 0),
(165, 'AL GHAZALEEN', NULL, '_TEAA053', 'products/April2021/l0aYCcwNbAtafBksEITR.png', NULL, '5.99', '0.44', 1, 1, 0, 0, '2021-04-24 23:37:41', '2021-06-12 22:40:06', 'al-ghazaleen', 24, '<p>Pure Ceylon Tea - Tea Bags</p>', NULL, 3672, 3607, 'Tea', 1, 0),
(166, 'AL GHAZALEEN', NULL, '_TEAA055', 'products/April2021/2k3ieCqaeoGADCyqse71.jpg', NULL, '7.49', '0.44', 1, 1, 0, 0, '2021-04-24 23:47:15', '2021-06-12 22:40:06', 'al-ghazaleen', 24, '<p>Green Tea - Tea Bags</p>', NULL, 3673, 3608, 'Tea', 1, 0),
(167, 'CAYKUR', NULL, '_TEAT001', 'products/April2021/sjxn2UJJUHklXLkcyWik.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:49:23', '2021-06-12 22:40:06', 'caykur', 24, '<p>Rize Black Tea</p>', NULL, 3674, 3609, 'Tea', 1, 0),
(168, 'CAYKUR', NULL, '_TEAT003', 'products/April2021/OuzB6jI095oXkl8yeQt3.jpg', NULL, '6.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:50:39', '2021-06-12 22:40:06', 'caykur', 24, '<p>Filiz Black Tea</p>', NULL, 3675, 3610, 'Tea', 1, 0),
(169, 'CAYKUR', NULL, '_TEAT005', 'products/April2021/ZzueAFM67TqPzvoePcuf.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-04-24 23:51:45', '2021-06-12 22:40:06', 'caykur', 24, '<p>Caycicegi Black Tea</p>', NULL, 3676, 3611, 'Tea', 1, 0),
(170, 'Dasani', NULL, '_BEW001', 'products/April2021/vOQXUqTxa7uu91iR94yj.jpg', NULL, '0.99', '1.056', 1, 1, 0, 0, '2021-04-24 23:54:23', '2021-06-12 22:40:06', 'dasani', 25, '<p>Purified Water</p>', NULL, 3677, 3612, 'Water', 1, 0),
(171, 'LAODICEA', NULL, '_SPCL100', 'products/April2021/xc1Ptnr2XIDefERRjuBj.jpg', NULL, '9.99', '1.625', 1, 1, 0, 0, '2021-04-25 12:26:17', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Lemon Pepper</p>', NULL, 3678, 3613, 'Spices and Herbs', 1, 0),
(172, 'LAODICEA', NULL, '_SPCL001', 'products/April2021/aSi36aqYPF4miv1vp5Bm.jpg', NULL, '3.99', '1.875', 1, 1, 0, 0, '2021-04-25 12:29:22', '2021-06-12 22:40:06', 'laodicea', 93, '<p style=\"text-align: left;\">Sea Salt</p>', NULL, 3679, 3614, 'Spices and Herbs', 1, 0),
(173, 'LAODICEA', NULL, '_SPCL003', 'products/April2021/bMRlafgYgEjTYB53py4E.jpg', '[\"products\\/April2021\\/20yMLiRLBv0VOFMXD2Y5.jpg\"]', '5.99', '0.75', 1, 1, 0, 0, '2021-04-25 12:33:15', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Fennel Seeds</p>', NULL, 3680, 3615, 'Spices and Herbs', 1, 0),
(174, 'LAODICEA', NULL, '_SPCL004', 'products/April2021/CrtZEOzKdyvYzWfbOn09.jpg', '[\"products\\/April2021\\/0eCJ3tuXhcEtH08GzkOi.jpg\"]', '7.99', '1.125', 1, 1, 0, 0, '2021-04-25 12:36:23', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Black Sesame Seeds</p>', NULL, 3681, 3616, 'Spices and Herbs', 1, 0),
(175, 'LAODICEA', NULL, '_SPCL005', 'products/April2021/5sDRGmaPWa99bSGRC2P8.jpg', NULL, '5.49', '1', 1, 1, 0, 0, '2021-04-25 12:38:28', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Mustard Ground</p>', NULL, 3682, 3617, 'Spices and Herbs', 1, 0),
(176, 'LAODICEA', NULL, '_SPCL006', 'products/April2021/D4reNUcfao12ArnBxYhM.jpg', '[\"products\\/April2021\\/4RZI6xm1r6MTsdqEl0oS.jpg\"]', '14.99', '0.75', 1, 1, 0, 0, '2021-04-25 12:42:02', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Parsley Flakes</p>', NULL, 3683, 3618, 'Spices and Herbs', 1, 0),
(177, 'LAODICEA', NULL, '_SPCL007', 'products/April2021/R1yjUDUbC0MFmJ39jpw6.jpg', '[\"products\\/April2021\\/vnekDkwnHyUWKC6KfmEF.jpg\"]', '14.99', '1.5', 1, 1, 0, 0, '2021-04-25 12:45:39', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Crushed Mint Leaf</p>', NULL, 3684, 3619, 'Spices and Herbs', 1, 0),
(178, 'LAODICEA', NULL, '_SPCL008', 'products/April2021/IF4rV0fjupIqptSNW5F4.jpg', NULL, '7.99', '1.125', 1, 1, 0, 0, '2021-04-25 12:47:54', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Dark Chili Powder</p>', NULL, 3685, 3620, 'Spices and Herbs', 1, 0),
(179, 'LAODICEA', NULL, '_SPCL009', 'products/April2021/K29N3BQIcABjtkQTVfMA.jpg', NULL, '7.99', '1.5', 1, 1, 0, 0, '2021-04-25 12:50:14', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Seafood Seasoning</p>', NULL, 3686, 3621, 'Spices and Herbs', 1, 0),
(180, 'LAODICEA', NULL, '_SPCL010', 'products/April2021/MXFYswnaeI934B2iVHkL.jpg', NULL, '9.99', '0.281', 1, 1, 0, 0, '2021-04-25 12:52:16', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Tarragon Leaf</p>', NULL, 3687, 3622, 'Spices and Herbs', 1, 0),
(181, 'LAODICEA', NULL, '_SPCL011', 'products/April2021/xXFPmBwX6T1AIlc8ayQa.jpg', NULL, '9.99', '1.25', 1, 1, 0, 0, '2021-04-25 12:54:56', '2021-06-12 22:40:06', 'laodicea', 93, '<p>Whole Poppy Seed</p>', NULL, 3688, 3623, 'Spices and Herbs', 1, 0),
(182, 'ADONIS', NULL, '_SPA100', 'products/April2021/dL5nxgJQR8MQNORJnA9l.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 12:58:19', '2021-06-12 22:40:06', 'adonis', 93, '<p>Nigella Seeds</p>', NULL, 3689, 3624, 'Spices and Herbs', 1, 0),
(183, 'ADONIS', NULL, '_SPA001', 'products/April2021/ckVWDAheprU674zlvFql.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 12:59:46', '2021-06-12 22:40:06', 'adonis', 93, '<p>Aleppo Pepper</p>', NULL, 3690, 3625, 'Spices and Herbs', 1, 0),
(184, 'ADONIS', NULL, '_SPA003', 'products/April2021/ltgce4StVItwqCEwaVtk.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:01:10', '2021-06-12 22:40:06', 'adonis', 93, '<p>Allspice Ground</p>', NULL, 3691, 3626, 'Spices and Herbs', 1, 0),
(185, 'ADONIS', NULL, '_SPA005', 'products/April2021/i6xmKhMJs4YR1cG8GA3d.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:02:40', '2021-06-12 22:40:06', 'adonis', 93, '<p>Anise Ground</p>', NULL, 3692, 3627, 'Spices and Herbs', 1, 0),
(186, 'ADONIS', NULL, '_SPA007', 'products/April2021/ZxvWkF2t36yudjwVq8Ue.png', NULL, '5.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:04:33', '2021-06-12 22:40:06', 'adonis', 93, '<p>Black Pepper Ground</p>', NULL, 3693, 3628, 'Spices and Herbs', 1, 0),
(187, 'ADONIS', NULL, '_SPA009', 'products/April2021/W74u11TEKeDSz3JpaBWL.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:06:48', '2021-06-12 22:40:06', 'adonis', 93, '<p>Caraway Ground</p>', NULL, 3694, 3629, 'Spices and Herbs', 1, 0),
(188, 'ADONIS', NULL, '_SPA011', 'products/April2021/bV2zd5iKb1u4xOQWg7y7.png', NULL, '4.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:08:38', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cardamom Ground</p>', NULL, 3695, 3630, 'Spices and Herbs', 1, 0),
(189, 'ADONIS', NULL, '_SPA013', 'products/April2021/9Hy8HJdvoHo4XVExfq0H.png', NULL, '2.99', '0.21', 1, 1, 0, 0, '2021-04-25 13:10:30', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cinnamon Ground</p>', NULL, 3696, 3631, 'Spices and Herbs', 1, 0),
(190, 'ADONIS', NULL, '_SPA015', 'products/April2021/eRAg6resEVWdTbe0YgoE.png', NULL, '2.99', '0.44', 1, 1, 0, 0, '2021-04-25 13:12:15', '2021-06-12 22:40:06', 'adonis', 93, '<p>Citric Acid - Lemon Salt</p>', NULL, 3697, 3632, 'Spices and Herbs', 1, 0),
(191, 'ADONIS', NULL, '_SPA017', 'products/April2021/tkJ45OMard147muLAHUQ.png', NULL, '2.99', '0.24', 1, 1, 0, 0, '2021-04-25 13:14:06', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cloves Ground</p>', NULL, 3698, 3633, 'Spices and Herbs', 1, 0),
(192, 'ADONIS', NULL, '_SPA019', 'products/April2021/NN3gNRhyrzPrJkoRkmtC.png', NULL, '2.99', '0.16', 1, 1, 0, 0, '2021-04-25 13:15:56', '2021-06-12 22:40:06', 'adonis', 93, '<p>Coriander Ground</p>', NULL, 3699, 3634, 'Spices and Herbs', 1, 0),
(193, 'ADONIS', NULL, '_SPA021', 'products/April2021/LRs93PDj2TBfxRTsUuBw.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:18:02', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cumin Ground</p>', NULL, 3700, 3635, 'Spices and Herbs', 1, 0),
(194, 'ADONIS', NULL, '_SPA023', 'products/April2021/pAZLF6XqmcUh5uVBqQNB.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:19:49', '2021-06-12 22:40:06', 'adonis', 93, '<p>Curry Powder Medium</p>', NULL, 3701, 3636, 'Spices and Herbs', 1, 0),
(195, 'ADONIS', NULL, '_SPA025', 'products/April2021/XEu5wB9ifVtyKMCIENH5.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:21:42', '2021-06-12 22:40:06', 'adonis', 93, '<p>Fenugreek Ground</p>', NULL, 3702, 3637, 'Spices and Herbs', 1, 0),
(196, 'ADONIS', NULL, '_SPA027', 'products/April2021/GvPnbhTZhHMfKI9JcUQ6.png', NULL, '2.99', '0.22', NULL, 1, 0, 0, '2021-04-25 13:24:06', '2021-06-12 22:40:06', 'adonis', 93, '<p>Garlic Powder</p>', NULL, 3703, 3638, 'Spices and Herbs', 1, 0),
(197, 'ADONIS', NULL, '_SPA029', 'products/April2021/FZKhfhlECZklmOpPSAsu.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:25:48', '2021-06-12 22:40:06', 'adonis', 93, '<p>Ginger Ground</p>', NULL, 3704, 3639, 'Spices and Herbs', 1, 0),
(198, 'ADONIS', NULL, '_SPA031', 'products/April2021/VQ2DxwJECfclTiHVJxRs.png', NULL, '5.49', '0.19', 1, 1, 0, 0, '2021-04-25 13:27:52', '2021-06-12 22:40:06', 'adonis', 93, '<p>Nutmeg Ground</p>', NULL, 3705, 3640, 'Spices and Herbs', 1, 0),
(199, 'ADONIS', NULL, '_SPA033', 'products/April2021/QiQgltvFe4x9LuxwgMDu.png', NULL, '2.99', '0.25', 1, 1, 0, 0, '2021-04-25 13:29:27', '2021-06-12 22:40:06', 'adonis', 93, '<p>Paprika</p>', NULL, 3706, 3641, 'Spices and Herbs', 1, 0),
(200, 'ADONIS', NULL, '_SPA035', 'products/April2021/IluWyRgjh9Y0AC6fQzra.png', NULL, '2.99', '0.21', 1, 1, 0, 0, '2021-04-25 13:32:49', '2021-06-12 22:40:06', 'adonis', 93, '<p>Red Pepper Powder - Cayenne</p>', NULL, 3707, 3642, 'Spices and Herbs', 1, 0),
(201, 'ADONIS', NULL, '_SPA037', 'products/April2021/v09DoUiQEsdBdg5Hd7PQ.png', NULL, '2.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:34:59', '2021-06-12 22:40:06', 'adonis', 93, '<p>Turmeric</p>', NULL, 3708, 3643, 'Spices and Herbs', 1, 0),
(202, 'ADONIS', NULL, '_SPA039', 'products/April2021/c79FmFiimxcxnu8XkTVh.png', NULL, '3.99', '0.19', 1, 1, 0, 0, '2021-04-25 13:36:47', '2021-06-12 22:40:06', 'adonis', 93, '<p>Sumac</p>', NULL, 3709, 3644, 'Spices and Herbs', 1, 0),
(203, 'ADONIS', NULL, '_SPA051', 'products/April2021/M9D9iHPvpSMVNdX08OlW.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:38:41', '2021-06-12 22:40:06', 'adonis', 93, '<p>Chicken Shaarma Spices</p>', NULL, 3710, 3645, 'Spices and Herbs', 1, 0),
(204, 'ADONIS', NULL, '_SPA053', 'products/April2021/3jqrV7hTgrFtNynxsqoJ.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:40:37', '2021-06-12 22:40:06', 'adonis', 93, '<p>Beef Shawarma Spices</p>', NULL, 3711, 3646, 'Spices and Herbs', 1, 0),
(205, 'ADONIS', NULL, '_SPA055', 'products/April2021/fDStTjFXF4TFDXx4Bltp.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:42:26', '2021-06-12 22:40:06', 'adonis', 93, '<p>Barbeque Spices</p>', NULL, 3712, 3647, 'Spices and Herbs', 1, 0),
(206, 'ADONIS', NULL, '_SPA057', 'products/April2021/UoQXl1wKxgPBRnTqcunH.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:44:13', '2021-06-12 22:40:06', 'adonis', 93, '<p>Beryani Spices</p>', NULL, 3713, 3648, 'Spices and Herbs', 1, 0),
(207, 'ADONIS', NULL, '_SPA059', 'products/April2021/bVzk3RklRSgQKm0JrgTj.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:45:43', '2021-06-12 22:40:06', 'adonis', 93, '<p>Chicken Kebab Spices - Shish Taouk</p>', NULL, 3714, 3649, 'Spices and Herbs', 1, 0),
(208, 'ADONIS', NULL, '_SPA061', 'products/April2021/ynCcmvEcGc5CJkpaKcVu.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:47:16', '2021-06-12 22:40:06', 'adonis', 93, '<p>Chicken Spices</p>', NULL, 3715, 3650, 'Spices and Herbs', 1, 0),
(209, 'ADONIS', NULL, '_SPA063', 'products/April2021/TERjarpoHTjUAiSmhyJb.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:49:02', '2021-06-12 22:40:06', 'adonis', 93, '<p>Falafel Spices</p>', NULL, 3716, 3651, 'Spices and Herbs', 1, 0),
(210, 'ADONIS', NULL, '_SPA065', 'products/April2021/TFg9ps7pqck0ACmStd2n.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:50:30', '2021-06-12 22:40:06', 'adonis', 93, '<p>Fish Spices</p>', NULL, 3717, 3652, 'Spices and Herbs', 1, 0),
(211, 'ADONIS', NULL, '_SPA067', 'products/April2021/IAas3WzrmF8685ICDx6x.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:52:12', '2021-06-12 22:40:06', 'adonis', 93, '<p>Kabssah Spices</p>', NULL, 3718, 3653, 'Spices and Herbs', 1, 0),
(212, 'ADONIS', NULL, '_SPA069', 'products/April2021/N4ZpH2R7etlQ30eLeaUV.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:53:35', '2021-06-12 22:40:06', 'adonis', 93, '<p>Kaftah Spices</p>', NULL, 3719, 3654, 'Spices and Herbs', 1, 0),
(213, 'ADONIS', NULL, '_SPA071', 'products/April2021/4gOQ2uPFR349hZdwc976.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:55:00', '2021-06-12 22:40:06', 'adonis', 93, '<p>Kibbeh Spices</p>', NULL, 3720, 3655, 'Spices and Herbs', 1, 0);
INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(214, 'ADONIS', NULL, '_SPA073', 'products/April2021/F4aLFMWSZitSZ3kcPMwh.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:56:19', '2021-06-12 22:40:06', 'adonis', 93, '<p>Ras El-Hanout</p>', NULL, 3721, 3656, 'Spices and Herbs', 1, 0),
(215, 'ADONIS', NULL, '_SPA075', 'products/April2021/l6QzZ1FaNFCEA877FMUm.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 13:57:57', '2021-06-12 22:40:06', 'adonis', 93, '<p>Seven Spices</p>', NULL, 3722, 3657, 'Spices and Herbs', 1, 0),
(216, 'ADONIS', NULL, '_SPA101', 'products/April2021/OTT8vp7opfzfBSr9O1YH.png', NULL, '3.99', '0.16', 1, 1, 0, 0, '2021-04-25 18:12:15', '2021-06-12 22:40:06', 'adonis', 93, '<p>Allspice Whole</p>', NULL, 3723, 3658, 'Spices and Herbs', 1, 0),
(217, 'ADONIS', NULL, '_SPA103', 'products/April2021/MbK3Q7kd0sBFsQYRK3W3.png', NULL, '3.99', '0.16', 1, 1, 0, 0, '2021-04-25 18:16:08', '2021-06-12 22:40:06', 'adonis', 93, '<p>Anise Seed</p>', NULL, 3724, 3659, 'Spices and Herbs', 1, 0),
(218, 'ADONIS', NULL, '_SPA105', 'products/April2021/CaprhFWtTz9e8co49gat.png', NULL, '4.99', '0.17', 1, 1, 0, 0, '2021-04-25 18:17:23', '2021-06-12 22:40:06', 'adonis', 93, '<p>Black Pepper Whole</p>', NULL, 3725, 3660, 'Spices and Herbs', 1, 0),
(219, 'ADONIS', NULL, '_SPA107', 'products/April2021/uC1ds30CLvchRMaL213K.png', NULL, '5.99', '0.16', 1, 1, 0, 0, '2021-04-25 18:20:50', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cardamom Whole Green</p>', NULL, 3726, 3661, 'Spices and Herbs', 1, 0),
(220, 'ADONIS', NULL, '_SPA109', 'products/April2021/cGg1Ehof8JtGkXmEMm9k.png', NULL, '4.99', '0.132', 1, 1, 0, 0, '2021-04-25 18:22:36', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cloves Whole</p>', NULL, 3727, 3662, 'Spices and Herbs', 1, 0),
(221, 'ADONIS', NULL, '_SPA111', 'products/April2021/TXcV7RcAzIMkLw9ZDgfg.png', NULL, '2.99', '0.11', 1, 1, 0, 0, '2021-04-25 18:23:42', '2021-06-12 22:40:06', 'adonis', 93, '<p>Coriander Seed</p>', NULL, 3728, 3663, 'Spices and Herbs', 1, 0),
(222, 'ADONIS', NULL, '_SPA113', 'products/April2021/ODXw48CpUmZDKXbMNdM0.png', NULL, '3.49', '0.22', 1, 1, 0, 0, '2021-04-25 18:24:54', '2021-06-12 22:40:06', 'adonis', 93, '<p>Crushed Red Pepper</p>', NULL, 3729, 3664, 'Spices and Herbs', 1, 0),
(223, 'ADONIS', NULL, '_SPA115', 'products/April2021/Uc1tNgobAJrO6yxmAqTM.png', NULL, '2.99', '0.19', 1, 1, 0, 0, '2021-04-25 18:25:55', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cumin Seed</p>', NULL, 3730, 3665, 'Spices and Herbs', 1, 0),
(224, 'ADONIS', NULL, '_SPA117', 'products/April2021/Mq985KceKeaxG3WKuoHL.png', NULL, '3.99', '0.15', 1, 1, 0, 0, '2021-04-25 18:27:08', '2021-06-12 22:40:06', 'adonis', 93, '<p>Fennel Seed</p>', NULL, 3731, 3666, 'Spices and Herbs', 1, 0),
(225, 'ADONIS', NULL, '_SPA119', 'products/April2021/5Dh9BTpRpFopMuYLIvb0.png', NULL, '2.99', '0.33', 1, 1, 0, 0, '2021-04-25 18:28:24', '2021-06-12 22:40:06', 'adonis', 93, '<p>Fenugreek Whole</p>', NULL, 3732, 3667, 'Spices and Herbs', 1, 0),
(226, 'ADONIS', NULL, '_SPA121', 'products/April2021/LEaHvy72xsCgmWQtuNoj.png', NULL, '5.49', '0.22', 1, 1, 0, 0, '2021-04-25 18:29:48', '2021-06-12 22:40:06', 'adonis', 93, '<p>Nutmeg Whole</p>', NULL, 3733, 3668, 'Spices and Herbs', 1, 0),
(227, 'ADONIS', NULL, '_SPA041', 'products/April2021/lkpHPJeXiMYbsOY8UeA5.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 18:30:46', '2021-06-12 22:40:06', 'adonis', 93, '<p>Roasted sesame seeds</p>', NULL, 3734, 3669, 'Spices and Herbs', 1, 0),
(228, 'ADONIS', NULL, '_SPA151', 'products/April2021/cieHoFJXRE1lYejuuP7e.png', NULL, '3.99', '0.17', 1, 1, 0, 0, '2021-04-25 18:31:57', '2021-06-12 22:40:06', 'adonis', 93, '<p>Basil</p>', NULL, 3735, 3670, 'Spices and Herbs', 1, 0),
(229, 'ADONIS', NULL, '_SPA153', 'products/April2021/eDecpNT1fvzbi2N15K1c.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 18:33:08', '2021-06-12 22:40:06', 'adonis', 93, '<p>Mint</p>', NULL, 3736, 3671, 'Spices and Herbs', 1, 0),
(230, 'ADONIS', NULL, '_SPA155', 'products/April2021/mLsKXUhfFsm0WiDkq6bU.png', NULL, '4.49', '0.15', 1, 1, 0, 0, '2021-04-25 18:34:22', '2021-06-12 22:40:06', 'adonis', 93, '<p>Oregano</p>', NULL, 3737, 3672, 'Spices and Herbs', 1, 0),
(231, 'ADONIS', NULL, '_SPA157', 'products/April2021/bdnOZj1cjIY3pKeRMEb1.png', NULL, '3.99', '0.165', 1, 1, 0, 0, '2021-04-25 18:35:37', '2021-06-12 22:40:06', 'adonis', 93, '<p>Parsley</p>', NULL, 3738, 3673, 'Spices and Herbs', 1, 0),
(232, 'ADONIS', NULL, '_SPA159', 'products/April2021/vyIZ4PsdHKnX6XptP0CV.png', NULL, '3.99', '0.2', 1, 1, 0, 0, '2021-04-25 18:36:45', '2021-06-12 22:40:06', 'adonis', 93, '<p>Roselle - Hibiscus Flower</p>', NULL, 3739, 3674, 'Spices and Herbs', 1, 0),
(233, 'ADONIS', NULL, '_SPA161', 'products/April2021/TJDffagMSU7erAwHpUGy.png', NULL, '3.99', '0.2', 1, 1, 0, 0, '2021-04-25 18:37:45', '2021-06-12 22:40:06', 'adonis', 93, '<p>Rosemarry</p>', NULL, 3740, 3675, 'Spices and Herbs', 1, 0),
(234, 'ADONIS', NULL, '_SPA171', 'products/April2021/7Z7WLuNRLJ57Xk57yJ40.png', NULL, '6.99', '0.143', 1, 1, 0, 0, '2021-04-25 18:39:18', '2021-06-12 22:40:06', 'adonis', 93, '<p>Safflower - Osfor</p>', NULL, 3741, 3676, 'Spices and Herbs', 1, 0),
(235, 'ADONIS', NULL, '_SPA181', 'products/April2021/8DUJyIsT97Ohlai3o4o8.png', NULL, '3.99', '0.11', 1, 1, 0, 0, '2021-04-25 18:40:29', '2021-06-12 22:40:06', 'adonis', 93, '<p>Bay Leaves</p>', NULL, 3742, 3677, 'Spices and Herbs', 1, 0),
(236, 'ADONIS', NULL, '_SPA183', 'products/April2021/Rek1Cyv9bz5I6wyezIMM.png', NULL, '4.99', '0.22', 1, 1, 0, 0, '2021-04-25 18:41:40', '2021-06-12 22:40:06', 'adonis', 93, '<p>Camomile</p>', NULL, 3743, 3678, 'Spices and Herbs', 1, 0),
(237, 'ADONIS', NULL, '_SPA185', 'products/April2021/xcdmFMkozsUeopHzvhWR.png', NULL, '4.49', '0.15', 1, 1, 0, 0, '2021-04-25 18:42:50', '2021-06-12 22:40:06', 'adonis', 93, '<p>Hyssop</p>', NULL, 3744, 3679, 'Spices and Herbs', 1, 0),
(238, 'ADONIS', NULL, '_SPA187', 'products/April2021/U6kvCM33dhKvFNH2XBTd.png', NULL, '4.49', '0.11', 1, 1, 0, 0, '2021-04-25 18:44:01', '2021-06-12 22:40:06', 'adonis', 93, '<p>Melissa</p>', NULL, 3745, 3680, 'Spices and Herbs', 1, 0),
(239, 'ADONIS', NULL, '_SPA189', 'products/April2021/AwYKQavLCYhGNxviMAvC.png', NULL, '4.99', '0.22', 1, 1, 0, 0, '2021-04-25 18:45:17', '2021-06-12 22:40:06', 'adonis', 93, '<p>Tisane - Herbal Tea</p>', NULL, 3746, 3681, 'Spices and Herbs', 1, 0),
(240, 'ADONIS', NULL, '_SPA191', 'products/April2021/wNKyX8JkR1lAbjrjWfaE.png', NULL, '3.99', '0.22', 1, 1, 0, 0, '2021-04-25 18:46:27', '2021-06-12 22:40:06', 'adonis', 93, '<p>Sage Leaves</p>', NULL, 3747, 3682, 'Spices and Herbs', 1, 0),
(241, 'ADONIS', NULL, '_SPA131', 'products/April2021/2HCqoN2UKYwaftOd2OIl.png', NULL, '3.99', '0.33', 1, 1, 0, 0, '2021-04-25 18:47:38', '2021-06-12 22:40:06', 'adonis', 93, '<p>Cinnamon Sticks</p>', NULL, 3748, 3683, 'Spices and Herbs', 1, 0),
(250, 'ADONIS', NULL, '_SPA000OFF', 'products/April2021/yfK3qqSFhCyapOG07srN.jpg', NULL, '49.99', '0', 1, 1, 0, 0, '2021-04-25 19:01:38', '2021-06-12 22:40:06', 'adonis', 93, '<p>Spice Mixed Offer. 12 pcs</p>', NULL, 3757, 3692, 'Spices and Herbs', 1, 0),
(259, 'THE COMPLETE MIDDLE EAST COOKBOOK', 'Tess Mallos', '_BKS001', 'products/April2021/OTBKIcfgROBUb7XO9wCI.jpg', NULL, '42.99', '1', 1, 1, 0, 0, '2021-04-25 21:00:34', '2021-06-12 22:40:06', 'the-complete-middle-east-cookbook', 12, '<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: left;\"><span dir=\"LTR\" style=\"mso-bidi-language: AR-SY;\">With recipes from Greece, Turkey, Lebanon, Egypt, Syria, and even lesser known cuisines from Afghanistan, Armenia, Cyprus, Iran, Jordan, Saudi Arabia, Bahrain, Kuwait, Oman, Qatar, the United Arab Emirates, and Yemen, this book is truly a wonderful compilation of some of the most delicious Middle Eastern foods. Each chapter in this book examines the customs and cooking methods of each country illustrated by full-page color photos. The book also includes a glossary of regional names and descriptions of foods and ingredients</span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Calibri\',sans-serif; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SY;\">Language:&nbsp;</span>English.</p>', NULL, NULL, NULL, 'Cook Books', 1, 0),
(260, 'LEBANESE COOKBOOK', 'Dawn, Elaine & Selwa Anthony.', '_BKS003', 'products/April2021/QMm6nCAm6NXhszdSN37d.jpg', NULL, '26.99', '1', 1, 1, 0, 0, '2021-04-25 21:03:18', '2021-06-12 22:40:06', 'lebanese-cookbook', 12, '<p>The Lebanese Cookbook offers a comprehensive range of authentic Lebanese recipes including favorite dishes like Tabbouleh salad, Hummus b\'Tahini, Falafel, and Baba Ghanouj. Beautifully designed with full-page color photographs. The Lebanese Cookbook also provides an insight into the lifestyle, customs and culinary traditions of Lebanon.</p>', NULL, NULL, NULL, 'Cook Books', 1, 0),
(261, 'NORTH AFRICAN COOKING', 'Tess Mallos', '_BKS005', 'products/April2021/x4ORyJncucd8KE05fGFy.jpg', NULL, '26.99', '1', 1, 1, 0, 0, '2021-04-25 21:05:15', '2021-06-12 22:40:06', 'north-african-cooking', 12, '<p>North African Cooking book will show how easy it is to prepare traditional and authentic dishes from Egypt, Algeria, Libya, Tunisia and Morocco. This beautiful book includes an introduction to North African history and culture, and information on ingredients, equipment, and cooking technique to make its dishes accessible for all to enjoy.</p>', NULL, 3760, 3696, 'Cook Books', 1, 0),
(262, 'TURKISH COOKING', 'Tess Mallos', '_BKS007', 'products/April2021/pc0RYY5ofA7DHxiQDVQR.jpg', NULL, '26.99', '1', 1, 1, 0, 0, '2021-04-25 21:08:29', '2021-06-12 22:40:06', 'turkish-cooking', 12, '<p>Turkish Cooking explores the healthy, nutritious and delicious recipes inspired by this tradition, including such authentic favorites as Turkish Delight, Baklava and Braised Lamb. From fresh seafood to spicy meat skewers, stuffed vegetables to lots of nuts, grains, olives, figs and fruits. All these electrifying dishes are perfectly suited to the conscious cook.</p>', NULL, 3761, 3697, 'Cook Books', 1, 0),
(263, 'A.B. OF COOKING (ALEF BA\' ETTABEKH)', 'Sima Osman Yassine and Sadouf Kamal', '_BKS101', 'products/April2021/XVaAk2RLV3imHSG53FgO.jpg', NULL, '42.99', '1', 1, 1, 0, 0, '2021-04-25 21:12:01', '2021-06-12 22:40:06', 'a-b-of-cooking-alef-ba-ettabekh', 12, '<p>With more than 460 fabulous recipes, and more than 240 full-color photographs. Alef baa tabkh covers all the tips necessary to make Middle Eastern cooking a very simple and enjoyable experience. Easy to follow instructions and a wide range of selections such as recipes for appetizers, salads, soups, rice and pasta dishes, poultry, fish and meat, vegetables, savory pies, preserves, desserts and more. This book also lists the name of spices, vegetables and fruits in Arabic, English and French, with a detailed description of how to purchase the best ingredients and how to maintain their freshness.</p>', NULL, NULL, NULL, 'Cook Books', 1, 0),
(264, 'WORLD SWEETS, ARABIC', 'Sima Osman Yassin and Sadouf Kamal', '_BKS103', 'products/April2021/wBnUIqSjDuQkFabBPs1v.jpg', NULL, '42.99', '1', 1, 1, 0, 0, '2021-04-25 21:15:12', '2021-06-12 22:40:06', 'world-sweets-arabic', 12, '<p>From all over the world, the world sweet book presents 290 recipes to satisfy your sweetooth.Delecatable desserts that have a blend of the east and west in a subtle and beautiful manner. Recipes include pies, cakes, chocolate desserts, baklava, walnut and date cookies, knaafeh (string pastry with cheese), awwamat (dough balls in syrup), turmeric cake, walnut pancakes, mouhallabia bill burtukal (milk pudding with oranges), basbousa (semolina cake), and more.</p>', NULL, 3762, 3698, 'Cook Books', 1, 0),
(265, 'Kellogg\'s', NULL, '_CEKE001', 'products/April2021/b7plvnQIYR0xoulsBzkV.jpg', NULL, '12.99', '3.625', 1, 1, 0, 0, '2021-04-25 21:41:00', '2021-06-12 22:40:06', 'kellogg-s', 45, '<p>Tri-Fan Cereal Assortment Pack, Froot Loops, Cocoa Krispies and Apple Jack</p>', NULL, 3763, 3699, 'Cereals', 1, 0),
(266, 'Kellogg’s', NULL, '_CEKE003', 'products/April2021/h5pamySbTY9D6lFaCpVX.jpg', NULL, '6.99', '2.725', 1, 1, 0, 0, '2021-04-25 22:52:17', '2021-06-12 22:40:06', 'kellogg-s', 45, '<p>Froot Loops, Breakfast Cereal, 21.8 Oz. x 2 Pk</p>', NULL, 3764, 3700, 'Cereals', 1, 0),
(267, 'Kellogg\'s', NULL, '_CEKE005', 'products/April2021/nxEsUEAIhfVu1pOs2wY3.jpg', NULL, '8.99', '3.869', 1, 1, 0, 0, '2021-04-25 22:53:46', '2021-06-12 22:40:06', 'kellogg-s', 45, '<p>Frosted Flakes Cereal, 30.95 oz, 2-count</p>', NULL, 3765, 3701, 'Cereals', 1, 0),
(268, 'Kellogg\'s', NULL, '_CEKE007', 'products/April2021/FXaKuHCPqIfroS5a2PjS.jpg', NULL, '8.99', '2.187', 1, 1, 0, 0, '2021-04-25 22:55:03', '2021-06-12 22:40:06', 'kellogg-s', 45, '<p>Frosted Mini-Wheats, Original Whole Grain Cereal,&nbsp; 35 Oz. x&nbsp; 2 Pk.</p>', NULL, 3766, 3702, 'Cereals', 1, 0),
(269, 'Kellogg\'s', NULL, '_CEKE009', 'products/April2021/vur8tKrzF8UnbopC5dlM.jpg', NULL, '7.99', '2.688', 1, 1, 0, 0, '2021-04-25 22:56:15', '2021-06-12 22:40:06', 'kellogg-s', 45, '<p>Breakfast Cereal Red Berries -&nbsp; 21.5 Oz x&nbsp; 2 Pk</p>', NULL, 3767, 3703, 'Cereals', 1, 0),
(270, 'General Mills', NULL, '_CEGE001', 'products/April2021/UpHIr84DpMvieTusZTn1.jpg', NULL, '15.99', '2', 1, 1, 0, 0, '2021-04-25 23:02:55', '2021-06-12 22:40:06', 'general-mills', 45, '<p>Morning Summit Cereal</p>', NULL, 3768, 3704, 'Cereals', 1, 0),
(271, 'General Mills', NULL, '_CEGE003', 'products/April2021/YpTEi0fbSNlEBsFcCwrL.jpg', NULL, '7.99', '2.544', 1, 1, 0, 0, '2021-04-25 23:04:07', '2021-06-12 22:40:06', 'general-mills', 45, '<p>Cereal with Whole Grain Oats,&nbsp; 20.35 oz, 2-count</p>', NULL, 3769, 3705, 'Cereals', 1, 0),
(272, 'General Mills', NULL, '_CEGE005', 'products/April2021/M5H6GqZlmob7qfXH8BDh.jpg', NULL, '8.99', '2.344', 1, 1, 0, 0, '2021-04-25 23:06:05', '2021-06-12 22:40:06', 'general-mills', 45, '<p>General Mills Multi Grain Cheerios, 18.75 oz, 2-count</p>', NULL, 3770, 3706, 'Cereals', 1, 0),
(273, 'General Mills', NULL, '_CEGE007', 'products/April2021/nb6oxIHUuZfb1B3WA8Hq.jpg', NULL, '8.99', '3.031', 1, 1, 0, 0, '2021-04-25 23:07:30', '2021-06-12 22:40:06', 'general-mills', 45, '<p>Cinnamon Toast Crunch Cereal, 24.75 oz, 2-count</p>', NULL, 3771, 3707, 'Cereals', 1, 0),
(274, 'Nature\'s Path Organic', NULL, '_CENA001', 'products/April2021/WyYxMVHcFWwO1nEduoVj.jpg', NULL, '6.99', '1.75', 1, 1, 0, 0, '2021-04-25 23:09:31', '2021-06-12 22:40:06', 'nature-s-path-organic', 45, '<p>Golden Turmeric Cereal</p>', NULL, 3772, 3708, 'Cereals', 1, 0),
(275, 'Nature\'s Path Organic', NULL, '_CENA003', 'products/April2021/Qz24d1KI8ZQBrxtsOQtA.jpeg', NULL, '11.99', '2.206', 1, 1, 0, 0, '2021-04-25 23:10:44', '2021-06-12 22:40:06', 'nature-s-path-organic', 45, '<p>Granola Cereal, Pumpkin Seed + Flax</p>', NULL, 3773, 3709, 'Cereals', 1, 0),
(276, 'POST', NULL, '_CEPO001', 'products/April2021/4H3HkPGRV7uapKa7lgQo.jpg', NULL, '7.99', '3', 1, 1, 0, 0, '2021-04-25 23:13:27', '2021-06-12 22:40:06', 'post', 45, '<p>Honey Bunches of Oats with Almonds Cereal, 24 oz, 2-count</p>', NULL, 3774, 3710, 'Cereals', 1, 0),
(277, 'Quaker', NULL, '_CEQU001', 'products/April2021/GRudIRBgySqdpzmoxPoI.jpg', NULL, '8.99', '3.625', 1, 1, 0, 0, '2021-04-25 23:16:05', '2021-06-12 22:40:06', 'quaker', 45, '<p>Quaker Oatmeal Squares Cereal, 29 oz, 2-count</p>', NULL, 3775, 3711, 'Cereals', 1, 0),
(278, 'Chef Ramzi', NULL, '_THC001', 'products/April2021/dg7omQq4LOqLtDziVzqq.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-25 23:31:47', '2021-06-12 22:40:06', 'chef-ramzi', 51, '<p>Tahini Sesame Paste</p>', NULL, 3776, 3712, 'Tahini', 1, 0),
(279, 'Chef Ramzi', NULL, '_THC003', 'products/April2021/IMAnyP84QWSzG7qVmUY9.jpg', NULL, '7.99', '2', 1, 1, 0, 0, '2021-04-25 23:33:17', '2021-06-12 22:40:06', 'chef-ramzi', 51, '<p>Tahini Sesame Paste</p>', NULL, 3777, 3713, 'Tahini', 1, 0),
(280, 'Chef Ramzi', NULL, '_THC003OFF', 'products/April2021/vwHdb22Y2n43NqtaBLZJ.jpg', NULL, '33.99', '0', 1, 1, 1, 0, '2021-04-25 23:36:00', '2021-06-12 22:40:06', 'chef-ramzi', 51, '<p>Tahini Sesame Paste.&nbsp; 2 lbs - 2 Pcs</p>', NULL, 3778, 3714, 'Tahini', 1, 0),
(281, 'Chef Ramzi', NULL, '_THC007', 'products/April2021/iFRSAEYoSiaQL3e7Wwtv.jpg', NULL, '99.99', '0', 1, 1, 1, 0, '2021-04-25 23:37:00', '2021-06-12 22:40:06', 'chef-ramzi', 51, '<p>Tahini Sesame Paste. 40 lbs</p>', NULL, 3779, 3715, 'Tahini', 1, 0),
(282, 'CORTAS', NULL, '_THC101', 'products/April2021/V0ixwPqpOmWoSoJUGfkm.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-25 23:39:07', '2021-06-12 22:40:06', 'cortas', 51, '<p>Tahini Sesame Paste</p>', NULL, 3780, 3716, 'Tahini', 1, 0),
(283, 'CORTAS', NULL, '_THC103', 'products/April2021/QRHs4yWm8EEK08uC84BJ.jpg', NULL, '7.99', '2', 1, 1, 0, 0, '2021-04-25 23:40:27', '2021-06-12 22:40:06', 'cortas', 51, '<p>Tahini Sesame Paste</p>', NULL, 3781, 3717, 'Tahini', 1, 0),
(284, 'LAODICEA', NULL, '_MOL001', 'products/April2021/svWEeyIN3arJOoVSwS5j.jpg', NULL, '5.99', '1.562', 1, 1, 0, 0, '2021-04-26 00:00:02', '2021-06-12 22:40:06', 'laodicea', 50, '<p>Carob Molasses</p>', NULL, 3782, 3718, 'Molasses', 1, 0),
(285, 'LAODICEA', NULL, '_MOL003', 'products/April2021/ayiJjggxNGUCy3PVZYnB.jpg', NULL, '5.99', '1.537', 1, 1, 0, 0, '2021-04-26 00:01:19', '2021-06-12 22:40:06', 'laodicea', 50, '<p>Grape Molasses</p>', NULL, 3783, 3719, 'Molasses', 1, 0),
(286, 'LAODICEA', NULL, '_MOL005OF', 'products/April2021/7LQ60Cw2ahxXoM14CQb1.jpg', NULL, '11.99', '0', 1, 1, 1, 0, '2021-04-26 00:02:00', '2021-06-12 22:40:06', 'laodicea', 50, '<p>Carob + Grape Molasses</p>', NULL, 3784, 3720, 'Molasses', 1, 0),
(287, 'CORTAS', NULL, '_MOC001', 'products/April2021/sOCrqalbawCRqJvdIaJt.jpg', NULL, '2.99', '0.66', 1, 1, 0, 0, '2021-04-26 00:12:01', '2021-06-12 22:40:06', 'cortas', 50, '<p>Pomegranate Molasses - Dibs Rumman</p>', NULL, 3785, 3721, 'Molasses', 1, 0),
(288, 'CORTAS', NULL, '_MOC003', 'products/April2021/1FYpDtW6gA4dR5kAq9e4.jpg', NULL, '5.49', '1.102', 1, 1, 0, 0, '2021-04-26 00:13:42', '2021-06-12 22:40:06', 'cortas', 50, '<p>Pomegranate Molasses - Dibs Rumman</p>', NULL, 3786, 3722, 'Molasses', 1, 0),
(289, 'CORTAS', NULL, '_MOC005', 'products/April2021/LEgmcvsfxlF15I0uMVNn.jpg', NULL, '4.99', '0.875', 1, 1, 0, 0, '2021-04-26 00:16:08', '2021-06-12 22:40:06', 'cortas', 50, '<p>Pure Carob Molasses</p>', NULL, 3787, 3723, 'Molasses', 1, 0),
(290, 'CORTAS', NULL, '_MOC007', 'products/April2021/iUN8x0KgDWVda61c3n7k.jpg', NULL, '5.99', '1.1875', 1, 1, 0, 0, '2021-04-26 00:17:19', '2021-06-12 22:40:06', 'cortas', 50, '<p>Date Molasses</p>', NULL, 3788, 3724, 'Molasses', 1, 0),
(291, 'AL WADI', NULL, '_ALW011', 'products/April2021/yLx30LT4243Wl78EMFN9.jpg', NULL, '5.99', '1.5', 1, 1, 0, 0, '2021-04-26 00:19:31', '2021-06-12 22:40:06', 'al-wadi', 50, '<p>Carob Molasses</p>', NULL, 3789, 3725, 'Molasses', 1, 0),
(292, 'AL WADI', NULL, '_ALW013', 'products/April2021/4k26zVFZFdck1SvclESB.jpg', NULL, '5.99', '1.5', 1, 1, 0, 0, '2021-04-26 00:24:29', '2021-06-12 22:40:06', 'al-wadi', 50, '<p>Date Molasses</p>', NULL, 3790, 3726, 'Molasses', 1, 0),
(293, 'AL WADI', NULL, '_ALW015', 'products/April2021/kdD7SFCMW616NQ6Vo3YK.jpg', NULL, '5.99', '1.5', 1, 1, 0, 0, '2021-04-26 00:25:57', '2021-06-12 22:40:06', 'al-wadi', 50, '<p>Grape Molasses</p>', NULL, 3791, 3727, 'Molasses', 1, 0),
(294, 'LAODICEA', NULL, '_HOL001', 'products/April2021/82pqdlQmvlxNp9CNtafR.jpg', NULL, '16.99', '1.562', 1, 1, 0, 0, '2021-04-26 18:27:03', '2021-06-12 22:40:06', 'laodicea', 49, '<p>Super Honey with Nuts</p>', NULL, 3792, 3728, 'Honey', 1, 0),
(295, 'LAODICEA', NULL, '_HOL003', 'products/April2021/ymGZvXNGamGdCFBTfAag.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-04-26 18:28:14', '2021-06-12 22:40:06', 'laodicea', 49, '<p>Sugar Cane Molasses</p>', NULL, 3793, 3729, 'Honey', 1, 0),
(296, 'ATTIKI', NULL, '_HOA001', 'products/April2021/T6KIFNn9xt9y8LJlURIW.jpg', NULL, '16.99', '1', 1, 1, 0, 0, '2021-04-26 18:29:25', '2021-06-12 22:40:06', 'attiki', 49, '<p>Greek Honey</p>', NULL, 3794, 3730, 'Honey', 1, 0),
(297, 'ATTIKI', NULL, '_HOA001OF', 'products/April2021/QZOgOa0A8O5aC1IG1Nwp.jpg', NULL, '99.99', '0', 1, 1, 1, 0, '2021-04-26 18:30:00', '2021-06-12 22:40:06', 'attiki', 49, '<p>Greek Honey. 1 LB - 6 Jars</p>', NULL, 3795, 3731, 'Honey', 1, 0),
(298, 'PYRAMID', NULL, '_HOP001', 'products/April2021/Yljzx41ezBUHdkJJVLcH.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-04-26 18:32:11', '2021-06-12 22:40:06', 'pyramid', 49, '<p>Pure Honey</p>', NULL, 3796, 3732, 'Honey', 1, 0),
(299, 'SAHADI', NULL, '_HOS001', 'products/April2021/qJqBFhaB8lOLQyTlIRqs.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-26 18:33:17', '2021-06-12 22:40:06', 'sahadi', 49, '<p>Clover Honey</p>', NULL, 3797, 3733, 'Honey', 1, 0),
(300, 'SAHADI', NULL, '_HOS011', 'products/April2021/lgbfnoRk3zd2VTweQHcs.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 18:34:20', '2021-06-12 22:40:06', 'sahadi', 49, '<p>Organic Honey</p>', NULL, 3798, 3734, 'Honey', 1, 0),
(301, 'NUTELLA', NULL, '_CHO001', 'products/April2021/JF9FRTDvt7WCjjkeHNYx.jpg', NULL, '4.99', '0.8', 1, 1, 0, 0, '2021-04-26 18:54:07', '2021-06-12 22:40:06', 'nutella', 46, '<p>Chocolate and Hazelnut Spread</p>', NULL, 3799, 3735, 'Chocolate & Sweet Spreads', 1, 0),
(302, 'LAODICEA', NULL, '_HOL005', 'products/April2021/fwGbclPaYrbJS2SP6Kp1.jpg', NULL, '4.99', '1.5', 1, 1, 0, 0, '2021-04-26 18:55:23', '2021-06-12 22:40:06', 'laodicea', 46, '<p>Pitted Sour Cherry</p>', NULL, 3800, 3736, 'Chocolate & Sweet Spreads', 1, 0),
(303, 'Sarantis', NULL, '_JAMS101', 'products/April2021/8X6dnNxrIQGh1yHKUceL.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-26 18:56:41', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Mastic</p>', NULL, 3801, 3737, 'Chocolate & Sweet Spreads', 1, 0),
(304, 'Sarantis', NULL, '_JAMS103', 'products/April2021/comEsQuIQoyA5BnI3E1S.jpg', NULL, '3.99', '1', 1, 1, 0, 0, '2021-04-26 18:58:00', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Vanilla</p>', NULL, 3802, 3738, 'Chocolate & Sweet Spreads', 1, 0),
(305, 'Sarantis', NULL, '_JAMS001', 'products/April2021/TbePpOHZ3r6GFKKFYeuG.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-26 18:59:12', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Pistachio Preserves</p>', NULL, 3803, 3739, 'Chocolate & Sweet Spreads', 1, 0),
(306, 'Sarantis', NULL, '_JAMS003', 'products/April2021/YyiT7d7Wcjsqzz4JpdHN.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 19:00:27', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Orange Preserves</p>', NULL, 3804, 3740, 'Chocolate & Sweet Spreads', 1, 0),
(307, 'Sarantis', NULL, '_JAMS005', 'products/April2021/w743gkJzLOq07AE63QMW.jpg', NULL, '5.99', '2', 1, 1, 0, 0, '2021-04-26 19:01:28', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Fig Preserves</p>', NULL, 3805, 3741, 'Chocolate & Sweet Spreads', 1, 0),
(308, 'Sarantis', NULL, '_JAMS007', 'products/April2021/6qYKDhaH4mm73tmT9HvR.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-26 19:02:50', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Rose Petal Preserves</p>', NULL, 3806, 3742, 'Chocolate & Sweet Spreads', 1, 0),
(309, 'Sarantis', NULL, '_JAMS009', 'products/April2021/Qqm2CmLiYYfqRrbNKsTZ.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 19:03:48', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Sour Cherry Preserves</p>', NULL, 3807, 3743, 'Chocolate & Sweet Spreads', 1, 0),
(310, 'Sarantis', NULL, '_JAMS011', 'products/April2021/TFLB83YiBasPuq2QwRJF.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 19:04:53', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Quince Preserves</p>', NULL, 3808, 3744, 'Chocolate & Sweet Spreads', 1, 0),
(311, 'Sarantis', NULL, '_JAMS013', 'products/April2021/NqhZUpo1GcY0HiHKneVE.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-26 19:05:48', '2021-06-12 22:40:06', 'sarantis', 46, '<p>Grape Preserves</p>', NULL, 3809, 3745, 'Chocolate & Sweet Spreads', 1, 0),
(312, 'MARCO POLO', NULL, '_FRUM001', 'products/April2021/D6rSpbv0dbjHl2JqCppb.jpg', NULL, '4.99', '1.5', 1, 1, 0, 0, '2021-04-26 19:07:29', '2021-06-12 22:40:06', 'marco-polo', 46, '<p>Pitted Sour Cherries</p>', NULL, 3810, 3746, 'Chocolate & Sweet Spreads', 1, 0),
(313, 'CORTAS', NULL, '_JAMC001', 'products/April2021/eM4NPqQtJe3dvr95nZqU.jpg', NULL, '3.49', '0.815', 1, 1, 0, 0, '2021-04-26 19:19:05', '2021-06-12 22:40:06', 'cortas', 47, '<p>Apricot Jam</p>', NULL, 3811, 3747, 'Jams', 1, 0),
(314, 'CORTAS', NULL, '_JAMC005', 'products/April2021/fE0ym6XCbAKqVkWrTUHe.jpg', NULL, '3.49', '0.815', 1, 1, 0, 0, '2021-04-26 19:20:46', '2021-06-12 22:40:06', 'cortas', 47, '<p>Fig Jam</p>', NULL, 3812, 3748, 'Jams', 1, 0),
(315, 'CORTAS', NULL, '_JAMC009', 'products/April2021/MhjVao8pvrBF2wJzMFCZ.jpg', NULL, '3.49', '0.815', 1, 1, 0, 0, '2021-04-26 19:22:04', '2021-06-12 22:40:06', 'cortas', 47, '<p>Quince Jam</p>', NULL, 3813, 3749, 'Jams', 1, 0),
(316, 'CORTAS', NULL, '_JAMC011', 'products/April2021/OM1qaztJ8rwg8o8bjZ49.jpg', NULL, '3.49', '0.815', 1, 1, 0, 0, '2021-04-26 19:36:25', '2021-06-12 22:40:06', 'cortas', 47, '<p>Orange Marmalade</p>', NULL, 3814, 3750, 'Jams', 1, 0),
(317, 'CORTAS', NULL, '_JAMC013', 'products/April2021/pCbtV4MWf5sueYrIB4QB.jpg', NULL, '3.49', '0.815', 1, 1, 0, 0, '2021-04-26 19:37:45', '2021-06-12 22:40:06', 'cortas', 47, '<p>Strawberry Jam</p>', NULL, 3815, 3751, 'Jams', 1, 0),
(318, 'CORTAS', NULL, '_JAMC101', 'products/April2021/1dAmKibZjfJMyRJz2Glz.jpg', NULL, '3.99', '0.815', 1, 1, 0, 0, '2021-04-26 19:39:22', '2021-06-12 22:40:06', 'cortas', 47, '<p>Light Apricot Jam</p>', NULL, 3816, 3752, 'Jams', 1, 0),
(319, 'CORTAS', NULL, '_JAMC105', 'products/April2021/Ntlyf7u77EQGuOHWzu9s.jpg', NULL, '3.99', '0.815', 1, 1, 0, 0, '2021-04-26 19:40:29', '2021-06-12 22:40:06', 'cortas', 47, '<p>Light Fig Jam</p>', NULL, 3817, 3753, 'Jams', 1, 0),
(320, 'CORTAS', NULL, '_JAMC113', 'products/April2021/XWuq5MoxEHKrH9SNm7x4.jpg', NULL, '3.99', '0.815', 1, 1, 0, 0, '2021-04-26 19:41:26', '2021-06-12 22:40:06', 'cortas', 47, '<p>Light Strawberry Jam</p>', NULL, 3818, 3754, 'Jams', 1, 0),
(321, 'OLYMPOS', NULL, '_HALO111', 'products/April2021/LDVgeXvJBEQe2jH9gaai.jpg', NULL, '6.99', '0.881', 1, 1, 0, 0, '2021-04-26 20:50:35', '2021-06-12 22:40:06', 'olympos', 48, '<p>Halva Pistachio</p>', NULL, 3819, 3755, 'Halva', 1, 0),
(322, 'OLYMPOS', NULL, '_HALO113', 'products/April2021/VloRSb37vgrWYoJY3Oql.jpg', NULL, '6.99', '0.881', 1, 1, 0, 0, '2021-04-26 20:52:03', '2021-06-12 22:40:06', 'olympos', 48, '<p>Halva Cocoa</p>', NULL, 3820, 3756, 'Halva', 1, 0),
(323, 'OLYMPOS', NULL, '_HALO115', 'products/April2021/Wtciqe7tav0yZ32lQoV7.jpg', NULL, '6.99', '0.881', 1, 1, 0, 0, '2021-04-26 20:53:14', '2021-06-12 22:40:06', 'olympos', 48, '<p>Halva Vanilla</p>', NULL, 3821, 3757, 'Halva', 1, 0),
(324, 'OLYMPOS', NULL, '_HALO117', 'products/April2021/y5MzbQZ1womE40SSd7EP.jpg', NULL, '6.99', '0.881', 1, 1, 0, 0, '2021-04-26 20:54:37', '2021-06-12 22:40:06', 'olympos', 48, '<p>Halva Almond</p>', NULL, 3822, 3758, 'Halva', 1, 0),
(325, 'MACEDONIAN', NULL, '_HALM001', 'products/April2021/MWfN2xHL5asSpWu6SJ9W.jpg', NULL, '9.99', '1.1', 1, 1, 0, 0, '2021-04-26 20:56:17', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva Vanilla</p>', NULL, 3823, 3759, 'Halva', 1, 0),
(326, 'MACEDONIAN', NULL, '_HALM003', 'products/April2021/nVjl4CJjUNXabbnD19ym.jpg', NULL, '8.99', '1.1', 1, 1, 0, 0, '2021-04-26 20:57:25', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva with Chocolate</p>', NULL, 3824, 3760, 'Halva', 1, 0),
(327, 'MACEDONIAN', NULL, '_HALM005', 'products/April2021/yRstBBsjhJT7SdoRpGhc.jpg', NULL, '9.99', '1.1', 1, 1, 0, 0, '2021-04-26 20:58:33', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva with Pistachio</p>', NULL, 3825, 3761, 'Halva', 1, 0),
(328, 'MACEDONIAN', NULL, '_HALM007', 'products/April2021/40ay9SvYXGHiVRKKBBb5.jpg', NULL, '9.99', '1.1', 1, 1, 0, 0, '2021-04-26 20:59:33', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva with Almond</p>', NULL, 3826, 3762, 'Halva', 1, 0),
(329, 'MACEDONIAN', NULL, '_HALM011', 'products/April2021/i8TDdxlZteIR1Z2WXuOg.jpg', NULL, '1.49', '0.09', 1, 1, 0, 0, '2021-04-26 21:07:24', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva Vanilla - Snack Bars</p>', NULL, 3827, 3763, 'Halva', 1, 0),
(330, 'MACEDONIAN', NULL, '_HALM011OF', 'products/April2021/aaN8wfGxeZc2F72cod6Z.jpg', NULL, '13.99', '0', 1, 1, 1, 0, '2021-04-26 21:08:00', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva Vanilla - 6 Bars</p>', NULL, 3828, 3764, 'Halva', 1, 0),
(331, 'MACEDONIAN', NULL, '_HALM013', 'products/April2021/DpoceIYSaOIQpds6cC4b.jpg', NULL, '1.49', '0.09', 1, 1, 0, 0, '2021-04-26 21:09:50', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva with Chocolate - Snack Bars</p>', NULL, 3829, 3765, 'Halva', 1, 0),
(332, 'MACEDONIAN', NULL, '_HALM013OF', 'products/April2021/1Gb7tTAOWQOcF1BZovMg.jpg', NULL, '13.99', '0', 1, 1, 1, 0, '2021-04-26 21:11:00', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva with Chocolate - 6 Bars</p>', NULL, 3830, 3766, 'Halva', 1, 0),
(333, 'MACEDONIAN', NULL, '_HALM131', 'products/April2021/9d9uvHFwKnxcrvp5JRb7.jpg', NULL, '27.99', '0.344', 1, 1, 0, 0, '2021-04-26 21:12:00', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Halva Vanilla Package</p>', NULL, 3831, 3767, 'Halva', 1, 0),
(334, 'MACEDONIAN', NULL, '_HALM133', 'products/April2021/2oOY7rhFoPG7ODLlJxnV.jpg', NULL, '32.99', '2.204', 1, 1, 0, 0, '2021-04-26 21:23:37', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Halva with Almonds Package</p>', NULL, 3832, 3768, 'Halva', 1, 0),
(335, 'MACEDONIAN', NULL, '_HALM333', 'products/April2021/VtiRpKCJjIt4TUXuJNg1.jpg', NULL, '8.99', '1.062', 1, 1, 0, 0, '2021-04-26 21:25:20', '2021-06-12 22:40:06', 'macedonian', 48, '<p>Greek Halva Plain</p>', NULL, 3833, 3769, 'Halva', 1, 0),
(336, 'Al Kanater', NULL, '_HALKA001', 'products/April2021/ACD6rLQe7qLrWsTwvSG7.jpg', NULL, '10.99', '2', 1, 1, 0, 0, '2021-04-26 21:26:46', '2021-06-12 22:40:06', 'al-kanater', 48, '<p>Halva Sesame Candy with Pistachio</p>', NULL, 3834, 3770, 'Halva', 1, 0),
(337, 'Al Kanater', NULL, '_HALKA003', 'products/April2021/gjYo5UNWhWZx4JrkT1Pk.jpg', NULL, '8.99', '2', 1, 1, 0, 0, '2021-04-26 21:27:43', '2021-06-12 22:40:06', 'al-kanater', 48, '<p>Halva Sesame Candy Plain</p>', NULL, 3835, 3771, 'Halva', 1, 0),
(338, 'CORTAS', NULL, '_HALC001', 'products/April2021/01XBl9UaHqWYyXXDBcpM.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-26 21:28:50', '2021-06-12 22:40:06', 'cortas', 48, '<p>Lebanese Halva Plain</p>', NULL, 3836, 3772, 'Halva', 1, 0),
(339, 'CORTAS', NULL, '_HALC003', 'products/April2021/F55RS5lh39yJo2OV996O.jpg', NULL, '8.99', '2', 1, 1, 0, 0, '2021-04-26 21:29:42', '2021-06-12 22:40:06', 'cortas', 48, '<p>Lebanese Halva Plain</p>', NULL, 3837, 3773, 'Halva', 1, 0),
(340, 'CORTAS', NULL, '_HALC007', 'products/April2021/WT39mUehTIsqxC7yPXcd.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-26 21:30:40', '2021-06-12 22:40:06', 'cortas', 48, '<p>Lebanese Halva with Pistachio</p>', NULL, 3838, 3774, 'Halva', 1, 0),
(341, 'CORTAS', NULL, '_HALC009', 'products/April2021/2SZ4RU9GiKFWDRI0q0MQ.jpg', NULL, '10.99', '2', 1, 1, 0, 0, '2021-04-26 21:32:04', '2021-06-12 22:40:06', 'cortas', 48, '<p>Lebanese Halva with Pistachio</p>', NULL, 3839, 3775, 'Halva', 1, 0),
(342, 'LEBANON VALLEY', NULL, '_HALL001', 'products/April2021/dSctLcIEwSDMc2sFcAew.jpg', NULL, '5.49', '1', 1, 1, 0, 0, '2021-04-26 21:33:15', '2021-06-12 22:40:06', 'lebanon-valley', 48, '<p>Lebanese Halva Plain</p>', NULL, 3840, 3776, 'Halva', 1, 0),
(343, 'LEBANON VALLEY', NULL, '_HALL011', 'products/April2021/p8tpqaQXURhjtOYHh3IO.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-26 21:34:10', '2021-06-12 22:40:06', 'lebanon-valley', 48, '<p>Lebanese Halva with Pistachio</p>', NULL, 3841, 3777, 'Halva', 1, 0),
(344, 'KOSKA', NULL, '_HALK003', 'products/April2021/jKNXzelIrAYhOh0albLc.jpg', NULL, '9.99', '0.7', 1, 1, 0, 0, '2021-04-26 21:36:11', '2021-06-12 22:40:06', 'koska', 48, '<p>Turkish Halva with Pistachio</p>', NULL, 3842, 3778, 'Halva', 1, 0),
(345, 'KOSKA', NULL, '_HALK005', 'products/April2021/eNqogbiTC0cGFDu5yVpd.jpg', NULL, '4.99', '0.7', 1, 1, 0, 0, '2021-04-26 21:37:39', '2021-06-12 22:40:06', 'koska', 48, '<p>Turkish Halva with Chocolate</p>', NULL, 3843, 3779, 'Halva', 1, 0),
(346, 'KOSKA', NULL, '_HALK007', 'products/April2021/kCRS4NAO2vZ1SrRX6UQ7.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-04-26 21:39:36', '2021-06-12 22:40:06', 'koska', 48, '<p>Turkish Halva Plain - Light Sugar Free</p>', NULL, 3844, 3780, 'Halva', 1, 0),
(347, 'KOSKA', NULL, '_HALK009', 'products/April2021/uCgIUOewAaghklwWk2mT.jpg', NULL, '9.99', '2.19', 1, 1, 0, 0, '2021-04-26 21:40:37', '2021-06-12 22:40:06', 'koska', 48, '<p>Turkish Halva with Pistachio - Light Sugar Free</p>', NULL, 3845, 3781, 'Halva', 1, 0),
(348, 'KOSKA', NULL, '_HALK001', 'products/April2021/RGoPB9E4CS5vaHUpxNbF.jpg', NULL, '4.99', '0.9', 1, 1, 0, 0, '2021-04-26 21:44:30', '2021-06-12 22:40:06', 'koska', 48, '<p>Turkish Halva Plain</p>', NULL, 3846, 3782, 'Halva', 1, 0),
(349, 'AL NAKHIL', NULL, '_HALN100', 'products/April2021/cY7vMz9HXt2Vrf6Hkgrr.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-04-26 21:46:16', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva with Pistachio</p>', NULL, 3847, 3783, 'Halva', 1, 0),
(350, 'AL NAKHIL', NULL, '_HALN101', 'products/April2021/7Qs96xwxPf82FAX1IUGM.jpg', NULL, '4.49', '1', 1, 1, 0, 0, '2021-04-26 21:47:27', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva Plain</p>', NULL, 3848, 3784, 'Halva', 1, 0),
(351, 'AL NAKHIL', NULL, '_HALN103', 'products/April2021/IArPv3wdB1mLBhlesCdu.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-26 21:48:38', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva with Chocolate</p>', NULL, 3849, 3785, 'Halva', 1, 0),
(352, 'AL NAKHIL', NULL, '_HALN105', 'products/April2021/irJqw2LyMAUIjgLelRva.jpg', NULL, '6.49', '1', 1, 1, 0, 0, '2021-04-26 21:49:31', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva with Pistachio Sugar Free</p>', NULL, 3850, 3786, 'Halva', 1, 0),
(353, 'AL NAKHIL', NULL, NULL, 'products/April2021/jnuAU7fOvlwL3eOyHB7I.jpg', NULL, '6.49', '1.075', 1, 1, 0, 0, '2021-04-26 21:50:32', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva Cotton Candy</p>', NULL, 3851, 3787, 'Halva', 1, 0),
(354, 'AL NAKHIL', NULL, '_HALN109', 'products/April2021/oi5gt6xKuUdqSluu9FpY.jpg', NULL, '6.49', '1', 1, 1, 0, 0, '2021-04-26 21:51:32', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva Plain Sugar Free</p>', NULL, 3852, 3788, 'Halva', 1, 0),
(355, 'AL NAKHIL', NULL, '_HALN111', 'products/April2021/fZbyyPNPM0tV5UeyHCVL.jpg', NULL, '5.49', '1', 1, 1, 0, 0, '2021-04-26 21:52:24', '2021-06-12 22:40:06', 'al-nakhil', 48, '<p>Halva with Almond</p>', NULL, 3853, 3789, 'Halva', 1, 0),
(356, 'LAODICEA', NULL, '_ZAL005', 'products/April2021/jre9ttq6tmk0wKyPb3MB.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-04-26 22:23:58', '2021-06-12 22:40:06', 'laodicea', 94, '<p>Palestinian Zaatar</p>', NULL, 3854, 3790, 'Zattar', 1, 0),
(357, 'LAODICEA', NULL, '_ZAL001', 'products/April2021/VkV1ZtEg1rhdceohasan.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-04-26 22:25:12', '2021-06-12 22:40:06', 'laodicea', 94, '<p>Jordanian Zaatar</p>', NULL, 3855, 3791, 'Zattar', 1, 0),
(358, 'LAODICEA', NULL, '_ZAL013', 'products/April2021/v39gVNxvrgDixy2nhwwN.jpg', NULL, '8.99', '0.5', 1, 1, 0, 0, '2021-04-26 22:26:14', '2021-06-12 22:40:06', 'laodicea', 94, '<p>Zaatar with Pistachios</p>', NULL, 3856, 3792, 'Zattar', 1, 0),
(359, 'LAODICEA', NULL, '_ZAL011', 'products/April2021/p1WkUaJuRMQKuEidnpDO.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-04-26 22:27:29', '2021-06-12 22:40:06', 'laodicea', 94, '<p>Palestinian Zaatar</p>', NULL, 3857, 3793, 'Zattar', 1, 0),
(360, 'Chef Ramzi', NULL, '_SPPC005', 'products/April2021/WhEiaNYMIncjbaLvPCOf.jpg', NULL, '46.99', '11', 1, 1, 0, 0, '2021-04-26 22:28:48', '2021-06-12 22:40:06', 'chef-ramzi', 94, '<p>Lebanese Zaatar</p>', NULL, 3858, 3794, 'Zattar', 1, 0),
(361, 'Chef Ramzi', NULL, '_ZAC019', 'products/April2021/mwkI518FEhCdGHL9087U.jpg', NULL, '44.99', '11', 1, 1, 0, 0, '2021-04-26 22:30:01', '2021-06-12 22:40:06', 'chef-ramzi', 94, '<p>Jordanian Zaatar</p>', NULL, 3859, 3795, 'Zattar', 1, 0),
(362, 'Chef Ramzi', NULL, '_ZAC029', 'products/April2021/sdr9j0ed6AZ2vJIq3ytn.jpg', NULL, '59.99', '10', 1, 1, 0, 0, '2021-04-26 22:31:16', '2021-06-12 22:40:06', 'chef-ramzi', 94, '<p>Palestinian Zaatar</p>', NULL, 3860, 3796, 'Zattar', 1, 0),
(363, 'ADONIS', NULL, '_ZAA011', 'products/April2021/LrwN80vWESCFKnxOhjGK.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 22:32:32', '2021-06-12 22:40:06', 'adonis', 94, '<p>Lebanese Zaatar</p>', NULL, 3861, 3797, 'Zattar', 1, 0),
(364, 'ADONIS', NULL, '_ZAA013', 'products/April2021/UlkpFr01OidauK6l0w4h.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 22:33:45', '2021-06-12 22:40:06', 'adonis', 94, '<p>Aleppian Mix Zaatar</p>', NULL, 3862, 3798, 'Zattar', 1, 0),
(365, 'ADONIS', NULL, '_ZAA015', 'products/April2021/54O1QW1JVorMit3FMU1L.jpg', NULL, '7.49', '1', 1, 1, 0, 0, '2021-04-26 22:34:59', '2021-06-12 22:40:06', 'adonis', 94, '<p>Jordainan Mix Zaatar&nbsp;</p>', NULL, 3863, 3799, 'Zattar', 1, 0),
(366, 'Dari Cheveux D\'ange', NULL, '_PAD001', 'products/April2021/cO5r1RR7ouJI1cri63Ni.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:38:44', '2021-06-12 22:40:06', 'dari-cheveux-d-ange', 31, '<p>Angel Hair Pasta</p>', NULL, 3864, 3800, 'Pasta Products', 1, 0),
(367, 'TRIA', NULL, '_PAT011', 'products/April2021/LIARV67VNj66BLi02TLo.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:40:17', '2021-06-12 22:40:06', 'tria', 31, '<p>Vermicelli - Fides Thin Cut Noodles</p>', NULL, 3865, 3801, 'Pasta Products', 1, 0),
(368, 'MISKO', NULL, '_PAM001', 'products/April2021/96DTzZF8UnYn2NMkcFKW.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:41:26', '2021-06-12 22:40:06', 'misko', 31, '<p>Vermicelli - Fides Thin Noodles</p>', NULL, 3866, 3802, 'Pasta Products', 1, 0),
(369, 'MISKO', NULL, '_PAM003', 'products/April2021/BzgiZibVkYMeBN8fnQXM.jpg', NULL, '2.99', '1.102', 1, 1, 0, 0, '2021-04-26 23:42:28', '2021-06-12 22:40:06', 'misko', 31, '<p>Vermicelli - Fides Thin Cut Noodles</p>', NULL, 3867, 3803, 'Pasta Products', 1, 0),
(370, 'SIPA', NULL, '_PAS001', 'products/April2021/BLox4EFASjC8uL1HGv3F.jpeg', NULL, '2.29', '1', 1, 1, 0, 0, '2021-04-26 23:43:50', '2021-06-12 22:40:06', 'sipa', 31, '<p>Vermicelli - Fides Thin Cut Noodles</p>', NULL, 3868, 3804, 'Pasta Products', 1, 0),
(371, 'MISKO', NULL, '_PAM005', 'products/April2021/emGmzbAMnzclUcny6mBF.jpeg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:45:00', '2021-06-12 22:40:06', 'misko', 31, '<p>Orzo - Rice Shaped Pasta</p>', NULL, 3869, 3805, 'Pasta Products', 1, 0),
(372, 'MISKO', NULL, '_PAM007', 'products/April2021/udzrerGcZ3RlfP28P0nI.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:47:12', '2021-06-12 22:40:06', 'misko', 31, '<p>Kofto</p>', NULL, 3870, 3806, 'Pasta Products', 1, 0),
(373, 'MISKO', NULL, '_PAM011', 'products/April2021/6lOnbktqVwETjMftcT15.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:49:17', '2021-06-12 22:40:06', 'misko', 31, '<p>Pasta Pastitsio No 2</p>', NULL, 3871, 3807, 'Pasta Products', 1, 0),
(374, 'MISKO', NULL, '_PAM013', 'products/April2021/LTLUDsMVUSYWhQIdrmbj.png', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:50:23', '2021-06-12 22:40:06', 'misko', 31, '<p>Macaroni No 5</p>', NULL, 3872, 3808, 'Pasta Products', 1, 0),
(375, 'MISKO', NULL, '_PAM015', 'products/April2021/2VJZvxhskvZcNUewpBL0.png', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:51:34', '2021-06-12 22:40:06', 'misko', 31, '<p>Spaghetti No 6</p>', NULL, 3873, 3809, 'Pasta Products', 1, 0),
(376, 'MISKO', NULL, '_PAM017', 'products/April2021/T2ghH2XxV4qlIWGxrVHj.png', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:52:55', '2021-06-12 22:40:06', 'misko', 31, '<p>Spagehetti No 10</p>', NULL, 3874, 3810, 'Pasta Products', 1, 0),
(377, 'MELISSA', NULL, '_PAM021', 'products/April2021/FVbwqOryHyviiSuNPuJf.jpg', NULL, '2.49', '1', 1, 1, 0, 0, '2021-04-26 23:54:13', '2021-06-12 22:40:06', 'melissa', 31, '<p>Orzo - Rice Shaped Pasta</p>', NULL, 3875, 3811, 'Pasta Products', 1, 0),
(378, 'MELISSA', NULL, '_PAM023', 'products/April2021/A5jBbWoFN03G87HCAPX0.jpg', NULL, '2.49', '1.102', 1, 1, 0, 0, '2021-04-26 23:56:14', '2021-06-12 22:40:06', 'melissa', 31, '<p>Pasta No 2 Extra thick</p>', NULL, 3876, 3812, 'Pasta Products', 1, 0),
(379, 'Chef Ramzi', NULL, '_SPC001', 'products/April2021/d6zQ0Ku2GkxhRzmllGbR.jpg', NULL, '36.00', '6', 1, 1, 0, 0, '2021-04-27 18:43:37', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Allspice</p>', NULL, 3877, 3813, 'Spices and Herbs', 1, 0),
(380, 'Chef Ramzi', NULL, '_SPC005', 'products/April2021/sw5zTZbRGbihlIdWgFh7.jpg', NULL, '49.68', '5', 1, 1, 0, 0, '2021-04-27 18:45:10', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Black Pepper</p>', NULL, 3878, 3814, 'Spices and Herbs', 1, 0),
(381, 'Chef Ramzi', NULL, '_SPC009', 'products/April2021/bmvhtLrl1pPsjfA8HIxQ.jpg', NULL, '180.00', '5', 1, 1, 0, 0, '2021-04-27 18:47:07', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Cardamon</p>', NULL, 3879, 3815, 'Spices and Herbs', 1, 0),
(382, 'Chef Ramzi', NULL, '_SPC013', 'products/April2021/CbyH8njwsdq0GOeMQMDB.jpg', NULL, '24.00', '8', 1, 1, 0, 0, '2021-04-27 18:48:27', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Cinnamon</p>', NULL, 3880, 3816, 'Spices and Herbs', 1, 0),
(383, 'Chef Ramzi', NULL, '_SPC015', 'products/April2021/vvIFJBSk71ehlKyjlxD5.jpg', NULL, '24.00', '10', 1, 1, 0, 0, '2021-04-27 18:49:50', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Citric Acid&nbsp;</p>', NULL, 3881, 3817, 'Spices and Herbs', 1, 0),
(384, 'Chef Ramzi', NULL, '_SPC019', 'products/April2021/QLPA4yhdPL6i1ci0r5ZQ.jpg', NULL, '24.00', '8', 1, 1, 0, 0, '2021-04-27 18:50:57', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Coriander</p>', NULL, 3882, 3818, 'Spices and Herbs', 1, 0),
(385, 'Chef Ramzi', NULL, '_SPC021', 'products/April2021/L46Yim3jOHFircJrLkXX.jpg', NULL, '29.40', '7', 1, 1, 0, 0, '2021-04-27 18:52:18', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Cumin&nbsp;</p>', NULL, 3883, 3819, 'Spices and Herbs', 1, 0),
(386, 'Chef Ramzi', NULL, '_SPC023', 'products/April2021/uoV1QJLHcFtE3ui142qc.jpg', NULL, '28.80', '8', 1, 1, 0, 0, '2021-04-27 18:53:20', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Curry Powder</p>', NULL, 3884, 3820, 'Spices and Herbs', 1, 0),
(387, 'Chef Ramzi', NULL, '_SPC029', 'products/April2021/z20X7obod1KjQtMZHmgc.jpg', NULL, '29.40', '7', 1, 1, 0, 0, '2021-04-27 18:54:44', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Ginger</p>', NULL, 3885, 3821, 'Spices and Herbs', 1, 0),
(388, 'Chef Ramzi', NULL, '_SPC037', 'products/April2021/G6bQ07YiOUhK7u77tipH.jpg', NULL, '28.80', '8', 1, 1, 0, 0, '2021-04-27 18:56:16', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Paprika</p>', NULL, 3886, 3822, 'Spices and Herbs', 1, 0),
(389, 'Chef Ramzi', NULL, '_SPC047', 'products/April2021/jdG55wp7EcEu9T3RUcXj.jpg', NULL, '24.00', '8', 1, 1, 0, 0, '2021-04-27 18:58:37', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Red Pepper (Cayenne Pepper)</p>', NULL, 3887, 3823, 'Spices and Herbs', 1, 0),
(390, 'Chef Ramzi', NULL, '_SPC043', 'products/April2021/7TrgF1WySQcu9CPwv22i.jpg', NULL, '24.00', '8', 1, 1, 0, 0, '2021-04-27 19:01:02', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Ground Turmeric</p>', NULL, 3888, 3824, 'Spices and Herbs', 1, 0),
(391, 'Chef Ramzi', NULL, '_SPC057', 'products/April2021/lX1RHWzmDDGxWcq7315o.jpg', NULL, '48.00', '5', 1, 1, 0, 0, '2021-04-27 19:01:54', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>&nbsp;Ground White Pepper</p>', NULL, 3889, 3825, 'Spices and Herbs', 1, 0),
(392, 'Chef Ramzi', NULL, '_SPC067', 'products/April2021/QBUZvy6EZ5ZoiMjgGhaF.jpg', NULL, '45.00', '10', 1, 1, 0, 0, '2021-04-27 19:03:14', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Black Caraway Seed</p>', NULL, 3890, 3826, 'Spices and Herbs', 1, 0),
(393, 'Chef Ramzi', NULL, '_SPC111', 'products/April2021/DIWX0vETIqeHWL9XGKHX.jpg', NULL, '49.68', '5', 1, 1, 0, 0, '2021-04-27 19:04:33', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>&nbsp; Whole Black Pepper</p>', NULL, 3891, 3827, 'Spices and Herbs', 1, 0),
(394, 'Chef Ramzi', NULL, '_SPC073', 'products/April2021/lNj6sX1slnVlbJqUS2mt.jpg', NULL, '237.50', '5', 1, 1, 0, 0, '2021-04-27 19:06:00', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Whole Cardamon Green</p>', NULL, 3892, 3828, 'Spices and Herbs', 1, 0),
(395, 'Chef Ramzi', NULL, '_SPC117', 'products/April2021/ZZMzWJkA7AnFtm8Oy0DL.jpg', NULL, '43.75', '5', 1, 1, 0, 0, '2021-04-27 19:07:26', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Cinnamon Sticks</p>', NULL, 3893, 3829, 'Spices and Herbs', 1, 0),
(396, 'Chef Ramzi', NULL, '_SPC121', 'products/April2021/twT5YS7rD0J3sTflPurd.jpg', NULL, '17.50', '5', 1, 1, 0, 0, '2021-04-27 19:08:49', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Whole Coriander</p>', NULL, 3894, 3830, 'Spices and Herbs', 1, 0),
(397, 'Chef Ramzi', NULL, '_SPC123', 'products/April2021/eVf5R298KhqkREuJm83y.jpg', NULL, '30.00', '8', 1, 1, 0, 0, '2021-04-27 19:10:04', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Whole Cumin</p>', NULL, 3895, 3831, 'Spices and Herbs', 1, 0),
(398, 'Chef Ramzi', NULL, '_SPC039', 'products/April2021/37EI7JEBtih0MWpqAIGp.jpg', NULL, '13.00', '2.5', 1, 1, 0, 0, '2021-04-27 19:11:28', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Crushed Mint</p>', NULL, 3896, 3832, 'Spices and Herbs', 1, 0),
(399, 'Chef Ramzi', NULL, '_SPC054', 'products/April2021/q4xhnmcHnPLAhpLvWeCc.jpg', NULL, '41.25', '11', 1, 1, 0, 0, '2021-04-27 19:12:35', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Sumac</p>', NULL, 3897, 3833, 'Spices and Herbs', 1, 0),
(400, 'Chef Ramzi', NULL, '_SPC051', 'products/April2021/7DBNqubriYIl2WaYn3or.jpg', NULL, '157.74', '11', 1, 1, 0, 0, '2021-04-27 19:14:09', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Chicken Shawarma Spice Mix</p>', NULL, 3898, 3834, 'Spices and Herbs', 1, 0),
(401, 'Chef Ramzi', NULL, '_SPC053', 'products/April2021/L0xLVJOCR9wXzdarOglN.jpg', NULL, '157.74', '11', 1, 1, 0, 0, '2021-04-27 19:15:40', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Beef Shawarma Spice Mix</p>', NULL, 3899, 3835, 'Spices and Herbs', 1, 0),
(402, 'Chef Ramzi', NULL, '_SPC052', 'products/April2021/CAOPMEfwAskBLl3rqfLH.jpg', NULL, '85.80', '11', 1, 1, 0, 0, '2021-04-27 19:16:43', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Falafel Spice Mix</p>', NULL, 3900, 3836, 'Spices and Herbs', 1, 0),
(403, 'Chef Ramzi', NULL, '_SPC061', 'products/April2021/5aqUxnpG6yJMfhv9y1kh.jpg', NULL, '149.10', '11', 1, 1, 0, 0, '2021-04-27 19:17:59', '2021-06-12 22:40:06', 'chef-ramzi', 93, '<p>Seven Mixed Spices</p>', NULL, 3901, 3837, 'Spices and Herbs', 1, 0),
(404, 'YARA', NULL, '_SWEY111', 'products/April2021/LjoIA0lQTgFlQpdoAoka.jpg', NULL, '15.99', '1.875', 1, 1, 0, 0, '2021-04-27 20:32:07', '2021-06-12 22:40:06', 'yara', 35, '<p>Baklava with Walnut Almond and Honey-Large</p>', NULL, 3902, 3838, 'Sweets', 1, 0),
(405, 'YARA', NULL, '_SWEY113', 'products/April2021/ehmoWTCRorzzafoi6vtI.jpg', NULL, '8.99', '0.938', 1, 1, 0, 0, '2021-04-27 20:33:17', '2021-06-12 22:40:06', 'yara', 35, '<p>Baklava with Walnut Almond and Honey</p>', NULL, 3903, 3839, 'Sweets', 1, 0),
(406, 'LAODICEA', NULL, '_SWEL111', 'products/April2021/kTF2xsSDEcLO6iQvrWBI.jpg', NULL, '7.99', '0.551', 1, 1, 0, 0, '2021-04-27 20:34:21', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Barazik</p>', NULL, 3904, 3840, 'Sweets', 1, 0),
(407, 'YARA', NULL, '_SWEY011', 'products/April2021/BNiGXLmt7Xo8FGfu1dZy.jpg', NULL, '21.99', '1.88', 1, 1, 0, 0, '2021-04-27 20:35:25', '2021-06-12 22:40:06', 'yara', 35, '<p>Assorted Baklawa</p>', NULL, 3905, 3841, 'Sweets', 1, 0),
(408, 'YARA', NULL, '_SWEY009', 'products/April2021/zJfbpyBWGRlEpysYolpf.jpg', NULL, '27.99', '1.88', 1, 1, 0, 0, '2021-04-27 20:36:39', '2021-06-12 22:40:06', 'yara', 35, '<p>Deluxe Baklawa</p>', NULL, 3906, 3842, 'Sweets', 1, 0),
(409, 'YARA', NULL, '_SWEY007', 'products/April2021/wPBr7mcX5fnEmGtESSoY.jpg', NULL, '33.99', '1.88', 1, 1, 0, 0, '2021-04-27 20:37:51', '2021-06-12 22:40:06', 'yara', 35, '<p>Premium Baklawa</p>', NULL, 3907, 3843, 'Sweets', 1, 0),
(410, 'YARA', NULL, '_SWEY005', 'products/April2021/lucEeBYeOnS0j7mQvZGM.jpg', NULL, '11.99', '0.94', 1, 1, 0, 0, '2021-04-27 20:39:15', '2021-06-12 22:40:06', 'yara', 35, '<p>Assorted Baklawa</p>', NULL, 3908, 3844, 'Sweets', 1, 0),
(411, 'YARA', NULL, '_SWEY003', 'products/April2021/63r5LOMAjZpgC0Ng3cZz.jpg', NULL, '14.99', '0.94', 1, 1, 0, 0, '2021-04-27 20:40:47', '2021-06-12 22:40:06', 'yara', 35, '<p>Deluxe Baklawa</p>', NULL, 3909, 3845, 'Sweets', 1, 0),
(412, 'YARA', NULL, '_SWEY001', 'products/April2021/4LIto37Rk045PCJXNkno.jpg', NULL, '17.99', '0.94', 1, 1, 0, 0, '2021-04-27 20:42:03', '2021-06-12 22:40:06', 'yara', 35, '<p>Premium Baklawa</p>', NULL, 3910, 3846, 'Sweets', 1, 0),
(413, 'ASATEER', NULL, '_SWA111', 'products/April2021/ZSvBzU5WGJMCYBzfPG0k.jpg', NULL, '16.99', '1.808', 1, 1, 0, 0, '2021-04-27 20:43:00', '2021-06-12 22:40:06', 'asateer', 35, '<p>Barazek &amp; Ghorayba</p>\r\n<p><span style=\"color: #ff0000;\"><strong>out of stock</strong></span></p>', NULL, 3911, 3847, 'Sweets', 1, 0),
(414, 'ASATEER', NULL, '_SWA1113', 'products/April2021/HqNFEQ7oB0GZrvFr6yUh.jpg', NULL, '16.99', '1.65', 1, 1, 0, 0, '2021-04-27 20:44:00', '2021-06-12 22:40:06', 'asateer', 35, '<p>Assorted Petifour</p>\r\n<p><strong><span style=\"color: #ff0000;\">Out of stock</span></strong></p>', NULL, 3912, 3848, 'Sweets', 1, 0),
(415, 'ASATEER', NULL, '_SWA115', 'products/April2021/c6mYED5ExYwdh6Euv0US.jpg', NULL, '16.99', '1.874', 1, 1, 0, 0, '2021-04-27 20:45:00', '2021-06-12 22:40:06', 'asateer', 35, '<p>Maamoul Dates</p>\r\n<p><strong><span style=\"color: #ff0000;\">Out of Stock</span></strong></p>', NULL, 3913, 3849, 'Sweets', 1, 0);
INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(416, 'LAODICEA', NULL, '_SWLK001', 'products/April2021/ifBKiQ5KVtGHA5Pi2tM7.jpg', NULL, '10.99', '1.5', 1, 1, 0, 0, '2021-04-27 20:48:06', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Kourabiedes Greek Cookies, Ground Almonds - Small Tray</p>', NULL, 3914, 3850, 'Sweets', 1, 0),
(417, 'LAODICEA', NULL, '_SWLM001', 'products/April2021/Y1VmvfN0YU6W5wL0hZbW.jpg', NULL, '10.99', '1.5', 1, 1, 0, 0, '2021-04-27 20:49:17', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Melomakarona Greek, Walnuts - Small Tray</p>', NULL, 3915, 3851, 'Sweets', 1, 0),
(418, 'LAODICEA', NULL, '_SWLA009', 'products/April2021/4fgVIdPTM65u2BNjSv50.jpg', NULL, '6.99', '1.5', 1, 1, 0, 0, '2021-04-27 20:50:21', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Anise Seeds Cookies - Small Tray</p>', NULL, 3916, 3852, 'Sweets', 1, 0),
(419, 'LAODICEA', NULL, '_SWLB003', 'products/April2021/t0kExHqCT26BG6cDlMcz.jpg', NULL, '11.49', '1.375', 1, 1, 0, 0, '2021-04-27 20:51:32', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Greek Baklava, With Walnut and Honey</p>', NULL, 3917, 3853, 'Sweets', 1, 0),
(420, 'LAODICEA', NULL, '_SWLK005', 'products/April2021/lgyuY77wuilOzgRPKS8k.jpg', NULL, '11.49', '1.5', 1, 1, 0, 0, '2021-04-27 20:52:48', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Greek Kataifi Pastry with Walnuts</p>', NULL, 3918, 3854, 'Sweets', 1, 0),
(421, 'LAODICEA', NULL, '_SWLS001', 'products/April2021/bB84KV28W0z7VmzjUmFM.jpg', NULL, '11.49', '1.5', 1, 1, 0, 0, '2021-04-27 20:54:01', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Greek Saragli, Rolls with Walnut</p>', NULL, 3919, 3855, 'Sweets', 1, 0),
(422, 'LAODICEA', NULL, '_SWLK003', 'products/April2021/FkwxEgMG8CgBksvs98QS.jpg', NULL, '8.99', '1.5', 1, 1, 0, 0, '2021-04-27 20:55:14', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Koulourakia Greek Cookies - Small Tray</p>', NULL, 3920, 3856, 'Sweets', 1, 0),
(423, 'LAODICEA', NULL, '_SWLB001', 'products/April2021/BUJM0IsycazLOw2LfWY6.jpg', NULL, '19.99', '1.2', 1, 1, 0, 0, '2021-04-27 20:56:13', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Mixed Lebanese Baklava</p>', NULL, 3921, 3857, 'Sweets', 1, 0),
(424, 'LAODICEA', NULL, '_SWEL055', 'products/April2021/9tT4Cs14v178NKrJth11.jpg', NULL, '13.99', '1.5', 1, 1, 0, 0, '2021-04-27 20:57:00', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Harisa with Almonds</p>\r\n<p>( Namora )&nbsp; - Small Tray</p>', NULL, 3922, 3858, 'Sweets', 1, 0),
(425, 'Al Sultan Sweets', NULL, '_SWES001', 'products/April2021/hY1GPGfm0Hchivg8t036.jpg', NULL, '29.99', '1.102', 1, 1, 0, 0, '2021-04-27 20:59:26', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Mabroumeh</p>', NULL, 3923, 3859, 'Sweets', 1, 0),
(426, 'Al Sultan Sweets', NULL, '_SWES003', 'products/April2021/7utJWhYLc5fxsZrw3NuE.jpg', NULL, '22.99', '1.653', 1, 1, 0, 0, '2021-04-27 21:14:17', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Mixed Nwashef</p>', NULL, 3924, 3860, 'Sweets', 1, 0),
(427, 'Al Sultan Sweets', NULL, '_SWES005', 'products/April2021/qLhZqtQxs9YsHiUioq1V.jpg', NULL, '22.99', '2.204', 1, 1, 0, 0, '2021-04-27 21:15:36', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Maamoul Mix</p>', NULL, 3925, 3861, 'Sweets', 1, 0),
(428, 'Al Sultan Sweets', NULL, '_SWES007', 'products/April2021/4eInEIUxsCdza2hCuWWf.jpg', NULL, '16.99', '1.763', 1, 1, 0, 0, '2021-04-27 21:16:49', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Ajweh Maamoul</p>', NULL, 3926, 3862, 'Sweets', 1, 0),
(429, 'Al Sultan Sweets', NULL, '_SWES009', 'products/April2021/4vSqMVDqfEwIcO9Osx3g.jpg', NULL, '19.99', '1.102', 1, 1, 0, 0, '2021-04-27 21:17:57', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Pistachio Maamoul</p>', NULL, 3927, 3863, 'Sweets', 1, 0),
(430, 'Al Sultan Sweets', NULL, '_SWES011', 'products/April2021/aMZ3oMpcTklxwiE5BWiQ.jpg', NULL, '29.99', '2.204', 1, 1, 0, 0, '2021-04-27 21:19:07', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>White - Red Ballorieh</p>', NULL, 3928, 3864, 'Sweets', 1, 0),
(431, 'Al Sultan Sweets', NULL, '_SWES013', 'products/April2021/ygCX3hrfY4Nn6yEKwsw2.jpg', NULL, '14.99', '0.771', 1, 1, 0, 0, '2021-04-27 21:20:12', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Mixed Baklava</p>', NULL, 3929, 3865, 'Sweets', 1, 0),
(432, 'Al Sultan Sweets', NULL, '_SWES015', 'products/April2021/lsVOXjPATRHbERuoNIRB.jpg', NULL, '29.99', '1.653', 1, 1, 0, 0, '2021-04-27 21:21:43', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Mixed Baklava</p>', NULL, 3930, 3866, 'Sweets', 1, 0),
(433, 'Al Sultan Sweets', NULL, '_SWES017', 'products/April2021/e1spfiREn9ZnD0gECRR1.jpg', NULL, '14.99', '1.322', 1, 1, 0, 0, '2021-04-27 21:23:08', '2021-06-12 22:40:06', 'al-sultan-sweets', 35, '<p>Barazek</p>', NULL, 3931, 3867, 'Sweets', 1, 0),
(434, 'LAODICEA', NULL, '_MLP001', 'products/April2021/YlR83L5BbyP6hM1krEkn.jpg', NULL, '8.99', '1', 1, 1, 0, 0, '2021-04-27 21:25:29', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Maamoul with Pistachio</p>', NULL, 3932, 3868, 'Sweets', 1, 0),
(435, 'LAODICEA', NULL, '_MLW003', 'products/April2021/cJcaOvNxhGOpZW58knzc.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-27 21:26:36', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Maamoul with Walnuts</p>', NULL, 3933, 3869, 'Sweets', 1, 0),
(436, 'LAODICEA', NULL, '_MLW005', 'products/April2021/ZP7DrjIqnpVYHTr5ecJy.jpg', NULL, '5.99', '0.34', 1, 1, 0, 0, '2021-04-27 21:28:21', '2021-06-12 22:40:06', 'laodicea', 35, '<p>Maamoul with Dates - 6 pcs.</p>', NULL, 3934, 3870, 'Sweets', 1, 0),
(437, 'YARA', NULL, '_SWEY013', 'products/April2021/RbGwJmymf7jTl55MEwyC.jpg', NULL, '2.99', '0.34', 1, 1, 0, 0, '2021-04-27 21:29:46', '2021-06-12 22:40:06', 'yara', 35, '<p>Assorted Baklava - 5 pcs.</p>', NULL, 3935, 3871, 'Sweets', 1, 0),
(438, 'YARA', NULL, '_SWEY115', 'products/April2021/OU7DyDvwCtprj6Yl6vng.jpg', NULL, '2.49', '0.35', 1, 1, 0, 0, '2021-04-27 21:30:55', '2021-06-12 22:40:06', 'yara', 35, '<p>Triangle Baklava - 2 pcs.</p>', NULL, 3936, 3872, 'Sweets', 1, 0),
(439, 'Apollo', NULL, '_APO023', 'products/April2021/sdpKDbrsmxP8EezBByVO.jpg', NULL, '11.49', '1.5', 1, 1, 0, 0, '2021-04-27 21:32:17', '2021-06-12 22:40:06', 'apollo', 35, '<p>Saragli Nut Rolls with Walnut</p>', NULL, 3937, 3873, 'Sweets', 1, 0),
(440, 'Apollo', NULL, '_APO021', 'products/April2021/euzgEqmbWPZzxDrtwPnC.jpg', NULL, '11.49', '1.5', 1, 1, 0, 0, '2021-04-27 21:34:07', '2021-06-12 22:40:06', 'apollo', 35, '<p>Kataifi Pastry with Walnut</p>', NULL, 3938, 3874, 'Sweets', 1, 0),
(441, 'Apollo', NULL, '_APO019', 'products/April2021/SAEqXtJadfW4yk0ihhma.jpg', NULL, '11.49', '1.375', 1, 1, 0, 0, '2021-04-27 21:35:17', '2021-06-12 22:40:06', 'apollo', 35, '<p>Baklava Pastry with Walnut &amp; Honey&nbsp;</p>', NULL, 3939, 3875, 'Sweets', 1, 0),
(442, 'ASATEER', NULL, '_MADA135', 'products/April2021/u36tMvuQKarEmmSz1AF5.jpg', NULL, '6.99', '1.056', 1, 1, 0, 0, '2021-04-27 21:51:48', '2021-06-12 22:40:06', 'asateer', 35, '<p>Mammoul with Real Dates</p>', NULL, 3940, 3876, 'Sweets', 1, 0),
(443, 'ASATEER', NULL, '_MADA135OF', 'products/April2021/UFaP3XkNSpRMfitteOoW.jpg', NULL, '38.99', '0', 1, 1, 1, 0, '2021-04-27 21:52:00', '2021-06-12 22:40:06', 'asateer', 35, '<p>Mammoul with Real Dates - 4 Box</p>', NULL, 3941, 3877, 'Sweets', 1, 0),
(444, 'USAS', NULL, '_TUD029', 'products/April2021/gos2hzI0fTOfEtqTqY0T.jpg', NULL, '7.99', '0.771', 1, 1, 0, 0, '2021-04-27 21:54:31', '2021-06-12 22:40:06', 'usas', 35, '<p>Baklava Turkish Delight&nbsp;</p>', NULL, 3942, 3878, 'Sweets', 1, 0),
(445, 'Al Sham', NULL, '_SWAB001', 'products/April2021/KXT0KyekAGrgB8ZBFqXm.jpg', NULL, '36.99', '3.3', 1, 1, 0, 0, '2021-04-27 21:55:59', '2021-06-12 22:40:06', 'al-sham', 35, '<p>Mixed Lebanese Baklava</p>', NULL, 3943, 3879, 'Sweets', 1, 0),
(446, 'King of Baklava', NULL, '_SWK001', 'products/April2021/0kochxLIiHw2N3FdMIT0.jpg', NULL, '5.99', '0.406', 1, 1, 0, 0, '2021-04-27 21:57:13', '2021-06-12 22:40:06', 'king-of-baklava', 35, '<p>Knafeh&nbsp; - Frozen Item</p>', NULL, 3944, 3880, 'Sweets', 1, 0),
(447, 'LAODICEA', NULL, '_PILL001', 'products/April2021/REouOT3H1R0VOStz8itK.jpg', NULL, '6.99', '1.5', 1, 1, 0, 0, '2021-04-27 23:24:17', '2021-06-12 22:40:06', 'laodicea', 60, '<p>Stuffed Eggplants Makdous in Oil</p>', NULL, 3945, 3881, 'Eggplants in Can', 1, 0),
(448, 'LAODICEA', NULL, '_PILL003', 'products/April2021/sSuNCtGZfKTbjF06W1DC.jpg', NULL, '11.99', '2.25', 1, 1, 0, 0, '2021-04-27 23:25:38', '2021-06-12 22:40:06', 'laodicea', 60, '<p>Stuffed Eggplants Makdous in Oil</p>', NULL, 3946, 3882, 'Eggplants in Can', 1, 0),
(449, 'LAODICEA', NULL, '_PILL005', 'products/April2021/tcpMCrHbzxmywX3swH8V.jpg', NULL, '14.99', '3.75', 1, 1, 0, 0, '2021-04-27 23:27:08', '2021-06-12 22:40:06', 'laodicea', 60, '<p>Stuffed Eggplants Makdous in Oil</p>', NULL, 3947, 3883, 'Eggplants in Can', 1, 0),
(450, 'CORTAS', NULL, '_PILC001', 'products/April2021/CwHT7oyvqFbw35szBvmJ.jpg', NULL, '5.49', '1.75', 1, 1, 0, 0, '2021-04-27 23:28:26', '2021-06-12 22:40:06', 'cortas', 60, '<p>Grilled Eggplants</p>', NULL, 3948, 3884, 'Eggplants in Can', 1, 0),
(451, 'CORTAS', NULL, '_PILC003', 'products/April2021/BMvpBNvrLw6AkhTe4fuC.jpg', NULL, '15.99', '6', 1, 1, 0, 0, '2021-04-27 23:29:33', '2021-06-12 22:40:06', 'cortas', 60, '<p>Grilled Eggplants</p>', NULL, 3949, 3885, 'Eggplants in Can', 1, 0),
(452, 'CORTAS', NULL, '_PILC053', 'products/April2021/8sImQRdqRlRa1rtKEJE5.jpg', NULL, '10.99', '2.25', 1, 1, 0, 0, '2021-04-27 23:31:01', '2021-06-12 22:40:06', 'cortas', 60, '<p>Makdous Stuffed Baby Eggplant in Oil</p>', NULL, 3950, 3886, 'Eggplants in Can', 1, 0),
(453, 'CORTAS', NULL, '_PILC051', 'products/April2021/mYXZdLYlWpjw0uGBP4KW.jpg', NULL, '6.99', '1.375', 1, 1, 0, 0, '2021-04-27 23:32:22', '2021-06-12 22:40:06', 'cortas', 60, '<p>Makdous Stuffed Baby Eggplant in Oil</p>', NULL, 3951, 3887, 'Eggplants in Can', 1, 0),
(454, 'MECHELANY', NULL, '_PILM051', 'products/April2021/AcenIsEw6O3ttHHnh0gO.jpg', NULL, '6.99', '1.31', 1, 1, 0, 0, '2021-04-27 23:33:58', '2021-06-12 22:40:06', 'mechelany', 60, '<p>Makdous Stuffed Baby Eggplant in Oil</p>', NULL, 3952, 3888, 'Eggplants in Can', 1, 0),
(455, 'MECHELANY', NULL, '_PILM053', 'products/April2021/1lhHpKSis7caPuJHT4im.jpg', NULL, '10.99', '2.19', 1, 1, 0, 0, '2021-04-27 23:35:10', '2021-06-12 22:40:06', 'mechelany', 60, '<p>Makdous Stuffed Baby Eggplant in Oil</p>', NULL, 3953, 3889, 'Eggplants in Can', 1, 0),
(456, 'MARCO POLO', NULL, '_MAR019', 'products/April2021/sdtBjLH4Yf7tqbiaiUHw.jpg', NULL, '3.49', '1.2', 1, 1, 0, 0, '2021-04-27 23:36:26', '2021-06-12 22:40:06', 'marco-polo', 60, '<p>Caponata - Eggplant Appetizer</p>', NULL, 3954, 3890, 'Eggplants in Can', 1, 0),
(457, 'TUKAS', NULL, '_PITT031', 'products/April2021/9kZW4cxyT9ICaEePeiCG.jpg', NULL, '5.89', '1.19', 1, 1, 0, 0, '2021-04-27 23:38:30', '2021-06-12 22:40:06', 'tukas', 60, '<p>Roasted Eggplant</p>', NULL, 3955, 3891, 'Eggplants in Can', 1, 0),
(458, 'CORTAS', NULL, '_CANC001', 'products/April2021/3pTPLkN2fIVIU14ZcSeo.jpg', NULL, '4.49', '0.875', 1, 1, 0, 0, '2021-04-28 04:24:18', '2021-06-12 22:40:06', 'cortas', 62, '<p>Stuffed Grape Leaves</p>', NULL, 3956, 3892, 'Gourmet Foods in Can', 1, 0),
(459, 'CORTAS', NULL, '_CANC003', 'products/April2021/JcQJECu5o0g7f4atSZ6d.jpg', NULL, '9.99', '4.4', 1, 1, 0, 0, '2021-04-28 04:25:57', '2021-06-12 22:40:06', 'cortas', 62, '<p>Stuffed Grape Leaves</p>', NULL, 3957, 3893, 'Gourmet Foods in Can', 1, 0),
(460, 'SHAHIA', NULL, '_CANS001', 'products/April2021/4mgBb6ncdYwOWFV0Tn1Q.jpg', NULL, '3.99', '0.875', 1, 1, 0, 0, '2021-04-28 04:35:57', '2021-06-12 22:40:06', 'shahia', 62, '<p>Stuffed Vine Leaves</p>', NULL, 3958, 3894, 'Gourmet Foods in Can', 1, 0),
(461, 'SHAHIA', NULL, '_CANS003', 'products/April2021/22i58oHSpye6K2z3nton.jpg', NULL, '8.99', '4', 1, 1, 0, 0, '2021-04-28 04:43:02', '2021-06-12 22:40:06', 'shahia', 62, '<p>Stuffed Vine Leaves</p>', NULL, 3959, 3895, 'Gourmet Foods in Can', 1, 0),
(462, 'ZANAE', NULL, '_CANZ001', 'products/April2021/qeg34cmYvV3lYV7Q9iY0.jpg', NULL, '4.99', '0.875', 1, 1, 0, 0, '2021-04-28 04:55:30', '2021-06-12 22:40:06', 'zanae', 62, '<p>Stuffed Grape Leaves</p>', NULL, 3960, 3896, 'Gourmet Foods in Can', 1, 0),
(463, 'PALIRRIA', NULL, '_CANP001', 'products/April2021/OfshsWqdkNYljp4IWKKJ.jpg', NULL, '3.99', '0.618', 1, 1, 0, 0, '2021-04-28 05:01:28', '2021-06-12 22:40:06', 'palirria', 62, '<p>Vine Leaves Stuffed with Rice</p>', NULL, 3961, 3897, 'Gourmet Foods in Can', 1, 0),
(464, 'PALIRRIA', NULL, '_CANP005', 'products/April2021/Tihg9pghOP0PNVuhqPVH.jpg', NULL, '3.49', '0.618', 1, 1, 0, 0, '2021-04-28 05:05:00', '2021-06-12 22:40:06', 'palirria', 62, '<p>Baked Giant Beans in Tomato Sauce</p>', NULL, 3962, 3898, 'Gourmet Foods in Can', 1, 0),
(465, 'PALIRRIA', NULL, '_CANP009', 'products/April2021/D5ZzkF72OtRGtpS7s5dM.jpg', NULL, '3.99', '0.618', 1, 1, 0, 0, '2021-04-28 05:10:03', '2021-06-12 22:40:06', 'palirria', 62, '<p>Young Okras in Tomato Sauce</p>', NULL, 3963, 3899, 'Gourmet Foods in Can', 1, 0),
(466, 'PALIRRIA', NULL, '_CANP003', 'products/April2021/pg9SZ4l0eTJAWqXbbvZ2.jpg', NULL, '4.99', '0.618', 1, 1, 0, 0, '2021-04-28 05:11:48', '2021-06-12 22:40:06', 'palirria', 62, '<p>Imam Bayildi - Eggplants in Oil</p>', NULL, 3964, 3900, 'Gourmet Foods in Can', 1, 0),
(467, 'Turkili', NULL, '_CANT001', 'products/April2021/DN0sAlsCZKfLJEJuyau8.jpg', NULL, '3.99', '0.95', 1, 1, 0, 0, '2021-04-28 05:21:22', '2021-06-12 22:40:06', 'turkili', 62, '<p>Stuffed Grape Leaves</p>', NULL, 3965, 3901, 'Gourmet Foods in Can', 1, 0),
(468, 'Turkili', NULL, '_CANT005', 'products/April2021/71D7DW0nFyoV2GkCmXxs.jpg', NULL, '3.99', '0.881', 1, 1, 0, 0, '2021-04-28 05:27:29', '2021-06-12 22:40:06', 'turkili', 62, '<p>Imam Bayildi -Eggplant with Oil and Onions</p>', NULL, 3966, 3902, 'Gourmet Foods in Can', 1, 0),
(469, 'Turkili', NULL, '_CANT007', 'products/April2021/bV2DnE5LWymWdY9c4wnw.jpg', NULL, '3.99', '0.812', 1, 1, 0, 0, '2021-04-28 05:30:46', '2021-06-12 22:40:06', 'turkili', 62, '<p>Fried Slices Eggplant</p>', NULL, 3967, 3903, 'Gourmet Foods in Can', 1, 0),
(470, 'Turkili', NULL, '_CANT011', 'products/April2021/sKfQBfnGcPadxrYe7E43.jpg', NULL, '3.99', '0.95', 1, 1, 0, 0, '2021-04-28 05:36:50', '2021-06-12 22:40:06', 'turkili', 62, '<p>Red Beans in Sauce</p>', NULL, 3968, 3904, 'Gourmet Foods in Can', 1, 0),
(471, 'TAMEK', NULL, '_CANT100', 'products/April2021/NgIHOXwlj7BuZ2jHASdB.jpg', NULL, '4.99', '0.881', 1, 1, 0, 0, '2021-04-28 05:39:06', '2021-06-12 22:40:06', 'tamek', 62, '<p>Stuffed Vine leaves</p>', NULL, 3969, 3905, 'Gourmet Foods in Can', 1, 0),
(472, 'TAMEK', NULL, '_CANT103', 'products/April2021/5OBowTbVmjnqS2mbOT7h.jpg', NULL, '4.99', '0.881', 1, 1, 0, 0, '2021-04-28 05:52:56', '2021-06-12 22:40:06', 'tamek', 62, '<p>Red Beans</p>', NULL, 3970, 3906, 'Gourmet Foods in Can', 1, 0),
(473, 'TAMEK', NULL, '_CANT105', 'products/April2021/yjGntCydJGVKQsiJ2zha.jpg', NULL, '4.99', '0.837', 1, 1, 0, 0, '2021-04-28 05:55:05', '2021-06-12 22:40:06', 'tamek', 62, '<p>Fried Eggplant Slices</p>', NULL, 3971, 3907, 'Gourmet Foods in Can', 1, 0),
(474, 'ZANAE', NULL, '_CANZ101', 'products/April2021/xd0K6IQUMtWBlsot8ptj.jpg', NULL, '4.99', '0.6', 1, 1, 0, 0, '2021-04-28 05:56:38', '2021-06-12 22:40:06', 'zanae', 62, '<p>Mixed Vegetable</p>', NULL, 3972, 3908, 'Gourmet Foods in Can', 1, 0),
(475, 'ZANAE', NULL, '_CANZ104', 'products/April2021/fRXHKRQOj0VEw0sLEXnf.jpg', NULL, '4.99', '0.6', 1, 1, 0, 0, '2021-04-28 06:06:48', '2021-06-12 22:40:06', 'zanae', 62, '<p>Tomato and Pepper Stuffed with Rice</p>', NULL, 3973, 3909, 'Gourmet Foods in Can', 1, 0),
(476, 'ZANAE', NULL, '_CANZ105', 'products/April2021/M3v4CSTs5EttkTkATj6m.jpg', NULL, '4.99', '0.6', 1, 1, 0, 0, '2021-04-28 06:08:32', '2021-06-12 22:40:06', 'zanae', 62, '<p>Spinach with Rice</p>', NULL, 3974, 3910, 'Gourmet Foods in Can', 1, 0),
(477, 'PALIRRIA', NULL, '_CANP013', 'products/April2021/s5Hkx5RQ9wwMi47q7q5I.jpg', NULL, '3.99', '0.6', 1, 1, 0, 0, '2021-04-28 06:10:04', '2021-06-12 22:40:06', 'palirria', 62, '<p>Greek Domlas</p>', NULL, 3975, 3911, 'Gourmet Foods in Can', 1, 0),
(478, 'ORLANDO', NULL, '_GLO001', 'products/April2021/0h1wqWCvFEbWB6vERQoH.jpg', NULL, '4.99', '0.5', 1, 1, 0, 0, '2021-04-28 06:28:43', '2021-06-12 22:40:06', 'orlando', 61, '<p>Grape Leaves</p>', NULL, 3976, 3912, 'Grape Leaves', 1, 0),
(479, 'ORLANDO', NULL, '_GLO003', 'products/April2021/Fp1HH8kOIlg6NobYolKJ.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-28 06:30:33', '2021-06-12 22:40:06', 'orlando', 61, '<p>Grape Leaves</p>', NULL, 3977, 3913, 'Grape Leaves', 1, 0),
(480, 'KRINOS', NULL, '_GLK003', 'products/April2021/hALzus3YFjkZGrCD3CHF.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-04-28 06:32:00', '2021-06-12 22:40:06', 'krinos', 61, '<p>Grape Leaves</p>', NULL, 3978, 3914, 'Grape Leaves', 1, 0),
(481, 'LAODICEA', NULL, '_MUL001', 'products/April2021/TRFPYmiVh3GtQ3mISUwv.jpg', NULL, '6.49', '1.138', 1, 1, 0, 0, '2021-04-28 06:49:18', '2021-06-12 22:40:06', 'laodicea', 63, '<p>Mushrooms</p>', NULL, 3979, 3915, 'Mushrooms & Artichoke', 1, 0),
(482, 'LAODICEA', NULL, '_MUL003', 'products/April2021/S0G5XE1UwUgAhhX5B95t.jpg', NULL, '10.99', '2.062', 1, 1, 0, 0, '2021-04-28 06:50:56', '2021-06-12 22:40:06', 'laodicea', 63, '<p>Artichoke Hearts in Oil</p>', NULL, 3980, 3916, 'Mushrooms & Artichoke', 1, 0),
(486, 'SUN of ITALY', NULL, '_MUS111', 'products/April2021/zxK2PffGLhfP2YNcb2T6.jpg', NULL, '4.99', '0.75', 1, 1, 0, 0, '2021-04-28 06:57:42', '2021-06-12 22:40:06', 'sun-of-italy', 63, '<p>Marinated Artichoke</p>', NULL, 3982, 3918, 'Mushrooms & Artichoke', 1, 0),
(487, 'SUN of ITALY', NULL, '_MUS113', 'products/April2021/lu9Y8VifvYtkd6RrvRTw.jpg', NULL, '3.99', '0.875', 1, 1, 0, 0, '2021-04-28 06:59:09', '2021-06-12 22:40:06', 'sun-of-italy', 63, '<p>Artichoke in Water&nbsp;</p>', NULL, 3983, 3919, 'Mushrooms & Artichoke', 1, 0),
(488, 'LAODICEA', NULL, '_PILL007', 'products/April2021/BosqpMvUof5xahawF7Gt.jpg', '[\"products\\/May2021\\/cSLtxAAUZIKQAoH3wdCg.jpg\"]', '2.99', '0.75', 1, 1, 0, 0, '2021-04-28 18:21:00', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Ground Hot Cherry Peppers</p>', NULL, 3984, 3920, 'Tomatoes & Peppers in Can', 1, 0),
(489, 'LAODICEA', NULL, '_PILL009', 'products/April2021/FDUA94gCZf3juE7mjMHV.jpg', NULL, '5.99', '1.537', 1, 1, 0, 0, '2021-04-28 18:23:15', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Hot Paprika Paste</p>', NULL, 3985, 3921, 'Tomatoes & Peppers in Can', 1, 0),
(490, 'LAODICEA', NULL, '_PILL011', 'products/April2021/7lyWSJji6vt5G4oh4ZSH.jpg', NULL, '6.89', '1.543', 1, 1, 0, 0, '2021-04-28 18:24:34', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Tomato Paste Concentrate No Salt</p>', NULL, 3986, 3922, 'Tomatoes & Peppers in Can', 1, 0),
(491, 'LAODICEA', NULL, '_PILL013', 'products/April2021/lCjp9O7EVUdndcYmY6bJ.jpg', NULL, '8.99', '0.076', 1, 1, 0, 0, '2021-04-28 18:26:05', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Sun Dried Tomatoes</p>', NULL, 3987, 3923, 'Tomatoes & Peppers in Can', 1, 0),
(492, 'SUN of ITALY', NULL, '_PISU333', 'products/April2021/dformDfg7CNU1xqYnuO5.jpg', NULL, '2.99', '0.75', 1, 1, 0, 0, '2021-04-28 18:28:02', '2021-06-12 22:40:06', 'sun-of-italy', 64, '<p>Ground Hot Cherry Peppers</p>', NULL, 3988, 3924, 'Tomatoes & Peppers in Can', 1, 0),
(493, 'MID EAST', NULL, '_PIME333', 'products/April2021/wUe1ymVEfylpqiW4Kro6.jpg', NULL, '2.99', '1.544', 1, 1, 0, 0, '2021-04-28 18:29:11', '2021-06-12 22:40:06', 'mid-east', 64, '<p>Pepper Paste</p>', NULL, 3989, 3925, 'Tomatoes & Peppers in Can', 1, 0),
(494, 'LAODICEA', NULL, '_PILL019', 'products/April2021/WNF1UddFP2m28YwLUQLH.jpg', NULL, '4.99', '1.212', 1, 1, 0, 0, '2021-04-28 18:31:21', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Roasted Peppers with Garlic</p>', NULL, 3990, 3926, 'Tomatoes & Peppers in Can', 1, 0),
(495, 'KRINOS', NULL, '_PICK021', 'products/April2021/nk0TdYKjiqKHZzU4SWj0.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-28 18:32:35', '2021-06-12 22:40:06', 'krinos', 64, '<p>Roasted Sweet Red Peppers in Vinegar Brine</p>', NULL, 3991, 3927, 'Tomatoes & Peppers in Can', 1, 0),
(496, 'MARCO POLO', NULL, '_MAR005', 'products/April2021/i66WPbCizVjKhGKdZOls.jpg', NULL, '3.49', '1.2', 1, 1, 0, 0, '2021-04-28 18:34:05', '2021-06-12 22:40:06', 'marco-polo', 64, '<p>Roasted Peppers with Garlic</p>', NULL, 3992, 3928, 'Tomatoes & Peppers in Can', 1, 0),
(497, 'TUKAS', NULL, '_PITT017', 'products/April2021/esqjiXBl395EfDxyr06W.jpg', NULL, '6.89', '1.5', 1, 1, 0, 0, '2021-04-28 18:37:19', '2021-06-12 22:40:06', 'tukas', 64, '<p>Roasted Sweet Red Peppers</p>', NULL, 3993, 3929, 'Tomatoes & Peppers in Can', 1, 0),
(498, 'LAODICEA', NULL, '_PILL021', 'products/April2021/eDcioUEULXoHXHzdAYVI.jpg', NULL, '14.99', '8.33', 1, 1, 0, 0, '2021-04-28 18:38:31', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Hot Chopped Peppers</p>', NULL, 3994, 3930, 'Tomatoes & Peppers in Can', 1, 0),
(499, 'SUN of ITALY', NULL, '_PISU111', 'products/April2021/mrCQD1qVEfuLWMQ1Y4HN.jpg', NULL, '1.99', '1.75', 1, 1, 0, 0, '2021-04-28 18:39:44', '2021-06-12 22:40:06', 'sun-of-italy', 64, '<p>Puree Tomatoes</p>', NULL, 3995, 3931, 'Tomatoes & Peppers in Can', 1, 0),
(500, 'SUN of ITALY', NULL, '_PISU113', 'products/April2021/DIUXQM8oVttuDP9RwQtV.jpg', NULL, '1.99', '1.75', 1, 1, 0, 0, '2021-04-28 18:40:59', '2021-06-12 22:40:06', 'sun-of-italy', 64, '<p>Crushed Tomatoes</p>', NULL, 3996, 3932, 'Tomatoes & Peppers in Can', 1, 0),
(501, 'SUN of ITALY', NULL, '_PISU115', 'products/April2021/lzBaB9Y9kbGZjlLLfUex.jpg', NULL, '1.99', '1.75', 1, 1, 0, 0, '2021-04-28 18:42:23', '2021-06-12 22:40:06', 'sun-of-italy', 64, '<p>Italian Tomatoes</p>', NULL, 3997, 3933, 'Tomatoes & Peppers in Can', 1, 0),
(502, 'LAODICEA', NULL, '_PILL015', 'products/April2021/IccitTumTblY2cWG5KiG.jpg', NULL, '4.99', '1.187', 1, 1, 0, 0, '2021-04-28 18:43:29', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Mild Ajvar - Red Pepper Spread w/Eggplant and Garlic</p>', NULL, 3998, 3934, 'Tomatoes & Peppers in Can', 1, 0),
(503, 'LAODICEA', NULL, '_PILL017', 'products/April2021/lXMTSmhsMsG9OJVnanI7.jpg', NULL, '4.99', '1.187', 1, 1, 0, 0, '2021-04-28 18:44:53', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Hot Ajvar - Red Pepper Spread w/Eggplant and Garlic</p>', NULL, 3999, 3935, 'Tomatoes & Peppers in Can', 1, 0),
(504, 'LAODICEA', NULL, '_PILL017OFF', 'products/April2021/nSE4wG5UM48X7LH2eLqP.jpg', NULL, '8.99', '0', 1, 1, 1, 0, '2021-04-28 18:45:00', '2021-06-12 22:40:06', 'laodicea', 64, '<p>Ajvar Red Pepper Spread (Mild + Hot)</p>', NULL, 4000, 3936, 'Tomatoes & Peppers in Can', 1, 0),
(505, 'MARCO POLO', NULL, '_MAR001', 'products/April2021/JrftymOSiLcupbnO8DuC.jpg', NULL, '3.49', '1.2', 1, 1, 0, 0, '2021-04-28 18:47:00', '2021-06-12 22:40:06', 'marco-polo', 64, '<p>Mild Ajvar</p>', NULL, 4001, 3937, 'Tomatoes & Peppers in Can', 1, 0),
(506, 'MARCO POLO', NULL, '_MAR003', 'products/April2021/9CMgsgpbP46Fnv4JLDKX.jpg', NULL, '3.49', '1.2', 1, 1, 0, 0, '2021-04-28 18:52:40', '2021-06-12 22:40:06', 'marco-polo', 64, '<p>Hot Ajvar</p>', NULL, 4002, 3938, 'Tomatoes & Peppers in Can', 1, 0),
(507, 'PIQUANT', NULL, '_HAR023', 'products/April2021/EC0LyZgPibPNgGlDldgQ.jpg', NULL, '5.49', '0.875', 1, 1, 0, 0, '2021-04-28 18:55:15', '2021-06-12 22:40:06', 'piquant', 64, '<p>Harissa - Hot Sauce</p>', NULL, 4003, 3939, 'Tomatoes & Peppers in Can', 1, 0),
(508, 'DEA', NULL, '_HAR001', 'products/April2021/xr7CINgUcM65GTr0LT5v.jpg', NULL, '4.99', '0.33', 1, 1, 0, 0, '2021-04-28 18:56:26', '2021-06-12 22:40:06', 'dea', 64, '<p>Harissa - Hot Sauce - Tubes</p>', NULL, 4004, 3940, 'Tomatoes & Peppers in Can', 1, 0),
(509, 'ROSO', NULL, '_PIRO131', 'products/April2021/UxL7XxURtJK1VKXJHGjF.jpg', NULL, '5.49', '1.75', 1, 1, 0, 0, '2021-04-28 18:57:33', '2021-06-12 22:40:06', 'roso', 64, '<p>Peeled Tomatoes</p>', NULL, 4005, 3941, 'Tomatoes & Peppers in Can', 1, 0),
(510, 'NANDO\'S PERI-PERI', NULL, '_SAN333', 'products/April2021/c4jhNSBICXQuyPUhHD79.jpg', NULL, '11.99', '2.112', 1, 1, 0, 0, '2021-04-28 18:59:07', '2021-06-12 22:40:06', 'nando-s-peri-peri', 64, '<p>Sauce - Medium</p>', NULL, 4006, 3942, 'Tomatoes & Peppers in Can', 1, 0),
(511, 'TUKAS', NULL, '_TUK001', 'products/April2021/xX9JVo71oya6O6A9R74k.jpg', NULL, '6.89', '1.5', 1, 1, 0, 0, '2021-04-28 19:02:41', '2021-06-12 22:40:06', 'tukas', 64, '<p>Tomato Paste</p>', NULL, 4007, 3943, 'Tomatoes & Peppers in Can', 1, 0),
(512, 'TUKAS', NULL, '_TUK011', 'products/April2021/p67plzaHgMijPISKeoYQ.jpg', NULL, '5.99', '1.25', 1, 1, 0, 0, '2021-04-28 19:03:46', '2021-06-12 22:40:06', 'tukas', 64, '<p>Mild Pepper Paste</p>', NULL, 4008, 3944, 'Tomatoes & Peppers in Can', 1, 0),
(513, 'TUKAS', NULL, '_TUK013', 'products/April2021/DKdW1YlGDXUbMHv7h5QO.jpg', NULL, '5.99', '1.25', 1, 1, 0, 0, '2021-04-28 19:04:48', '2021-06-12 22:40:06', 'tukas', 64, '<p>Hot Pepper Paste</p>', NULL, 4009, 3945, 'Tomatoes & Peppers in Can', 1, 0),
(514, 'TUKAS', NULL, '_TUK021', 'products/April2021/9yFqUewmBcgsm8mXEgH3.jpg', NULL, '6.89', '1.5', 1, 1, 0, 0, '2021-04-28 19:06:09', '2021-06-12 22:40:06', 'tukas', 64, '<p>Paprika Hot Pepper Sauce</p>', NULL, 4010, 3946, 'Tomatoes & Peppers in Can', 1, 0),
(515, 'Al Sham', NULL, '_TZAT001', 'products/April2021/hLHQ6WZukJYK61nFLy2s.jpg', NULL, '5.99', '1.101', 1, 1, 0, 0, '2021-04-28 20:07:30', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Tzatziki</p>', NULL, 4011, 3947, 'Dips', 1, 0),
(516, 'Al Sham', NULL, '_TZAT002', 'products/April2021/bkWDJNv6hnptereJsu3Y.jpg', NULL, '2.99', '0.6', 1, 1, 0, 0, '2021-04-28 20:10:37', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Tzatziki</p>', NULL, 4012, 3948, 'Dips', 1, 0),
(517, 'Al Sham', NULL, '_HUMA001', 'products/April2021/zN4OG5vEiaQbm9MjHt6X.jpg', NULL, '5.99', '1.01', 1, 1, 0, 0, '2021-04-28 20:11:53', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Hummos</p>', NULL, 4013, 3949, 'Dips', 1, 0),
(518, 'Al Sham', NULL, '_HUMA002', 'products/April2021/UkvjDNfR0q1V6mMgmsQi.jpg', NULL, '2.99', '0.6', 1, 1, 0, 0, '2021-04-28 20:13:00', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Hummos</p>', NULL, 4014, 3950, 'Dips', 1, 0),
(519, 'Al Sham', NULL, '_BABA001', 'products/April2021/QVOLCXq54uyesAaBBPLx.jpg', NULL, '5.99', '1.101', 1, 1, 0, 0, '2021-04-28 20:17:57', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Baba Ghanouj</p>', NULL, 4015, 3951, 'Dips', 1, 0),
(520, 'Al Sham', NULL, '_BABA002', 'products/April2021/5nf1z2MKDbMyiVYLLGEt.jpg', NULL, '2.99', '0.6', 1, 1, 0, 0, '2021-04-28 20:20:48', '2021-06-12 22:40:06', 'al-sham', 59, '<p>Baba Ghanouj</p>', NULL, 4016, 3952, 'Dips', 1, 0),
(521, 'CORTAS', NULL, '_BAC001', 'products/April2021/sw0x7XofzJA148K41wKF.jpg', NULL, '2.49', '0.8', 1, 1, 0, 0, '2021-04-28 20:21:55', '2021-06-12 22:40:06', 'cortas', 59, '<p>Baba Ghanouj - Grilled Eggplant Dip</p>', NULL, 4017, 3953, 'Dips', 1, 0),
(522, 'CORTAS', NULL, '_BAC001OF', 'products/April2021/hFy3WDW7AsC81n5lncly.jpg', NULL, '26.99', '0', 1, 1, 1, 0, '2021-04-28 20:23:00', '2021-06-12 22:40:06', 'cortas', 59, '<p>Baba Ghanouj - Grilled Eggplant Dip - 6 Cans</p>', NULL, 4018, 3954, 'Dips', 1, 0),
(523, 'CORTAS', NULL, '_BAC003', 'products/April2021/zAYmOTcT1WIcOv7bSXel.jpg', NULL, '4.49', '1.8', 1, 1, 0, 0, '2021-04-28 20:24:38', '2021-06-12 22:40:06', 'cortas', 59, '<p>Baba Ghanouj - Grilled Eggplant Dip</p>', NULL, 4019, 3955, 'Dips', 1, 0),
(524, 'CORTAS', NULL, '_BAC003OF', 'products/April2021/FcFP3tbdkFVC95PLRY1E.jpg', NULL, '38.99', '0', 1, 1, 1, 0, '2021-04-28 20:25:00', '2021-06-12 22:40:06', 'cortas', 59, '<p>Baba Ghanouj - Grilled Eggplant Dip - 6 Cans</p>', NULL, 4020, 3956, 'Dips', 1, 0),
(525, 'CORTAS', NULL, '_HUC001', 'products/April2021/ox5vEM9FSnflSE36W8O5.jpg', NULL, '175.00', '0.83', 1, 1, 0, 0, '2021-04-28 20:26:48', '2021-06-12 22:40:06', 'cortas', 59, '<p>Hummos Tahini</p>', NULL, 4021, 3957, 'Dips', 1, 0),
(526, 'CORTAS', NULL, '_HUC001OF', 'products/April2021/MbejbKddsScCPML64RFI.jpeg', NULL, '36.99', '0', 1, 1, 1, 0, '2021-04-28 20:29:00', '2021-06-12 22:40:06', 'cortas', 59, '<p>Hummos Tahina Chick Pea Dip - 12 Cans</p>', NULL, 4022, 3958, 'Dips', 1, 0),
(527, 'CORTAS', NULL, '_HUC003', 'products/April2021/QZlug1pa4XVPF1co3isR.jpg', NULL, '2.99', '1.88', 1, 1, 0, 0, '2021-04-28 20:32:10', '2021-06-12 22:40:06', 'cortas', 59, '<p>Hummos Tahini</p>', NULL, 4023, 3959, 'Dips', 1, 0),
(528, 'CORTAS', NULL, '_HUC003OF', 'products/April2021/mMaqrCBNGX5VnZIVt3J0.jpg', NULL, '36.99', '0', 1, 1, 1, 0, '2021-04-28 20:33:00', '2021-06-12 22:40:06', 'cortas', 59, '<p>Hummos Tahina Chick Pea Dip - 6 Cans</p>', NULL, 4024, 3960, 'Dips', 1, 0),
(529, 'LAODICEA', NULL, '_OILL111', 'products/April2021/RrT1Fa19hYmDInkreFE6.jpg', NULL, '9.99', '1.075', 1, 1, 0, 0, '2021-04-28 21:30:00', '2021-06-12 22:40:06', 'laodicea', 85, '<p>Extra Virgin Olive Oil</p>', NULL, 4025, 3961, 'Olive Oil', 1, 0),
(530, 'SAIFAN', NULL, '_OILS001', 'products/April2021/REmkMSEFNqnbFovd2wRG.jpg', NULL, '5.99', '1.108', NULL, 1, 0, 0, '2021-04-28 21:32:14', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4026, 3962, 'Olive Oil', 1, 0),
(531, 'SAIFAN', NULL, '_OILS002', 'products/April2021/WyGRg3WYGWHnA8dcduH8.jpg', NULL, '12.99', '1.63', 1, 1, 0, 0, '2021-04-28 21:35:00', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4027, 3963, 'Olive Oil', 1, 0),
(532, 'SAIFAN', NULL, '_OILS003', 'products/April2021/Op9ZbD0Q4ymhilFF1kuP.jpg', NULL, '12.99', '1.63', 1, 1, 0, 0, '2021-04-28 21:46:40', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4028, 3964, 'Olive Oil', 1, 0),
(533, 'SAIFAN', NULL, '_OILS005', 'products/April2021/vXd2yrCbDCrAh1GrteYW.jpg', NULL, '19.99', '3.125', 1, 1, 0, 0, '2021-04-28 21:47:42', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4029, 3965, 'Olive Oil', 1, 0),
(534, 'SAIFAN', NULL, '_OILS007', 'products/April2021/CVmHuaPPWwjvJGvWV2dj.jpg', NULL, '34.99', '6.02', 1, 1, 0, 0, '2021-04-28 21:53:48', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4030, 3966, 'Olive Oil', 1, 0),
(535, 'SAIFAN', NULL, '_OILS011', 'products/April2021/jCZA0XfzyReS51FJjJIw.jpg', NULL, '139.00', '0', 1, 1, 1, 0, '2021-04-28 21:55:00', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil - 9 Liter</p>', NULL, 4031, 3967, 'Olive Oil', 1, 0),
(536, 'SAIFAN', NULL, '_OILS007OF', 'products/April2021/q41g3PtEyhnXYrtMj7K3.jpg', NULL, '179.99', '0', 1, 1, 1, 0, '2021-04-28 21:57:00', '2021-06-12 22:40:06', 'saifan', 85, '<p>SAIFAN Extra Virgin Olive Oil - 6.02 lbs - 4 Bottels</p>', NULL, 4032, 3968, 'Olive Oil', 1, 0),
(537, 'SAIFAN', NULL, '_OILC001', 'products/April2021/bICqYkFPgi53ccTKlSqR.jpg', NULL, '5.99', '1.06', 1, 1, 0, 0, '2021-04-28 21:58:45', '2021-06-12 22:40:06', 'saifan', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4033, 3969, 'Olive Oil', 1, 0),
(538, 'CORTAS', NULL, '_OILC003', 'products/April2021/YUXp2lvm5K9stRB0XrBX.jpg', NULL, '12.99', '1.875', 1, 1, 0, 0, '2021-04-28 22:08:58', '2021-06-12 22:40:06', 'cortas', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4034, 3970, 'Olive Oil', 1, 0),
(539, 'CORTAS', NULL, '_OILC005', 'products/April2021/7vUQRP7SZ82M9G4r9hJx.jpg', NULL, '16.99', '3.62', 1, 1, 0, 0, '2021-04-28 22:10:13', '2021-06-12 22:40:06', 'cortas', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4035, 3971, 'Olive Oil', 1, 0),
(540, 'CORTAS', NULL, '_OILC007', 'products/April2021/NnkhB5k6DaAVK8ZLC6cV.jpg', NULL, '33.99', '6.375', 1, 1, 0, 0, '2021-04-28 22:11:38', '2021-06-12 22:40:06', 'cortas', 85, '<p>Lebanese Extra Virgin Olive Oil</p>', NULL, 4036, 3972, 'Olive Oil', 1, 0),
(541, 'AL\'ARD', NULL, '_OILA011', 'products/April2021/B9FQB5MY9AluasUczYyw.jpg', NULL, '15.99', '1.102', 1, 1, 0, 0, '2021-04-28 22:14:30', '2021-06-12 22:40:06', 'al-ard', 85, '<p>Palestinian Organic Extra Virgin Olive Oil</p>', NULL, 4037, 3973, 'Olive Oil', 1, 0),
(542, 'HORIO', NULL, '_OILH001', 'products/April2021/uZT8GylMeagzq8Al4Fj9.jpg', NULL, '10.49', '1.653', 1, 1, 0, 0, '2021-04-28 22:17:16', '2021-06-12 22:40:06', 'horio', 85, '<p>Greek Extra Virgin Olive Oil</p>', NULL, 4038, 3974, 'Olive Oil', 1, 0),
(543, 'HORIO', NULL, '_OILH003', 'products/April2021/hztxqpwt0thQtnmIJ7Ow.jpg', NULL, '35.99', '0', 1, 1, 0, 0, '2021-04-28 22:20:05', '2021-06-12 22:40:06', 'horio', 85, '<p>Greek Extra Virgin Olive Oil - 3 Liters</p>', NULL, 4039, 3975, 'Olive Oil', 1, 0),
(544, 'HERMES', NULL, '_OILH005', 'products/April2021/J6fhNoOB47De6tS1JJzi.jpg', NULL, '16.99', '0', 1, 1, 0, 0, '2021-04-28 22:22:17', '2021-06-12 22:40:06', 'hermes', 85, '<p>Greek Pomace Oil - 3 Liters</p>', NULL, 4040, 3976, 'Olive Oil', 1, 0),
(545, 'MINERVA', NULL, '_OILM001', 'products/April2021/8Qtl5wk53XFD8IWuX37x.jpg', NULL, '12.99', '1.102', 1, 1, 0, 0, '2021-04-30 13:23:04', '2021-06-12 22:40:06', 'minerva', 85, '<p>Greek Organic Extra Virgin Olive Oil</p>', NULL, 4041, 3977, 'Olive Oil', 1, 0),
(546, 'MINERVA', NULL, '_OIGM003', 'products/April2021/JLd6luWUT7D0rSR9y2Cr.jpg', NULL, '12.99', '1.102', 1, 1, 0, 0, '2021-04-30 13:25:22', '2021-06-12 22:40:06', 'minerva', 85, '<p>Greek Kalamata Extra Virgin Olive Oil</p>', NULL, 4042, 3978, 'Olive Oil', 1, 0),
(547, 'MINERVA', NULL, '_OIGM007', 'products/April2021/b3LALLbBp1Pxlp1RuwQn.jpg', NULL, '28.99', '0', 1, 1, 0, 0, '2021-04-30 13:28:31', '2021-06-12 22:40:06', 'minerva', 85, '<p>Greek Pure Olive Oil - 3 Liters</p>', NULL, 4043, 3979, 'Olive Oil', 1, 0),
(548, 'SOLON', NULL, '_OILS017', 'products/April2021/eIvd2MDgUG5qOHSKCwEt.jpg', NULL, '38.99', '0', 1, 1, 0, 0, '2021-04-30 13:31:00', '2021-06-12 22:40:06', 'solon', 85, '<p>Greek Extra Virgin Olive Oil - 3 Liters</p>', NULL, 4044, 3980, 'Olive Oil', 1, 0),
(549, 'SUN of ITALY', NULL, '_OLIS001', 'products/April2021/9stbD61f7jUAYTJ4HT8E.jpg', NULL, '11.99', '8.326', 1, 1, 0, 0, '2021-04-30 13:40:59', '2021-06-12 22:40:06', 'sun-of-italy', 85, '<p>Blended Oil</p>', NULL, 4045, 3981, 'Olive Oil', 1, 0),
(550, 'LAKONIA', NULL, '_OILL003', 'products/April2021/2ySjGWAgQLiO6DzzRoip.jpg', NULL, '24.99', '0', 1, 1, 0, 0, '2021-04-30 13:43:40', '2021-06-12 22:40:06', 'lakonia', 85, '<p>Greek Extra Virgin Olive Oil&nbsp;</p>', NULL, 4046, 3982, 'Olive Oil', 1, 0),
(551, 'CHOSEN FOODS', NULL, '_OILV555', 'products/April2021/UBiMM5sRpEe2oS1ZtoQl.jpg', NULL, '22.99', '4.225', 1, 1, 0, 0, '2021-04-30 13:46:49', '2021-06-12 22:40:06', 'chosen-foods', 86, '<p>Avocado Oil</p>', NULL, 4047, 3983, 'Avocado Oil', 1, 0),
(552, 'MICHIGAN VALLEY', NULL, '_VIMI003', 'products/April2021/H4q9YTFA5FBGv4fX3EsW.jpg', NULL, '3.99', '2', 1, 1, 0, 0, '2021-04-30 13:59:36', '2021-06-12 22:40:06', 'michigan-valley', 87, '<p>&nbsp;Apple Cider Vinegar</p>', NULL, 4048, 3984, 'Vinegar', 1, 0),
(553, 'MICHIGAN VALLEY', NULL, '_VIMI001', 'products/April2021/k7g5OtlDrgEq1gQp5M6i.jpg', NULL, '3.99', '2', 1, 1, 0, 0, '2021-04-30 14:01:00', '2021-06-12 22:40:06', 'michigan-valley', 87, '<p>White Distilled Vinegar</p>', NULL, 4049, 3985, 'Vinegar', 1, 0),
(554, 'MARI', NULL, '_VIMA111', 'products/April2021/fdbL4iUtkzYKFap0o4Ct.jpg', NULL, '0.99', '0.881', 1, 1, 0, 0, '2021-04-30 14:04:37', '2021-06-12 22:40:06', 'mari', 87, '<p>Red Wine Vinegar</p>', NULL, 4050, 3986, 'Vinegar', 1, 0),
(555, 'ARHEON', NULL, '_VIAR111', 'products/April2021/dsDBgEZ7y4e0dAXMllTO.jpg', NULL, '3.99', '2', 1, 1, 0, 0, '2021-04-30 14:06:25', '2021-06-12 22:40:06', 'arheon', 87, '<p>Red Wine Vinegar</p>', NULL, 4051, 3987, 'Vinegar', 1, 0),
(556, 'SUN of ITALY', NULL, '_VISU011', 'products/April2021/vx36uTVBK8hzGwEMTKJR.jpg', NULL, '4.99', '8.326', 1, 1, 0, 0, '2021-04-30 14:08:08', '2021-06-12 22:40:06', 'sun-of-italy', 87, '<p>Wine Vinegar</p>', NULL, 4052, 3988, 'Vinegar', 1, 0),
(557, 'SUN of ITALY', NULL, '_VISU005', 'products/April2021/bwlA7xjLyxUCUir9D9Vl.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-04-30 14:10:11', '2021-06-12 22:40:06', 'sun-of-italy', 87, '<p>White Wine Vinegar</p>', NULL, 4053, 3989, 'Vinegar', 1, 0),
(558, 'SUN of ITALY', NULL, '_VISU003', 'products/April2021/B4ZhKTR8IxJO3NnDA86W.jpg', NULL, '3.99', '2.113', 1, 1, 0, 0, '2021-04-30 14:12:11', '2021-06-12 22:40:06', 'sun-of-italy', 87, '<p>Balsamic Vinegar of Modena</p>', NULL, 4054, 3990, 'Vinegar', 1, 0),
(559, 'SUN of ITALY', NULL, '_VISU001', 'products/April2021/OPrwhg6RwSzWRX6PaeYj.jpg', NULL, '2.29', '0.5', 1, 1, 0, 0, '2021-04-30 14:13:36', '2021-06-12 22:40:06', 'sun-of-italy', 87, '<p>Red Wine Vinegar</p>', NULL, 4055, 3991, 'Vinegar', 1, 0),
(560, 'LAODICEA', NULL, '_OLVL005', 'products/April2021/S3hSgs1epfbQsIgUQVer.jpg', NULL, '7.99', '1.312', 1, 1, 0, 0, '2021-04-30 14:31:00', '2021-06-12 22:40:06', 'laodicea', 84, '<p>Green Olives Stuffed with Pimento</p>', NULL, 4056, 3992, 'Olives', 1, 0),
(561, 'LAODICEA', NULL, '_OLVL009', 'products/April2021/Ky9krKmfneAwddfOYIuC.jpg', NULL, '9.99', '2.187', 1, 1, 0, 0, '2021-04-30 14:32:45', '2021-06-12 22:40:06', 'laodicea', 84, '<p>Italian Green Olives- Pitted in Brien</p>', NULL, 4057, 3993, 'Olives', 1, 0),
(562, 'LAODICEA', NULL, '_OLIVL001', 'products/April2021/6XO0uloW2Z2IFAL4dfhB.jpg', NULL, '9.99', '2', 1, 1, 0, 0, '2021-04-30 14:34:24', '2021-06-12 22:40:06', 'laodicea', 84, '<p>&nbsp;Kalamata Olives in Brine</p>', NULL, 4058, 3994, 'Olives', 1, 0),
(563, 'LAODICEA', NULL, '_OLIVL003', 'products/April2021/vtjGdLOuF4UeuxGgnSne.jpg', NULL, '14.99', '3.25', 1, 1, 0, 0, '2021-04-30 14:35:44', '2021-06-12 22:40:07', 'laodicea', 84, '<p>Pitted Kalamata Olives</p>', NULL, 4059, 3995, 'Olives', 1, 0),
(564, 'LAODICEA', NULL, '_OLVL007', 'products/April2021/UvOPIU50rsK4dR3hF3qw.jpg', NULL, '15.99', '3', 1, 1, 0, 0, '2021-04-30 14:36:51', '2021-06-12 22:40:07', 'laodicea', 84, '<p>Green Cracked Olives</p>', NULL, 4060, 3996, 'Olives', 1, 0),
(565, 'CORTAS', NULL, '_OLLC001', 'products/April2021/RQp8jbRsRgAQuOx0hvWF.jpg', NULL, '4.99', '1.375', 1, 1, 0, 0, '2021-04-30 14:38:20', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Green Olives</p>', NULL, 4061, 3997, 'Olives', 1, 0),
(566, 'CORTAS', NULL, '_OLLC003', 'products/April2021/Dlu60INFMK6LAl4YqDu9.jpg', NULL, '6.99', '2.25', 1, 1, 0, 0, '2021-04-30 14:39:37', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Green Olives</p>', NULL, 4062, 3998, 'Olives', 1, 0),
(567, 'CORTAS', NULL, '_OLLC005', 'products/April2021/c9G9ARo1bCMeQruyaTVS.jpg', NULL, '18.99', '7', 1, 1, 0, 0, '2021-04-30 14:40:51', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Green Olives</p>', NULL, 4063, 3999, 'Olives', 1, 0),
(568, 'CORTAS', NULL, '_OLLC007', 'products/April2021/zuVctPCuuh6VDRNBztCy.jpg', NULL, '5.49', '1.375', 1, 1, 0, 0, '2021-04-30 14:42:01', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Black Olives</p>', NULL, 4064, 4000, 'Olives', 1, 0),
(569, 'CORTAS', NULL, '_OLLC009', 'products/April2021/YP6fPAsg6HIyHsNK5EJk.jpg', NULL, '6.99', '2.25', 1, 1, 0, 0, '2021-04-30 14:43:17', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Black Olives</p>', NULL, 4065, 4001, 'Olives', 1, 0),
(570, 'CORTAS', NULL, '_OLLC011', 'products/April2021/FKI2lqXCrT7QGHytzslG.jpg', NULL, '17.99', '7', 1, 1, 0, 0, '2021-04-30 14:45:04', '2021-06-12 22:40:07', 'cortas', 84, '<p>Lebanese Black Olives</p>', NULL, 4066, 4002, 'Olives', 1, 0),
(571, 'SHAHIA', NULL, '_OLES001', 'products/April2021/OdlSsjl4ivJ1AIAd6H51.jpg', NULL, '6.49', '2.187', 1, 1, 0, 0, '2021-04-30 14:46:34', '2021-06-12 22:40:07', 'shahia', 84, '<p>Egyptian Green Olives</p>', NULL, 4067, 4003, 'Olives', 1, 0),
(572, 'SHAHIA', NULL, '_OLES003', 'products/April2021/GTLF8j9lmRJ0AmkHJfSi.jpg', NULL, '6.49', '2.187', NULL, 1, 0, 0, '2021-04-30 14:51:22', '2021-06-12 22:40:07', 'shahia', 84, '<p>Egyptian Black Olives</p>', NULL, 4068, 4004, 'Olives', 1, 0),
(573, 'SHAHIA', NULL, '_OLTS011', 'products/April2021/IAofbuA0zltdDxpMWp3F.jpg', NULL, '4.99', '1.7', 1, 1, 0, 0, '2021-04-30 14:56:25', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Black Olives - Vac Pac</p>', NULL, 4069, 4005, 'Olives', 1, 0),
(574, 'SHAHIA', NULL, '_OLTS013', 'products/April2021/NHBaN01aYDGaPh538o00.jpg', NULL, '7.99', '2.187', 1, 1, 0, 0, '2021-04-30 14:58:01', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Black Olives - Vac Pac</p>', NULL, 4070, 4006, 'Olives', 1, 0),
(575, 'SHAHIA', NULL, '_OLTS001', 'products/April2021/QtUt5uH2rxcpywPpvBBS.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-30 14:58:56', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Green Olives - Vac Pac</p>', NULL, 4071, 4007, 'Olives', 1, 0),
(576, 'SHAHIA', NULL, '_OLTS003', 'products/April2021/fJjOJeLJGw1HDHN5OIpy.jpg', NULL, '7.99', '2', 1, 1, 0, 0, '2021-04-30 15:00:21', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Green Olives - Vac Pac</p>', NULL, 4072, 4008, 'Olives', 1, 0),
(577, 'SHAHIA', NULL, '_OLTS021', 'products/April2021/RL20jFADZRyvWAA4CoxC.jpg', NULL, '949.00', '3.5', 1, 1, 0, 0, '2021-04-30 21:52:34', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Green Olives - Country Style</p>', NULL, 4073, 4009, 'Olives', 1, 0),
(578, 'SHAHIA', NULL, '_OLTS023', 'products/April2021/3ICnCp07RoxvwIFciJpv.jpg', NULL, '8.49', '3.312', 1, 1, 0, 0, '2021-04-30 21:53:58', '2021-06-12 22:40:07', 'shahia', 84, '<p>Turkish Black Olives - Country Style</p>', NULL, 4074, 4010, 'Olives', 1, 0),
(579, 'SAIFAN', NULL, '_OLLS005', 'products/April2021/hTOz56aCYpCueR4Twi74.jpg', NULL, '18.99', '5.5', 1, 1, 0, 0, '2021-04-30 21:55:29', '2021-06-12 22:40:07', 'saifan', 84, '<p>Lebanese Green Olives</p>', NULL, 4075, 4011, 'Olives', 1, 0),
(580, 'SAIFAN', NULL, '_OLLS011', 'products/April2021/kIvqxk58LXayKnL78km9.jpg', NULL, '18.99', '5.5', 1, 1, 0, 0, '2021-04-30 21:56:39', '2021-06-12 22:40:07', 'saifan', 84, '<p>Lebanese Black Olives</p>', NULL, 4076, 4012, 'Olives', 1, 0),
(582, 'TUT\'S', NULL, '_OLPT003', 'products/April2021/FDvjRDk259JXjs0afEgf.jpg', NULL, '13.99', '6', 1, 1, 0, 0, '2021-04-30 22:09:04', '2021-06-12 22:40:07', 'tut-s', 84, '<p>Palestinian Green Cracked Olives Giant</p>', NULL, 4078, 4014, 'Olives', 1, 0),
(583, 'KRINOS', NULL, '_OLKK001', 'products/April2021/mISqTTM1FtHlTneZS7P1.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-30 22:14:18', '2021-06-12 22:40:07', 'krinos', 84, '<p>Kalamata Greek Olives</p>', NULL, 4079, 4015, 'Olives', 1, 0),
(585, 'KRINOS', NULL, '_OLKL005', 'products/April2021/Qp1AEESwc180xY5K2Tv3.jpg', NULL, '15.99', '6.613', 1, 1, 0, 0, '2021-04-30 22:17:28', '2021-06-12 22:40:07', 'krinos', 84, '<p>Greek Kalamata Olives</p>', NULL, 4081, 4017, 'Olives', 1, 0),
(586, 'KRINOS', NULL, '_OLGK011', 'products/April2021/oNgurDWDLJFHX32jSpUc.jpg', NULL, '4.99', '1', 1, 1, 0, 0, '2021-04-30 22:18:46', '2021-06-12 22:40:07', 'krinos', 84, '<p>Greek Green Cracked Olives</p>', NULL, 4082, 4018, 'Olives', 1, 0),
(587, 'KRINOS', NULL, '_OLKA001', 'products/April2021/q9ityXT2kJOQ48DSBWNP.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-04-30 22:21:36', '2021-06-12 22:40:07', 'krinos', 84, '<p>Alfonso Olives</p>', NULL, 4083, 4019, 'Olives', 1, 0),
(588, 'KRINOS', NULL, '_OLGK003OFF', 'products/April2021/YVvSATFFQR1yx5Pgz6Tu.jpg', NULL, '43.99', '0', 1, 1, 1, 0, '2021-04-30 22:24:00', '2021-06-12 22:40:07', 'krinos', 84, '<p>Kalamta Olives - 2 lbs - 3 Pcs</p>', NULL, 4084, 4020, 'Olives', 1, 0),
(589, 'LAODICEA', NULL, '_PICL001', 'products/April2021/S15Jtpq8vbgZttqLbQeD.jpg', NULL, '2.99', '2', 1, 1, 0, 0, '2021-04-30 22:34:00', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Golden Pepperoncini</p>', NULL, 4085, 4021, 'Pickles', 1, 0),
(590, 'LAODICEA', NULL, '_PICL003', 'products/April2021/BYObv3hsRtPos9K1HDTQ.jpg', NULL, '4.99', '1.87', 1, 1, 0, 0, '2021-04-30 22:36:49', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Pepperoncini in Vinegar Brine</p>', NULL, 4086, 4022, 'Pickles', 1, 0),
(591, 'LAODICEA', NULL, '_PICL005', 'products/April2021/82tBKnl9x2SOiAtDTDSJ.jpg', NULL, '3.99', '0.87', 1, 1, 0, 0, '2021-04-30 22:39:55', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Cucumbers Pickled</p>', NULL, 4087, 4023, 'Pickles', 1, 0),
(592, 'LAODICEA', NULL, '_PICL007', 'products/April2021/Jxot7gw0D6xmThPhgCe6.jpg', NULL, '7.99', '1.543', 1, 1, 0, 0, '2021-04-30 22:41:51', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Cucumbers Pickled</p>', NULL, 4088, 4024, 'Pickles', 1, 0),
(593, 'LAODICEA', NULL, '_PICL007OFF', 'products/April2021/E5l0zYe2OH0oohgYbgTb.jpg', NULL, '11.99', '0', 1, 1, 1, 0, '2021-04-30 22:47:00', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Cucumbers Pickled - 2 Pcs.</p>', NULL, 4089, 4025, 'Pickles', 1, 0),
(594, 'LAODICEA', NULL, '_PICL009', 'products/April2021/f1yPNPCWxsnijQLaV4HP.png', NULL, '3.99', '0.87', 1, 1, 0, 0, '2021-04-30 22:50:51', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Turnip Pickled</p>', NULL, 4090, 4026, 'Pickles', 1, 0),
(595, 'LAODICEA', NULL, '_PICL011', 'products/April2021/nGHx1bgcMgAcO15PXfN3.png', NULL, '7.99', '1.543', 1, 1, 0, 0, '2021-04-30 22:52:12', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Turnip Pickled</p>', NULL, 4091, 4027, 'Pickles', 1, 0),
(596, 'LAODICEA', NULL, '_PICL011OFF', 'products/April2021/QKLPZKQxmLOWSKGvLXN9.png', NULL, '11.99', '0', 1, 1, 1, 0, '2021-04-30 22:53:00', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Turnip Pickled&nbsp; - 2 Pcs.</p>', NULL, 4092, 4028, 'Pickles', 1, 0),
(597, 'LAODICEA', NULL, '_PICL013', 'products/April2021/6R8eUiVmWYjXrB6xjAE1.jpg', NULL, '7.49', '0.437', 1, 1, 0, 0, '2021-04-30 22:56:16', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Thyme Pickles - Wild Zataar</p>', NULL, 4093, 4029, 'Pickles', 1, 0),
(598, 'LAODICEA', NULL, '_PICL015', 'products/April2021/oK8d6IB3gKv9AbjHfxCe.jpg', NULL, '4.99', '2.206', 1, 1, 0, 0, '2021-04-30 22:58:02', '2021-06-12 22:40:07', 'laodicea', 83, '<p>Pickled Lemons</p>', NULL, 4094, 4030, 'Pickles', 1, 0),
(599, 'SHAHIA', NULL, '_PIES003', 'products/April2021/2mcVG7oPxGda1AbbT6fT.jpg', NULL, '5.99', '2.206', 1, 1, 0, 0, '2021-04-30 23:02:14', '2021-06-12 22:40:07', 'shahia', 83, '<p>Pickled Baby Onions</p>', NULL, 4095, 4031, 'Pickles', 1, 0),
(600, 'SHAHIA', NULL, '_PIES005', 'products/April2021/XwgckE2cJl05qNA8BwxG.jpg', NULL, '5.99', '2.206', 1, 1, 0, 0, '2021-04-30 23:03:33', '2021-06-12 22:40:07', 'shahia', 83, '<p>Pickled Mixed Vegetables</p>', NULL, 4096, 4032, 'Pickles', 1, 0),
(601, 'SHAHIA', NULL, '_PIES001', 'products/April2021/jDZ00bKgmZdsPcxCjG4x.jpg', NULL, '5.99', '2.206', 1, 1, 0, 0, '2021-04-30 23:04:41', '2021-06-12 22:40:07', 'shahia', 83, '<p>Pickled Lemon</p>', NULL, 4097, 4033, 'Pickles', 1, 0),
(602, 'MECHELANY', NULL, '_MCH005', 'products/April2021/XGeglCc14dgCuvFgrmgI.jpg', NULL, '4.99', '1.31', 1, 1, 0, 0, '2021-04-30 23:17:23', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Mikti Pickles - Wild cucumbers</p>', NULL, 4098, 4034, 'Pickles', 1, 0),
(603, 'MECHELANY', NULL, '_MCH007', 'products/April2021/4iUK7AiutOsoEILEmHG1.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-04-30 23:19:26', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Mikti Pickles - Wild cucumbers</p>', NULL, 4099, 4035, 'Pickles', 1, 0),
(607, 'MECHELANY', NULL, '_MCH011', 'products/April2021/6bqpMht0CrlC9cUnjuSH.jpg', NULL, '3.99', '0.875', 1, 1, 0, 0, '2021-04-30 23:24:38', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Turnip Pickles</p>', NULL, 4101, 4037, 'Pickles', 1, 0),
(608, 'MECHELANY', NULL, '_ MCH013', 'products/April2021/EbzwR9fYkz4wjrFRWEdk.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-04-30 23:26:20', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Turnip Pickles</p>', NULL, 4102, 4038, 'Pickles', 1, 0),
(609, 'MECHELANY', NULL, '_PILM021', 'products/April2021/slI0w22yhTUAsK83hDeS.jpg', NULL, '3.99', '1.31', 1, 1, 0, 0, '2021-04-30 23:29:35', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Cucumber Pickles</p>', NULL, 4103, 4039, 'Pickles', 1, 0),
(610, 'MECHELANY', NULL, '_PILM023', 'products/April2021/B5tHlSioMxHrSDA13liZ.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-04-30 23:30:42', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Cucumber Pickles</p>', NULL, 4104, 4040, 'Pickles', 1, 0),
(611, 'MECHELANY', NULL, '_PILM031', 'products/April2021/Nt1JyleoDm21o5WfxN1b.jpg', NULL, '4.99', '1.31', 1, 1, 0, 0, '2021-04-30 23:33:02', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Mixed Vegetables Pickles</p>', NULL, 4105, 4041, 'Pickles', 1, 0),
(612, 'MECHELANY', NULL, '_PILM033', 'products/April2021/9TEqEoFmntZNYTl8ZOmH.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-04-30 23:38:14', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Mixed Vegetables Pickles</p>', NULL, 4106, 4042, 'Pickles', 1, 0),
(613, 'MECHELANY', NULL, '_PILM041', 'products/April2021/3agcqZnCwkTeVoGRxugo.jpg', NULL, '3.99', '1.31', 1, 1, 0, 0, '2021-04-30 23:39:42', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Hot Peppers Pickles</p>', NULL, 4107, 4043, 'Pickles', 1, 0),
(614, 'MECHELANY', NULL, '_PILM043', 'products/April2021/zoMHRCPatgCzFu5Valaj.jpg', NULL, '6.99', '2.19', 1, 1, 0, 0, '2021-05-01 00:08:08', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Hot Peppers Pickles</p>', NULL, 4108, 4044, 'Pickles', 1, 0),
(615, 'KRINOS', NULL, '_PICK001', 'products/April2021/H7BXBBQJLa7942tctgVV.jpg', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-01 00:10:15', '2021-06-12 22:40:07', 'krinos', 83, '<p>Pepperoncini in Vinegar Brine</p>', NULL, 4109, 4045, 'Pickles', 1, 0),
(616, 'KRINOS', NULL, '_PICK003', 'products/April2021/aOBEsTfidX6LzSoXqrGw.jpeg', NULL, '4.99', '2', 1, 1, 0, 0, '2021-05-01 00:12:20', '2021-06-12 22:40:07', 'krinos', 83, '<p>Pepperoncini in Vinegar Brine</p>', NULL, 4110, 4046, 'Pickles', 1, 0),
(617, 'KRINOS', NULL, '_PICK005', 'products/April2021/o1ZeHhdB08HGzqygdgXc.jpeg', NULL, '19.99', '8.35', 1, 1, 0, 0, '2021-05-01 00:14:15', '2021-06-12 22:40:07', 'krinos', 83, '<p>Pepperoncini in Vinegar Brine</p>', NULL, 4111, 4047, 'Pickles', 1, 0),
(618, 'KRINOS', NULL, '_PICK009', 'products/April2021/yeUT0JerKLfCL14RAae6.jpg', NULL, '6.99', '2', 1, 1, 0, 0, '2021-05-01 00:16:33', '2021-06-12 22:40:07', 'krinos', 83, '<p>Giardiniera in Vinegar Brine</p>', NULL, 4112, 4048, 'Pickles', 1, 0),
(619, 'MECHELANY', NULL, '_KRI001', 'products/April2021/9UPmED8WejNTgbRdHGfh.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-01 00:18:27', '2021-06-12 22:40:07', 'mechelany', 83, '<p>Capers in Vinegar Brine</p>', NULL, 4113, 4049, 'Pickles', 1, 0);
INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(620, 'TUT\'S', NULL, '_PICT001', 'products/April2021/63bfyyCpm8tgAfDfqaDy.jpeg', NULL, '2.49', '1.19', 1, 1, 0, 0, '2021-05-01 00:21:08', '2021-06-12 22:40:07', 'tut-s', 83, '<p>Cucumber Pickles&nbsp; -&nbsp; Small Size</p>', NULL, 4114, 4050, 'Pickles', 1, 0),
(621, 'TUT\'S', NULL, '_PICT003', 'products/April2021/mzfeVNEfl4Qbczl9PA5A.jpg', NULL, '9.99', '4', 1, 1, 0, 0, '2021-05-01 00:24:34', '2021-06-12 22:40:07', 'tut-s', 83, '<p>Cucumber Pickles&nbsp; -&nbsp; Big Size</p>', NULL, 4115, 4051, 'Pickles', 1, 0),
(622, 'TUT\'S', NULL, '_PICT005', 'products/April2021/BZjuCP5CGDGrI3WzHcHK.jpg', NULL, '2.99', '1.19', 1, 1, 0, 0, '2021-05-01 00:27:20', '2021-06-12 22:40:07', 'tut-s', 83, '<p>Hot Peppers Pickles</p>', NULL, 4116, 4052, 'Pickles', 1, 0),
(623, 'TUT\'S', NULL, '_PIPT021', 'products/April2021/NrzRn1ojGkoNU7sjoFOc.jpg', NULL, '2.99', '1.19', 1, 1, 0, 0, '2021-05-01 00:28:57', '2021-06-12 22:40:07', 'tut-s', 83, '<p>Eggplant Pickles</p>', NULL, 4117, 4053, 'Pickles', 1, 0),
(624, 'SUN of ITALY', NULL, '_PICS001', 'products/April2021/GVuB8H1c0M33uBqssOGp.png', NULL, '2.79', '1', 1, 1, 0, 0, '2021-05-01 00:36:31', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>Giardiniera</p>', NULL, 4118, 4054, 'Pickles', 1, 0),
(625, 'SUN of ITALY', NULL, '_PICS003', 'products/April2021/71DCW9xgR5DA6QAFIF3e.jpg', NULL, '4.49', '2', 1, 1, 0, 0, '2021-05-01 00:38:24', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>Giardiniera</p>', NULL, 4119, 4055, 'Pickles', 1, 0),
(626, 'SUN of ITALY', NULL, '_PICS005', 'products/April2021/IB5arFRQHOpSqBQ2CbUs.png', NULL, '2.79', '1', 1, 1, 0, 0, '2021-05-01 00:39:45', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>&nbsp;Hot Giardiniera</p>', NULL, 4120, 4056, 'Pickles', 1, 0),
(627, 'SUN of ITALY', NULL, '_PICS007', 'products/April2021/JC1K33qkXupI71vXd7EO.jpg', NULL, '4.49', '2', 1, 1, 0, 0, '2021-05-01 00:40:56', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>&nbsp;Hot Giardiniera</p>', NULL, 4121, 4057, 'Pickles', 1, 0),
(628, 'SUN of ITALY', NULL, '_PICS009', 'products/April2021/RUkQvBebWecQZnHoWI5u.jpg', NULL, '2.79', '1', 1, 1, 0, 0, '2021-05-01 00:43:24', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>Pepperoncini</p>', NULL, 4122, 4058, 'Pickles', 1, 0),
(629, 'SUN of ITALY', NULL, '_PICS011', 'products/April2021/X5n6RWcoKLjK5uLXq73x.jpg', NULL, '4.49', '2', 1, 1, 0, 0, '2021-05-01 00:44:30', '2021-06-12 22:40:07', 'sun-of-italy', 83, '<p>Pepperoncini</p>', NULL, 4123, 4059, 'Pickles', 1, 0),
(632, 'LAODICEA', NULL, '_CPL101', 'products/April2021/k1VPARcfBpLVExyOyt6A.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-01 01:28:55', '2021-06-12 22:40:07', 'laodicea', 58, '<p>Lupini Beans - Ready to Eat</p>', NULL, 4124, 4060, 'Beans & Peas in Can', 1, 0),
(633, 'LAODICEA', NULL, '_CPL103', 'products/April2021/oxspyMjKXHjwSCNHy0w1.jpg', NULL, '4.99', '2.031', 1, 1, 0, 0, '2021-05-01 01:29:58', '2021-06-25 15:51:15', 'laodicea', 58, '<p>Lupini Beans - Ready to Eat</p>', NULL, 4125, 4061, 'Beans & Peas in Can', 0, 0),
(634, 'LAODICEA', NULL, '_CPL103OF', 'products/April2021/kLhST5AxyLJWu6DxDGwV.jpg', NULL, '6.99', '0', 1, 1, 1, 0, '2021-05-01 01:31:00', '2021-06-12 22:40:07', 'laodicea', 58, '<p>Lupini Beans - Ready to Eat</p>', NULL, 4126, 4062, 'Beans & Peas in Can', 1, 0),
(635, 'SUN of ITALY', NULL, '_BLSU011', 'products/April2021/XAtUwV1KnSKGdQKrFPHB.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-01 01:32:19', '2021-06-12 22:40:07', 'sun-of-italy', 58, '<p>Lupini Beans</p>', NULL, 4127, 4063, 'Beans & Peas in Can', 1, 0),
(636, 'COSMO\'S', NULL, '_JABC001', 'products/April2021/GLvDZDGI3q7wEVRDBW2I.jpg', NULL, '4.49', '2', 1, 1, 0, 0, '2021-05-01 01:33:23', '2021-06-12 22:40:07', 'cosmo-s', 58, '<p>Lupini Beans Jumbo</p>', NULL, 4128, 4064, 'Beans & Peas in Can', 1, 0),
(637, 'SUN of ITALY', NULL, '_BLSU013', 'products/April2021/mxR31utC7P3ieNSZKrp5.jpg', NULL, '1.39', '0.969', 1, 1, 0, 0, '2021-05-01 01:34:33', '2021-06-12 22:40:07', 'sun-of-italy', 58, '<p>White Cannellini Beans</p>', NULL, 4129, 4065, 'Beans & Peas in Can', 1, 0),
(638, 'SUN of ITALY', NULL, '_BLSU015', 'products/April2021/Yhq6iSPqbdGsOjbvXA9q.jpg', NULL, '1.39', '0.969', 1, 1, 0, 0, '2021-05-01 01:35:44', '2021-06-12 22:40:07', 'sun-of-italy', 58, '<p>Black Beans</p>', NULL, 4130, 4066, 'Beans & Peas in Can', 1, 0),
(639, 'SUN of ITALY', NULL, '_BLSU017', 'products/April2021/0NGeK1nqrDVpa3phenXE.jpg', NULL, '139.00', '0.969', 1, 1, 0, 0, '2021-05-01 01:36:56', '2021-06-12 22:40:07', 'sun-of-italy', 58, '<p>Red Kidney Beans</p>', NULL, 4131, 4067, 'Beans & Peas in Can', 1, 0),
(640, 'CORTAS', NULL, '_CPS001', 'products/May2021/KuWXoHK60cYy4gxnoFl7.jpg', NULL, '199.00', '1.25', 1, 1, 0, 0, '2021-05-01 07:35:57', '2021-06-12 22:40:07', 'cortas', 58, '<p>Chick Peas - Cooked</p>', NULL, 4132, 4068, 'Beans & Peas in Can', 1, 0),
(641, 'CORTAS', NULL, '_CPC001', 'products/May2021/sU4iekRNu9DwI3plkgfX.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-01 07:41:21', '2021-06-12 22:40:07', 'cortas', 58, '<p>Chick Peas - Cooked</p>', NULL, 4133, 4069, 'Beans & Peas in Can', 1, 0),
(642, 'CORTAS', NULL, '_CPC001', 'products/May2021/FGE6GmfNGoPfA5YFyni8.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-01 07:42:33', '2021-06-12 22:40:07', 'cortas', 58, '<p>Chick Peas - Cooked</p>', NULL, NULL, NULL, 'Beans & Peas in Can', 1, 0),
(643, 'CORTAS', NULL, '_CPC003', 'products/May2021/CYdnX1JqQJj1xWBfziay.jpg', NULL, '2.49', '0.875', 1, 1, 0, 0, '2021-05-01 07:45:52', '2021-06-12 22:40:07', 'cortas', 58, '<p>Chick Peas - Cooked</p>', NULL, 4134, 4070, 'Beans & Peas in Can', 1, 0),
(644, 'SAHADI', NULL, '_FBS001', 'products/May2021/VIItg228f9Y5Y4BnAjFO.jpg', NULL, '1.69', '1.25', 1, 1, 0, 0, '2021-05-01 07:47:42', '2021-06-12 22:40:07', 'sahadi', 58, '<p>Foul Mudammas - Cooked Fava Beans</p>', NULL, 4135, 4071, 'Beans & Peas in Can', 1, 0),
(645, 'SHAHIA', NULL, '_FBS001OF', 'products/May2021/DbARI4IFn8avHkkCEK1n.jpg', NULL, '36.99', '0', 1, 1, 1, 0, '2021-05-01 07:49:00', '2021-06-12 22:40:07', 'shahia', 58, '<p>Foul Mudammas - 20.5 oz - 12 Cans</p>', NULL, 4136, 4072, 'Beans & Peas in Can', 1, 0),
(646, 'CORTAS', NULL, '_FBC001', 'products/May2021/wu4SvAPkWhMZ8qTqNMlC.jpg', NULL, '1.19', '0.875', 1, 1, 0, 0, '2021-05-01 07:51:58', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas - Cooked Fava Beans</p>', NULL, 4137, 4073, 'Beans & Peas in Can', 1, 0),
(647, 'CORTAS', NULL, '_FBC003', 'products/May2021/D8j4uvJeRfNvORpQhyZ4.jpg', NULL, '2.49', '1.875', 1, 1, 0, 0, '2021-05-01 07:53:34', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas - Cooked Fava Beans</p>', NULL, 4138, 4074, 'Beans & Peas in Can', 1, 0),
(648, 'CORTAS', NULL, '_FBC001OF', 'products/May2021/WPFN6Tmb9vtFvYfandxF.jpg', NULL, '29.99', '0', 1, 1, 1, 0, '2021-05-01 08:27:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Cooked Ready to Eat - 14 Oz - 12 Cans</p>', NULL, 4139, 4075, 'Beans & Peas in Can', 1, 0),
(649, 'CORTAS', NULL, '_FBC015', 'products/May2021/vpGxscflPTAc2AyUIpBJ.jpg', NULL, '2.19', '0.875', 1, 1, 0, 0, '2021-05-01 08:34:09', '2021-06-12 22:40:07', 'cortas', 58, '<p>Fava Beans and Chick Peas</p>', NULL, 4140, 4076, 'Beans & Peas in Can', 1, 0),
(650, 'CORTAS', NULL, '_FBC015OF', 'products/May2021/3BF1hi2BZcImNFx8axCh.jpg', NULL, '31.99', '0', 1, 1, 1, 0, '2021-05-01 08:50:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Fava Beans and Chick Peas - 14 Oz - 12 Cans</p>', NULL, 4141, 4077, 'Beans & Peas in Can', 1, 0),
(651, 'CORTAS', NULL, '_FBC005', 'products/May2021/o8hsHkdaH9eL10hYZ2Cd.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-01 08:52:32', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Lebanese Recipe</p>', NULL, 4142, 4078, 'Beans & Peas in Can', 1, 0),
(652, 'CORTAS', NULL, '_FBC005OF', 'products/May2021/nfQuxOkdUPGeEOzKcCia.jpg', NULL, '32.99', '0', 1, 1, 1, 0, '2021-05-01 08:56:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Lebanese Recipe - 14 Oz - 12 Cans</p>', NULL, 4143, 4079, 'Beans & Peas in Can', 1, 0),
(653, 'CORTAS', NULL, '_FBC007', 'products/May2021/NbS8YXifNalYNG0hXPk8.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-01 08:58:31', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Egyptian Recipe</p>', NULL, 4144, 4080, 'Beans & Peas in Can', 1, 0),
(654, 'LURPAK', NULL, '_DAR005', 'products/May2021/KilBF77L8w7kReV40PHk.jpg', NULL, '4.99', '0.5', 1, 1, 0, 0, '2021-05-01 18:22:11', '2021-06-12 22:40:07', 'lurpak', 77, '<p>Sweet Butter</p>', NULL, 4145, 4081, 'Butter', 1, 0),
(655, 'KERRYGOLD', NULL, '_BUK111', 'products/May2021/70uo4eI2juWWpWyt4Lfo.jpg', NULL, '15.99', '2', 1, 1, 0, 0, '2021-05-01 18:24:00', '2021-06-12 22:40:07', 'kerrygold', 77, '<p>Pure Irish Butter - 4 PK</p>', NULL, 4146, 4082, 'Butter', 1, 0),
(660, 'Land O Lakes', NULL, '_EGLA001', 'products/May2021/tEOcTSSJG4Q5IGvtSWpU.jpg', NULL, '6.99', '3', 1, 1, 0, 0, '2021-05-01 18:45:35', '2021-06-12 22:40:07', 'land-o-lakes', 75, '<p>Large Brown Cage Free Grade A Eggs, 24 ct.</p>', NULL, 4150, 4085, 'Eggs', 1, 0),
(661, 'Pete and Gerry\'s Organic Eggs', NULL, '_EGPE001', 'products/May2021/JxQ8RPMO6Loi02AGvrAx.jpg', NULL, '8.99', '1.5', 1, 1, 0, 0, '2021-05-01 18:47:46', '2021-06-12 22:40:07', 'pete-and-gerry-s-organic-eggs', 75, '<p>Organic Eggs, 18 ct</p>', NULL, 4151, 4086, 'Eggs', 1, 0),
(662, 'VICTOR', NULL, '_CHSV001', 'products/May2021/uAhv9XEsVaJyJPWmLPl4.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-05-01 21:45:27', '2021-06-12 22:40:07', 'victor', 76, '<p>Armenian String Cheese With Black Caraway Seed</p>', NULL, 4152, 4087, 'Cheese', 1, 0),
(663, 'KAROUN', NULL, '_CHSA001', 'products/May2021/XqplVuxVGP1qI11LpLmZ.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:47:01', '2021-06-12 22:40:07', 'karoun', 76, '<p>String Cheese</p>', NULL, 4153, 4088, 'Cheese', 1, 0),
(664, 'BYBLOS', NULL, '_CHEB101', 'products/May2021/vuRZer0HbZ7Xf2Z9L0Ok.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:49:31', '2021-06-12 22:40:07', 'byblos', 76, '<p>Angel Hair Cheese</p>', NULL, 4154, 4089, 'Cheese', 1, 0),
(665, 'ALEXANDROU THE GREAT', NULL, '_CHHA001', 'products/May2021/AHdlOgyeCiPHjN4fNML1.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:51:15', '2021-06-12 22:40:07', 'alexandrou-the-great', 76, '<p>Halloumi Cheese Sliced</p>', NULL, 4155, 4090, 'Cheese', 1, 0),
(666, 'ARZ', NULL, '_CHHA011', 'products/May2021/HYgOKwY4TYnZfFqaooPj.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:52:23', '2021-06-12 22:40:07', 'arz', 76, '<p>Halloumi Cheese</p>', NULL, 4156, 4091, 'Cheese', 1, 0),
(667, 'ALAMBRA', NULL, '_CHHA021', 'products/May2021/qTEKccMfqQIi8qq7YLo9.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:53:36', '2021-06-12 22:40:07', 'alambra', 76, '<p>Halloumi Cheese</p>', NULL, 4157, 4092, 'Cheese', 1, 0),
(668, 'PITTAS', NULL, '_CHHP001', 'products/May2021/03umsCJHMRNu3wbUvlU6.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-01 21:55:05', '2021-06-12 22:40:07', 'pittas', 76, '<p>Halloumi Cheese</p>', NULL, 4158, 4093, 'Cheese', 1, 0),
(669, 'KRINOS', NULL, '_CHHK011', 'products/May2021/W7WbQKD1UwdM7j5VrDbp.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 21:56:38', '2021-06-12 22:40:07', 'krinos', 76, '<p>Halloumi Cheese</p>', NULL, 4159, 4094, 'Cheese', 1, 0),
(670, 'Alambra', NULL, '_CHHA023', 'products/May2021/CyouA3jZMm5RXwW8diaP.jpg', NULL, '15.99', '1.1', 1, 1, 0, 0, '2021-05-01 21:59:30', '2021-06-12 22:40:07', 'alambra', 76, '<p>Halloumi Cheese</p>', NULL, 4160, 4095, 'Cheese', 1, 0),
(671, 'DODONI', NULL, '_CHHD111', 'products/May2021/c4XNK7ZCQfAtYwehFu7j.jpg', NULL, '14.99', '1.86', 1, 1, 0, 0, '2021-05-01 22:03:23', '2021-06-12 22:40:07', 'dodoni', 76, '<p>Halloumi Cheese</p>', NULL, 4161, 4096, 'Cheese', 1, 0),
(672, 'ARZ', NULL, '_CHEK021', 'products/May2021/jzfhoiT4WJlCS6A4SWWg.jpg', NULL, '6.99', '0.75', 1, 1, 0, 0, '2021-05-01 22:06:51', '2021-06-12 22:40:07', 'arz', 76, '<p>Akkawi Cheese in Vac Pack</p>', NULL, 4162, 4097, 'Cheese', 1, 0),
(673, 'KAROUN', NULL, '_CHEK333', 'products/May2021/ufC8CPeXoyAPnVvXgBT2.jpg', NULL, '10.99', '1.25', 1, 1, 0, 0, '2021-05-01 22:21:43', '2021-06-12 22:40:07', 'karoun', 76, '<p>Ackawi Cheese in Jar</p>', NULL, 4163, 4098, 'Cheese', 1, 0),
(674, 'Romi\'s Farm Products', NULL, '_CHER111', 'products/May2021/o61F8ucD32XYCwFrsNtk.jpg', NULL, '38.99', '5', 1, 1, 0, 0, '2021-05-01 22:23:11', '2021-06-12 22:40:07', 'romi-s-farm-products', 76, '<p>Ackawi Cheese</p>', NULL, 4164, 4099, 'Cheese', 1, 0),
(675, 'KAROUN', NULL, '_CHSW003', 'products/May2021/WS8fdRHirKsJvjuYz1uR.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-05-01 22:24:46', '2021-06-12 22:40:07', 'karoun', 76, '<p>Sweet Cheese</p>', NULL, 4165, 4100, 'Cheese', 1, 0),
(676, 'ARZ', NULL, '_CHEA043', 'products/May2021/ycmZ6V6k3tirRCzsllXk.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-01 22:27:59', '2021-06-12 22:40:07', 'arz', 76, '<p>Creamy Cheese Spread</p>', NULL, 4166, 4101, 'Cheese', 1, 0),
(677, 'ARZ', NULL, '_CHEA045', 'products/May2021/e0cBRaubxniDBpPMdoB6.jpg', NULL, '12.99', '1', 1, 1, 0, 0, '2021-05-01 22:29:38', '2021-06-12 22:40:07', 'arz', 76, '<p>Creamy Cheese Spread</p>', NULL, 4167, 4102, 'Cheese', 1, 0),
(678, 'NORDEX FOOD', NULL, '_CHDO001', 'products/May2021/tJnOTPviGwXY9LHTVCme.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-05-01 22:30:57', '2021-06-12 22:40:07', 'nordex-food', 76, '<p>Domiati Double Cream Cheese</p>', NULL, 4168, 4103, 'Cheese', 1, 0),
(679, 'Kiri', NULL, '_CHCK001', 'products/May2021/aK1S6l1AlR5XavepLEen.jpg', NULL, '3.99', '0.262', 1, 1, 0, 0, '2021-05-01 22:50:46', '2021-06-12 22:40:07', 'kiri', 76, '<p>Creamy Processed Cheese</p>', NULL, 4169, 4104, 'Cheese', 1, 0),
(680, 'NORDEX FOOD', NULL, '_KASD001', 'products/May2021/iRBJcAqz6uXHveNgpIo7.jpg', NULL, '2.29', '0.375', 1, 1, 0, 0, '2021-05-01 22:52:17', '2021-06-12 22:40:07', 'nordex-food', 76, '<p>Cream Kashta</p>', NULL, 4170, 4105, 'Cheese', 1, 0),
(681, 'BYBLOS', NULL, '_CHEB100', 'products/May2021/D9PfYRigF9OgUaRMkHkg.jpg', NULL, '4.99', '0.531', 1, 1, 0, 0, '2021-05-01 22:53:49', '2021-06-12 22:40:07', 'byblos', 76, '<p>Creamy Cheese Spread</p>', NULL, 4171, 4106, 'Cheese', 1, 0),
(682, 'ARZ', NULL, '_CHEA031', 'products/May2021/YKzrTRsEMsJwySuXgbco.jpg', NULL, '14.99', '1.177', 1, 1, 0, 0, '2021-05-01 22:55:19', '2021-06-12 22:40:07', 'arz', 76, '<p>Feta Cheese</p>', NULL, 4172, 4107, 'Cheese', 1, 0),
(683, 'VALBRESO', NULL, '_CHFF003', 'products/May2021/lmHDXKv3oD5EngCSf6pe.jpg', NULL, '15.99', '1.34', 1, 1, 0, 0, '2021-05-01 22:56:32', '2021-06-12 22:40:07', 'valbreso', 76, '<p>French Feta Cheese</p>', NULL, 4173, 4108, 'Cheese', 1, 0),
(684, 'KRINOS', NULL, '_CHFK000', 'products/May2021/lz22vlnS67meSLZvs59m.jpg', NULL, '7.99', '0.875', 1, 1, 0, 0, '2021-05-01 22:57:38', '2021-06-12 22:40:07', 'krinos', 76, '<p>Greek Organic Feta Cheese</p>', NULL, 4174, 4109, 'Cheese', 1, 0),
(685, 'Tripoli', NULL, '_CHT333', 'products/May2021/qNLFJ4fBwffOOYcr5Ub3.jpg', NULL, '49.99', '5.51', 1, 1, 0, 0, '2021-05-01 22:58:43', '2021-06-12 22:40:07', 'tripoli', 76, '<p>Barrel Greek Feta</p>', NULL, 4175, 4110, 'Cheese', 1, 0),
(686, 'KRINOS - PARNASSOS', NULL, '_CHMC001', 'products/May2021/Tif7lZgud52H45o8I6Cl.jpg', NULL, '39.55', '5', 1, 1, 0, 0, '2021-05-01 22:59:59', '2021-06-12 22:40:07', 'krinos-parnassos', 76, '<p>Manouri - Buttery Greek Cheese</p>', NULL, 4176, 4111, 'Cheese', 1, 0),
(687, 'ARZ', NULL, '_CHEK025', 'products/May2021/Qneiue13JKD93OxRWd8C.jpg', NULL, '8.88', '1', 1, 1, 0, 0, '2021-05-01 23:01:30', '2021-06-12 22:40:07', 'arz', 76, '<p>Nabulsi Cheese in Vac Pack</p>', NULL, 4177, 4112, 'Cheese', 1, 0),
(688, 'KAROUN', NULL, '_CHEK335', 'products/May2021/lZGxo31CI4jDjaYSj6bM.jpg', NULL, '10.99', '1.25', 1, 1, 0, 0, '2021-05-01 23:02:59', '2021-06-12 22:40:07', 'karoun', 76, '<p>Nabulsi Cheese in Jar</p>', NULL, 4178, 4113, 'Cheese', 1, 0),
(689, 'MID EAST', NULL, '_CHME111', 'products/May2021/Xu9jlV2PHsXxqoZ5OGPt.jpg', NULL, '8.99', '1', 1, 1, 0, 0, '2021-05-01 23:04:00', '2021-06-12 22:40:07', 'mid-east', 76, '<p>Nabulsi Cheese</p>', NULL, 4179, 4114, 'Cheese', 1, 0),
(690, 'KRINOS', NULL, '_CHFB001', 'products/May2021/KiVTwa8ijaWpxN9rS2K5.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-05-01 23:05:31', '2021-06-12 22:40:07', 'krinos', 76, '<p>Bulgarian white Cheese</p>', NULL, 4180, 4115, 'Cheese', 1, 0),
(691, 'KRINOS', NULL, '_CHFB003', 'products/May2021/qNZlvNc394u4Xupl5Ejg.jpg', NULL, '10.99', '1.98', 1, 1, 0, 0, '2021-05-01 23:22:06', '2021-06-12 22:40:07', 'krinos', 76, '<p>Bulgarian white Cheese</p>', NULL, 4181, 4116, 'Cheese', 1, 0),
(692, 'KRINOS', NULL, '_CHFB000', 'products/May2021/umc2vZfdHE14YP5EmDMA.jpg', NULL, '9.99', '0.875', 1, 1, 0, 0, '2021-05-01 23:23:46', '2021-06-12 22:40:07', 'krinos', 76, '<p>Bulgarian white cheese Double Cream</p>', NULL, 4182, 4117, 'Cheese', 1, 0),
(693, 'KRINOS', NULL, '_CHKB001', 'products/May2021/UTM7av03SxK1vFPjKzS9.jpg', NULL, '9.99', '1', 1, 1, 0, 0, '2021-05-01 23:25:20', '2021-06-12 22:40:07', 'krinos', 76, '<p>Bulgarian Kashkaval Cheese</p>', NULL, 4183, 4118, 'Cheese', 1, 0),
(694, 'KRINOS', NULL, '_KASH601', 'products/May2021/vwGkX3K8ofSwWYMtQt1I.jpg', NULL, '10.99', '1', 1, 1, 0, 0, '2021-05-01 23:26:49', '2021-06-12 22:40:07', 'krinos', 76, '<p>Kefalorgaviera Greek Kashkaval</p>', NULL, 4184, 4119, 'Cheese', 1, 0),
(695, 'KRINOS', NULL, '_KASH603', 'products/May2021/nm3N6ufP0VRAIfzM0Cbb.jpg', NULL, '10.99', '1', 1, 1, 0, 0, '2021-05-01 23:28:03', '2021-06-12 22:40:07', 'krinos', 76, '<p>KEFALOTYRI Greek Kashkaval</p>', NULL, 4185, 4120, 'Cheese', 1, 0),
(696, 'AL-HALOUB COW', NULL, '_GEEA001', 'products/May2021/ZfbBF0ijH9KTeYxrFjAJ.jpg', NULL, '19.99', '2', 1, 1, 0, 0, '2021-05-01 23:34:31', '2021-06-12 22:40:07', 'al-haloub-cow', 74, '<p>Pure Butter, Oil Ghee</p>', NULL, 4186, 4121, 'Ghee', 1, 0),
(697, 'AL-HALOUB COW', NULL, '_GEEA003', 'products/May2021/njUTfHopbytK5KQVFLJm.jpg', NULL, '27.99', '4', 1, 1, 0, 0, '2021-05-01 23:36:19', '2021-06-12 22:40:07', 'al-haloub-cow', 74, '<p>Pure Butter, Oil Ghee</p>', NULL, 4187, 4122, 'Ghee', 1, 0),
(698, 'AL-GHAZAL', NULL, '_GEEA013', 'products/May2021/flcecSQhez7NEs6rjAkW.jpg', NULL, '5.99', '1.7', 1, 1, 0, 0, '2021-05-01 23:37:00', '2021-06-12 22:40:07', 'al-ghazal', 74, '<p>Pure Vegetable Ghee</p>', NULL, 4188, 4123, 'Ghee', 1, 0),
(699, 'AL-GHAZAL', NULL, '_GEEA011', 'products/May2021/JisxxhEjsScMnTodZ6ET.jpg', NULL, '12.99', '3.75', 1, 1, 0, 0, '2021-05-01 23:39:26', '2021-06-12 22:40:07', 'al-ghazal', 74, '<p>Pure Vegetable Ghee</p>', NULL, 4189, 4124, 'Ghee', 1, 0),
(700, 'ELAIS - FYTINI', NULL, '_GEEF011', 'products/May2021/QaFTAbrX4VDmtfZRBsh7.jpg', NULL, '9.99', '1.77', 1, 1, 0, 0, '2021-05-01 23:41:37', '2021-06-12 22:40:07', 'elais-fytini', 74, '<p>Vegetable Cooking Fat</p>', NULL, 4190, 4125, 'Ghee', 1, 0),
(701, 'ARZ', NULL, '_GEEA333', 'products/May2021/yp41H75VM7J9xi1w3eYL.jpg', NULL, '14.99', '2', 1, 1, 0, 0, '2021-05-01 23:43:12', '2021-06-12 22:40:07', 'arz', 74, '<p>Cow Milk Ghee</p>', NULL, 4191, 4126, 'Ghee', 1, 0),
(702, 'FLOWER', NULL, '_GEEF003', 'products/May2021/zaxFTGJy0oHSEwbmrYeJ.jpg', NULL, '14.99', '5', 1, 1, 0, 0, '2021-05-01 23:45:18', '2021-06-12 22:40:07', 'flower', 74, '<p>Pure Vegetable Ghee</p>', NULL, 4192, 4127, 'Ghee', 1, 0),
(703, 'MECHELANY', NULL, '_DAR003', 'products/May2021/qLTBLyjs8tm5IRSgLD07.jpg', NULL, '16.99', '1.1', 1, 1, 0, 0, '2021-05-01 23:51:06', '2021-06-12 22:40:07', 'mechelany', 81, '<p>Kishk - Dried Ground Wheat Soup</p>', NULL, 4193, 4128, 'Kishk', 1, 0),
(704, 'JAMEEDNA', NULL, '_DAR011', 'products/May2021/yB1HJSPCFd1b3BppQSBz.jpg', NULL, '10.99', '2.2', 1, 1, 0, 0, '2021-05-01 23:52:16', '2021-06-12 22:40:07', 'jameedna', 81, '<p>Liquid Jameed, Soup Starter</p>', NULL, 4194, 4129, 'Kishk', 1, 0),
(705, 'JAMEEDNA', NULL, '_DAR011OFF', 'products/May2021/wZzfOWpmfZ7aYWLXBhv7.jpg', NULL, '46.55', '0', 1, 1, 1, 0, '2021-05-01 23:53:00', '2021-06-12 22:40:07', 'jameedna', 81, '<p>Liquid Jameed, Soup Starter 2.2 lbs - 3 Pcs</p>', NULL, 4195, 4130, 'Kishk', 1, 0),
(706, 'ARZ', NULL, '_LAA001', 'products/May2021/z76qEKpRPh98gSi4B4qP.jpg', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-02 00:02:25', '2021-06-12 22:40:07', 'arz', 79, '<p>Labne - Kefir Cheese</p>', NULL, 4196, 4131, 'Labneh', 1, 0),
(707, 'BYBLOS', NULL, '_LAB001', 'products/May2021/xH4iC28G2L8OGHYzlAFf.jpg', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-02 00:03:30', '2021-06-12 22:40:07', 'byblos', 79, '<p>Labne - Kefir Cheese</p>', NULL, 4197, 4132, 'Labneh', 1, 0),
(708, 'KAROUN', NULL, '_LAK003', 'products/May2021/WVdpHeYbSNx9tDMYR0Ln.jpg', NULL, '3.99', '1', 1, 1, 0, 0, '2021-05-02 00:05:05', '2021-06-12 22:40:07', 'karoun', 79, '<p>Labne Light - Kefir Cheese</p>', NULL, 4198, 4133, 'Labneh', 1, 0),
(709, 'BYBLOS', NULL, '_LAB003', 'products/May2021/Yqz1l4HBnDrS0JlxVLgz.png', NULL, '5.99', '0.875', 1, 1, 0, 0, '2021-05-02 00:07:22', '2021-06-12 22:40:07', 'byblos', 79, '<p>Turkish Labneh</p>', NULL, 4199, 4134, 'Labneh', 1, 0),
(710, 'Blue Diamond Almond', NULL, '_MILB001', 'products/May2021/CVI4hRpdLXRSaFlS5e5Z.jpg', NULL, '6.99', '6', 1, 1, 0, 0, '2021-05-02 00:14:37', '2021-06-12 22:40:07', 'blue-diamond-almond', 80, '<p>Breeze Unsweetened Vanilla Almond Milk</p>', NULL, 4200, 4135, 'Milk', 1, 0),
(711, 'Lactaid', NULL, '_MILA001', 'products/May2021/ZYaXE6G4TW1ZFcRtnpcP.jpg', NULL, '6.99', '6', 1, 1, 0, 0, '2021-05-02 00:16:02', '2021-06-12 22:40:07', 'lactaid', 80, '<p>Whole Milk</p>', NULL, 4201, 4136, 'Milk', 1, 0),
(712, 'Lactaid', NULL, '_MILA003', 'products/May2021/2jXV4PoAr2g4iwnYpzau.jpg', NULL, '6.99', '6', 1, 1, 0, 0, '2021-05-02 00:17:32', '2021-06-12 22:40:07', 'lactaid', 80, '<p>Fat Free Milk</p>', NULL, 4202, 4137, 'Milk', 1, 0),
(713, 'Lactaid', NULL, '_MILA005', 'products/May2021/aenZfSsFGx9GCEFtgcJR.jpg', NULL, '6.99', '6', 1, 1, 0, 0, '2021-05-02 00:19:14', '2021-06-12 22:40:07', 'lactaid', 80, '<p>&nbsp;2% Reduced Fat Milk</p>', NULL, 4203, 4138, 'Milk', 1, 0),
(714, 'Mooala', NULL, '_MIMO001', 'products/May2021/Yl3KBRIUenEUZQrcmLro.jpg', NULL, '5.99', '3', 1, 1, 0, 0, '2021-05-02 00:20:37', '2021-06-12 22:40:07', 'mooala', 80, '<p>Vanilla Bean Almond milk</p>', NULL, 4204, 4139, 'Milk', 1, 0),
(715, 'Silk', NULL, '_MISI001', 'products/May2021/NgQ8hDujlIlDb1HmRNdJ.jpg', NULL, '7.98', '4', 1, 1, 0, 0, '2021-05-02 00:21:46', '2021-06-12 22:40:07', 'silk', 80, '<p>Unsweetened Vanilla Almondmilk</p>', NULL, 4205, 4140, 'Milk', 1, 0),
(716, 'KAROUN', NULL, '_YOK003', 'products/May2021/RZvS9fa4GPpjyuuzcm5P.jpg', NULL, '4.99', '2', 1, 1, 0, 0, '2021-05-02 00:41:24', '2021-06-12 22:40:07', 'karoun', 78, '<p>Yogurt Plain Low Fat</p>', NULL, 4206, 4141, 'Yogurt', 1, 0),
(717, 'ARZ', NULL, '_YOA001', 'products/May2021/eCwhX5t2i9rQTXeDGaHe.jpg', NULL, '4.99', '2', 1, 1, 0, 0, '2021-05-02 00:42:41', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Plain</p>', NULL, 4207, 4142, 'Yogurt', 1, 0),
(718, 'ARZ', NULL, '_YOA011', 'products/May2021/glzNggZchFaShzQSKCZr.jpg', NULL, '4.99', '2', 1, 1, 0, 0, '2021-05-02 00:44:16', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Baladi Plain</p>', NULL, 4208, 4143, 'Yogurt', 1, 0),
(719, 'KAROUN', NULL, '_YOD011', 'products/May2021/iABH55XXcsSANA5eI00L.jpg', NULL, '1.99', '1', 1, 1, 0, 0, '2021-05-02 00:45:25', '2021-06-12 22:40:07', 'karoun', 78, '<p>Yogurt Drink Plain</p>', NULL, 4209, 4144, 'Yogurt', 1, 0),
(720, 'ARZ', NULL, '_YOD015', 'products/May2021/85x2tSt8kJPquJy1IFKv.jpg', NULL, '1.99', '1', 1, 1, 0, 0, '2021-05-02 00:48:07', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Drink Plain</p>', NULL, 4210, 4145, 'Yogurt', 1, 0),
(721, 'ARZ', NULL, '_YOD017', 'products/May2021/08ZTAkAEUQinBhgRYlrC.jpg', NULL, '1.99', '1', 1, 1, 0, 0, '2021-05-02 00:50:53', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Drink With Mint</p>', NULL, 4211, 4146, 'Yogurt', 1, 0),
(722, 'GOPI', NULL, '_YOD013', 'products/May2021/iL9aOe158xyXPbY6EiyG.jpg', NULL, '1.99', '1', 1, 1, 0, 0, '2021-05-02 00:52:22', '2021-06-12 22:40:07', 'gopi', 78, '<p>Yogurt Drink With Mango - Lassi</p>', NULL, 4212, 4147, 'Yogurt', 1, 0),
(723, 'ARZ', NULL, '_YOD02', 'products/May2021/b4sZ4npsvFoPYZJFoIlg.jpg', NULL, '5.99', '4.175', 1, 1, 0, 0, '2021-05-02 00:53:26', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Drink Plain</p>', NULL, 4213, 4148, 'Yogurt', 1, 0),
(724, 'ARZ', NULL, '_YOD023', 'products/May2021/ezzviHhtz9r5OiBEfzX7.jpg', NULL, '5.99', '4.175', 1, 1, 0, 0, '2021-05-02 00:54:31', '2021-06-12 22:40:07', 'arz', 78, '<p>Yogurt Drink With Mint</p>', NULL, 4214, 4149, 'Yogurt', 1, 0),
(725, 'CORTAS', NULL, '_FBC007OF', 'products/May2021/0yigoISLmXs1vMG9Ll1j.jpg', NULL, '32.99', '0', 1, 1, 1, 0, '2021-05-02 13:48:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Egyptian Recipe</p>', NULL, 4215, 4150, 'Beans & Peas in Can', 1, 0),
(726, 'CORTAS', NULL, '_FBC009', 'products/May2021/lxLFum0n0WMb1VHte5N3.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-02 13:50:24', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Palestinian Recipe</p>', NULL, 4216, 4151, 'Beans & Peas in Can', 1, 0),
(727, 'CORTAS', NULL, '_FBC009OF', 'products/May2021/7OsotpSWCseWX2yq5KYf.jpg', NULL, '32.99', '0', 1, 1, 1, 0, '2021-05-02 13:51:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas Palestinian Recipe</p>', NULL, 4217, 4152, 'Beans & Peas in Can', 1, 0),
(728, 'CORTAS', NULL, '_FBC011', 'products/May2021/r6tGZKR4XqlQxNo8LaB4.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-02 13:53:35', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas With Cumin</p>', NULL, 4218, 4153, 'Beans & Peas in Can', 1, 0),
(729, 'CORTAS', NULL, '_FBC011OF', 'products/May2021/S2Bzi9zUSqS3gSI0DKnj.jpg', NULL, '32.99', '0', 1, 1, 1, 0, '2021-05-02 13:55:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas With Cumin</p>', NULL, 4219, 4154, 'Beans & Peas in Can', 1, 0),
(730, 'CORTAS', NULL, '_FBC013', 'products/May2021/H3YNMA9PbuKx5MvP6u46.jpg', NULL, '1.29', '0.875', 1, 1, 0, 0, '2021-05-02 13:57:07', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Mudammas with Hot Pepper</p>', NULL, 4220, 4155, 'Beans & Peas in Can', 1, 0),
(731, 'CORTAS', NULL, '_FBC013OF', 'products/May2021/PSi6LC8BVj80uhOIlX9k.jpg', NULL, '32.99', '0', 1, 1, 1, 0, '2021-05-02 13:58:00', '2021-06-12 22:40:07', 'cortas', 58, '<p>Foul Medammas-Lebanese recipe</p>', NULL, 4221, 4156, 'Beans & Peas in Can', 1, 0),
(734, 'CORTAS', NULL, '_FBC021', 'products/May2021/P3ExDlydybquUhjJMnJ4.jpg', NULL, '1.49', '0.875', 1, 1, 0, 0, '2021-05-02 14:03:49', '2021-06-12 22:40:07', 'cortas', 58, '<p>Broad Fava Beans - Small Size</p>', NULL, 4223, 4159, 'Beans & Peas in Can', 1, 0),
(735, 'CORTAS', NULL, '_FBC023', 'products/May2021/qYJIJn1JrEqFYD3iDfOu.jpg', NULL, '2.49', '1.875', 1, 1, 0, 0, '2021-05-02 14:07:31', '2021-06-12 22:40:07', 'cortas', 58, '<p>Broad Fava Beans - Large Size</p>', NULL, 4224, 4160, 'Beans & Peas in Can', 1, 0),
(736, 'YARA', NULL, '_DFRY001', 'products/May2021/znRZ6gcHg6vZhg490K7U.jpg', NULL, '4.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:15:50', '2021-06-12 22:40:07', 'yara', 135, '<p>Mediterranean Dried Apricots</p>', NULL, 4225, 4161, 'Dried Fruit & Dates', 1, 0),
(737, 'YARA', NULL, '_DFRY003', 'products/May2021/hTh71hOKznFAlRfAefrg.jpg', NULL, '3.49', '0.5', 1, 1, 0, 0, '2021-05-02 14:17:41', '2021-06-12 22:40:07', 'yara', 135, '<p>Golden Raisins</p>', NULL, 4226, 4162, 'Dried Fruit & Dates', 1, 0),
(738, 'YARA', NULL, '_DFRY005', 'products/May2021/D0N8987HgI1Wkf4sRUr7.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:20:16', '2021-06-12 22:40:07', 'yara', 135, '<p>Black Raisins</p>', NULL, 4227, 4163, 'Dried Fruit & Dates', 1, 0),
(739, 'YARA', NULL, '_DFRY007', 'products/May2021/l4KRhvQveY8tCXj8R6e4.jpg', NULL, '3.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:23:47', '2021-06-12 22:40:07', 'yara', 135, '<p>Mango Slices</p>', NULL, 4228, 4164, 'Dried Fruit & Dates', 1, 0),
(740, 'YARA', NULL, '_DFRY009', 'products/May2021/D6p8oL7TVSei8SWdLiSj.jpg', NULL, '3.49', '0.5', 1, 1, 0, 0, '2021-05-02 14:25:57', '2021-06-12 22:40:07', 'yara', 135, '<p>Papaya Spears</p>', NULL, 4229, 4165, 'Dried Fruit & Dates', 1, 0),
(741, 'YARA', NULL, '_DFRY011', 'products/May2021/5xJc6e09Cf0BQuJTjL1n.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:27:46', '2021-06-12 22:40:07', 'yara', 135, '<p>Pineapple Rings</p>', NULL, 4230, 4166, 'Dried Fruit & Dates', 1, 0),
(742, 'YARA', NULL, '_DFRY013', 'products/May2021/YBS9V0JG8VxuqhRRVYhW.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:31:36', '2021-06-12 22:40:07', 'yara', 135, '<p>Kiwi Slices</p>', NULL, 4231, 4167, 'Dried Fruit & Dates', 1, 0),
(743, 'YARA', NULL, '_DFRY015', 'products/May2021/vtfoEavZmGUSX4u1uKy9.jpg', NULL, '2.49', '0.25', 1, 1, 0, 0, '2021-05-02 14:34:04', '2021-06-12 22:40:07', 'yara', 135, '<p>Banana Chips</p>', NULL, 4232, 4168, 'Dried Fruit & Dates', 1, 0),
(744, 'YARA', NULL, '_DFRY021', 'products/May2021/ck0oZCFEa6jRWEvLx8fs.jpg', NULL, '2.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:36:08', '2021-06-12 22:40:07', 'yara', 135, '<p>Cranberries</p>', NULL, 4233, 4169, 'Dried Fruit & Dates', 1, 0),
(745, 'YARA', NULL, '_DFRY031', 'products/May2021/kjdiBPw3dILQP7jbbuPR.jpg', NULL, '3.99', '0.5', 1, 1, 0, 0, '2021-05-02 14:37:54', '2021-06-12 22:40:07', 'yara', 135, '<p>Crystalized Ginger Slices</p>', NULL, 4234, 4170, 'Dried Fruit & Dates', 1, 0),
(746, 'YARA', NULL, '_DFRY051', 'products/May2021/WQyxQmPL1Chbwvq5GpZp.jpg', NULL, '3.49', '0.625', 1, 1, 0, 0, '2021-05-02 14:42:09', '2021-06-12 22:40:07', 'yara', 135, '<p>Coconut Shredded Medium</p>', NULL, 4235, 4171, 'Dried Fruit & Dates', 1, 0),
(747, 'Al Sham', NULL, '_FRUS005', 'products/May2021/wGr6AYLflZtqaP02GDHX.jpg', NULL, '4.99', '0.102', 1, 1, 0, 0, '2021-05-02 14:46:10', '2021-06-12 22:40:07', 'al-sham', 135, '<p>Kamaredin Dried Apricot Paste</p>', NULL, 4236, 4172, 'Dried Fruit & Dates', 1, 0),
(748, 'Al Sham', NULL, '_FRUOS007', 'products/May2021/vInmhPEGhX1F9tHMHtxe.jpg', NULL, '26.99', '0', 1, 1, 0, 0, '2021-05-02 14:48:29', '2021-06-12 22:40:07', 'al-sham', 135, '<p>Kamaredin Dried Apricot Paste - 400 gr. X 3 PK.</p>', NULL, 4237, 4173, 'Dried Fruit & Dates', 1, 0),
(749, 'Al Sham', NULL, '_FRUOS009', 'products/May2021/xBErWn595PZYIDmmrHvn.jpg', NULL, '43.99', '0', 1, 1, 0, 0, '2021-05-02 14:50:55', '2021-06-12 22:40:07', 'al-sham', 135, '<p>Kamaredin Dried Apricot Paste - 400 gr. X 6 PK.</p>', NULL, 4238, 4174, 'Dried Fruit & Dates', 1, 0),
(750, 'YARA', NULL, '_NUTAY001', 'products/May2021/ltEZaOxCdACgP7jYEgUH.jpg', NULL, '5.49', '0.5', 1, 1, 0, 0, '2021-05-02 17:56:40', '2021-06-12 22:40:07', 'yara', 136, '<p>Almonds Natural Whole</p>', NULL, 4239, 4175, 'Raw Nuts and Seeds', 1, 0),
(751, 'YARA', NULL, '_NUTAY003', 'products/May2021/tO6EQKhevkG1OI126EEI.jpg', NULL, '5.49', '0.5', 1, 1, 0, 0, '2021-05-02 18:01:10', '2021-06-12 22:40:07', 'yara', 136, '<p>Almonds Blanched Slivered</p>', NULL, 4240, 4176, 'Raw Nuts and Seeds', 1, 0),
(752, 'YARA', NULL, '_NUTAY005', 'products/May2021/PfZZFVBeXbkAley7Ld9t.jpg', NULL, '5.49', '0.5', 1, 1, 0, 0, '2021-05-02 18:02:49', '2021-06-12 22:40:07', 'yara', 136, '<p>Almonds Blanched Whole</p>', NULL, 4241, 4177, 'Raw Nuts and Seeds', 1, 0),
(753, 'YARA', NULL, '_NUTAY007', 'products/May2021/KM6NoXkzXqxHMwGr0Qs7.jpg', NULL, '4.99', '0.375', 1, 1, 0, 0, '2021-05-02 18:04:13', '2021-06-12 22:40:07', 'yara', 136, '<p>Almonds Blanched Sliced</p>', NULL, 4242, 4178, 'Raw Nuts and Seeds', 1, 0),
(754, 'YARA', NULL, '_NUTPY011', 'products/May2021/UP3JdCfsunkXhL1N4hoB.jpg', NULL, '9.99', '0.437', 1, 0, 0, 0, '2021-05-02 20:12:53', '2021-06-12 22:40:07', 'yara', 136, '<p>Raw California Pistachios</p>', NULL, 4243, 4179, 'Raw Nuts and Seeds', 1, 0),
(756, 'YARA', NULL, '_NUTPY021', 'products/May2021/Ms7pD7qFydsJJe5FyeWa.jpg', NULL, '9.99', '0.25', 1, 1, 0, 0, '2021-05-02 20:44:45', '2021-06-12 22:40:07', 'yara', 136, '<p>Pine Nuts Chinese Large</p>', NULL, 4244, 4180, 'Raw Nuts and Seeds', 1, 0),
(757, 'YARA', NULL, '_NUTPY051', 'products/May2021/gZHmBoc4fR7qSOJyHrnG.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-02 20:47:06', '2021-06-12 22:40:07', 'yara', 136, '<p>Pecans Halves</p>', NULL, 4245, 4181, 'Raw Nuts and Seeds', 1, 0),
(758, 'YARA', NULL, '_NUTWY001', 'products/May2021/CpCTSOUwPW9teeRjOEvk.jpg', NULL, '6.99', '0.5', 1, 1, 0, 0, '2021-05-02 20:50:01', '2021-06-12 22:40:07', 'yara', 136, '<p>Walnuts Shelled</p>', NULL, 4246, 4182, 'Raw Nuts and Seeds', 1, 0),
(759, 'YARA', NULL, '_NUTCS021', 'products/May2021/fopTrbfbWLlEZyDYLyY9.jpg', NULL, '5.99', '0.35', 1, 1, 0, 0, '2021-05-02 20:52:12', '2021-06-12 22:40:07', 'yara', 136, '<p>Cashews</p>', NULL, 4247, 4183, 'Raw Nuts and Seeds', 1, 0),
(760, 'YARA', NULL, '_DFRY111', 'products/May2021/RC8guk0nbqJqum7iQyOR.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-02 20:57:59', '2021-06-12 22:40:07', 'yara', 135, '<p>Deglet Noor Pitted Dates</p>', NULL, 4248, 4184, 'Dried Fruit & Dates', 1, 0),
(761, 'YARA', NULL, '_DFRY113', 'products/May2021/Nz77OgHlWCtqXfXvxQvi.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-02 20:59:00', '2021-06-12 22:40:07', 'yara', 135, '<p>Medjool Dates</p>', NULL, 4249, 4185, 'Dried Fruit & Dates', 1, 0),
(762, 'YARA', NULL, '_DFRY121', 'products/May2021/VIBL7Dz11gklq6sK9vBL.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-02 21:00:44', '2021-06-12 22:40:07', 'yara', 135, '<p>Pitted Pressed Dates</p>', NULL, 4250, 4186, 'Dried Fruit & Dates', 1, 0),
(763, 'SAUDI', NULL, '_DFRS001', 'products/May2021/N72YDJQ98EQkYYRqDuyb.jpg', NULL, '7.99', '2.2', 1, 1, 0, 0, '2021-05-02 21:04:57', '2021-06-12 22:40:07', 'saudi', 135, '<p>Sufri Dates</p>', NULL, 4251, 4187, 'Dried Fruit & Dates', 1, 0),
(764, 'KRINOS', NULL, '_DFRF001', 'products/May2021/CYFF0do5HV5KrSsXDzJ3.jpg', NULL, '5.99', '0.875', 1, 1, 0, 0, '2021-05-02 21:09:24', '2021-06-12 22:40:07', 'krinos', 135, '<p>Kalamata Greek Figs</p>', NULL, 4252, 4188, 'Dried Fruit & Dates', 1, 0),
(765, 'KRINOS', NULL, '_DFRF001OF', 'products/May2021/X0vP7I8etlTXqFs2nr4q.jpg', NULL, '27.99', '0', 1, 1, 0, 0, '2021-05-02 21:11:34', '2021-06-12 22:40:07', 'krinos', 135, '<p>Kalamata Greek Figs - 14 oz - 3 Pcs</p>', NULL, 4253, 4189, 'Dried Fruit & Dates', 1, 0),
(766, 'LAODICEA', NULL, '_DFRL005', 'products/May2021/Bv0wlE8jcIDkarS0l3cP.jpg', NULL, '3.75', '1.1', 1, 1, 0, 0, '2021-05-02 21:13:48', '2021-06-12 22:40:07', 'laodicea', 135, '<p>Pitted Dates, Pressed</p>', NULL, 4254, 4190, 'Dried Fruit & Dates', 1, 0),
(767, 'CALIFORNIA', NULL, '_DFRD003', 'products/May2021/w4l3eR3SuxapfIVwkGMN.jpg', NULL, '29.99', '5', 1, 1, 0, 0, '2021-05-02 21:16:48', '2021-06-12 22:40:07', 'california', 135, '<p>Medjool Dates Large</p>', NULL, 4255, 4191, 'Dried Fruit & Dates', 1, 0),
(768, 'TUNISIAN', NULL, '_DFRD023', 'products/May2021/VIkmiawVQGEYxm1vNj5U.jpg', NULL, '49.99', '11', 1, 1, 0, 0, '2021-05-02 21:18:35', '2021-06-12 22:40:07', 'tunisian', 135, '<p>Pitted Dates</p>', NULL, 4256, 4192, 'Dried Fruit & Dates', 1, 0),
(769, 'Medjool', NULL, '_DFRD002', 'products/May2021/vV3tZrenMZQYGB2JQTId.jpg', NULL, '55.99', '11', 1, 1, 0, 0, '2021-05-02 21:20:54', '2021-06-12 22:40:07', 'medjool', 135, '<p>Medjool Dates</p>', NULL, 4257, 4193, 'Dried Fruit & Dates', 1, 0),
(770, '-', NULL, '_TOM001', 'products/May2021/bjbblwWj6I37Ld8D4Dv8.jpg', NULL, '0.00', '-', 1, 0, 0, 0, '2021-05-02 22:05:00', '2021-06-12 22:40:07', '-', 109, '<p>Cherry Tomato</p>\r\n<p><strong><span style=\"color: #ff0000;\">Out of Stock</span></strong></p>', NULL, 4258, 4194, 'Fresh Vegetables', 1, 0),
(771, '-', NULL, '_TOM003', 'products/May2021/29Tz2h0uK8HjhL8wbpYE.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:06:00', '2021-06-12 22:40:07', '-', 109, '<p>Plum Tomato (RomaTomato)</p>\r\n<p><span style=\"color: #ff0000;\"><strong>Out of Stock</strong></span></p>', NULL, 4259, 4195, 'Fresh Vegetables', 1, 0),
(772, '-', NULL, '_PEP001', 'products/May2021/T1Vvd3SgLcD4u2RFe6bo.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:07:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Sweet Green</p>\r\n<p><span style=\"color: #ff0000;\"><strong>Out of Stock</strong></span></p>', NULL, 4260, 4196, 'Fresh Vegetables', 1, 0),
(773, '-', NULL, '_PEP003', 'products/May2021/Po1bEjRfiUtJ8kxzKxPT.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:08:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Chili Green</p>\r\n<p><span style=\"color: #ff0000;\"><strong>Out of Stock</strong></span></p>', NULL, 4261, 4197, 'Fresh Vegetables', 1, 0),
(774, '-', NULL, '_PEP005', 'products/May2021/p6wqO2VXLfSHR9wQvq71.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:09:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Sweet Orange</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4262, 4198, 'Fresh Vegetables', 1, 0),
(775, '-', NULL, '_PEP007', 'products/May2021/VTs1NYYHFqhLOHogfeTZ.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:10:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Sweet Yellow</p>\r\n<p><span style=\"color: #ff0000;\"><strong>Out of stock</strong></span></p>', NULL, 4263, 4199, 'Fresh Vegetables', 1, 0),
(776, '-', NULL, '_PEP011', 'products/May2021/zoTklnAz8lCRK8asPHmy.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:12:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Sweet Red</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4264, 4200, 'Fresh Vegetables', 1, 0),
(777, '-', NULL, '_PEP009', 'products/May2021/jn8XcGv3UKLzd4QW2C0R.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:12:00', '2021-06-12 22:40:07', '-', 109, '<p>Pepper, Chili Red</p>\r\n<p><strong><span style=\"color: #ff0000;\">Out of stock</span></strong></p>', NULL, 4265, 4201, 'Fresh Vegetables', 1, 0),
(778, '-', NULL, '_EGG001', 'products/May2021/nZaX6Fg8QwKIjRIreDzw.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:13:00', '2021-06-12 22:40:07', '-', 109, '<p>Graffiti Eggplant</p>\r\n<p><span style=\"color: #ff0000;\"><strong>out of stock</strong></span></p>', NULL, 4266, 4202, 'Fresh Vegetables', 1, 0),
(779, '-', NULL, '_EGG003', 'products/May2021/AZV2kJ0UBbs6PoGMHykW.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:15:00', '2021-06-12 22:40:07', '-', 109, '<p>Italian Eggplant</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4267, 4203, 'Fresh Vegetables', 1, 0),
(780, '-', NULL, '_EGG005', 'products/May2021/R4GhfPFC9Ej1SjD8dxWP.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:20:00', '2021-06-12 22:40:07', '-', 109, '<p>Chinese Eggplant</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4268, 4204, 'Fresh Vegetables', 1, 0),
(781, '-', NULL, '_EGG007', 'products/May2021/fThPS6o2dqQx1RnRKOmC.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:22:00', '2021-06-12 22:40:07', '-', 109, '<p>Indian Eggplant</p>\r\n<p><span style=\"color: #ff0000;\"><strong>out of stock</strong></span></p>', NULL, 4269, 4205, 'Fresh Vegetables', 1, 0),
(782, '-', NULL, '_MUS001', 'products/May2021/zIJEtplwQWUATzUD3hrw.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:24:00', '2021-06-12 22:40:07', '-', 109, '<p>Mushroom</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4270, 4206, 'Fresh Vegetables', 1, 0),
(783, '-', NULL, '_MUS003', 'products/May2021/Qbdexxo7mZnilISUgEOj.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:25:00', '2021-06-12 22:40:07', '-', 109, '<p>Mushrooms, Sliced</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4271, 4207, 'Fresh Vegetables', 1, 0),
(784, '-', NULL, '_PAR001', 'products/May2021/7XWl4SNE1uXKsYf8n3NI.jpg', NULL, '0.00', '0', 1, 0, 0, 0, '2021-05-02 22:26:00', '2021-06-12 22:40:07', '-', 109, '<p>Parsley Italian</p>\r\n<p><strong><span style=\"color: #ff0000;\">out of stock</span></strong></p>', NULL, 4272, 4208, 'Fresh Vegetables', 1, 0),
(785, '-', NULL, '_PAR003', 'products/May2021/XusZFGogMgv96c7karGn.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:27:56', '2021-06-12 22:40:07', '-', 109, '<p>Parsley-Curled</p>', NULL, 4273, 4209, 'Fresh Vegetables', 1, 0),
(786, '-', NULL, '_CORI001', 'products/May2021/xVeUhbQXsz4elW7Zo1XN.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:29:13', '2021-06-12 22:40:07', '-', 109, '<p>Coriander</p>', NULL, 4274, 4210, 'Fresh Vegetables', 1, 0),
(787, '-', NULL, '_MIN001', 'products/May2021/uorw79Axz3wkkpI4T9J6.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:30:13', '2021-06-12 22:40:07', '-', 109, '<p>Mint</p>', NULL, 4275, 4211, 'Fresh Vegetables', 1, 0),
(788, '-', NULL, '_CAB001', 'products/May2021/Uag3LSdK2IKiiHDZatUV.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:31:16', '2021-06-12 22:40:07', '-', 109, '<p>Cabbage</p>', NULL, 4276, 4212, 'Fresh Vegetables', 1, 0),
(789, '-', NULL, '_CAB003', 'products/May2021/WwmqtRxsxnA3AFt1VgyF.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:32:18', '2021-06-12 22:40:07', '-', 109, '<p>Red Cabbage</p>', NULL, 4277, 4213, 'Fresh Vegetables', 1, 0),
(790, '-', NULL, '_CAU001', 'products/May2021/rQpC3Lfg7cxP0BQMrCsN.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:33:13', '2021-06-12 22:40:07', '-', 109, '<p>Cauliflower</p>', NULL, 4278, 4214, 'Fresh Vegetables', 1, 0),
(791, '-', NULL, '_BRO001', 'products/May2021/r02TBiDt6m7zeavg7IRG.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:34:16', '2021-06-12 22:40:07', '-', 109, '<p>Broccoli</p>', NULL, 4279, 4215, 'Fresh Vegetables', 1, 0),
(792, '-', NULL, '_CUC001', 'products/May2021/6MszVjyBOZS3wHdlNjxl.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:35:17', '2021-06-12 22:40:07', '-', 109, '<p>Persian Cucumber</p>', NULL, 4280, 4216, 'Fresh Vegetables', 1, 0),
(793, '-', NULL, '_CUC003', 'products/May2021/faq8ridHLSCA3nBq89nK.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:36:29', '2021-06-12 22:40:07', '-', 109, '<p>Kirby Cucumber</p>', NULL, 4281, 4217, 'Fresh Vegetables', 1, 0),
(794, '-', NULL, '_CUC005', 'products/May2021/Zfm5KYi5XHjEjC34XMyr.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:37:29', '2021-06-12 22:40:07', '-', 109, '<p>English Cucumber</p>', NULL, 4282, 4218, 'Fresh Vegetables', 1, 0),
(795, '-', NULL, '_ZUC003', 'products/May2021/IZX9YRbkGCCK0H4YQfJ4.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:38:43', '2021-06-12 22:40:07', '-', 109, '<p>Zucchini</p>', NULL, 4283, 4219, 'Fresh Vegetables', 1, 0),
(796, '-', NULL, '_ZUC005', 'products/May2021/jMePWBFM55PWI9ZlGT6h.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:39:50', '2021-06-12 22:40:07', '-', 109, '<p>Zucchini (Cousa Squash)</p>', NULL, 4284, 4220, 'Fresh Vegetables', 1, 0),
(797, '-', NULL, '_CAR001', 'products/May2021/aB1q9an4ABrg25gDd1gz.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:51:51', '2021-06-12 22:40:07', '-', 109, '<p>Carrot</p>', NULL, 4285, 4221, 'Fresh Vegetables', 1, 0),
(798, '-', NULL, '_COR001', 'products/May2021/pIP7MBlDnZ0C0KXI5UIT.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:52:54', '2021-06-12 22:40:07', '-', 109, '<p>Corn</p>', NULL, 4286, 4222, 'Fresh Vegetables', 1, 0),
(799, '-', NULL, '_LET001', 'products/May2021/2Ff5ij8I2NyjJGdndP3v.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:53:55', '2021-06-12 22:40:07', '-', 109, '<p>Romaine Lettuce</p>', NULL, 4287, 4223, 'Fresh Vegetables', 1, 0),
(800, '-', NULL, '_LET003', 'products/May2021/pnKKzyiGoL0UFX80leNq.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:55:15', '2021-06-12 22:40:07', '-', 109, '<p>Leaf Lettuce</p>', NULL, 4288, 4224, 'Fresh Vegetables', 1, 0),
(801, '-', NULL, '_ONI001', 'products/May2021/Uvg01M2M9cFXCd0eXVIV.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:56:12', '2021-06-12 22:40:07', '-', 109, '<p>Onion, Yellow</p>', NULL, 4289, 4225, 'Fresh Vegetables', 1, 0),
(802, '-', NULL, '_ONI003', 'products/May2021/dWJgQJOriEYosmwKeuNx.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:57:20', '2021-06-12 22:40:07', '-', 109, '<p>Onion, Sweet</p>', NULL, 4290, 4226, 'Fresh Vegetables', 1, 0),
(803, '-', NULL, '_POT001', 'products/May2021/3GQMDzNy3Vk85493sPd4.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:58:16', '2021-06-12 22:40:07', '-', 109, '<p>Potato</p>', NULL, 4291, 4227, 'Fresh Vegetables', 1, 0),
(804, '-', NULL, '_POT003', 'products/May2021/rssdzZfpaWzRZdKYT6SL.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 22:59:07', '2021-06-12 22:40:07', '-', 109, '<p>Sweet Potato</p>', NULL, 4292, 4228, 'Fresh Vegetables', 1, 0),
(805, '-', NULL, '_LEM001', 'products/May2021/k7iv7jMSN4TB95WSKEyP.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:00:07', '2021-06-12 22:40:07', '-', 109, '<p>Lemon</p>', NULL, 4293, 4229, 'Fresh Vegetables', 1, 0),
(806, '-', NULL, '_LEM009', 'products/May2021/HQg9h3Whn3UUor964o8s.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:02:32', '2021-06-12 22:40:07', '-', 109, '<p>Lemon Sweet</p>', NULL, 4294, 4230, 'Fresh Vegetables', 1, 0),
(807, '-', NULL, '_PUM001', 'products/May2021/jMEdt01OcyPlCgRNO6ma.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:03:35', '2021-06-12 22:40:07', '-', 109, '<p>Pumpkin</p>', NULL, 4295, 4231, 'Fresh Vegetables', 1, 0),
(808, '-', NULL, '_GRL001', 'products/May2021/zGnzgcMSldW5PTgbzgnh.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:04:52', '2021-06-12 22:40:07', '-', 109, '<p>Grape Vine Leaves.(Seasons)</p>', NULL, 4296, 4232, 'Fresh Vegetables', 1, 0),
(809, '-', NULL, '_ASP001', 'products/May2021/gJJjnOXIHZtsrkpI47pF.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:05:50', '2021-06-12 22:40:07', '-', 109, '<p>Asparagus</p>', NULL, 4297, 4233, 'Fresh Vegetables', 1, 0),
(810, '-', NULL, '_RAD001', 'products/May2021/54hxQiIvD4j2NuxnhbRb.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:06:44', '2021-06-12 22:40:07', '-', 109, '<p>Radish</p>', NULL, 4298, 4234, 'Fresh Vegetables', 1, 0),
(811, '-', NULL, '_BEA003', 'products/May2021/sMDir6wfDgO07xg9SUYA.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:07:42', '2021-06-12 22:40:07', '-', 109, '<p>Bean String</p>', NULL, 4299, 4235, 'Fresh Vegetables', 1, 0),
(812, '-', NULL, '_PEA001', 'products/May2021/O6HX7m2tGUR1m7L7eQyx.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:08:42', '2021-06-12 22:40:07', '-', 109, '<p>Green Beans</p>', NULL, 4300, 4236, 'Fresh Vegetables', 1, 0),
(813, '-', NULL, '_OKR001', 'products/May2021/LGeYUzY2filOUtFinhKY.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:09:49', '2021-06-12 22:40:07', '-', 109, '<p>Okra</p>', NULL, 4301, 4237, 'Fresh Vegetables', 1, 0),
(814, '-', NULL, '_LEE003', 'products/May2021/00eSM0wTZdr6KLeK0xU6.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:10:49', '2021-06-12 22:40:07', '-', 109, '<p>Leek Holland</p>', NULL, 4302, 4238, 'Fresh Vegetables', 1, 0),
(817, '-', NULL, '_SPI001', 'products/May2021/M1FtAIrUzK0aNCm0wrtm.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:13:59', '2021-06-12 22:40:07', '-', 109, '<p>Spinach Bushel</p>', NULL, 4304, 4240, 'Fresh Vegetables', 1, 0),
(818, 'LAODICEA', NULL, '_GARL073', 'products/May2021/WftmEvMiWg6PlxrIrC43.jpg', NULL, '8.99', '2', 1, 1, 0, 0, '2021-05-02 23:19:11', '2021-06-12 22:40:07', 'laodicea', 109, '<p>Chinese Peeled Garlic</p>', NULL, 4305, 4241, 'Fresh Vegetables', 1, 0),
(819, 'SUN of ITALY', NULL, '_PISU161', 'products/May2021/GUMwe9VEvzWj3VC2W029.jpg', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-02 23:20:51', '2021-06-12 22:40:07', 'sun-of-italy', 109, '<p>Potato Gnocchi</p>', NULL, 4306, 4242, 'Fresh Vegetables', 1, 0),
(820, 'Andy Boy', NULL, '_LETA000', 'products/May2021/XcxpTgkvfoJaoxqXpt4J.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-02 23:23:48', '2021-06-12 22:40:07', 'andy-boy', 109, '<p>Romaine Lettuce Hearts - 6pk</p>', NULL, 4307, 4243, 'Fresh Vegetables', 1, 0),
(821, 'Duracell', NULL, '_HOED001', 'products/May2021/y9c1PKKx0qpcvSJqXWNL.jpg', NULL, '29.99', '0', 1, 1, 0, 0, '2021-05-02 23:50:13', '2021-06-12 22:40:07', 'duracell', 114, '<p>9V Alkaline Batteries - 8-Count</p>', NULL, 4308, 4244, 'Electrical Accessories', 1, 0),
(822, 'Duracell', NULL, '_HOED002', 'products/May2021/2ZLGWTQcmnyha8ZmKfvd.jpg', NULL, '29.99', '0', 1, 1, 0, 0, '2021-05-02 23:51:32', '2021-06-12 22:40:07', 'duracell', 114, '<p>Coppertop Alkaline Batteries AA - 48 PK</p>', NULL, 4309, 4245, 'Electrical Accessories', 1, 0),
(827, 'Windex', NULL, '_HODW001', 'products/May2021/yRenytNLSKaI5iDAU0YA.jpg', NULL, '19.99', '0', 1, 1, 1, 0, '2021-05-03 00:01:00', '2021-06-12 22:40:07', 'windex', 112, '<p>Original Glass Cleaner, 32 fl Oz &amp; 176 fl Oz</p>', NULL, 4311, 4247, 'Detergents', 1, 0),
(828, 'Palmolive', NULL, '_HODP001', 'products/May2021/G0NXpHDA20mJUiWHKw6Q.jpg', NULL, '9.99', '0', 1, 1, 1, 0, '2021-05-03 00:03:00', '2021-06-12 22:40:07', 'palmolive', 112, '<p>Ultra Strength Dish Liquid Max Strength, 3 LT.</p>', NULL, 4312, 4248, 'Detergents', 1, 0),
(832, '-', NULL, '_ORA007', 'products/May2021/xNWseBnvRPRLPbO4cwvC.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-03 17:20:33', '2021-06-12 22:40:07', '-', 111, '<p>Orange</p>', NULL, 4313, 4249, 'Fresh Fruits', 1, 0),
(833, '-', NULL, '_PIN001', 'products/May2021/f4UdB1BQ4DlnWNKUO0f6.jpg', NULL, '0.00', '0', 1, 1, 0, 0, '2021-05-03 17:21:55', '2021-06-12 22:40:07', '-', 111, '<p>Pineapple, Golden Ripe</p>', NULL, 4314, 4250, 'Fresh Fruits', 1, 0),
(835, 'APOLLO', NULL, '_APO015', 'products/May2021/BJKObAACqhe8wYRcjPQo.jpg', NULL, '8.99', '0.875', 1, 1, 0, 0, '2021-05-03 17:37:08', '2021-06-12 22:40:07', 'apollo', 82, '<p>Spiral Cheese Pie</p>', NULL, 4315, 4251, 'Pie and Pastry Dough', 1, 0),
(836, 'APOLLO', NULL, '_APO013', 'products/May2021/YAaCwca4FaSyOybqHCuE.jpg', NULL, '8.99', '0.875', 1, 1, 0, 0, '2021-05-03 17:38:42', '2021-06-12 22:40:07', 'apollo', 82, '<p>Spiral Spinach &amp; Cheese Pie&nbsp;</p>', NULL, 4316, 4252, 'Pie and Pastry Dough', 1, 0),
(837, 'IONIKI', NULL, '_PIEI011', 'products/May2021/hsngwzYCn0uCJi1eMy2J.jpg', NULL, '9.99', '1', 1, 1, 0, 0, '2021-05-03 17:41:01', '2021-06-12 22:40:07', 'ioniki', 82, '<p>Feta Cheese Spiral Pie&nbsp;</p>', NULL, 4317, 4253, 'Pie and Pastry Dough', 1, 0),
(838, 'IONIKI', NULL, '_PIEI013', 'products/May2021/gdkvg3Jx3aDwD8QZ92xa.jpg', NULL, '9.99', '1', 1, 1, 0, 0, '2021-05-03 17:42:33', '2021-06-12 22:40:07', 'ioniki', 82, '<p>&nbsp;Feta Cheese &amp; Spinach Spiral Pie</p>', NULL, 4318, 4254, 'Pie and Pastry Dough', 1, 0);
INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(839, 'APOLLO', NULL, '_APO001', 'products/May2021/udOuLF39BGWvNmSSWsgl.png', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-03 17:44:52', '2021-06-12 22:40:07', 'apollo', 82, '<p>Fillo Dough # 4 Thick</p>', NULL, 4319, 4255, 'Pie and Pastry Dough', 1, 0),
(840, 'APOLLO', NULL, '_APO003', 'products/May2021/7iGEE2iobCPNNDKVPAQy.png', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-03 17:45:59', '2021-06-12 22:40:07', 'apollo', 82, '<p>Fillo Dough # 7 Thick</p>', NULL, 4320, 4256, 'Pie and Pastry Dough', 1, 0),
(841, 'APOLLO', NULL, '_APO005', 'products/May2021/ya1fn2RD5j4DVknFz4tW.png', NULL, '2.99', '1', 1, 1, 0, 0, '2021-05-03 17:47:05', '2021-06-12 22:40:07', 'apollo', 82, '<p>Fillo Dough # 10 Extra Thick</p>', NULL, 4321, 4257, 'Pie and Pastry Dough', 1, 0),
(842, 'Omit - Yucka', NULL, '_APO203', 'products/May2021/v6WSOFou36Ey25w6LILW.jpg', NULL, '3.49', '1.125', 1, 1, 0, 0, '2021-05-03 17:48:57', '2021-06-12 22:40:07', 'omit-yucka', 82, '<p>Pastry Leaves</p>', NULL, 4322, 4258, 'Pie and Pastry Dough', 1, 0),
(843, 'Omit - Yucka', NULL, '_APO205', 'products/May2021/lauvO7Br0GQZ1y7ldXcw.jpg', NULL, '3.49', '0.875', 1, 1, 0, 0, '2021-05-03 17:53:36', '2021-06-12 22:40:07', 'omit-yucka', 82, '<p>Pastry Leaves</p>', NULL, 4323, 4259, 'Pie and Pastry Dough', 1, 0),
(844, 'APOLLO', NULL, '_APO007', 'products/May2021/2oLqfg4tao3C6V6xYonK.jpg', NULL, '3.99', '1', 1, 1, 0, 0, '2021-05-03 17:55:55', '2021-06-12 22:40:07', 'apollo', 82, '<p>Kataifi Dough</p>', NULL, 4324, 4260, 'Pie and Pastry Dough', 1, 0),
(845, 'APOLLO', NULL, '_APO011', 'products/May2021/NV2Cobl3FI2wI5jXzb94.jpg', NULL, '6.99', '0.75', 1, 1, 0, 0, '2021-05-03 17:57:45', '2021-06-12 22:40:07', 'apollo', 82, '<p>Tiropita - Cheese Pie</p>', NULL, 4325, 4261, 'Pie and Pastry Dough', 1, 0),
(846, 'APOLLO', NULL, '_APO009', 'products/May2021/AGPUcdPchyumjAM7og1u.jpg', NULL, '6.99', '0.75', 1, 1, 0, 0, '2021-05-03 17:59:08', '2021-06-12 22:40:07', 'apollo', 82, '<p>Spanakopita - Spinach &amp; Cheese Pie</p>', NULL, 4326, 4262, 'Pie and Pastry Dough', 1, 0),
(847, 'ATHENS', NULL, '_APO031', 'products/May2021/LmKNRA7uzp6q3aMLaHON.jpg', NULL, '2.99', '0.13', 1, 1, 0, 0, '2021-05-03 18:01:08', '2021-06-12 22:40:07', 'athens', 82, '<p>Mini Fillo Shells</p>', NULL, 4327, 4263, 'Pie and Pastry Dough', 1, 0),
(848, 'SHAHIA', NULL, '_APO105', 'products/May2021/I2d34ajc2GO6isz4Pv3Y.jpg', NULL, '2.99', '0.875', 1, 1, 0, 0, '2021-05-03 18:03:06', '2021-06-12 22:40:07', 'shahia', 82, '<p>Paratha Plain - Fateer Meshaltit Halal</p>', NULL, 4328, 4264, 'Pie and Pastry Dough', 1, 0),
(849, 'SHAHIA', NULL, '_APO103', 'products/May2021/kEmGpaXj1lTZN9bW3k7i.jpg', NULL, '2.49', '0.6', 1, 1, 0, 0, '2021-05-03 18:04:35', '2021-06-12 22:40:07', 'shahia', 82, '<p>Spring Roll Pastry 40-20 Sheets</p>', NULL, 4329, 4265, 'Pie and Pastry Dough', 1, 0),
(850, 'SHAHIA', NULL, '_APO101', 'products/May2021/JYtWbWH7arvyNZh7ctz3.jpg', NULL, '1.99', '0.4', 1, 1, 0, 0, '2021-05-03 18:06:05', '2021-06-12 22:40:07', 'shahia', 82, '<p>Samosa Pastry 60-30 Sheets</p>', NULL, 4330, 4266, 'Pie and Pastry Dough', 1, 0),
(851, 'IONIKI', NULL, '_PIEI004', 'products/May2021/MhxyRdAenY6ZRPYJ6TIc.jpg', NULL, '8.99', '1.102', 1, 1, 0, 0, '2021-05-03 18:09:41', '2021-06-12 22:40:07', 'ioniki', 82, '<p>Mini Triangle with Feta Cheese &amp; Spinach</p>', NULL, 4331, 4267, 'Pie and Pastry Dough', 1, 0),
(852, 'IONIKI', NULL, '_PIEI002', 'products/May2021/xyxE4GxOXfZ2RrJxLXyO.jpg', NULL, '7.99', '1.102', 1, 1, 0, 0, '2021-05-03 18:11:24', '2021-06-12 22:40:07', 'ioniki', 82, '<p>Puff Pastry Minis with Feta Cheese</p>', NULL, 4332, 4268, 'Pie and Pastry Dough', 1, 0),
(853, 'IONIKI', NULL, '_PIEI111', 'products/May2021/Qpl7HEW6f84WxMGS6QfP.jpg', NULL, '8.99', '1.102', 1, 1, 0, 0, '2021-05-03 18:12:56', '2021-06-12 22:40:07', 'ioniki', 82, '<p>Greek Feta Puff Pastries - 16 Pcs.</p>', NULL, 4333, 4269, 'Pie and Pastry Dough', 1, 0),
(854, 'YARA', NULL, '_YRF005', 'products/May2021/KhwcEuLC7Pm3ddWbGgTl.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 18:26:00', '2021-06-12 22:40:07', 'yara', 88, '<p>Rice Flour</p>\r\n<p>(Container or Pack)</p>', NULL, 4334, 4270, 'Rice', 1, 0),
(855, 'YARA', NULL, '_RCY009', 'products/May2021/mwsOTpXtngspqtVJmXFp.png', NULL, '6.49', '1.75', 1, 1, 0, 0, '2021-05-03 18:28:00', '2021-06-12 22:40:07', 'yara', 88, '<p>Long Grain Brown Rice</p>\r\n<p>(Container Or Pack)</p>\r\n<p>&nbsp;</p>', NULL, 4335, 4271, 'Rice', 1, 0),
(856, 'YARA', NULL, '_RCY001', 'products/May2021/rhubVOz9vyg4XRQBzXrO.png', NULL, '4.99', '1.75', 1, 1, 0, 0, '2021-05-03 18:35:00', '2021-06-12 22:40:07', 'yara', 88, '<p>Sela Basmati Rice - Long Grain - (Container Or Pack)</p>', NULL, 4336, 4272, 'Rice', 1, 0),
(858, 'YARA', NULL, '_RCY003', 'products/May2021/ksnm4HH0ii8umNK3yRn4.png', NULL, '4.99', '1.75', 1, 1, 0, 0, '2021-05-03 18:42:39', '2021-06-12 22:40:07', 'yara', 88, '<p>Brown Basmati Rice - Whole Grain</p>\r\n<p>(Container Or Pack)</p>', NULL, 4337, 4273, 'Rice', 1, 0),
(859, 'YARA', NULL, '_RCY005', 'products/May2021/JbA4oUL4NK9fc0CyHBel.png', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 18:44:34', '2021-06-12 22:40:07', 'yara', 88, '<p>Egyptian Rice - Medium Grain</p>\r\n<p>(Container Or Pack)</p>', NULL, 4338, 4274, 'Rice', 1, 0),
(860, 'YARA', NULL, '_RCY007', 'products/May2021/jhI0YjSDy1KLrLjSnGqB.png', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 18:47:16', '2021-06-12 22:40:07', 'yara', 88, '<p>Jasmine Rice - Long Grain</p>\r\n<p>(Container Or Pack)</p>', NULL, 4339, 4275, 'Rice', 1, 0),
(861, 'CHEF\'S SECRET', NULL, '_RCC011', 'products/May2021/9FZ3HcKaZujZ7VHJ7o6K.jpg', NULL, '10.99', '10', 1, 1, 0, 0, '2021-05-03 18:49:06', '2021-06-12 22:40:07', 'chef-s-secret', 88, '<p>Sella Basmati Rice - Long Grain</p>', NULL, 4340, 4276, 'Rice', 1, 0),
(862, 'CHEF\'S SECRET', NULL, '_RCC021', 'products/May2021/eOJFiQYCsm77gNVxzbJ4.jpg', NULL, '16.99', '10', 1, 1, 0, 0, '2021-05-03 18:50:43', '2021-06-12 22:40:07', 'chef-s-secret', 88, '<p>Brown Basmati Rice - Whole Grain</p>', NULL, 4341, 4277, 'Rice', 1, 0),
(863, 'YARA', NULL, '_GRBY001', 'products/May2021/tFIvkRDxVNTrdI2AdNOw.jpg', NULL, '3.99', '1.75', 1, 1, 0, 0, '2021-05-03 18:57:03', '2021-06-12 22:40:07', 'yara', 89, '<p>Fava Beans - Mini Whole</p>\r\n<p>(Container Or Pack)</p>', NULL, 4342, 4278, 'Beans & Peas', 1, 0),
(864, 'YARA', NULL, '_GRBY003', 'products/May2021/KehKsHzy43d5kyoGpWDN.jpg', NULL, '3.99', '1.75', 1, 1, 0, 0, '2021-05-03 18:58:35', '2021-06-12 22:40:07', 'yara', 89, '<p>Fava Beans -Mini Split</p>\r\n<p>(Container Or Pack)</p>', NULL, 4343, 4279, 'Beans & Peas', 1, 0),
(865, 'YARA', NULL, '_GRBY005', 'products/May2021/FipHh3o3Yqz0m1Jv1EjL.jpg', NULL, '5.99', '1.25', 1, 1, 0, 0, '2021-05-03 19:00:08', '2021-06-12 22:40:07', 'yara', 89, '<p>Fava Beans - Large Whole</p>\r\n<p>(Container Or Pack)</p>', NULL, 4344, 4280, 'Beans & Peas', 1, 0),
(866, 'YARA', NULL, '_GRBY007', 'products/May2021/q3CnGHFYGyFYJRcem2LE.jpg', NULL, '5.99', '1.25', 1, 1, 0, 0, '2021-05-03 19:06:19', '2021-06-12 22:40:07', 'yara', 89, '<p>Fava Beans - Large Whole Split</p>\r\n<p>(Container Or Pack)</p>', NULL, 4345, 4281, 'Beans & Peas', 1, 0),
(867, 'YARA', NULL, '_GRBY009', 'products/May2021/U598Dups4sZU4rjeWzxP.jpg', NULL, '5.49', '1.25', 1, 1, 0, 0, '2021-05-03 19:07:00', '2021-06-12 22:40:07', 'yara', 89, '<p>Great Northern Beans</p>\r\n<p>(Container Or Pack)</p>', NULL, 4346, 4282, 'Beans & Peas', 1, 0),
(868, 'YARA', NULL, '_0GRBY017', 'products/May2021/V9CK0U1jzz2Jqa69Cm1l.jpg', NULL, '5.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:11:03', '2021-06-12 22:40:07', 'yara', 89, '<p>Lupini Beans - Large</p>\r\n<p>(Container Or Pack)</p>', NULL, 4347, 4283, 'Beans & Peas', 1, 0),
(869, 'YARA', NULL, '_GRBY019', 'products/May2021/5WJOxnTbXPH4Q36xHIou.jpg', NULL, '5.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:13:00', '2021-06-12 22:40:07', 'yara', 89, '<p>Lima Beans - Large</p>\r\n<p>(Container Or Pack)</p>', NULL, 4348, 4284, 'Beans & Peas', 1, 0),
(870, 'YARA', NULL, '_GRPY001', 'products/May2021/TcTrCDbtaIzPdTvSRYPX.jpg', NULL, '3.99', '1.75', 1, 1, 0, 0, '2021-05-03 19:16:15', '2021-06-12 22:40:07', 'yara', 89, '<p>Chick Peas - Garbanzos Jumbo</p>\r\n<p>(Container Or Pack)</p>', NULL, 4349, 4285, 'Beans & Peas', 1, 0),
(871, 'YARA', NULL, '_GRPY003', 'products/May2021/JVbmGJFm2AGXrnh4yCoJ.jpg', NULL, '5.99', '1.75', 1, 1, 0, 0, '2021-05-03 19:19:00', '2021-06-12 22:40:07', 'yara', 89, '<p>Black Eye Peas</p>\r\n<p>(Container Or Pack)</p>', NULL, 4350, 4286, 'Beans & Peas', 1, 0),
(872, 'YARA', NULL, '_GRPY011', 'products/May2021/HYdjRTj8WBM0A8veOZoZ.jpg', NULL, '3.99', '1.75', 1, 1, 0, 0, '2021-05-03 19:25:40', '2021-06-12 22:40:07', 'yara', 89, '<p>Yellow Split Peas</p>\r\n<p>(Container Or Pack)</p>', NULL, 4351, 4287, 'Beans & Peas', 1, 0),
(873, 'YARA', NULL, '_GRPY013', 'products/May2021/AQ9rjYyNicaNYlWlT2C3.jpg', NULL, '3.99', '1.75', 1, 1, 0, 0, '2021-05-03 19:30:40', '2021-06-12 22:40:07', 'yara', 89, '<p>Green Split Peas</p>\r\n<p>(Container Or Pack)</p>', NULL, 4352, 4288, 'Beans & Peas', 1, 0),
(874, 'Arosis', NULL, '_GRBA000', 'products/May2021/HUUx1AYJsJLLrNcb1MyP.jpg', NULL, '5.99', '0.875', 1, 1, 0, 0, '2021-05-03 19:33:12', '2021-06-12 22:40:07', 'arosis', 89, '<p>Greek Giant Beans From Small Family Farms</p>', NULL, 4353, 4289, 'Beans & Peas', 1, 0),
(875, 'YARA', NULL, '_GRWY001', 'products/May2021/x1vKCjwx6OXwiaFnwMza.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:35:00', '2021-06-12 22:40:07', 'yara', 90, '<p>Bulgur Wheat Fine #1</p>\r\n<p><strong>(Container Or Pack)</strong></p>', NULL, 4354, 4290, 'Wheat', 1, 0),
(876, 'YARA', NULL, '_GRWY003', 'products/May2021/nfLfuqtKY28J216M0xXv.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:38:00', '2021-06-12 22:40:07', 'yara', 90, '<p>Bulgur Wheat Medium #2</p>\r\n<p><strong>(Container Or Pack)</strong></p>', NULL, 4355, 4291, 'Wheat', 1, 0),
(877, 'YARA', NULL, '_GRWY005', 'products/May2021/TreGCLn9SKdlLGVLLAYm.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:40:20', '2021-06-12 22:40:07', 'yara', 90, '<p>Bulgur Wheat Coarse #3</p>\r\n<p>(Container Or Pack)</p>', NULL, 4356, 4292, 'Wheat', 1, 0),
(878, 'YARA', NULL, '_GRWY007', 'products/May2021/vYGdIxubr7EkORfjrMcS.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:41:00', '2021-06-12 22:40:07', 'yara', 90, '<p>Bulgur Wheat Extra Coarse #4</p>\r\n<p>(Container Or Pack)</p>', NULL, 4357, 4293, 'Wheat', 1, 0),
(879, 'YARA', NULL, '_GRWY009', 'products/May2021/xiBxtZXZF4c8S1oHdJno.png', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-03 19:42:48', '2021-06-12 22:40:07', 'yara', 90, '<p><strong>Brown Bulgur Wheat Fine #1</strong></p>\r\n<p><strong>(Container Or Pack)</strong></p>', NULL, 4358, 4294, 'Wheat', 1, 0),
(880, 'YARA', NULL, '_GRWY011', 'products/May2021/M9Y7c3QDa9e7m6H8ZhGN.png', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:45:18', '2021-06-12 22:40:07', 'yara', 90, '<p>Shelled Wheat</p>\r\n<p>(Container Or Pack)</p>', NULL, 4359, 4295, 'Wheat', 1, 0),
(881, 'YARA', NULL, '_GRWY013', 'products/May2021/wtzQAHVdbqK3WJMRTeZf.png', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:46:00', '2021-06-12 22:40:07', 'yara', 90, '<p>Whole Wheat</p>\r\n<p>(Container Or Pack)</p>', NULL, 4360, 4296, 'Wheat', 1, 0),
(882, 'YARA', NULL, '_GRWY015', 'products/May2021/sE0madMeNyrBOdW8eRu6.png', NULL, '5.99', '1.75', 1, 1, 0, 0, '2021-05-03 19:47:00', '2021-06-12 22:40:07', 'yara', 90, '<p>Freekeh - Green Wheat</p>\r\n<p>(Container Or Pack)</p>', NULL, 4361, 4297, 'Wheat', 1, 0),
(883, 'YARA', NULL, '_GRWY021', 'products/May2021/ZOSdBjYAgMYHIc5pLCjm.png', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:49:18', '2021-06-12 22:40:07', 'yara', 90, '<p>Barley</p>\r\n<p>(Container Or Pack)</p>', NULL, 4362, 4298, 'Wheat', 1, 0),
(884, 'YARA', NULL, '_GRFY005', 'products/May2021/DUOVSnkwyzSpV5d3xeNt.png', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:53:26', '2021-06-12 22:40:07', 'yara', 90, '<p>Moroccan Couscous Medium</p>\r\n<p>(Container Or Pack)</p>', NULL, 4363, 4299, 'Wheat', 1, 0),
(885, 'YARA', NULL, '_GRFY007', 'products/May2021/hkoDAd2wvCNpFzfLy9PD.png', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:54:51', '2021-06-12 22:40:07', 'yara', 90, '<p>Whole Wheat Couscous</p>\r\n<p>(Container Or Pack)</p>', NULL, 4364, 4300, 'Wheat', 1, 0),
(886, 'YARA', NULL, '_GRFY017', 'products/May2021/xkUExiGqF2QCxcb9QEN3.png', NULL, '5.49', '1.75', 1, 1, 0, 0, '2021-05-03 19:56:32', '2021-06-12 22:40:07', 'yara', 90, '<p>Lebanese Couscous - Moghrabieh</p>\r\n<p>(Container Or Pack)</p>', NULL, 4365, 4301, 'Wheat', 1, 0),
(887, 'YARA', NULL, '_GRFY019', 'products/May2021/ECIbDJfSynqLWnHLTOYL.png', NULL, '5.49', '1.25', 1, 1, 0, 0, '2021-05-03 19:58:03', '2021-06-12 22:40:07', 'yara', 90, '<p>Palestinian Couscous - Maftool</p>\r\n<p>(Container Or Pack)</p>', NULL, 4366, 4302, 'Wheat', 1, 0),
(888, 'YARA', NULL, '_GRQY001', 'products/May2021/SHGKHieZ0ws3NUP7Uwfv.png', NULL, '6.99', '1.5', 1, 1, 0, 0, '2021-05-03 20:00:27', '2021-06-12 22:40:07', 'yara', 90, '<p>Quinoa</p>\r\n<p>(Container Or Pack)</p>', NULL, 4367, 4303, 'Wheat', 1, 0),
(889, 'LAODICEA', NULL, '_WHL001', 'products/May2021/f0LMkL414LqZ6rcb5R66.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-05-03 20:17:00', '2021-06-12 22:40:07', 'laodicea', 90, '<p>Palestinian Couscous - Maftool</p>\r\n<p>(Container Or Pack)</p>', NULL, 4368, 4304, 'Wheat', 1, 0),
(890, 'LAODICEA', NULL, '_WHL003', 'products/May2021/fZ4q7j66crST6PshEzMM.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-05-03 20:19:06', '2021-06-12 22:40:07', 'laodicea', 90, '<p>Freekeh - Green Wheat</p>\r\n<p>(Container Or Pack)</p>', NULL, 4369, 4305, 'Wheat', 1, 0),
(891, 'DARI', NULL, '_GRFD000', 'products/May2021/S7Ax1DYi2QwghuaXSASh.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-03 20:20:21', '2021-06-12 22:40:07', 'dari', 90, '<p>Couscous Barley - Al Belboula</p>', NULL, 4370, 4306, 'Wheat', 1, 0),
(892, 'DARI', NULL, '_GRFD001', 'products/May2021/rQ7meuv0I67GEmx1kdCt.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-03 20:23:53', '2021-06-12 22:40:07', 'dari', 90, '<p>Couscous Fine</p>', NULL, 4371, 4307, 'Wheat', 1, 0),
(893, 'DARI', NULL, '_GRFD003', 'products/May2021/qJx2RggHEwWj4lItRQBi.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-03 20:25:07', '2021-06-12 22:40:07', 'dari', 90, '<p>Couscous Medium</p>', NULL, 4372, 4308, 'Wheat', 1, 0),
(894, 'DARI', NULL, '_GRFD005', 'products/May2021/5t6W9ufe7Jz6avUQOlNZ.jpg', NULL, '4.49', '2.2', 1, 1, 0, 0, '2021-05-03 20:26:09', '2021-06-12 22:40:07', 'dari', 90, '<p>Couscous Whole Wheat</p>', NULL, 4373, 4309, 'Wheat', 1, 0),
(895, 'TRIA', NULL, '_GRFT001', 'products/May2021/R3aHpS8kSYWrp8ntog5U.jpg', NULL, '449.00', '2.2', 1, 1, 0, 0, '2021-05-03 20:27:25', '2021-06-12 22:40:07', 'tria', 90, '<p>Couscous Fine</p>', NULL, 4374, 4310, 'Wheat', 1, 0),
(896, 'TRIA', NULL, '_GRFT003', 'products/May2021/66cUWqI0nhlRIetcGSk4.jpg', NULL, '4.49', '2.2', 1, 1, 0, 0, '2021-05-03 20:28:42', '2021-06-12 22:40:07', 'tria', 90, '<p>Couscous Medium</p>', NULL, 4375, 4311, 'Wheat', 1, 0),
(897, 'CORTAS', NULL, '_GRFC001', 'products/May2021/0sMoFrrJSyB8ucfLqXcj.jpg', NULL, '5.99', '2.2', 1, 1, 0, 0, '2021-05-03 20:30:57', '2021-06-12 22:40:07', 'cortas', 90, '<p>Lebanese Couscous - Moghrabieh</p>', NULL, 4376, 4312, 'Wheat', 1, 0),
(898, 'KABATILO', NULL, '_KAB001', 'products/May2021/oRXPudBzRrYuVDXBkDEG.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-05-03 20:32:00', '2021-06-12 22:40:07', 'kabatilo', 90, '<p>Palestinian Couscous - Maftool</p>', NULL, 4377, 4313, 'Wheat', 1, 0),
(899, 'KABATILO', NULL, '_KAB003', 'products/May2021/xs1O2y8iMWV1YxvbbrSl.jpg', NULL, '5.99', '1.1', 1, 1, 0, 0, '2021-05-03 20:33:00', '2021-06-12 22:40:07', 'kabatilo', 90, '<p>Freekeh - Green Wheat</p>', NULL, 4378, 4314, 'Wheat', 1, 0),
(900, 'YARA', NULL, '_GRLY001', 'products/May2021/dx7i9uLYr5crJlON5XUy.jpg', NULL, '4.49', '1.75', 1, 1, 0, 0, '2021-05-03 20:39:00', '2021-06-12 22:40:07', 'yara', 91, '<p>Red Lentils Split Double Polished</p>\r\n<p>(Container Or Pack)</p>', NULL, 4379, 4315, 'Lentils', 1, 0),
(901, 'YARA', NULL, '_GRLY003', 'products/May2021/jPbx9XyfTI6cOEjYOdfz.jpg', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 20:40:56', '2021-06-12 22:40:07', 'yara', 91, '<p>Green Lentils Eston Small</p>\r\n<p>(Container Or Pack)</p>', NULL, 4380, 4316, 'Lentils', 1, 0),
(902, 'YARA', NULL, '_GRLY005', 'products/May2021/IK96hNvkWYEnRIor1gqf.jpg', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 20:42:07', '2021-06-12 22:40:07', 'yara', 91, '<p>Green Lentils Laird Large</p>\r\n<p>(Container Or Pack)</p>', NULL, 4381, 4317, 'Lentils', 1, 0),
(903, 'YARA', NULL, '_GRLY007', 'products/May2021/pii9Uu1Hd8UE7GhZokDW.jpg', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 20:43:00', '2021-06-12 22:40:07', 'yara', 91, '<p>Crimson Whole Red Lentils</p>\r\n<p>(Container Or Pack)</p>', NULL, 4382, 4318, 'Lentils', 1, 0),
(904, 'YARA', NULL, '_GRLY009', 'products/May2021/wLjL8w1sAiPUhE9Z7PWj.jpg', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-03 20:44:26', '2021-06-12 22:40:07', 'yara', 91, '<p>French Lentils</p>\r\n<p>(Container Or Pack)</p>', NULL, 4383, 4319, 'Lentils', 1, 0),
(905, 'OHANYAN', NULL, '_MTSO001', 'products/May2021/09KzROmljl0IM07x2k0c.jpg', NULL, '13.99', '0.5', 1, 1, 0, 0, '2021-05-03 20:53:10', '2021-06-12 22:40:07', 'ohanyan', 97, '<p>Basturma Sliced Halal - Refrigerator Item</p>', NULL, 4384, 4320, 'Basturma', 1, 0),
(906, 'OHANYAN', NULL, '_MTSO000', 'products/May2021/GeXl3QAII6QJInYaktpZ.jpg', NULL, '13.99', '1', 1, 1, 0, 0, '2021-05-03 20:55:03', '2021-06-12 22:40:07', 'ohanyan', 97, '<p>Basterma Lean Halal - Refrigerator Item</p>', NULL, 4385, 4321, 'Basturma', 1, 0),
(907, 'BacalaRico', NULL, '_MTF001', 'products/May2021/Y4qNtUKEAkjARR49pmSZ.jpg', NULL, '11.99', '0.75', 1, 1, 0, 0, '2021-05-03 20:58:43', '2021-06-12 22:40:07', 'bacalarico', 98, '<p>Pollock Fillets</p>', NULL, 4386, 4322, 'Fish Products', 1, 0),
(910, 'FLOKOS', NULL, '_FSFL001', 'products/May2021/IwJFuRhVgwvY7W4RoVwY.jpg', NULL, '5.99', '0.819', 1, 1, 0, 0, '2021-05-03 21:08:06', '2021-06-12 22:40:07', 'flokos', 98, '<p>Squid in Brine</p>', NULL, 4388, 4324, 'Fish Products', 1, 0),
(911, 'KRINOS', NULL, '_FST003', 'products/May2021/TGUDZD7ZA3nSpWd5mg9l.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-03 21:12:25', '2021-06-12 22:40:07', 'krinos', 98, '<p>Taramosalata - Greek Style Caviar Spread</p>', NULL, 4389, 4325, 'Fish Products', 1, 0),
(912, 'KRINOS', NULL, '_FST005', 'products/May2021/vHbPVEbauqkMlDQBDMiw.jpg', NULL, '8.99', '0.875', 1, 1, 0, 0, '2021-05-03 21:14:06', '2021-06-12 22:40:07', 'krinos', 98, '<p>Taramosalata - Greek Style Caviar Spread</p>', NULL, 4390, 4326, 'Fish Products', 1, 0),
(913, 'KRINOS', NULL, '_FST007', 'products/May2021/oUL22p0zZyJSW1lw4mDi.jpg', NULL, '6.99', '0.5', 1, 1, 0, 0, '2021-05-03 21:15:08', '2021-06-12 22:40:07', 'krinos', 98, '<p>Taramosalata Lite - 50% Fewer Calories</p>', NULL, 4391, 4327, 'Fish Products', 1, 0),
(914, 'KRINOS', NULL, '_FST009', 'products/May2021/asiA7Faieaj4CTy33EDu.jpg', NULL, '6.99', '0.5', 1, 1, 0, 0, '2021-05-03 21:16:08', '2021-06-12 22:40:07', 'krinos', 98, '<p>Taramosalata Smoked</p>', NULL, 4392, 4328, 'Fish Products', 1, 0),
(915, 'KRINOS', NULL, '_FST011', 'products/May2021/bZzwbEyUZB2KZwbaC96n.jpg', NULL, '9.99', '0.625', 1, 1, 0, 0, '2021-05-03 21:17:18', '2021-06-12 22:40:07', 'krinos', 98, '<p>Tarama - Carp Roe Caviar</p>', NULL, 4393, 4329, 'Fish Products', 1, 0),
(916, 'KUPELIAN\'S', NULL, '_MTSK001', 'products/May2021/anTp6YgVO1AUXr3t5DBU.jpg', NULL, '18.99', '2', 1, 1, 0, 0, '2021-05-03 21:20:26', '2021-06-12 22:40:07', 'kupelian-s', 99, '<p>Lahmajun Halal</p>', NULL, 4394, 4330, 'Lahmajun', 1, 0),
(917, 'KUPELIAN\'S', NULL, '_MTSK003', 'products/May2021/jZHle8MkXrQURQ5QIOhw.jpg', NULL, '1899.00', '2', 1, 1, 0, 0, '2021-05-03 21:21:38', '2021-06-12 22:40:07', 'kupelian-s', 99, '<p>Hot Lahmajun Halal</p>', NULL, 4395, 4331, 'Lahmajun', 1, 0),
(918, 'Mediterranean Kitchen', NULL, '_MTSK004', 'products/May2021/hKecoxL7FyQ8ctm0r8nt.jpg', NULL, '18.99', '2', 1, 1, 0, 0, '2021-05-03 21:23:02', '2021-06-12 22:40:07', 'mediterranean-kitchen', 99, '<p>Lahmajun</p>', NULL, 4396, 4332, 'Lahmajun', 1, 0),
(919, 'Mediterranean Kitchen', NULL, '_MTSK006', 'products/May2021/j6MCommCvO1KFSSSOsk8.jpg', NULL, '18.99', '2', 1, 1, 0, 0, '2021-05-03 21:24:46', '2021-06-12 22:40:07', 'mediterranean-kitchen', 99, '<p>Hot Lahmajun</p>', NULL, 4397, 4333, 'Lahmajun', 1, 0),
(920, 'ALSHARK', NULL, '_FSA001', 'products/May2021/zAnHCoJWhL8M7h0AiKg8.jpg', NULL, '1.29', '0.275', 1, 1, 0, 0, '2021-05-03 21:27:45', '2021-06-12 22:40:07', 'alshark', 98, '<p>Sardines in Oil Spicy</p>', NULL, 4398, 4334, 'Fish Products', 1, 0),
(921, 'ALSHARK', NULL, '_FSA003', 'products/May2021/g8TvaxjUlbSylDEz6Ts1.jpg', NULL, '129.00', '0.275', 1, 1, 0, 0, '2021-05-03 21:29:00', '2021-06-12 22:40:07', 'alshark', 98, '<p>Sardines in Oil Spicy</p>', NULL, 4399, 4335, 'Fish Products', 1, 0),
(922, 'SHAHIA', NULL, '_FSS003', 'products/May2021/dVwFfRBWKIEgN8zkhHgW.jpg', NULL, '1.49', '0.275', 1, 1, 0, 0, '2021-05-03 21:32:10', '2021-06-12 22:40:07', 'shahia', 98, '<p>Sardines with Hot Peppers</p>', NULL, 4400, 4336, 'Fish Products', 1, 0),
(923, 'SHAHIA', NULL, '_FSS005', 'products/May2021/cSuzF9DR1BwHePxQLuXb.jpg', NULL, '149.00', '0.275', 1, 1, 0, 0, '2021-05-03 21:47:44', '2021-06-12 22:40:07', 'shahia', 98, '<p>Sardines in Virgin Olive Oil</p>', NULL, 4401, 4337, 'Fish Products', 1, 0),
(924, 'SHAHIA', NULL, '_FSS007', 'products/May2021/JF6uKVxxlj2XqCa9tHqr.jpg', NULL, '1.49', '0.275', 1, 1, 0, 0, '2021-05-03 21:49:04', '2021-06-12 22:40:07', 'shahia', 98, '<p>Sardines in Tomato Sauce</p>', NULL, 4402, 4338, 'Fish Products', 1, 0),
(925, 'SHAHIA', NULL, '_FSS001', 'products/May2021/IwVqCepNc8bkjABlOSh6.jpg', NULL, '1.49', '0.275', 1, 1, 0, 0, '2021-05-03 21:50:20', '2021-06-12 22:40:07', 'shahia', 98, '<p>Sardines in Vegetable Oil</p>', NULL, 4403, 4339, 'Fish Products', 1, 0),
(926, 'SHAHIA', NULL, '_MEAS001', 'products/May2021/7IK663WQyre0nsQ8rjqt.jpg', NULL, '4.49', '0.75', 1, 1, 0, 0, '2021-05-03 21:55:08', '2021-06-12 22:40:07', 'shahia', 100, '<p>Chicken Luncheon Meat Halal</p>', NULL, 4404, 4340, 'Luncheon', 1, 0),
(927, 'SHAHIA', NULL, '_MEAS003', 'products/May2021/yyzqcdcqwKNEM064scDx.jpg', NULL, '7.99', '1.843', 1, 1, 0, 0, '2021-05-03 21:56:31', '2021-06-12 22:40:07', 'shahia', 100, '<p>Chicken Luncheon Meat Halal</p>', NULL, 4405, 4341, 'Luncheon', 1, 0),
(928, 'SHAHIA', NULL, '_MEAS005', 'products/May2021/mjXXj85iJ3IO8AYAZYxC.jpg', NULL, '3.99', '0.75', 1, 1, 0, 0, '2021-05-03 21:57:49', '2021-06-12 22:40:07', 'shahia', 100, '<p>Chicken and Beef Luncheon Meat Halal</p>', NULL, 4406, 4342, 'Luncheon', 1, 0),
(929, 'SHAHIA', NULL, '_MEAS007', 'products/May2021/pOOiuhEd7iq34gI9Sfhj.jpg', NULL, '8.99', '1.843', 1, 1, 0, 0, '2021-05-03 21:59:01', '2021-06-12 22:40:07', 'shahia', 100, '<p>Chicken and Beef Luncheon Meat Halal</p>', NULL, 4407, 4343, 'Luncheon', 1, 0),
(930, 'ARZUMAN', NULL, '_MTSA009', 'products/May2021/Jy5BJCrn5gHOkB4QL8hM.jpg', NULL, '11.99', '1', 1, 1, 0, 0, '2021-05-03 22:54:59', '2021-06-12 22:40:07', 'arzuman', 100, '<p>Beef Mortadella with Pistachio Halal</p>', NULL, 4408, 4344, 'Luncheon', 1, 0),
(931, 'Mediterranean Kitchen', NULL, '_MTSM000', 'products/May2021/LYbTSzv0YyxZS3kUHaPf.jpg', NULL, '6.49', '0.5', 1, 1, 0, 0, '2021-05-03 22:59:57', '2021-06-12 22:40:07', 'mediterranean-kitchen', 101, '<p>Mild Soujouk&nbsp;</p>', NULL, 4409, 4345, 'Sausage & Makanek', 1, 0),
(932, 'OHANYAN', NULL, '_MTSO007', 'products/May2021/yKkdodpbyGY5FJ7wGCXI.jpg', NULL, '17.99', '1', 1, 1, 0, 0, '2021-05-03 23:01:39', '2021-06-12 22:40:07', 'ohanyan', 101, '<p>Soujouk Mild Halal</p>', NULL, 4410, 4346, 'Sausage & Makanek', 1, 0),
(933, 'OHANYAN', NULL, '_MTSO023', 'products/May2021/TVopHMiddxxqyUowOmUM.jpg', NULL, '17.99', '1', 1, 1, 0, 0, '2021-05-04 18:06:38', '2021-06-12 22:40:07', 'ohanyan', 101, '<p>Soujouk Spicy Halal</p>', NULL, 4411, 4347, 'Sausage & Makanek', 1, 0),
(934, 'SHEGIAN BROS.', NULL, '_MTSS011', 'products/May2021/LzXEI3WVBIxMjdcZXgS8.jpg', NULL, '18.99', '1', 1, 1, 0, 0, '2021-05-04 18:18:17', '2021-06-12 22:40:07', 'shegian-bros', 101, '<p>Mekanek Lebanese Style Halal</p>', NULL, 4412, 4348, 'Sausage & Makanek', 1, 0),
(937, 'Spring Lamb', NULL, '_MEL000', 'products/May2021/nAGrxDn3nJDx7eQFxqb6.jpg', NULL, '11.99', '1.125', 1, 1, 0, 0, '2021-05-04 18:40:00', '2021-06-12 22:40:07', 'spring-lamb', 105, '<p>Halal Lean Ground Lamb</p>', NULL, 4414, 4350, 'Lamb & Beef', 1, 0),
(938, 'Spring Lamb', NULL, '_MEL001', 'products/May2021/p9td3t9Zp0AG7G6e4XBU.jpg', NULL, '29.99', '3', 1, 1, 0, 0, '2021-05-04 18:41:41', '2021-06-12 22:40:07', 'spring-lamb', 105, '<p>Halal Lean Ground Lamb</p>', NULL, 4415, 4351, 'Lamb & Beef', 1, 0),
(939, 'Diamond Valley', NULL, '_MEBD001', 'products/May2021/IzQo1NAotXeC2kXljh3m.jpg', NULL, '29.99', '4', 1, 1, 0, 0, '2021-05-04 18:49:58', '2021-06-12 22:40:07', 'diamond-valley', 105, '<p>Halal Ground Beef 85% LEAN / 15% FAT</p>', NULL, 4416, 4352, 'Lamb & Beef', 1, 0),
(940, 'AL AMI', NULL, '_MEAA001', 'products/May2021/cBEbu3kNvd6GtqVanoUT.jpg', NULL, '6.49', '0.75', 1, 1, 0, 0, '2021-05-04 18:51:41', '2021-06-12 22:40:07', 'al-ami', 105, '<p>Corned Beef Halal</p>', NULL, 4417, 4353, 'Lamb & Beef', 1, 0),
(941, 'Maple Leaf Farms', NULL, '_MEDM001', 'products/May2021/Bq889lKJ7kBWOykJrj7P.jpg', NULL, '23.99', '5', 1, 1, 0, 0, '2021-05-04 18:55:26', '2021-06-12 22:40:07', 'maple-leaf-farms', 106, '<p>Halal Maple Leaf Farms Whole Duck</p>', NULL, 4418, 4354, 'Duck', 1, 0),
(943, 'ARZ', NULL, '_CHEA011', 'products/May2021/Jw3AQXLlY61ZfkVuM9BL.png', NULL, '7.99', '0.75', 1, 1, 0, 0, '2021-05-04 20:00:18', '2021-06-12 22:40:07', 'arz', 76, '<p>Syrian Cheese in Vac Pack</p>', NULL, 4419, 4355, 'Cheese', 1, 0),
(945, 'KRINOS', NULL, '_CHKA001', 'products/May2021/0bMgKPSk76H1b2ksDZ0S.jpg', NULL, '21.88', '2', 1, 1, 0, 0, '2021-05-04 20:12:58', '2021-06-12 22:40:07', 'krinos', 76, '<p>Kefalograviera Greek Cheese</p>', NULL, 4421, 4357, 'Cheese', 1, 0),
(946, 'KRINOS', NULL, '_CHKA003', 'products/May2021/C36kSYdIt39xI9aSIlwL.jpg', NULL, '10.99', '1', 1, 1, 0, 0, '2021-05-04 20:14:39', '2021-06-12 22:40:07', 'krinos', 76, '<p>Kefalograviera Greek Cheese</p>', NULL, 4422, 4358, 'Cheese', 1, 0),
(947, 'MATIS', NULL, '_CHKG003', 'products/May2021/9sv1nL8dRMFt0nQNlxpw.jpg', NULL, '19.98', '2', 1, 1, 0, 0, '2021-05-04 20:17:06', '2021-06-12 22:40:07', 'matis', 76, '<p>Greek Kasseri Cheese</p>', NULL, 4423, 4359, 'Cheese', 1, 0),
(948, 'Alouette Brie', NULL, '_CHAO001', 'products/May2021/ZiRBqLRgVs7D9eAILI11.jpg', NULL, '7.99', '1', 1, 1, 0, 0, '2021-05-04 20:19:37', '2021-06-12 22:40:07', 'alouette-brie', 76, '<p>Soft Ripened Cheese</p>', NULL, 4424, 4360, 'Cheese', 1, 0),
(949, 'Cabot', NULL, '_CHCT121', 'products/May2021/t8fZ1hIZWTXZr55ffZXa.jpeg', NULL, '7.99', '2', 1, 1, 0, 0, '2021-05-04 20:21:39', '2021-06-12 22:40:07', 'cabot', 76, '<p>Classic Vermont Pepper Jack Cheese</p>', NULL, 4425, 4361, 'Cheese', 1, 0),
(950, 'Evaxo', NULL, '_CHEV111', 'products/May2021/nIcuHRpiB9WtB5Bz5btT.jpg', NULL, '11.99', '0.5', 1, 1, 0, 0, '2021-05-04 20:23:26', '2021-06-12 22:40:07', 'evaxo', 76, '<p>BelGioioso Crumbly Gorgonzola</p>', NULL, 4426, 4362, 'Cheese', 1, 0),
(951, 'Castello', NULL, '_CHCA333', 'products/May2021/OYVOQXsdKyAQj8VfATHF.jpg', NULL, '7.99', '0.5', 1, 1, 0, 0, '2021-05-04 20:25:30', '2021-06-12 22:40:07', 'castello', 76, '<p>Havarti Dill Cream Cheese</p>', NULL, 4427, 4363, 'Cheese', 1, 0),
(952, 'Boursin', NULL, '_CHBO003', 'products/May2021/6N1WRTgnCZBrFRKJsDsu.jpg', NULL, '11.99', '0.325', 1, 1, 0, 0, '2021-05-04 20:27:15', '2021-06-12 22:40:07', 'boursin', 76, '<p>Shallot &amp; Chive Cheese - Gournay Cheese</p>', NULL, 4428, 4364, 'Cheese', 1, 0),
(953, 'Boursin', NULL, '_CHBO001', 'products/May2021/6wsmTtHEv0BUU3pImX6U.jpg', NULL, '11.99', '0.325', 1, 1, 0, 0, '2021-05-04 20:32:42', '2021-06-12 22:40:07', 'boursin', 76, '<p>Cheese with Garlic and Fine Herbs - Gournay Cheese</p>', NULL, 4429, 4365, 'Cheese', 1, 0),
(954, 'Galbani', NULL, '_CHEG001', 'products/May2021/PktkOciXsxUCUIvfuyCL.jpg', NULL, '13.99', '2.5', 1, 1, 0, 0, '2021-05-04 20:39:24', '2021-06-12 22:40:07', 'galbani', 76, '<p>Fresh Mozzarella Cheese</p>', NULL, 4430, 4366, 'Cheese', 1, 0),
(955, 'Emmi', NULL, '_CHEM111', 'products/May2021/hRPu37Lo2lWOnavDz5aL.jpg', NULL, '13.99', '1', 1, 1, 0, 0, '2021-05-04 20:41:18', '2021-06-12 22:40:07', 'emmi', 76, '<p>Gruyere Switzerland Cheese</p>', NULL, 4431, 4367, 'Cheese', 1, 0),
(956, 'KASSATLY', NULL, '_SYRK013', 'products/May2021/cESr5YRTNuaJ7bZvDZwK.jpg', NULL, '6.99', '1.25', 1, 1, 0, 0, '2021-05-04 20:47:15', '2021-06-12 22:40:07', 'kassatly', 73, '<p>Tamarind Syrup</p>', NULL, 4432, 4368, 'Syrups', 1, 0),
(957, 'KASSATLY', NULL, '_SYRK011', 'products/May2021/A3vMf8D0f8mgJgNq9f54.jpg', NULL, '6.99', '1.25', 1, 1, 0, 0, '2021-05-04 20:55:05', '2021-06-12 22:40:07', 'kassatly', 73, '<p>Amaredin Syrup</p>', NULL, 4433, 4369, 'Syrups', 1, 0),
(958, 'CORTAS', NULL, '_SYRC001', 'products/May2021/wzlsiwoIJMZ5qpgdgqlb.jpg', NULL, '5.49', '1.185', 1, 1, 0, 0, '2021-05-04 20:56:29', '2021-06-12 22:40:07', 'cortas', 73, '<p>Jallab Syrup</p>', NULL, 4434, 4370, 'Syrups', 1, 0),
(959, 'CORTAS', NULL, '_SYRC003', 'products/May2021/nb6E3YiZTUZWXrzuubFi.jpg', NULL, '6.99', '1.185', 1, 1, 0, 0, '2021-05-04 20:57:41', '2021-06-12 22:40:07', 'cortas', 73, '<p>Rose Syrup</p>', NULL, 4435, 4371, 'Syrups', 1, 0),
(960, 'CORTAS', NULL, '_SYRC005', 'products/May2021/h31Fr9W8purygatJT587.jpg', NULL, '5.49', '1.185', 1, 1, 0, 0, '2021-05-04 20:58:52', '2021-06-12 22:40:07', 'cortas', 73, '<p>Grenadine Syrup</p>', NULL, 4436, 4372, 'Syrups', 1, 0),
(961, 'CORTAS', NULL, '_SYRC007', 'products/May2021/cyIhs6fOwkNdJoi6PXzv.jpg', NULL, '6.99', '1.185', 1, 1, 0, 0, '2021-05-04 21:09:26', '2021-06-12 22:40:07', 'cortas', 73, '<p>Mulberry Syrup</p>', NULL, 4437, 4373, 'Syrups', 1, 0),
(962, 'MARCO POLO', NULL, '_SYRM001', 'products/May2021/Tlnrn4LrPtH5HYpnFToR.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:10:47', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Sour Cherry Syrup</p>', NULL, 4438, 4374, 'Syrups', 1, 0),
(963, 'MARCO POLO', NULL, '_SYRM003', 'products/May2021/qNLmFY3R27LXfGMN3eFT.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:12:01', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Raspberry Syrup</p>', NULL, 4439, 4375, 'Syrups', 1, 0),
(964, 'MARCO POLO', NULL, '_SYRM005', 'products/May2021/Fuqbh2BUW4aTvVtrDJaV.jpg', NULL, '7.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:13:49', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Black Currant Syrup</p>', NULL, 4440, 4376, 'Syrups', 1, 0),
(965, 'MARCO POLO', NULL, '_SYRM007', 'products/May2021/aQa6UCIo2MGWl3YdDa95.jpg', NULL, '7.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:15:20', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Blueberry Syrup</p>', NULL, 4441, 4377, 'Syrups', 1, 0),
(966, 'MARCO POLO', NULL, '_SYRM009', 'products/May2021/KMTAk9l26w4wxyom55TD.jpg', NULL, '7.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:18:59', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Blackberry Syrup</p>', NULL, 4442, 4378, 'Syrups', 1, 0),
(967, 'MARCO POLO', NULL, '_SYRM011', 'products/May2021/gXLyGkAnZsIS7tXR3Hqy.jpg', NULL, '5.49', '2.2', 1, 1, 0, 0, '2021-05-04 21:20:39', '2021-06-12 22:40:07', 'marco-polo', 73, '<p>Pomegranate Syrup</p>', NULL, 4443, 4379, 'Syrups', 1, 0),
(968, 'Vimto', NULL, '_SYRV001', 'products/May2021/EslKy3mjjrT7ivo1IfhG.jpg', NULL, '7.99', '1.562', 1, 1, 0, 0, '2021-05-04 21:23:24', '2021-06-12 22:40:07', 'vimto', 73, '<p>Fruit Syrup</p>', NULL, 4444, 4380, 'Syrups', 1, 0),
(969, 'YARA', NULL, 'YSF001', 'products/May2021/X1XBeJYaz15DAiCTdVxa.jpg', NULL, '3.99', '1.25', 1, 1, 0, 0, '2021-05-04 21:28:29', '2021-06-12 22:40:07', 'yara', 72, '<p>Sugar Powder</p>\r\n<p>(Container or Pack)</p>', NULL, 4445, 4381, 'Sugar & Sweeteners', 1, 0),
(970, 'YARA', NULL, '_YSR013', 'products/May2021/v5x4ct8uS01bymdKv78A.jpg', NULL, '3.49', '1.75', 1, 1, 0, 0, '2021-05-04 21:30:00', '2021-06-12 22:40:07', 'yara', 72, '<p>Sugar</p>\r\n<p>(Container Or Pack)</p>', NULL, 4446, 4382, 'Sugar & Sweeteners', 1, 0),
(971, 'TRUVIA', NULL, '_COTT111', 'products/May2021/GclAHXt5XHcXfx5OtKja.jpg', NULL, '16.99', '1.762', 1, 1, 0, 0, '2021-05-04 21:31:15', '2021-06-12 22:40:07', 'truvia', 72, '<p>Naturally Sweet Calorie-free Sweetener from the Stevia Leaf - 400 packets</p>', NULL, 4447, 4383, 'Sugar & Sweeteners', 1, 0),
(972, 'SPLENDA', NULL, '_COTS121', 'products/May2021/D8Jn79vCMkIaeU6O3PjR.jpg', NULL, '23.99', '2.56', 1, 1, 0, 0, '2021-05-04 21:32:33', '2021-06-12 22:40:07', 'splenda', 72, '<p>No Calorie Sweetene -1200 Count</p>', NULL, 4448, 4384, 'Sugar & Sweeteners', 1, 0),
(973, 'LAODICEA', NULL, '_LISL111', 'products/May2021/4RLB6Ro2c60BgPGDpdDf.jpg', NULL, '7.99', '2.156', 1, 1, 0, 0, '2021-05-04 21:33:56', '2021-06-12 22:40:07', 'laodicea', 72, '<p>Liquid Sweetener - 0 Calories Allulose&nbsp;</p>', NULL, 4449, 4385, 'Sugar & Sweeteners', 1, 0),
(974, 'Wholesome Sweeteners', NULL, '_COFWH001', 'products/May2021/sEzflY7spZfC5Ldo34Nv.jpg', NULL, '9.99', '0.718', 1, 1, 0, 0, '2021-05-04 21:39:42', '2021-06-12 22:40:07', 'wholesome-sweeteners', 72, '<p>Allulose Zero Calorie Liquid Sweetener</p>', NULL, 4450, 4386, 'Sugar & Sweeteners', 1, 0),
(975, 'CORTAS', NULL, '_WAC001', 'products/May2021/zcYW9ap36nPfDhZ3w3eb.jpg', NULL, '2.49', '0.65', 1, 1, 0, 0, '2021-05-04 23:19:01', '2021-06-12 22:40:07', 'cortas', 71, '<p>Rose Water - Mawared</p>', NULL, 4451, 4387, 'Rose & Flower Water', 1, 0),
(976, 'CORTAS', NULL, '_WAC003', 'products/May2021/zNwpBnLYQuJpc5SD6HG3.jpg', NULL, '3.99', '1.105', 1, 1, 0, 0, '2021-05-04 23:20:15', '2021-06-12 22:40:07', 'cortas', 71, '<p>Rose Water - Mawared</p>', NULL, 4452, 4388, 'Rose & Flower Water', 1, 0),
(977, 'CORTAS', NULL, '_WAC005', 'products/May2021/AwTYxFgMdwD44c4MGo9h.jpg', NULL, '2.49', '0.65', 1, 1, 0, 0, '2021-05-04 23:21:31', '2021-06-12 22:40:07', 'cortas', 71, '<p>Orange Blossom Water - Mazaher</p>', NULL, 4453, 4389, 'Rose & Flower Water', 1, 0),
(978, 'CORTAS', NULL, '_WAC007', 'products/May2021/AkQKXJhjkigVSjD9hQFL.jpg', NULL, '3.99', '1.1', 1, 1, 0, 0, '2021-05-04 23:22:45', '2021-06-12 22:40:07', 'cortas', 71, '<p>Orange Blossom Water - Mazaher</p>', NULL, 4454, 4390, 'Rose & Flower Water', 1, 0),
(979, 'CORTAS', NULL, '_WAC000OFF', 'products/May2021/ApGTZgfMJMfzwPuiwTrR.jpg', NULL, '22.99', '0', 1, 1, 1, 0, '2021-05-04 23:25:00', '2021-06-12 22:40:07', 'cortas', 71, '<p>Flavoring Trio</p>', NULL, 4455, 4391, 'Rose & Flower Water', 1, 0),
(980, 'YARA', NULL, '_YFF003', 'products/May2021/KgR2RtNTvVDgUazCXlrm.jpg', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-04 23:29:58', '2021-06-12 22:40:07', 'yara', 69, '<p>Extra Fancy Flour</p>', NULL, 4456, 4392, 'Flour & Semolina', 1, 0),
(981, 'YARA', NULL, '_GRFY001', 'products/May2021/8l0njve3xUSZVpcyIZ7y.jpg', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-04 23:31:09', '2021-06-12 22:40:07', 'yara', 69, '<p>Semolina Fine</p>', NULL, 4457, 4393, 'Flour & Semolina', 1, 0),
(982, 'YARA', NULL, '_GRFL003', 'products/May2021/F3nqZVTTAShPSHQpR3jR.jpg', NULL, '3.99', '1.5', 1, 1, 0, 0, '2021-05-04 23:33:58', '2021-06-12 22:40:07', 'yara', 69, '<p>Semolina Coarse</p>', NULL, 4458, 4394, 'Flour & Semolina', 1, 0),
(983, 'YARA', NULL, '_YEFF001', 'products/May2021/mwhAHNhpCOexjM3bMoSp.jpg', NULL, '11.99', '8', 1, 1, 0, 0, '2021-05-04 23:35:26', '2021-06-12 22:40:07', 'yara', 69, '<p>Extra Fancy Flour</p>', NULL, 4459, 4395, 'Flour & Semolina', 1, 0),
(984, 'YARA', NULL, '_FS001', 'products/May2021/D4CpoURH5LISIcxsxjHF.jpg', NULL, '11.99', '8', 1, 1, 0, 0, '2021-05-04 23:36:40', '2021-06-12 22:40:07', 'yara', 69, '<p>Semolina Fine</p>', NULL, 4460, 4396, 'Flour & Semolina', 1, 0),
(985, 'YARA', NULL, '_FS003', 'products/May2021/xoM5LqkHDEFYUGsXtCOn.jpg', NULL, '11.99', '8', 1, 1, 0, 0, '2021-05-04 23:37:43', '2021-06-12 22:40:07', 'yara', 69, '<p>Semolina Wheat</p>', NULL, 4461, 4397, 'Flour & Semolina', 1, 0),
(986, 'RANDA', NULL, '_FSRA001', 'products/May2021/OVt96ZxDuRhSCYMLgamG.jpg', NULL, '2.99', '2.2', 1, 1, 0, 0, '2021-05-04 23:39:22', '2021-06-12 22:40:07', 'randa', 69, '<p>Semolina Fine</p>', NULL, 4462, 4398, 'Flour & Semolina', 1, 0),
(987, 'LAODICEA', NULL, '_DLA001', 'products/May2021/ZOQ1ryqhRsPCcrYpWvnC.jpg', NULL, '3.99', '0.75', 1, 1, 0, 0, '2021-05-05 08:11:00', '2021-06-12 22:40:07', 'laodicea', 68, '<p>Custard Mix</p>', NULL, 4463, 4399, 'Dessert Mixes', 1, 0),
(988, 'LAODICEA', NULL, '_DLA003', 'products/May2021/AuykWVswpXcjawwLXexP.jpg', NULL, '9999.00', '0.44', 1, 1, 0, 0, '2021-05-05 08:13:00', '2021-06-25 15:36:14', 'laodicea', 56, '<p>Qashtaliyah Mix</p>', NULL, 4464, 4400, '_', 0, 0),
(989, 'LAODICEA', NULL, '_DLA005', 'products/May2021/4fjftOZAT6PLUxzLWodI.jpg', NULL, '2500.00', '0.44', 1, 1, 0, 0, '2021-05-05 08:16:00', '2021-06-25 15:50:47', 'laodicea', 56, '<p>Meghli - Rice Pudding / Cinnamon Flavor</p>', NULL, 4465, 4401, '_', 1, 0),
(990, 'LAODICEA', NULL, '_DLA007', 'products/May2021/c8OMS6yH26mG0kPbNeeI.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-05 08:18:07', '2021-06-12 22:40:07', 'laodicea', 68, '<p>Mohalabia - Rice Pudding / Vanilla Flavor</p>', NULL, 4466, 4402, 'Dessert Mixes', 1, 0),
(991, 'LAODICEA', NULL, '_DLA009', 'products/May2021/HNoBZ47bglZLkGMIgeLi.jpg', NULL, '2.99', '0.44', 1, 1, 0, 0, '2021-05-05 08:19:50', '2021-06-12 22:40:07', 'laodicea', 68, '<p>Loukmades Dumpling Mix</p>', NULL, 4467, 4403, 'Dessert Mixes', 1, 0),
(992, 'ADONIS', NULL, '_DMA009', 'products/May2021/8QyBUvjzxtCAkXOON5FO.jpg', NULL, '2.49', '0.44', 1, 1, 0, 0, '2021-05-05 08:21:00', '2021-06-12 22:40:07', 'adonis', 68, '<p>Qashtaliyah Mix</p>', NULL, 4468, 4404, 'Dessert Mixes', 1, 0),
(993, 'CORTAS', NULL, '_DMC005', 'products/May2021/kZAwPpgKeheLWFJUTJeB.jpg', NULL, '2.49', '0.44', 1, 1, 0, 0, '2021-05-05 08:23:16', '2021-06-12 22:40:07', 'cortas', 68, '<p>Meghli - Rice Pudding / Cinnamon Flavor</p>', NULL, 4469, 4405, 'Dessert Mixes', 1, 0),
(994, 'CORTAS', NULL, '_DMC007', 'products/May2021/G0P4cKNSSpyR9vSoPvJJ.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-05 08:24:53', '2021-06-12 22:40:07', 'cortas', 68, '<p>Mohalabia - Rice Pudding / Vanilla Flavor</p>', NULL, 4470, 4406, 'Dessert Mixes', 1, 0),
(995, 'ADONIS', NULL, '_DMA011', 'products/May2021/FO6JfNGt7D09NBRRBRLi.jpg', NULL, '2.99', '0.44', 1, 1, 0, 0, '2021-05-05 08:28:44', '2021-06-12 22:40:07', 'adonis', 68, '<p>Loukmades Dumpling Mix</p>', NULL, 4471, 4407, 'Dessert Mixes', 1, 0),
(996, 'LEBANON VALLEY', NULL, '_DML003', 'products/May2021/QeAsgaPYb2lNeQDnI9IP.jpg', NULL, '2.49', '1.06', 1, 1, 0, 0, '2021-05-05 08:33:39', '2021-06-12 22:40:07', 'lebanon-valley', 68, '<p>Loukmades Dumpling Mix</p>', NULL, 4472, 4408, 'Dessert Mixes', 1, 0),
(997, 'JOTIS', NULL, '_DMY003', 'products/May2021/xwNEHIkys39ydoDcMu9E.jpg', NULL, '3.99', '0.55', 1, 1, 0, 0, '2021-05-05 08:35:39', '2021-06-12 22:40:07', 'jotis', 68, '<p>Loukmades Dumpling Mix</p>', NULL, 4473, 4409, 'Dessert Mixes', 1, 0),
(998, 'JOTIS', NULL, '_TRD100', 'products/May2021/wlqxqkTV2WZ8WkyvdBqj.jpg', NULL, '14.99', '1.5', 1, 1, 0, 0, '2021-05-05 08:37:30', '2021-06-12 22:40:07', 'jotis', 68, '<p>Tiramisu&nbsp;</p>', NULL, 4474, 4410, 'Dessert Mixes', 1, 0),
(999, 'JOTIS', NULL, '_SWY001', 'products/May2021/EOQTug0ljlBYrQQmEcqF.jpg', NULL, '7.49', '1.06', 1, 1, 0, 0, '2021-05-05 08:40:01', '2021-06-12 22:40:07', 'jotis', 68, '<p>Ravani Mix</p>', NULL, 4475, 4411, 'Dessert Mixes', 1, 0),
(1000, 'JOTIS', NULL, '_TRD102', 'products/May2021/lWgmg7dxTZ5pq0ID0FBL.jpg', NULL, '9.99', '1.125', 1, 1, 0, 0, '2021-05-05 08:41:39', '2021-06-12 22:40:07', 'jotis', 68, '<p>Mille feuille Mix</p>', NULL, 4476, 4412, 'Dessert Mixes', 1, 0),
(1001, 'ADONIS', NULL, '_IMDO111', 'products/May2021/zVcA7mrndXcNbnJkeusj.jpg', NULL, '2.99', '0.125', 1, 1, 0, 0, '2021-05-05 08:43:26', '2021-06-12 22:40:07', 'adonis', 68, '<p>Knafeh Pastry Coloring</p>', NULL, 4477, 4413, 'Dessert Mixes', 1, 0),
(1002, 'ADONIS', NULL, '_DMA021', 'products/May2021/o6PMqfb4tWDYTjbFRhAg.jpg', NULL, '4.99', '1.125', 1, 1, 0, 0, '2021-05-05 08:46:24', '2021-06-12 22:40:07', 'adonis', 68, '<p>Sfouf Cake Mix</p>', NULL, 4478, 4414, 'Dessert Mixes', 1, 0),
(1003, 'ADONIS', NULL, '_DMA023', 'products/May2021/0iy5GziMzDFfDbhaHFwN.jpg', NULL, '3.99', '0.75', 1, 1, 0, 0, '2021-05-05 08:48:51', '2021-06-12 22:37:58', 'adonis', 56, '<p>Custard Powder</p>', NULL, 4479, 4415, '_', 1, 0),
(1004, 'LEBANON VALLEY', NULL, '_DML001', 'products/May2021/d63bHPpogRPPoK18e7nb.jpg', NULL, '1.59', '0.16', 1, 1, 0, 0, '2021-05-05 08:52:09', '2021-06-12 22:40:07', 'lebanon-valley', 68, '<p>Creme Caramel Mix</p>', NULL, 4480, 4416, 'Dessert Mixes', 1, 0),
(1005, 'JOTIS', NULL, '_DMY001', 'products/May2021/3hjCgqNXWINySeWFLtk2.jpg', NULL, '1.99', '0.16', 1, 1, 0, 0, '2021-05-05 08:53:56', '2021-06-12 22:40:07', 'jotis', 68, '<p>Creme Caramel Mix</p>', NULL, 4481, 4417, 'Dessert Mixes', 1, 0),
(1006, 'SHAHIA', NULL, '_JEL001', 'products/May2021/kcjV8oTjJ6ECyCKKCN5n.jpg', NULL, '1.25', '0.875', 1, 1, 0, 0, '2021-05-05 08:55:37', '2021-06-12 22:40:07', 'shahia', 68, '<p>Strawberry Jello Halal</p>', NULL, 4482, 4418, 'Dessert Mixes', 1, 0),
(1007, 'SHAHIA', NULL, '_JEL003', 'products/May2021/w89waaIQqQGpo45FaHuI.jpg', NULL, '1.25', '0.875', 1, 1, 0, 0, '2021-05-05 08:58:05', '2021-06-12 22:40:07', 'shahia', 68, '<p>Cherry Jello Halal</p>', NULL, 4483, 4419, 'Dessert Mixes', 1, 0),
(1008, 'SHAHIA', NULL, '_JEL005', 'products/May2021/CRwNt8vh943iVX4vXley.jpg', NULL, '1.25', '0.875', 1, 1, 0, 0, '2021-05-05 08:59:25', '2021-06-12 22:40:07', 'shahia', 68, '<p>Orange Jello Halal</p>', NULL, 4484, 4420, 'Dessert Mixes', 1, 0),
(1009, 'SHAHIA', NULL, '_JEL007', 'products/May2021/uL0pwNEE0boCloARaWxG.jpg', NULL, '1.25', '0.875', 1, 1, 0, 0, '2021-05-05 09:00:54', '2021-06-12 22:40:07', 'shahia', 68, '<p>Lemon Jello Halal</p>', NULL, 4485, 4421, 'Dessert Mixes', 1, 0),
(1010, 'SHAHIA', NULL, '_JEL009', 'products/May2021/CSj06E8sIZ1GtDtIFMjx.jpg', NULL, '1.25', '0.875', 1, 1, 0, 0, '2021-05-05 09:02:35', '2021-06-12 22:40:07', 'shahia', 68, '<p>Mango Jello Halal</p>', NULL, 4486, 4422, 'Dessert Mixes', 1, 0),
(1011, 'Shamra', NULL, '_NUTSS001', 'products/May2021/9Mrr1twnpeQZfRQHu2LU.jpg', NULL, '3.49', '0.4', 1, 1, 0, 0, '2021-05-05 18:53:32', '2021-06-12 22:40:07', 'shamra', 134, '<p>Pumpkin Seeds Roasted Salted</p>', NULL, 4487, 4423, 'Nuts & Energy Mixes', 1, 0),
(1012, 'Shamra', NULL, '_NUTSS003', 'products/May2021/MXAFbSZ21ZEXa8rMo5Lx.jpg', NULL, '3.49', '0.5', 1, 1, 0, 0, '2021-05-05 18:54:51', '2021-06-12 22:40:07', 'shamra', 134, '<p>Pumpkin Seeds Roasted Unsalted</p>', NULL, 4488, 4424, 'Nuts & Energy Mixes', 1, 0),
(1013, 'Shamra', NULL, '_NUTSS005', 'products/May2021/bvji1dA8RJBwxRBBU7Jd.jpg', NULL, '4.49', '0.6', 1, 1, 0, 0, '2021-05-05 18:56:14', '2021-06-12 22:40:07', 'shamra', 134, '<p>Pumpkin Seeds Ladies Nails Roasted Unsalted</p>', NULL, 4489, 4425, 'Nuts & Energy Mixes', 1, 0),
(1014, 'Shamra', NULL, '_NUTSS007', 'products/May2021/ZJIzmVZ0tFl73WAlSec6.jpg', NULL, '3.49', '0.5', 1, 1, 0, 0, '2021-05-05 18:57:27', '2021-06-12 22:40:07', 'shamra', 134, '<p>Squash Seeds Roasted Salted</p>', NULL, 4490, 4426, 'Nuts & Energy Mixes', 1, 0),
(1015, 'Shamra', NULL, '_NUTSS009', 'products/May2021/j4r3FXGUwQUtjTPE99rC.jpg', NULL, '4.49', '0.75', 1, 1, 0, 0, '2021-05-05 18:58:29', '2021-06-12 22:40:07', 'shamra', 134, '<p>Small Melon Seeds Roasted Salted</p>', NULL, 4491, 4427, 'Nuts & Energy Mixes', 1, 0),
(1016, 'Shamra', NULL, '_NUTSS013', 'products/May2021/g7pDGhYRGF4DHbVMImmr.jpg', NULL, '4.49', '0.5', 1, 1, 0, 0, '2021-05-05 18:59:41', '2021-06-12 22:40:07', 'shamra', 134, '<p>Red Melon Seeds Roasted Salted</p>', NULL, 4492, 4428, 'Nuts & Energy Mixes', 1, 0),
(1017, 'Shamra', NULL, '_NUTSS015', 'products/May2021/6nZsMcfvPkfXZeVTnjm1.jpg', NULL, '4.49', '0.6', 1, 1, 0, 0, '2021-05-05 19:00:56', '2021-06-12 22:40:07', 'shamra', 134, '<p>Super Melon Seeds Roasted Salted</p>', NULL, 4493, 4429, 'Nuts & Energy Mixes', 1, 0),
(1018, 'JOTIS', NULL, '_DMY011', 'products/May2021/zAfZ6hauWeGCG6SGrsoQ.jpg', NULL, '3.99', '0.356', 1, 1, 0, 0, '2021-05-05 19:06:50', '2021-06-12 22:40:07', 'jotis', 68, '<p>Bechamel Mix</p>', NULL, 4494, 4430, 'Dessert Mixes', 1, 0),
(1019, 'LAODICEA', NULL, '_LEJL001', 'products/May2021/kJ688BTVsvX2IP5OgjuS.jpg', NULL, '2.99', '3', 1, 1, 0, 0, '2021-05-05 19:08:49', '2021-06-12 22:40:07', 'laodicea', 67, '<p>Lemon Juice</p>', NULL, 4495, 4431, 'Cooking Aids', 1, 0),
(1020, 'MAGGI', NULL, '_BLC001', 'products/May2021/7nwep5GRP3FGy3XvhL5L.jpg', NULL, '10.99', '1.3', 1, 1, 0, 0, '2021-05-05 19:10:39', '2021-06-12 22:40:07', 'maggi', 67, '<p>Chicken Cubes Halal</p>', NULL, 4496, 4432, 'Cooking Aids', 1, 0),
(1021, 'MAGGI', NULL, '_BLC005', 'products/May2021/0ssHFxejhenWAMmLpzP2.jpg', NULL, '10.99', '1.3', 1, 1, 0, 0, '2021-05-05 19:12:22', '2021-06-12 22:40:07', 'maggi', 67, '<p>Vegetable Cubes Halal</p>', NULL, 4497, 4433, 'Cooking Aids', 1, 0),
(1022, 'CORTAS', NULL, '_LEJC001', 'products/May2021/ZHgKrotJeOypPntmAEKx.jpeg', NULL, '1.99', '2.2', 1, 1, 0, 0, '2021-05-05 19:13:54', '2021-06-12 22:40:07', 'cortas', 67, '<p>Lemon Juice Substitute</p>', NULL, 4498, 4434, 'Cooking Aids', 1, 0),
(1023, 'KRINOS', NULL, '_SPPK007', 'products/May2021/rLVVEdVzDtUZgZx37fWu.jpg', NULL, '3.99', '0.04', 1, 1, 0, 0, '2021-05-05 19:16:52', '2021-06-12 22:40:07', 'krinos', 65, '<p>Vanillin</p>', NULL, 4499, 4435, 'Baking Aids', 1, 0),
(1024, 'KRINOS', NULL, '_SPPK001', 'products/May2021/v7gjWv046Wlsyqt1B07N.jpg', NULL, '3.99', '0.05', 1, 1, 0, 0, '2021-05-05 19:19:14', '2021-06-12 22:40:07', 'krinos', 65, '<p>Ammonia - Baking Powder</p>', NULL, 4500, 4436, 'Baking Aids', 1, 0),
(1025, 'KRINOS', NULL, '_SPPK003', 'products/May2021/lGc1cgY8rYsKlVcj1PVE.jpg', NULL, '8.99', '0.04', 1, 1, 0, 0, '2021-05-05 19:20:47', '2021-06-12 22:40:07', 'krinos', 65, '<p>Mastic Gum - Chios Mastika</p>', NULL, 4501, 4437, 'Baking Aids', 1, 0),
(1026, 'Shamra', NULL, '_NUTSS019', 'products/May2021/V2h6jSRYcr3VW4dXVuFA.jpg', NULL, '2.99', '0.3', 1, 1, 0, 0, '2021-05-05 19:23:55', '2021-06-12 22:40:07', 'shamra', 134, '<p>Sunflower Seeds Roasted Salted - Jumbo</p>', NULL, 4502, 4438, 'Nuts & Energy Mixes', 1, 0),
(1027, 'Shamra', NULL, '_NUTCS001', 'products/May2021/EWgjo4BQaxxhDEPkpCsu.jpg', NULL, '3.49', '0.75', 1, 1, 0, 0, '2021-05-05 19:25:11', '2021-06-12 22:40:07', 'shamra', 134, '<p>Chick Peas Yellow Roasted Salted</p>', NULL, 4503, 4439, 'Nuts & Energy Mixes', 1, 0),
(1028, 'Shamra', NULL, '_NUTCS003', 'products/May2021/W5hppkSyT6E9quRafmiM.jpg', NULL, '3.49', '0.75', 1, 1, 0, 0, '2021-05-05 19:28:00', '2021-06-12 22:40:07', 'shamra', 134, '<p>Chick Peas Yellow Roasted Unsalted</p>', NULL, 4504, 4440, 'Nuts & Energy Mixes', 1, 0),
(1029, 'Shamra', NULL, '_NUTCS005', 'products/May2021/B2xY9lAL6ATbKKD64F24.jpg', NULL, '3.49', '0.75', 1, 1, 0, 0, '2021-05-05 19:29:18', '2021-06-12 22:40:07', 'shamra', 134, '<p>Chick Peas White Roasted Salted</p>', NULL, 4505, 4441, 'Nuts & Energy Mixes', 1, 0),
(1030, 'Shamra', NULL, '_NUTCS007', 'products/May2021/V5GOcjFEkxXn1FM2GJO6.jpg', NULL, '3.49', '0.75', 1, 1, 0, 0, '2021-05-05 19:30:28', '2021-06-12 22:40:07', 'shamra', 134, '<p>Chick Peas White Roasted Unsalted</p>', NULL, 4506, 4442, 'Nuts & Energy Mixes', 1, 0),
(1031, 'Shamra', NULL, '_NUTCS009', 'products/May2021/eRTLk2SnfgcNvaCb9nOu.jpg', NULL, '3.49', '0.75', 1, 1, 0, 0, '2021-05-05 19:31:36', '2021-06-12 22:40:07', 'shamra', 134, '<p>Chick Peas Yellow Double Roasted</p>', NULL, 4507, 4443, 'Nuts & Energy Mixes', 1, 0),
(1032, 'AL AMIRA', NULL, '_NUTM015', 'products/May2021/T7JjEmIDNfCdmdQipXKG.jpg', NULL, '6.99', '0.661', 1, 1, 0, 0, '2021-05-05 19:33:03', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Super Mixed Nuts</p>', NULL, 4508, 4444, 'Nuts & Energy Mixes', 1, 0),
(1033, 'AL AMIRA', NULL, '_NUTM017', 'products/May2021/opCFpDYZ44RV1IM5CX5j.jpg', NULL, '9.99', '0.661', 1, 1, 0, 0, '2021-05-05 19:34:27', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Deluxe Mixed Kernels</p>', NULL, 4509, 4445, 'Nuts & Energy Mixes', 1, 0),
(1034, 'AL AMIRA', NULL, '_NUTM019', 'products/May2021/tKGZPR1rZLfaXVBV6RFx.jpg', NULL, '5.99', '0.661', 1, 1, 0, 0, '2021-05-05 19:35:56', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Regular Mixed Nuts</p>', NULL, 4510, 4446, 'Nuts & Energy Mixes', 1, 0),
(1035, 'AL AMIRA', NULL, '_NUTM021', 'products/May2021/qQYefoctSHcsjvmhCDCa.jpg', NULL, '5.99', '0.661', 1, 1, 0, 0, '2021-05-05 19:37:18', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Extra Mixed Nuts</p>', NULL, 4511, 4447, 'Nuts & Energy Mixes', 1, 0),
(1036, 'AL AMIRA', NULL, '_NUTM100', 'products/May2021/i4nevARXEd7tvEw70v88.jpg', NULL, '12.99', '0.99', 1, 1, 0, 0, '2021-05-05 19:38:52', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Deluxe Mixed Kernels Nuts</p>', NULL, 4512, 4448, 'Nuts & Energy Mixes', 1, 0),
(1037, 'AL AMIRA', NULL, '_NUTM001', 'products/May2021/BiQUlw12JhSJyBDxcTjc.jpg', NULL, '7.49', '0.99', 1, 1, 0, 0, '2021-05-05 19:40:13', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Mixed Nuts Extra</p>', NULL, 4513, 4449, 'Nuts & Energy Mixes', 1, 0),
(1038, 'AL AMIRA', NULL, '_NUTM003', 'products/May2021/Jea04ySbAYnD1PoXSAWv.jpg', NULL, '8.99', '0.99', 1, 1, 0, 0, '2021-05-05 19:42:14', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Mixed Nuts Super Extra</p>', NULL, 4514, 4450, 'Nuts & Energy Mixes', 1, 0),
(1039, 'AL AMIRA', NULL, '_NUTM005', 'products/May2021/W5igmGh7uHkk4JzIYdKV.jpg', NULL, '13.99', '0.99', 1, 1, 0, 0, '2021-05-05 19:43:29', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Mixed Nuts Deluxe</p>', NULL, 4515, 4451, 'Nuts & Energy Mixes', 1, 0),
(1040, 'AL AMIRA', NULL, '_NUTM006', 'products/May2021/eNT79AG3mCUEwU2adLVX.jpg', NULL, '10.99', '0.99', 1, 1, 0, 0, '2021-05-05 19:44:51', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Low salt baked mixed nuts</p>', NULL, 4516, 4452, 'Nuts & Energy Mixes', 1, 0);
INSERT INTO `products` (`id`, `name`, `cookbook_author`, `code`, `image`, `gallery`, `price`, `size`, `size_unit_id`, `is_active`, `is_offer`, `is_large`, `created_at`, `updated_at`, `slug`, `product_category_id`, `body`, `discount`, `ac_id`, `ac_img_id`, `category_name`, `in_list`, `brand_id`) VALUES
(1041, 'AL AMIRA', NULL, '_NUTM011', 'products/May2021/HgbkFrYE0TrH7y3oREHP.jpg', NULL, '13.99', '0', 1, 1, 1, 0, '2021-05-05 19:46:00', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Mixed Nuts Regular/Extra/ Super Extra</p>', NULL, 4517, 4453, 'Nuts & Energy Mixes', 1, 0),
(1042, 'AL AMIRA', NULL, '_NUTM007', 'products/May2021/hixebeoFjXO3UW1Dk3VK.jpg', NULL, '15.99', '0.992', 1, 1, 0, 0, '2021-05-05 19:48:25', '2021-06-12 22:40:07', 'al-amira', 134, '<p>Elite Baked Mixed Nuts</p>', NULL, 4518, 4454, 'Nuts & Energy Mixes', 1, 0),
(1043, 'LAODICEA', NULL, '_CABL007', 'products/May2021/TYm0vStem1UtuwxNpZaI.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-06 17:23:44', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Soft Baked Biscotti - Strawberry Coconut</p>', NULL, 4520, 4457, 'Candy & Snack', 1, 0),
(1044, 'LAODICEA', NULL, '_CABL005', 'products/May2021/689W9YJmcpiQQpJg2tBf.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-06 17:25:18', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Soft Baked Biscotti - Pumpkin Glaze</p>', NULL, 4521, 4458, 'Candy & Snack', 1, 0),
(1045, 'LAODICEA', NULL, '_CABL003', 'products/May2021/5ARB9cJJZKeRbItXHTvX.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-06 17:26:27', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Soft Baked Biscotti - Lemon White Chocolate</p>', NULL, 4522, 4459, 'Candy & Snack', 1, 0),
(1046, 'LAODICEA', NULL, '_CABL001', 'products/May2021/3Dy4DtJg00fnALNTshgH.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-06 17:27:44', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Soft Baked Biscotti - Caramel Seasalt</p>', NULL, 4523, 4460, 'Candy & Snack', 1, 0),
(1047, 'LAODICEA', NULL, '_CABL000OF', 'products/May2021/qpXhYCn1274QNWvojOzK.jpg', NULL, '34.99', '0', 1, 1, 1, 0, '2021-05-06 17:31:00', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Soft Baked Biscotti - 4 PK.</p>', NULL, 4524, 4461, 'Candy & Snack', 1, 0),
(1048, 'YARA', NULL, '_SCY100', 'products/May2021/HWN2Aize3IswgQ0T6dEP.jpg', NULL, '3.99', '0.6', 1, 1, 0, 0, '2021-05-06 17:33:12', '2021-06-12 22:40:07', 'yara', 52, '<p>Sesame Crunch</p>', NULL, 4525, 4462, 'Candy & Snack', 1, 0),
(1049, 'LAODICEA', NULL, '_CGCY019', 'products/May2021/ojvrCspi6NVimYHJr1KN.jpg', NULL, '4.99', '0.5', 1, 1, 0, 0, '2021-05-06 17:34:23', '2021-06-12 22:40:07', 'laodicea', 52, '<p>Sugar Coated Chick Peas</p>', NULL, 4526, 4463, 'Candy & Snack', 1, 0),
(1050, 'YARA', NULL, '_CGCY015', 'products/May2021/fgSPpaoJOmUV5AcXBpHg.jpg', NULL, '4.49', '0.5', 1, 1, 0, 0, '2021-05-06 17:35:42', '2021-06-12 22:40:07', 'yara', 52, '<p>Super Fine Jordan Almonds - Assorted</p>', NULL, 4527, 4464, 'Candy & Snack', 1, 0),
(1051, 'YARA', NULL, '_CGCY011', 'products/May2021/KU8m2ikd09X8497BVNpa.jpg', NULL, '4.49', '0.5', 1, 1, 0, 0, '2021-05-06 17:37:07', '2021-06-12 22:40:07', 'yara', 52, '<p>Super Fine Jordan Almonds - White</p>', NULL, 4528, 4465, 'Candy & Snack', 1, 0),
(1052, 'YARA', NULL, '_YNWP001', 'products/May2021/zBd4k63RjxlFKsZPbzWJ.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-05-06 17:38:50', '2021-06-12 22:40:07', 'yara', 52, '<p>Nougat with Pistachio, 12 pcs.</p>', NULL, 4529, 4466, 'Candy & Snack', 1, 0),
(1053, 'YARA', NULL, '_YMWP001', 'products/May2021/wENX8TFOH3WmwXeXy7Rm.jpg', NULL, '6.99', '1', 1, 1, 0, 0, '2021-05-06 17:39:58', '2021-06-12 22:40:08', 'yara', 52, '<p>Malban with Pistachio, 10 pcs.</p>', NULL, 4530, 4467, 'Candy & Snack', 1, 0),
(1054, 'YARA', NULL, '_CGC011', 'products/May2021/w6kD1rBWxUIbZ4QUtSJG.jpg', NULL, '40.00', '5', 1, 1, 0, 0, '2021-05-06 17:41:26', '2021-06-12 22:40:08', 'yara', 52, '<p>Super Fine Jordan Almonds - White</p>', NULL, 4531, 4468, 'Candy & Snack', 1, 0),
(1055, 'YARA', NULL, '_CGC015', 'products/May2021/bRDHC1CgocV3x2SOHuou.jpg', NULL, '40.00', '5', 1, 1, 0, 0, '2021-05-06 17:42:40', '2021-06-12 22:40:08', 'yara', 52, '<p>Super Fine Jordan Almonds - Assorted</p>', NULL, 4532, 4469, 'Candy & Snack', 1, 0),
(1056, 'USAS', NULL, '_TUD035', 'products/May2021/xpn3y7JFdM8Csf0yrUnO.jpg', NULL, '5.99', '0.771', 1, 1, 0, 0, '2021-05-06 17:43:54', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight with Pistachio &amp; Pomegranate</p>', NULL, 4533, 4470, 'Candy & Snack', 1, 0),
(1057, 'USAS', NULL, '_TUD033', 'products/May2021/Ak65i5Lk3rsKGMNTh4LU.jpg', NULL, '5.99', '0.308', 1, 1, 0, 0, '2021-05-06 17:45:17', '2021-06-12 22:40:08', 'usas', 52, '<p>&nbsp;Chocolate Covered Rose Turkish Delight</p>', NULL, 4534, 4471, 'Candy & Snack', 1, 0),
(1058, 'USAS', NULL, '_TUD031', 'products/May2021/dskhzNf7HRdE8XuZWyZv.jpg', NULL, '5.99', '0.308', 1, 1, 0, 0, '2021-05-06 17:46:28', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Mint Dark Chocolate</p>', NULL, 4535, 4472, 'Candy & Snack', 1, 0),
(1059, 'USAS', NULL, '_TUD025', 'products/May2021/QOjLJwepkj6bKGOFvDau.jpg', NULL, '7.99', '0.8', 1, 1, 0, 0, '2021-05-06 17:47:47', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight with Pistachio and Pomegranate</p>', NULL, 4536, 4473, 'Candy & Snack', 1, 0),
(1060, 'USAS', NULL, '_TUD016', 'products/May2021/znztyBz6DVXHhprAYb0b.jpg', NULL, '5.99', '0.8', 1, 1, 0, 0, '2021-05-06 17:49:39', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight with pistachio</p>', NULL, 4537, 4474, 'Candy & Snack', 1, 0),
(1061, 'USAS', NULL, '_TUD017', 'products/May2021/zpotDE6a7JdV26oCtOPr.jpg', NULL, '3.99', '0.8', 1, 1, 0, 0, '2021-05-06 17:51:10', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Fruit Flavour</p>', NULL, 4538, 4475, 'Candy & Snack', 1, 0),
(1064, 'USAS', NULL, '_TUD015', 'products/May2021/AL9LbIRZBYCN6QJz3GjS.jpg', NULL, '4.99', '0.8', 1, 1, 0, 0, '2021-05-06 17:56:54', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight&nbsp; Blueberry Flavour</p>', NULL, 4540, 4477, 'Candy & Snack', 1, 0),
(1065, 'USAS', NULL, '_TUD003', 'products/May2021/Egk88gcEO0OJsoE9pEqx.jpg', NULL, '6.99', '0.3', 1, 1, 0, 0, '2021-05-06 17:58:10', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Chocolate Covered</p>', NULL, 4541, 4478, 'Candy & Snack', 1, 0),
(1066, 'USAS', NULL, '_TUD101', 'products/May2021/MNcmHWiPV216ZoUASsYr.jpg', NULL, '4.99', '0.8', 1, 1, 0, 0, '2021-05-06 17:59:27', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Pomegranate Flavour</p>', NULL, 4542, 4479, 'Candy & Snack', 1, 0),
(1067, 'USAS', NULL, '_TUD021', 'products/May2021/k2wHtOmJOTdbPx7q1VLz.jpg', NULL, '9.99', '0.8', 1, 1, 0, 0, '2021-05-06 18:00:37', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight with Pistachio and Hazelnut</p>', NULL, 4543, 4480, 'Candy & Snack', 1, 0),
(1068, 'USAS', NULL, '_TUD100', 'products/May2021/vjVTr7Pa9Flpw7OPXFDQ.jpg', NULL, '7.99', '0.8', 1, 1, 0, 0, '2021-05-06 18:01:49', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight with Fig and Walnut</p>', NULL, 4544, 4481, 'Candy & Snack', 1, 0),
(1069, 'USAS', NULL, '_TUD013', 'products/May2021/oHA8HmHhnFAOmRcugClw.jpg', NULL, '3.99', '0.8', 1, 1, 0, 0, '2021-05-06 18:03:12', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Rose Flavour</p>', NULL, 4545, 4482, 'Candy & Snack', 1, 0),
(1070, 'USAS', NULL, '_TUD011', 'products/May2021/HubfqmbnalvOfWgj2xP5.jpg', NULL, '3.99', '0.8', 1, 1, 0, 0, '2021-05-06 18:04:27', '2021-06-12 22:40:08', 'usas', 52, '<p>Turkish Delight Plain</p>', NULL, 4546, 4483, 'Candy & Snack', 1, 0),
(1071, 'KRAS', NULL, '_WAFK005', 'products/May2021/f00cjXOwqG7HGZ3ovkcS.jpg', NULL, '3.49', '0.727', 1, 1, 0, 0, '2021-05-06 18:05:39', '2021-06-12 22:40:08', 'kras', 52, '<p>Napolitanke Mocca Wafers</p>', NULL, 4547, 4484, 'Candy & Snack', 1, 0),
(1072, 'KRAS', NULL, '_WAFK003', 'products/May2021/Pqb52f9MfT5xc3qDfdSb.jpg', NULL, '3.49', '0.727', 1, 1, 0, 0, '2021-05-06 18:07:00', '2021-06-12 22:40:08', 'kras', 52, '<p>Napolitanke Lemon Orange Wafers</p>', NULL, 4548, 4485, 'Candy & Snack', 1, 0),
(1073, 'KRAS', NULL, '_WAFK001', 'products/May2021/t7HDP5u60UTnnHusult4.jpg', NULL, '3.49', '0.727', 1, 1, 0, 0, '2021-05-06 18:08:21', '2021-06-12 22:40:08', 'kras', 52, '<p>Napolitanke Hazelnut Wafers</p>', NULL, 4549, 4486, 'Candy & Snack', 1, 0),
(1074, 'ULKER', NULL, '_CNDU119', 'products/May2021/ZG6Ccg6bqQEs4ro7wJcN.jpg', NULL, '1.75', '0.386', 1, 1, 0, 0, '2021-05-06 18:09:38', '2021-06-12 22:40:08', 'ulker', 52, '<p>Tea Biscuit</p>', NULL, 4550, 4487, 'Candy & Snack', 1, 0),
(1075, 'Lotus', NULL, '_CNDL111', 'products/May2021/7gp0DIuxxjOv09jZ0abO.jpg', NULL, '9.99', '2.2', 1, 1, 0, 0, '2021-05-06 18:11:01', '2021-06-12 22:40:08', 'lotus', 52, '<p>Biscuit Cookies - 4 counts</p>', NULL, 4551, 4488, 'Candy & Snack', 1, 0),
(1076, 'PAPADOPOULOS', NULL, '_PAP011', 'products/May2021/r2I24vF1Qq01mNDdb9SV.jpg', NULL, '6.49', '0.55', 1, 1, 0, 0, '2021-05-06 18:12:15', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Caprice Praline Cream Filled Wafers</p>', NULL, 4552, 4489, 'Candy & Snack', 1, 0),
(1077, 'PAPADOPOULOS', NULL, '_PAP015', 'products/May2021/DjgxlNhc2rgoaWQCnK2C.jpg', NULL, '6.49', '0.55', 1, 1, 0, 0, '2021-05-06 18:14:41', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Caprice Dark Chocolate Cream</p>', NULL, 4553, 4490, 'Candy & Snack', 1, 0),
(1078, 'PAPADOPOULOS', NULL, '_PAP013', 'products/May2021/3cAanqMeK1rWwZI5HIEF.jpg', NULL, '6.49', '0.55', 1, 1, 0, 0, '2021-05-06 18:15:56', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Caprice Dark Chocolate Cream</p>', NULL, 4554, 4491, 'Candy & Snack', 1, 0),
(1079, 'COOKIES UNITED ALWAYS FRESH', NULL, '_CNDC335', 'products/May2021/54PPhJZOobv1CTyeDSot.jpg', NULL, '12.99', '0.5', 1, 1, 0, 0, '2021-05-06 18:17:26', '2021-06-12 22:40:08', 'cookies-united-always-fresh', 52, '<p>Cakebites Classic Italian Rainbow - 4 Pack of 3 Cookies</p>', NULL, 4555, 4492, 'Candy & Snack', 1, 0),
(1080, 'PAPADOPOULOS', NULL, '_CAPA121', 'products/May2021/cQnGAcr631clPnjFr5fA.jpg', NULL, '2.49', '0.494', 1, 1, 0, 0, '2021-05-06 18:18:50', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Petit Beurre Biscuits with Whole Grain Flour</p>', NULL, 4556, 4493, 'Candy & Snack', 1, 0),
(1081, 'NATURE VALLEY', NULL, '_CNDN333', 'products/May2021/mxcOZzlrZ4RLb4AIW6sw.jpg', NULL, '28.99', '3.7', 1, 1, 0, 0, '2021-05-06 18:20:22', '2021-06-12 22:40:08', 'nature-valley', 52, '<p>Sweet &amp; Salty Peanut</p>', NULL, 4557, 4494, 'Candy & Snack', 1, 0),
(1082, 'PEPPERIDGE FARM', NULL, '_CNDP111', 'products/May2021/RC9MopEtwvOu2AdN2yuW.jpg', NULL, '12.99', '1.406', 1, 1, 0, 0, '2021-05-06 18:21:33', '2021-06-12 22:40:08', 'pepperidge-farm', 52, '<p>Milano Dark Chocolate</p>', NULL, 4558, 4495, 'Candy & Snack', 1, 0),
(1083, 'THE HOUSE OF NOUGAT', NULL, '_CANDN005', 'products/May2021/sNwEB78lYfysYoS6AxK7.jpg', NULL, '59.00', '5', 1, 1, 0, 0, '2021-05-06 18:22:49', '2021-06-12 22:40:08', 'the-house-of-nougat', 52, '<p>Nougat with Pistachio</p>', NULL, 4559, 4496, 'Candy & Snack', 1, 0),
(1084, 'THE HOUSE OF NOUGAT', NULL, '_CANDN007', 'products/May2021/cDnIYidK0MWogkconUbl.jpg', NULL, '59.00', '5', 1, 1, 0, 0, '2021-05-06 18:24:03', '2021-06-12 22:40:08', 'the-house-of-nougat', 52, '<p>Nougat with Almond</p>', NULL, 4560, 4497, 'Candy & Snack', 1, 0),
(1087, 'JOYVA', NULL, '_CGC023', 'products/May2021/iyaCL8vmvx77quQkiUqr.jpg', NULL, '1.29', '0.08', 1, 1, 0, 0, '2021-05-06 18:29:14', '2021-06-12 22:40:08', 'joyva', 52, '<p>Sesame Snacks</p>', NULL, 4562, 4499, 'Candy & Snack', 1, 0),
(1088, 'JOYVA', NULL, '_CGC023OF', 'products/May2021/DBGxCTBgYzm2XKDQdTlF.jpg', NULL, '23.99', '0', 1, 1, 1, 0, '2021-05-06 18:30:00', '2021-06-12 22:40:08', 'joyva', 52, '<p>Sesame Snacks</p>\r\n<p>32 Oz. - 10 Pcs.</p>', NULL, 4563, 4500, 'Candy & Snack', 1, 0),
(1089, 'PAPADOPOULOS', NULL, '_PAP021', 'products/May2021/vZZSsGVXhslCd1GdcWB4.jpg', NULL, '2.19', '0.5', 1, 1, 0, 0, '2021-05-06 18:34:02', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Petit Beurre Biscuits</p>', NULL, 4564, 4501, 'Candy & Snack', 1, 0),
(1090, 'PAPADOPOULOS', NULL, '_PAP001OF', 'products/May2021/Bts0BkH0UbOs8ncbUNYb.jpg', NULL, '27.99', '0', 1, 1, 1, 0, '2021-05-06 18:35:00', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Petit Beurre Biscuits</p>\r\n<p>225 g. -8 Pcs.</p>', NULL, 4565, 4502, 'Candy & Snack', 1, 0),
(1091, 'KRINOS', NULL, '_CANDK003', 'products/May2021/1eY6WLRftOLCLOVsFPqe.jpg', NULL, '49.50', '5.5', 1, 1, 0, 0, '2021-05-06 18:38:14', '2021-06-12 22:40:08', 'krinos', 52, '<p>Cinnamon Flavored Hard Candy</p>', NULL, 4566, 4503, 'Candy & Snack', 1, 0),
(1092, 'ETI', NULL, '_ETI011OF', 'products/May2021/71j77buaCSCzofQZFZpi.jpg', NULL, '24.00', '0', 1, 1, 1, 0, '2021-05-06 18:40:00', '2021-06-12 22:40:08', 'eti', 52, '<p>Whole Wheat Digestive Biscuits</p>\r\n<p>0.29 lbs - 8 Bars</p>', NULL, 4567, 4504, 'Candy & Snack', 1, 0),
(1093, 'YARA', NULL, '_CANDN001', 'products/May2021/TJQCZNxzYgsfiqvpPIjN.jpg', NULL, '69.00', '5', 1, 1, 0, 0, '2021-05-06 18:41:39', '2021-06-12 22:40:08', 'yara', 52, '<p>Malban with Pistachio</p>', NULL, 4568, 4505, 'Candy & Snack', 1, 0),
(1094, 'SHARAWI', NULL, '_GUMS003', 'products/May2021/2n3FkRgp0ah8R5UrErWZ.jpg', NULL, '6.49', '0.75', 1, 1, 0, 0, '2021-05-06 18:43:57', '2021-06-12 22:40:08', 'sharawi', 52, '<p>Mastic Chewing Gum</p>', NULL, 4569, 4506, 'Candy & Snack', 1, 0),
(1095, 'ETI', NULL, '_ETI011', 'products/May2021/03lqRkZEAeldcOFlXNSW.jpg', NULL, '2.99', '0.29', 1, 1, 0, 0, '2021-05-06 18:45:51', '2021-06-12 22:40:08', 'eti', 52, '<p>Whole Wheat Digestive Biscuits</p>', NULL, 4570, 4507, 'Candy & Snack', 1, 0),
(1096, 'ETI', NULL, '_ETI001', 'products/May2021/vQ1L4rSLQ0R1yflkqXmm.jpg', NULL, '1.49', '0.45', 1, 1, 0, 0, '2021-05-06 18:47:19', '2021-06-12 22:40:08', 'eti', 52, '<p>Petit Beurre Biscuits</p>', NULL, 4571, 4508, 'Candy & Snack', 1, 0),
(1097, 'ETI', NULL, '_ETI001OF', 'products/May2021/cqSEScDMmGpJkJI2MI4R.jpg', NULL, '29.99', '0', 1, 1, 1, 0, '2021-05-06 18:50:00', '2021-06-12 22:40:08', 'eti', 52, '<p>Petit Beurre Biscuits</p>\r\n<p>225 g. -8 Pcs</p>', NULL, 4572, 4509, 'Candy & Snack', 1, 0),
(1098, 'VICENZI', NULL, '_WAFV001', 'products/May2021/93L86KnxYUYCLaYWdv0e.jpg', NULL, '3.99', '0.265', 1, 1, 0, 0, '2021-05-06 18:51:49', '2021-06-12 22:40:08', 'vicenzi', 52, '<p>Grisbi Milk Wafer</p>', NULL, 4573, 4510, 'Candy & Snack', 1, 0),
(1099, 'VICENZI', NULL, '_WAFV003', 'products/May2021/nzPyRayWv0iJb7R1sx0n.jpg', NULL, '3.99', '0.265', 1, 1, 0, 0, '2021-05-06 18:53:03', '2021-06-12 22:40:08', 'vicenzi', 52, '<p>Grisbi Chocolate Wafer</p>', NULL, 4574, 4511, 'Candy & Snack', 1, 0),
(1100, 'VICENZI', NULL, '_WAFV005', 'products/May2021/dSnYnFBTe7tFlYYzeGVi.jpg', NULL, '3.99', '0.265', 1, 1, 0, 0, '2021-05-06 18:54:14', '2021-06-12 22:40:08', 'vicenzi', 52, '<p>Grisbi Hazelnut Wafer</p>', NULL, 4575, 4512, 'Candy & Snack', 1, 0),
(1101, 'MACEDONIAN', NULL, '_CANDG021', 'products/May2021/fKZB3iYmn76FhVytU9tI.jpg', NULL, '1.75', '0.12', 1, 1, 0, 0, '2021-05-06 18:55:22', '2021-06-12 22:40:08', 'macedonian', 52, '<p>Sesame Snacks</p>', NULL, 4576, 4513, 'Candy & Snack', 1, 0),
(1102, 'MACEDONIAN', NULL, '_CANDG021OF', 'products/May2021/k5zeqixDN7ccZoZvspUh.jpg', NULL, '25.99', '0', 1, 1, 1, 0, '2021-05-06 18:56:00', '2021-06-12 22:40:08', 'macedonian', 52, '<p>Sesame Snacks</p>\r\n<p>50 Oz - 10 Pcs</p>', NULL, 4577, 4514, 'Candy & Snack', 1, 0),
(1103, 'MACEDONIAN', NULL, '_CANDG003', 'products/May2021/RoKjZ7xSpCE9b05CNHY6.jpg', NULL, '2.29', '0.23', 1, 1, 0, 0, '2021-05-06 18:58:04', '2021-06-12 22:40:08', 'macedonian', 52, '<p>Sesame Snacks</p>', NULL, 4578, 4515, 'Candy & Snack', 1, 0),
(1104, 'MACEDONIAN', NULL, '_CANDG023OF', 'products/May2021/f3WmSZdYOJGsssztiMHw.jpg', NULL, '27.99', '0', 1, 1, 1, 0, '2021-05-06 19:06:00', '2021-06-12 22:40:08', 'macedonian', 52, '<p>Sesame Snacks&nbsp;&nbsp;- 10 Pcs</p>\r\n<p>&nbsp;</p>', NULL, 4579, 4516, 'Candy & Snack', 1, 0),
(1105, 'KRINOS', NULL, '_CANDK013', 'products/May2021/31gNmRZE8xprOFXYlQ4p.jpg', NULL, '5.99', '0.66', 1, 1, 0, 0, '2021-05-06 19:07:20', '2021-06-12 22:40:08', 'krinos', 52, '<p>Cinnamon Flavored Hard Candy</p>', NULL, 4580, 4517, 'Candy & Snack', 1, 0),
(1106, 'PAPADOPOULOS', NULL, '_PAP003', 'products/May2021/7IPPOmp3iVwAuvti1a9B.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-06 19:09:14', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Orange Cream Sandwish Biscuits</p>', NULL, 4581, 4518, 'Candy & Snack', 1, 0),
(1107, 'PAPADOPOULOS', NULL, '_PAP005', 'products/May2021/DB4miflGiYi3MLgNPBuD.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-06 19:10:33', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Strawberry Cream Sandwish Biscuits</p>', NULL, 4582, 4519, 'Candy & Snack', 1, 0),
(1108, 'PAPADOPOULOS', NULL, '_PAP007', 'products/May2021/OezG46qUdoMdbTV9MHqE.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-06 19:11:45', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Banana Cream Sandwich Biscuits</p>', NULL, 4583, 4520, 'Candy & Snack', 1, 0),
(1109, 'PAPADOPOULOS', NULL, '_PAP001', 'products/May2021/gbHlGnBxVq1LHIPeXdYh.jpg', NULL, '1.99', '0.44', 1, 1, 0, 0, '2021-05-06 19:14:31', '2021-06-12 22:40:08', 'papadopoulos', 52, '<p>Chocolate Cream Sandwich Biscuits</p>', NULL, 4584, 4521, 'Candy & Snack', 1, 0),
(1110, 'LAODICEA', NULL, '_CACL111', 'products/May2021/4Y9NGxXilqCunPAkskry.jpg', NULL, '2.99', '0.55', 1, 1, 0, 0, '2021-05-06 19:17:00', '2021-06-12 22:40:08', 'laodicea', 53, '<p>Oat Crakers with Thyme</p>', NULL, 4585, 4522, 'Chips & Crisps', 1, 0),
(1111, 'LAODICEA', NULL, '_CACL113', 'products/May2021/njMTmd48zJlVGPtB8l0n.jpg', NULL, '2.99', '0.55', 1, 1, 0, 0, '2021-05-06 19:18:29', '2021-06-12 22:40:08', 'laodicea', 53, '<p>Oat Crakers with Olives</p>', NULL, 4586, 4523, 'Chips & Crisps', 1, 0),
(1112, 'LAODICEA', NULL, '_CGCL001', 'products/May2021/sU5WbxaVpU6f6NSacdf6.jpg', NULL, '15.99', '2.812', 1, 1, 0, 0, '2021-05-06 19:19:00', '2021-06-12 22:40:08', 'laodicea', 54, '<p>Dark Chocolate Covered</p>', NULL, 4587, 4524, 'Chocolate', 1, 0),
(1113, 'YARA', NULL, '_CHCY001', 'products/May2021/jdWj6OkTTnlEoqDBbNhm.jpg', NULL, '4.99', '0.35', 1, 1, 0, 0, '2021-05-06 19:21:00', '2021-06-12 22:40:08', 'yara', 54, '<p>Chocolate covered cashews</p>', NULL, 4588, 4525, 'Chocolate', 1, 0),
(1114, 'YARA', NULL, '_CHPY001', 'products/May2021/bs4VxI6nsXdwVqQjS8OS.jpg', NULL, '4.99', '0.35', 1, 1, 0, 0, '2021-05-06 19:23:05', '2021-06-12 22:40:08', 'yara', 54, '<p>Chocolate covered pomegranate</p>', NULL, 4589, 4526, 'Chocolate', 1, 0),
(1116, 'ULKER', NULL, '_CNDU111', 'products/May2021/XIoxmgqQBWDEjUyMIGca.jpg', NULL, '2.99', '0.175', 1, 1, 0, 0, '2021-05-06 19:29:14', '2021-06-12 22:40:08', 'ulker', 54, '<p>Turkish Dark Chocolate with Pistachio</p>', NULL, 4590, 4527, 'Chocolate', 1, 0),
(1117, 'ULKER', NULL, '_CNDU113', 'products/May2021/MHenf0N9vw1E5IAte8fG.jpg', NULL, '2.99', '0.175', 1, 1, 0, 0, '2021-05-06 19:30:35', '2021-06-12 22:40:08', 'ulker', 54, '<p>Turkish Milk Chocolate with Pistachio</p>', NULL, 4591, 4528, 'Chocolate', 1, 0),
(1118, 'InnoFoods', NULL, '_CNDI131', 'products/May2021/sUI085udbXd5tYNfsqAH.jpg', NULL, '21.67', '1.125', 1, 1, 0, 0, '2021-05-06 19:32:02', '2021-06-12 22:40:08', 'innofoods', 54, '<p>Dark Chocolate Nuggets2</p>', NULL, 4592, 4529, 'Chocolate', 1, 0),
(1119, 'M&M\'S', NULL, '_CNDM023', 'products/May2021/dNhClA3hp0TaWxy6eclP.jpg', NULL, '1.75', '0.234', 1, 1, 0, 0, '2021-05-06 19:33:21', '2021-06-12 22:40:08', 'mandm-s', 54, '<p>Peanut Chocolate Candy Fun</p>', NULL, 4593, 4530, 'Chocolate', 1, 0),
(1120, 'REESE\'S', NULL, '_CNDR021', 'products/May2021/UCu1laqf3BdQDO5OYF14.jpg', NULL, '1.75', '0.094', 1, 1, 0, 0, '2021-05-06 19:34:38', '2021-06-12 22:40:08', 'reese-s', 54, '<p>Peanut Butter Cups Chocolate Bulk Candy</p>', NULL, 4594, 4531, 'Chocolate', 1, 0),
(1121, 'SNICKERS', NULL, '_CNDS019', 'products/May2021/qZGzyHGX4Q9AuCJAvtnc.jpg', NULL, '1.75', '0.105', 1, 1, 0, 0, '2021-05-06 19:35:45', '2021-06-12 22:40:08', 'snickers', 54, '<p>Chocolate Candy</p>', NULL, 4595, 4532, 'Chocolate', 1, 0),
(1122, 'Kit Kat', NULL, '_CNDK017', 'products/May2021/ytvg395gcKKGJJ3VsqU3.jpg', NULL, '1.75', '0.094', 1, 1, 0, 0, '2021-05-06 19:37:19', '2021-06-12 22:40:08', 'kit-kat', 54, '<p>Milk Chocolate</p>', NULL, 4596, 4533, 'Chocolate', 1, 0),
(1123, 'HERSHEY\'S', NULL, '_CNDH115', 'products/May2021/d6t27mgEPR80uPZp0FEW.jpg', NULL, '1.75', '0.091', 1, 1, 0, 0, '2021-05-06 19:38:32', '2021-06-12 22:40:08', 'hershey-s', 54, '<p>Milk Chocolate with Almonds&nbsp;</p>', NULL, 4597, 4534, 'Chocolate', 1, 0),
(1124, 'ION', NULL, '_CAIO001', 'products/May2021/w1Gd03V10MyOmFzh3bGc.jpg', NULL, '5.99', '0.55', 1, 1, 0, 0, '2021-05-06 19:40:42', '2021-06-12 22:40:08', 'ion', 54, '<p>Milk Chocolate with Whole Hazelnuts</p>', NULL, 4598, 4535, 'Chocolate', 1, 0),
(1125, 'ION', NULL, '_CAIO003', 'products/May2021/mEazNXFMTrCfjWVYlCiE.jpg', NULL, '15.99', '0', 1, 1, 1, 0, '2021-05-06 19:42:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Milk Chocolate with Whole Hazelnuts - 3 PK.</p>', NULL, 4599, 4536, 'Chocolate', 1, 0),
(1126, 'TWIX', NULL, '_CNDT111', 'products/May2021/BmBermFITZL8kS7izOut.jpeg', NULL, '1.75', '0.112', 1, 1, 0, 0, '2021-05-06 19:43:00', '2021-06-12 22:40:08', 'twix', 54, '<p>TWIX Caramel</p>', NULL, 4600, 4537, 'Chocolate', 1, 0),
(1127, 'ION', NULL, '_CANDG011', 'products/May2021/9S0nyscHfPWYo8GJDdt4.jpg', NULL, '4.99', '0.46', 1, 1, 0, 0, '2021-05-06 19:44:57', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta - Mini</p>', NULL, 4601, 4538, 'Chocolate', 1, 0),
(1128, 'ION', NULL, '_CANDG007', 'products/May2021/CyKYwcVGUPqASRsKxB0T.jpg', NULL, '1.25', '0.08', 1, 1, 0, 0, '2021-05-06 19:47:36', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta White Chocolate Covered Wafer</p>', NULL, 4602, 4539, 'Chocolate', 1, 0),
(1129, 'ION', NULL, '_CANDG005', 'products/May2021/bUtr63jGDarXtFepsA9r.jpg', NULL, '1.25', '0.08', 1, 1, 0, 0, '2021-05-06 19:48:42', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta with Wafer Semisweet Chocolate</p>', NULL, 4603, 4540, 'Chocolate', 1, 0),
(1130, 'ION', NULL, '_CANDG001', 'products/May2021/hgQAL6ELMKvaYF8cWEww.jpg', NULL, '1.25', '0.08', 1, 1, 0, 0, '2021-05-06 19:49:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Milk Chocolate Covered Wafer</p>', NULL, 4604, 4541, 'Chocolate', 1, 0),
(1131, 'ION', NULL, '_CANDG002', 'products/May2021/teaIkexih0e9WVd3w00G.jpg', NULL, '1.25', '0.08', 1, 1, 0, 0, '2021-05-06 19:51:05', '2021-06-12 22:40:08', 'ion', 54, '<p>Hazelnuts Covered Wafer</p>', NULL, 4605, 4542, 'Chocolate', 1, 0),
(1132, 'ION', NULL, '_CANDG007OF', 'products/May2021/K4XfJIKu181BcyI4NTkY.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 19:52:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta White Chocolate Covered Wafer</p>\r\n<p>38 Oz. - 6 Bars</p>', NULL, 4606, 4543, 'Chocolate', 1, 0),
(1133, 'ION', NULL, '_CANDG001OF', 'products/May2021/NDw4q8mqc47cezmPZUwx.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 19:55:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta with Wafer Semisweet Chocolate</p>\r\n<p>38 Oz - 6 Bars</p>', NULL, 4607, 4544, 'Chocolate', 1, 0),
(1134, 'ION', NULL, '_CANDG003OF', 'products/May2021/9rN9ywMG3Mp2YDPJZlFP.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 19:56:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta with Wafer Hazelnut Chocolate</p>\r\n<p>38 Oz - 6 Bars</p>', NULL, 4608, 4545, 'Chocolate', 1, 0),
(1135, 'ION', NULL, '_CANDG005OF', 'products/May2021/dL40bGnE7k3TSHQEPVZE.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 19:57:00', '2021-06-12 22:40:08', 'ion', 54, '<p>Choco Freta with Wafer Milk Chocolate</p>\r\n<p>38 Oz - 6 Bars</p>', NULL, 4609, 4546, 'Chocolate', 1, 0),
(1136, 'KINDER', NULL, '_CHOK003', 'products/May2021/EBxzF7B5CfSDsZ5Kq9wZ.jpg', NULL, '1.99', '0.1', 1, 1, 0, 0, '2021-05-06 19:58:48', '2021-06-12 22:40:08', 'kinder', 54, '<p>Bueno Chocolate Bars</p>', NULL, 4610, 4547, 'Chocolate', 1, 0),
(1137, 'KINDER', NULL, '_CHOK003OF', 'products/May2021/no0wAttLbGUJaSzacOgS.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 20:00:00', '2021-06-12 22:40:08', 'kinder', 54, '<p>Bueno Chocolate Bars</p>\r\n<p>43 Oz. - 3 Bars</p>', NULL, 4611, 4548, 'Chocolate', 1, 0),
(1140, 'KINDER', NULL, '_CHOK001', 'products/May2021/Prs8TwRJRBuaD66IFf9m.jpg', NULL, '3.49', '0.22', 1, 1, 0, 0, '2021-05-06 20:03:31', '2021-06-12 22:40:08', 'kinder', 54, '<p>Chocolate Bars</p>', NULL, 4613, 4550, 'Chocolate', 1, 0),
(1141, 'KINDER', NULL, '_CHOK001OF', 'products/May2021/Culd1FcaqffzsjCqDyxm.jpg', NULL, '14.99', '0', 1, 1, 1, 0, '2021-05-06 20:04:00', '2021-06-12 22:40:08', 'kinder', 54, '<p>Chocolate Bars</p>\r\n<p>3.52 oz. - 3 Packs</p>', NULL, 4614, 4551, 'Chocolate', 1, 0),
(1142, 'CHIKO', NULL, '_CANDC003', 'products/May2021/WnUEL5ry5GJi4BxARvwq.jpg', NULL, '5.99', '0.66', 1, 1, 0, 0, '2021-05-06 20:05:50', '2021-06-12 22:40:08', 'chiko', 54, '<p>Eclair Caramel with a Chocolate Centre Gift Box&nbsp;</p>', NULL, 4615, 4552, 'Chocolate', 1, 0),
(1143, 'CHIKO', NULL, '_CANDC007', 'products/May2021/me8ilvtOIbsWlFdE9ZQz.jpg', NULL, '10.99', '1.431', 1, 1, 0, 0, '2021-05-06 20:06:57', '2021-06-12 22:40:08', 'chiko', 54, '<p>Eclair Caramel / Chocolate Center -&nbsp; Heart Shaped Box</p>', NULL, 4616, 4553, 'Chocolate', 1, 0),
(1144, 'CHIKO', NULL, '_CANDC005', 'products/May2021/MnZSqJofYT3A7vLXgcJD.jpg', NULL, '5.99', '0.66', 1, 1, 0, 0, '2021-05-06 20:08:11', '2021-06-12 22:40:08', 'chiko', 54, '<p>Eclair Caramel / Chocolate Center -&nbsp; Heart Shaped Box</p>', NULL, 4617, 4554, 'Chocolate', 1, 0),
(1145, 'ULKER- Albeni', NULL, '_CNDU115', 'products/May2021/660gDYKlfS9n7o2y8LQo.jpeg', NULL, '1.75', '0.088', 1, 1, 0, 0, '2021-05-06 20:09:17', '2021-06-12 22:40:08', 'ulker-albeni', 54, '<p>Chocolate with Caramel</p>', NULL, 4618, 4555, 'Chocolate', 1, 0),
(1146, 'ULKER', NULL, '_CNDU117', 'products/May2021/iNmgUWJSAro4VYTaBcMe.jpg', NULL, '0.99', '0.084', 1, 1, 0, 0, '2021-05-06 20:10:25', '2021-06-12 22:40:08', 'ulker', 54, '<p>Chocolate Wafer</p>', NULL, 4619, 4556, 'Chocolate', 1, 0),
(1150, 'Gerber', NULL, '_CERG0010', 'products/May2021/ncc4wyDnFKHGJOHiPSwj.jpg', NULL, '12.99', '0', 1, 1, 1, 0, '2021-05-06 20:28:00', '2021-06-12 22:40:08', 'gerber', 130, '<p>Gerber yogur Blends Assortment aperitivos-12 Count</p>', NULL, 4622, 4559, 'Baby Foods', 1, 0),
(1151, 'Shamra', NULL, '_HOC020', 'products/May2021/Ef2IX53BmwTLC6kGMayi.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-06 20:30:10', '2021-06-12 22:40:08', 'shamra', 138, '<p>Two Hookah Ceramic Head</p>', NULL, 4623, 4560, 'Hookah & Accessories', 1, 0),
(1153, 'Shamra', NULL, '_HOO501', 'products/May2021/KolDxgMwngtln8fFpdUY.jpg', NULL, '69.99', '2', 1, 1, 0, 0, '2021-05-06 20:34:11', '2021-06-12 22:40:08', 'shamra', 138, '<p>Brass Hookah Set - Large - Egyptian</p>', NULL, 4624, 4561, 'Hookah & Accessories', 1, 0),
(1154, 'Shamra', NULL, '_HOO503', 'products/May2021/WmLfOgMyfkWZ6dWW72gu.jpg', NULL, '69.99', '2', 1, 1, 0, 0, '2021-05-06 20:35:21', '2021-06-12 22:40:08', 'shamra', 138, '<p>Brass Hookah Set - EX Large - Egyptian</p>', NULL, 4625, 4562, 'Hookah & Accessories', 1, 0),
(1155, 'Shamra', NULL, '_HOA043', 'products/May2021/vvqi5N2z2Xx7jyZEOnYV.jpg', NULL, '24.99', '2', 1, 1, 0, 0, '2021-05-06 20:37:24', '2021-06-12 22:40:08', 'shamra', 138, '<p>Egyptian Hookah Glass Jar - Fancy</p>', NULL, 4626, 4563, 'Hookah & Accessories', 1, 0),
(1156, 'Shamra', NULL, '_HOA045', 'products/May2021/jHc5aLAWG4ZXhFxJyhYY.jpg', NULL, '17.99', '2', 1, 1, 0, 0, '2021-05-06 20:38:48', '2021-06-12 22:40:08', 'shamra', 138, '<p>Egyptian Hookah Hose</p>', NULL, 4627, 4564, 'Hookah & Accessories', 1, 0),
(1158, 'Shamra', NULL, '_HOO317', 'products/May2021/VigKJzXTACBlLf0Hogcf.jpg', NULL, '45.00', '2', 1, 1, 0, 0, '2021-05-06 20:43:27', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 20 Inch with Case</p>', NULL, 4628, 4565, 'Hookah & Accessories', 1, 0),
(1160, 'Shamra', NULL, '_HOO321', 'products/May2021/3MbV8EtaeUkjisfHaAqt.jpg', NULL, '45.00', '2', 1, 1, 0, 0, '2021-05-06 20:47:15', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 27 Inch with Case</p>', NULL, 4629, 4566, 'Hookah & Accessories', 1, 0),
(1162, 'Shamra', NULL, '_HOO301', 'products/May2021/U6xQRXjpY6x9vWu14WBl.jpg', NULL, '38.99', '2', 1, 1, 0, 0, '2021-05-06 20:50:30', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 26 Inch with Case</p>', NULL, 4630, 4567, 'Hookah & Accessories', 1, 0),
(1163, 'Shamra', NULL, '_HOO305', 'products/May2021/EUnVAB1L6WSTc8CNBEwb.jpg', NULL, '38.99', '2', 1, 1, 0, 0, '2021-05-06 20:52:59', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 24 Inch with Color Box</p>', NULL, 4631, 4568, 'Hookah & Accessories', 1, 0),
(1165, 'Shamra', NULL, '_HOO303', 'products/May2021/wiLPkdOguLQ602djnUqr.jpg', NULL, '39.99', '2', 1, 1, 0, 0, '2021-05-06 20:56:28', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 20 Inch with Color Box</p>', NULL, 4632, 4569, 'Hookah & Accessories', 1, 0),
(1166, 'Shamra', NULL, '_HOO311', 'products/May2021/8weiuZd3Q5XWWm3O4oMp.jpg', NULL, '29.99', '2', 1, 1, 0, 0, '2021-05-06 20:57:32', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 12.5 Inch with Case</p>', NULL, 4633, 4570, 'Hookah & Accessories', 1, 0),
(1167, 'Shamra', NULL, '_HOO325', 'products/May2021/V7cGqe5bSEmn4i5Y3X71.jpg', NULL, '59.99', '3', 1, 1, 0, 0, '2021-05-06 20:58:54', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 27 Inch - Four Hoses with Color Box</p>', NULL, 4634, 4571, 'Hookah & Accessories', 1, 0),
(1168, 'Shamra', NULL, '_HOO341', 'products/May2021/1FhNNYGuOFPsr7Rc9FEb.jpg', NULL, '54.99', '3', 1, 1, 0, 0, '2021-05-06 21:00:20', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 17 Inch - Three Hoses with Color Box</p>', NULL, 4635, 4572, 'Hookah & Accessories', 1, 0),
(1169, 'Shamra', NULL, '_HOO323', 'products/May2021/nYrb1UTtyxo6amlMr0zt.jpg', NULL, '49.99', '3', 1, 1, 0, 0, '2021-05-06 21:01:36', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 23 Inch - Two Hoses with Color</p>', NULL, 4636, 4573, 'Hookah & Accessories', 1, 0),
(1170, 'Shamra', NULL, '_HOO313', 'products/May2021/Kq91b2aDRvV5g7nWyw96.jpg', NULL, '45.00', '3', 1, 1, 0, 0, '2021-05-06 21:08:36', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 13.5 Inch - Two Hoses with Case</p>', NULL, 4637, 4574, 'Hookah & Accessories', 1, 0),
(1171, 'Shamra', NULL, '_HOO339', 'products/May2021/6iTMoCfZI6YGBERHqSZL.jpg', NULL, '39.99', '3', 1, 1, 0, 0, '2021-05-06 21:09:48', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 19 Inch with Color Box</p>', NULL, 4638, 4575, 'Hookah & Accessories', 1, 0),
(1172, 'Shamra', NULL, '_HOO307', 'products/May2021/43cXgKz7B3sPA5GvgHvr.jpg', NULL, '39.99', '2', 1, 1, 0, 0, '2021-05-06 21:11:03', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Set 25 Inch with Color Box</p>', NULL, 4639, 4576, 'Hookah & Accessories', 1, 0),
(1173, 'Shamra', NULL, '_HOC010', 'products/May2021/puC06eUQ2VMC0ZqX7bLx.jpg', NULL, '3.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:12:08', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Ceramic Head&nbsp;</p>', NULL, 4640, 4577, 'Hookah & Accessories', 1, 0),
(1174, 'Shamra', NULL, '_HOC012', 'products/May2021/A3mAiEw1nIrwNPbU9KiG.jpg', NULL, '3.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:13:51', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Head w/Metal Screen and Cover</p>', NULL, 4641, 4578, 'Hookah & Accessories', 1, 0),
(1175, 'Shamra', NULL, '_HOC018', 'products/May2021/Nlf2QvsAdVjNGBsLF0rd.jpg', NULL, '3.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:15:07', '2021-06-12 22:40:08', 'shamra', 138, '<p>Split Hookah Ceramic Head</p>', NULL, 4642, 4579, 'Hookah & Accessories', 1, 0),
(1176, 'Shamra', NULL, '_HOC022', 'products/May2021/v0KCqYc4PqYk0m5rWhKp.jpg', NULL, '7.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:16:05', '2021-06-12 22:40:08', 'shamra', 138, '<p>Three Hookah Ceramic Head</p>', NULL, 4643, 4580, 'Hookah & Accessories', 1, 0),
(1177, 'Shamra', NULL, '_HOC024', 'products/May2021/p6gbleqggr3MufzajbA6.jpg', NULL, '9.99', '1', 1, 1, 0, 0, '2021-05-06 21:17:21', '2021-06-12 22:40:08', 'shamra', 138, '<p>Four Hookah Ceramic Head</p>', NULL, 4644, 4581, 'Hookah & Accessories', 1, 0),
(1178, 'Shamra', NULL, '_HOC026', 'products/May2021/pQJOxsylByr3vdITb1QD.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-06 21:18:30', '2021-06-12 22:40:08', 'shamra', 138, '<p>Skull Shaped Ceramic Head</p>', NULL, 4645, 4582, 'Hookah & Accessories', 1, 0),
(1179, 'Shamra', NULL, '_HOA007', 'products/May2021/E8D3zQ5gAfdeqVDmsBsf.jpg', NULL, '6.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:19:52', '2021-06-12 22:40:08', 'shamra', 138, '<p>Egyptian Mouth Tips -100 pcs</p>', NULL, 4646, 4583, 'Hookah & Accessories', 1, 0),
(1180, 'Shamra', NULL, '_HOA037', 'products/May2021/D6GlR7uke7By9bvirxkF.jpg', NULL, '4.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:21:16', '2021-06-12 22:40:08', 'shamra', 138, '<p>Egyptian Hookah Head</p>', NULL, 4647, 4584, 'Hookah & Accessories', 1, 0),
(1181, 'Shamra', NULL, 'HOA047', 'products/May2021/EKR7chDfv5xjISfzIHQA.jpg', NULL, '1.99', '0.5', 1, 1, 0, 0, '2021-05-06 21:22:47', '2021-06-12 22:40:08', 'shamra', 138, '<p>Hookah Plastic Hose ( One Time Use )</p>', NULL, 4648, 4585, 'Hookah & Accessories', 1, 0),
(1182, 'Off The Eaten Path', NULL, '_CNDO037', 'products/May2021/bpOguZAsLNnFXGA5NJe1.jpg', NULL, '3.99', '1.25', 1, 1, 0, 0, '2021-05-06 21:45:00', '2021-06-12 22:40:08', 'off-the-eaten-path', 53, '<p>Rice Peas &amp; Black Beans Veggie Crisps</p>', NULL, 4649, 4586, 'Chips & Crisps', 1, 0),
(1183, 'Wellsley Farms', NULL, '_MSWE011', 'products/May2021/QzwRiofG4tGKIQps1sHn.jpg', NULL, '48.99', '3', 1, 1, 0, 0, '2021-05-16 23:40:25', '2021-06-12 22:40:08', 'wellsley-farms', 130, '<p>Wellsley Farms NonGMO Sensitivity Milk Based Powder &amp; Iron Infant Formula</p>', NULL, 4650, 4587, 'Baby Foods', 1, 0),
(1184, 'Wellsley Farms', NULL, '_MSWE013', 'products/May2021/QIWAHgN358Ziqgn6XNqp.jpg', NULL, '48.99', '3', 1, 1, 0, 0, '2021-05-16 23:42:47', '2021-06-12 22:40:08', 'wellsley-farms', 130, '<p>Wellsley Farms Non-GMO Advantage Infant Form. Milk Based Powder with Iron</p>', NULL, 4651, 4588, 'Baby Foods', 1, 0),
(1185, 'Champion Tri Flex', NULL, '_EYEC001', 'products/May2021/XBtXt6drlk0FAqlyI449.jpg', NULL, '49.99', '0', 1, 1, 1, 0, '2021-05-17 18:57:22', '2021-06-12 22:40:08', 'champion-tri-flex', 140, '<p>Multi Layer Polarized Sunglasses</p>', NULL, 4652, 4589, 'Sunglasses', 1, 0),
(1186, 'Puma', NULL, '_EYEP101', 'products/May2021/brWjDtG17G6rkKD1hn22.jpg', NULL, '49.99', '0', 1, 1, 1, 0, '2021-05-17 19:34:44', '2021-06-12 22:40:08', 'puma', 140, '<p>Sunglasses, Polarized Lenses FY20 Model</p>', NULL, 4653, 4590, 'Sunglasses', 1, 0),
(1189, 'Eddie Bauer', NULL, '_EYEE111', 'products/May2021/MO1YrXrRtUATjW4ujcQc.jpg', NULL, '49.99', '0', 1, 1, 1, 0, '2021-05-17 19:50:28', '2021-06-12 22:40:08', 'eddie-bauer', 140, '<p>Polarized Sunglasses</p>', NULL, 4655, 4592, 'Sunglasses', 1, 0),
(1191, 'JOYVA', NULL, '__CGC025', 'products/May2021/J6NQbWxUWmSbTCRx7LjX.jpg', NULL, '45.00', '10', 1, 1, 0, 0, '2021-05-17 20:46:32', '2021-06-12 22:40:08', 'joyva', 52, '<p>Sesame Crunch - Individual Wrap</p>', NULL, 4656, 4593, 'Candy & Snack', 1, 0),
(1192, 'KERRYGOLD', NULL, '__BUK113', 'products/May2021/7MLbNqvTJrHgi1sYpoOa.jpg', NULL, '15.99', '2', 1, 1, 0, 0, '2021-05-17 21:18:34', '2021-06-12 22:40:08', 'kerrygold', 77, '<p>Pure Irish Butter Unsalted - 4 PK</p>', NULL, 4657, 4594, 'Butter', 1, 0),
(1193, 'LAODICEA', NULL, '_FRVL025', 'products/May2021/Sk2hdhA0ijEV1TNh0lnr.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 17:54:19', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Baby Okra</p>', NULL, 4658, 4595, 'Frozen Vegetables', 1, 0),
(1194, 'LAODICEA', NULL, '_FRVL023', 'products/May2021/ZkltOUKixOBemPiguw18.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 17:56:11', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Okra</p>', NULL, 4659, 4596, 'Frozen Vegetables', 1, 0),
(1195, 'LAODICEA', NULL, '_FRVL021', 'products/May2021/9s4Zi1lmMzAqBrvDAa0v.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-19 17:58:17', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Taro</p>', NULL, 4660, 4597, 'Frozen Vegetables', 1, 0),
(1196, 'LAODICEA', NULL, '_FRVL019', 'products/May2021/WExRZD9VAiGQydelCWZT.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 17:59:49', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Artichoke</p>', NULL, 4661, 4598, 'Frozen Vegetables', 1, 0),
(1197, 'LAODICEA', NULL, '_FRVL007', 'products/May2021/q6RlqHkhIKYMnumS6cwi.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:02:28', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Green Beans</p>', NULL, 4662, 4599, 'Frozen Vegetables', 1, 0),
(1198, 'LAODICEA', NULL, '_FRVL003', 'products/May2021/FA2MNNbXq2j64fFMCuHg.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:03:56', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Peas &amp; Carrot</p>', NULL, 4663, 4600, 'Frozen Vegetables', 1, 0),
(1199, 'LAODICEA', NULL, '_FRVL009', 'products/May2021/OYMLtwZ3A6mDLmwRp4Zs.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:05:45', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Mlukhiya</p>', NULL, 4664, 4601, 'Frozen Vegetables', 1, 0),
(1200, 'LAODICEA', NULL, '_FRVL011', 'products/May2021/xjdXwgJieOkzVEhm5ZsP.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:07:08', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Mlukhiya Leaves</p>', NULL, 4665, 4602, 'Frozen Vegetables', 1, 0),
(1201, 'LAODICEA', NULL, '_FRVL001', 'products/May2021/mlK8kWl1Jn7rQWNEKB7X.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:08:50', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Green Peas</p>', NULL, 4666, 4603, 'Frozen Vegetables', 1, 0),
(1202, 'LAODICEA', NULL, '_FRVL015', 'products/May2021/2G8g9IBLZYtD1moDJKIj.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:10:34', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Broccoli &amp; Cauliflower</p>', NULL, 4667, 4604, 'Frozen Vegetables', 1, 0),
(1203, 'LAODICEA', NULL, '_FRVL013', 'products/May2021/Cuyuy8w9i7lXp6vDfg3J.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:17:19', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Spinach</p>', NULL, 4668, 4605, 'Frozen Vegetables', 1, 0),
(1204, 'LAODICEA', NULL, '_FRVL005', 'products/May2021/zVY0t55bJjXc3BEWU3xV.jpg', NULL, '3.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:19:12', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Green Broad Fava</p>', NULL, 4669, 4606, 'Frozen Vegetables', 1, 0),
(1205, 'LAODICEA', NULL, '_FRVL017', 'products/May2021/0ST21NghRfcZe1KdJrJb.jpg', NULL, '4.49', '1.1', 1, 1, 0, 0, '2021-05-19 18:20:48', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Broccoli &amp; Cauliflower &amp; Carrot</p>', NULL, 4670, 4607, 'Frozen Vegetables', 1, 0),
(1206, 'ALWADI', NULL, '_FRVA009', 'products/May2021/f8dRN3XXjwDhQnHEgyYg.png', NULL, '4.99', '0.875', 1, 1, 0, 0, '2021-05-19 18:33:00', '2021-06-12 22:40:08', 'alwadi', 110, '<p>Artichoke Bottoms</p>', NULL, 4671, 4608, 'Frozen Vegetables', 1, 0),
(1207, 'ALWADI', NULL, '_FRVA007', 'products/May2021/yYyq7ahAFhp3Sq3gUQaq.png', NULL, '3.49', '0.875', 1, 1, 0, 0, '2021-05-19 18:36:23', '2021-06-12 22:40:08', 'alwadi', 110, '<p>Kolkass</p>', NULL, 4672, 4609, 'Frozen Vegetables', 1, 0),
(1208, 'ALWADI', NULL, '_FRVA005', 'products/May2021/LLceARwZXxnDocgj4dFZ.png', NULL, '4.49', '0.875', 1, 1, 0, 0, '2021-05-19 18:39:05', '2021-06-12 22:40:08', 'alwadi', 110, '<p>Baby Okra</p>', NULL, 4673, 4610, 'Frozen Vegetables', 1, 0),
(1209, 'ALWADI', NULL, '_FRVA001', 'products/May2021/UI1IbZaLQeUSFB9D2cNu.png', NULL, '3.49', '0.875', 1, 1, 0, 0, '2021-05-19 18:40:55', '2021-06-12 22:40:08', 'alwadi', 110, '<p>Molokhia Minced - Chopped</p>', NULL, 4674, 4611, 'Frozen Vegetables', 1, 0),
(1210, 'LAODICEA', NULL, '_FRVA011', 'products/May2021/ZdEfDTu4kcvT8Cgslc7Y.png', NULL, '3.49', '0.875', 1, 1, 0, 0, '2021-05-19 18:44:45', '2021-06-12 22:40:08', 'laodicea', 110, '<p>Green Broad Fava</p>', NULL, 4675, 4612, 'Frozen Vegetables', 1, 0),
(1211, 'MONTANA', NULL, '_FRVM003', 'products/May2021/ECS2iGJov62ABKgbYAdz.png', NULL, '3.49', '0.875', 1, 1, 0, 0, '2021-05-19 18:48:23', '2021-06-12 22:40:08', 'montana', 110, '<p>Molokhia Leaves</p>', NULL, 4676, 4613, 'Frozen Vegetables', 1, 0),
(1212, 'TRIUNFO', NULL, '_FRVT017', 'products/May2021/x2KzNUxyX0C89MYGUUGw.png', NULL, '4.99', '1.75', 1, 1, 0, 0, '2021-05-19 18:51:00', '2021-06-12 22:40:08', 'triunfo', 110, '<p>Green Fava Beans - Large Size</p>', NULL, 4677, 4614, 'Frozen Vegetables', 1, 0),
(1213, 'Al SHAM', NULL, '_FFS005', 'products/May2021/ua2JqZVFNWrepfBDUXd9.jpg', NULL, '4.99', '0.8', 1, 1, 0, 0, '2021-05-19 18:55:04', '2021-06-12 22:40:08', 'al-sham', 110, '<p>Falafel (Uncooked ) - 10 pcs.</p>', NULL, 4678, 4615, 'Frozen Vegetables', 1, 0),
(1214, 'Al SHAM', NULL, '_FFS007', 'products/May2021/qwmiUqK00nhVZq52KQwQ.jpg', NULL, '5.99', '0.5', 1, 1, 0, 0, '2021-05-19 18:57:15', '2021-06-12 22:40:08', 'al-sham', 110, '<p>Falafel (Cooked ) - 10 pcs.</p>', NULL, 4679, 4616, 'Frozen Vegetables', 1, 0),
(1215, 'Al SHAM', NULL, '_FFS011', 'products/May2021/nD5tDh6mKf8EFcNxLL2T.jpg', NULL, '4.99', '0.8', 1, 1, 0, 0, '2021-05-19 19:00:12', '2021-06-12 22:40:08', 'al-sham', 110, '<p>Falafel (Uncooked)</p>', NULL, 4680, 4617, 'Frozen Vegetables', 1, 0),
(1216, 'LAODICEA', NULL, '_VILA001', 'products/May2021/TjVmT2roU0gsbf59WIRq.png', NULL, '4.99', '11.02', 1, 1, 0, 0, '2021-05-31 22:21:40', '2021-06-12 22:40:08', 'laodicea', 87, '<p>White Vinegar 10% Acidity</p>', NULL, 4681, 4618, 'Vinegar', 1, 0),
(1217, 'LAODICEA', NULL, '_OLVL0011', 'products/May2021/l0ri8oJC8FR3e0uIUtJT.jpg', NULL, '5.99', '1', 1, 1, 0, 0, '2021-05-31 22:29:31', '2021-06-12 22:40:08', 'laodicea', 84, '<p>Greek Olive Salad</p>', NULL, 4682, 4619, 'Olives', 1, 0),
(1218, 'LAODICEA', NULL, '_PICL017', 'products/May2021/0ed0TmSoghU2VC6sUfQ0.png', NULL, '3.99', '1.042', 1, 1, 0, 0, '2021-05-31 23:07:56', '2021-06-12 22:40:08', 'laodicea', 83, '<p>White Pickled Onions</p>', NULL, 4683, 4620, 'Pickles', 1, 0),
(1221, '222', '222', '2222', 'products\\June2021\\Azb5kKQjWmQWd87AndlZ.jpg', NULL, '25.00', '1', NULL, 0, 0, 0, '2021-06-27 11:20:59', '2021-06-27 11:20:59', '222', 12, '<p>2222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1222, '222', '222', '2222', 'products\\June2021\\FjVOVlfS4NSqRa2gqdJD.jpg', NULL, '25.00', '1', NULL, 0, 0, 0, '2021-06-27 11:40:00', '2021-06-27 11:40:00', '222', 12, '<p>2222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1223, '222', '222', '2222', 'products\\June2021\\K4VomZveQhWURATE9X7R.jpg', NULL, '25.00', '1', NULL, 0, 0, 0, '2021-06-27 11:42:18', '2021-06-27 11:42:32', '222', 12, '<p>2222</p>', NULL, 0, 0, NULL, 1, 0),
(1224, 'Test0000000000000', '2555', '02222', 'products\\June2021\\cXTzfCpjC4PgzKNiEAsq.jpg', NULL, '25.00', '25', NULL, 0, 0, 0, '2021-06-27 11:53:17', '2021-06-27 11:53:17', 'test0000000000000', 9, '<p>02222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1225, 'Test0000000000000', '2555', '02222', 'products\\June2021\\vhwQNvZIWgLA8RMZkAvp.jpg', NULL, '25.00', '25', NULL, 0, 0, 0, '2021-06-27 11:56:57', '2021-06-27 11:56:57', 'test0000000000000', 9, '<p>02222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1226, 'Test00000000000003', '2555655', '0222255', 'products\\June2021\\HhCPcwj3EoWkIToWwUL0.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:01:55', '2021-06-27 12:01:55', 'test0000000000000366', 11, '<p>02222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1227, 'Test0000000000000354', '255565556', '0222255', 'products\\June2021\\TfVACZbV3zKBYz6memtB.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:03:46', '2021-06-27 12:03:46', 'test00000000000003545', 10, '<p>022222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1228, 'Test000000000000035455', '255565556', '022225555', 'products\\June2021\\8wt8m0tBaUNOqMtysMoB.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:09:10', '2021-06-27 12:09:10', 'test00000000000003545536', 9, '<p>022222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1229, 'Test000000000000035455', '255565556', '022225555', 'products\\June2021\\KutJiC7xNeCQaIWL74YM.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:31:10', '2021-06-27 12:31:10', 'test00000000000003545536', 9, '<p>022222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1230, 'Test000000000000035455', '255565556', '022225555', 'products\\June2021\\pi5VfrDjyHIuBWJwFmoW.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:31:44', '2021-06-27 12:31:44', 'test00000000000003545536', 9, '<p>022222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0),
(1231, 'Test000000000000035455', '255565556', '022225555', 'products\\June2021\\E9zGd1YqP7akBTZfi6pl.jpg', NULL, '25.00', '25', NULL, 1, 0, 0, '2021-06-27 12:42:21', '2021-06-27 12:42:21', 'test00000000000003545536', 9, '<p>022222222222222222</p>', NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` tinyint(4) NOT NULL,
  `is_more` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_homepage` tinyint(4) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `ac_id` int(99) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `image`, `created_at`, `updated_at`, `order`, `is_more`, `slug`, `is_homepage`, `parent_id`, `ac_id`, `category_name`) VALUES
(9, 'Grocery & Gourmet Foods', NULL, '2021-04-19 22:25:37', '2021-06-12 22:32:01', 1, 0, 'grocery-and-gourmet-foods', 0, NULL, 279, 'NO'),
(10, 'Bread & Bakery', NULL, '2021-04-19 22:26:27', '2021-06-12 22:32:01', 2, 0, 'bread-and-bakery', 0, 9, 280, 'NO'),
(11, 'Bagel', NULL, '2021-04-19 22:27:31', '2021-06-12 22:32:01', 1, 0, 'bagel', 0, 10, 281, 'NO'),
(12, 'Cook Books', NULL, '2021-04-19 22:29:02', '2021-06-12 22:32:01', 10, 0, 'cook-books', 0, NULL, 282, 'NO'),
(13, 'Bread', NULL, '2021-04-19 22:30:29', '2021-06-12 22:32:01', 2, 0, 'bread', 0, 10, 283, 'NO'),
(14, 'Bread Sticks and Toast', NULL, '2021-04-19 22:31:56', '2021-06-12 22:32:01', 3, 0, 'bread-sticks-and-toast', 0, 10, 284, 'NO'),
(15, 'Croissant', NULL, '2021-04-19 22:32:26', '2021-06-12 22:32:01', 4, 0, 'croissant', 0, 10, 285, 'NO'),
(16, 'Pita Bread', NULL, '2021-04-19 22:32:51', '2021-06-12 22:32:01', 5, 0, 'pita-bread', 0, 10, 286, 'NO'),
(17, 'Pie', NULL, '2021-04-19 22:33:13', '2021-06-12 22:32:01', 6, 0, 'pie', 0, 10, 287, 'NO'),
(18, 'Beverages', NULL, '2021-04-19 22:33:58', '2021-06-12 22:32:01', 2, 0, 'beverages', 0, 9, 288, 'NO'),
(19, 'Alcohol- Free Beer', NULL, '2021-04-19 22:35:49', '2021-06-12 22:32:01', 2, 0, 'alcohol-free-beer', 0, 18, 289, 'NO'),
(20, 'Coffee', NULL, '2021-04-19 22:37:50', '2021-06-12 22:32:01', 3, 0, 'coffee', 0, 18, 290, 'NO'),
(21, 'Juice', NULL, '2021-04-19 22:38:29', '2021-06-12 22:32:01', 4, 0, 'juice', 0, 18, 291, 'NO'),
(22, 'Sparkling Water', NULL, '2021-04-19 22:39:05', '2021-06-12 22:32:01', 4, 0, 'sparkling-water', 0, 18, 292, 'NO'),
(23, 'Soft Drinks', NULL, '2021-04-19 22:39:35', '2021-06-12 22:32:01', 5, 0, 'soft-drinks', 0, 18, 293, 'NO'),
(24, 'Tea', NULL, '2021-04-19 22:41:21', '2021-06-12 22:32:01', 6, 0, 'tea', 0, 18, 294, 'NO'),
(25, 'Water', NULL, '2021-04-19 22:41:55', '2021-06-12 22:32:01', 7, 0, 'water', 0, 18, 295, 'NO'),
(26, 'Breakfast & Spreads', NULL, '2021-04-19 22:42:59', '2021-06-12 22:32:01', 2, 0, 'breakfast-and-spreads', 0, 9, 296, 'NO'),
(27, 'Candy, Chocolate & Nuts', NULL, '2021-04-19 22:51:28', '2021-06-12 22:32:01', 4, 0, 'candy-chocolate-and-nuts', 0, 9, 297, 'NO'),
(28, 'Canned Food & Packets', NULL, '2021-04-19 22:51:54', '2021-06-12 22:32:01', 5, 0, 'canned-food-and-packets', 0, 9, 298, 'NO'),
(29, 'Cooking and Desserts Aids', NULL, '2021-04-19 22:52:40', '2021-06-12 22:32:01', 6, 0, 'cooking-and-desserts-aids', 0, 9, 299, 'NO'),
(30, 'Dairy Products', NULL, '2021-04-19 22:53:02', '2021-06-12 22:32:01', 7, 0, 'dairy-products', 0, 9, 300, 'NO'),
(31, 'Pasta Products', NULL, '2021-04-19 22:53:42', '2021-06-12 22:32:01', 8, 0, 'pasta-products', 0, 9, 301, 'NO'),
(32, 'Pickles', NULL, '2021-04-19 22:54:05', '2021-06-12 22:32:01', 9, 0, 'pickles', 0, 9, 302, 'NO'),
(33, 'Oil and Vinegar', NULL, '2021-04-19 22:54:29', '2021-06-12 22:32:01', 10, 0, 'oil-and-vinegar', 0, 9, 303, 'NO'),
(34, 'Rice and Grains', NULL, '2021-04-19 22:56:10', '2021-06-12 22:32:01', 11, 0, 'rice-and-grains', 0, 9, 304, 'NO'),
(35, 'Sweets', NULL, '2021-04-19 22:57:11', '2021-06-15 20:01:33', 12, 0, 'sweets', 0, 9, 305, 'NO'),
(36, 'Meat and Seafood', NULL, '2021-04-19 22:57:29', '2021-06-12 22:32:01', 13, 0, 'meat-and-seafood', 0, 9, 306, 'NO'),
(37, 'Vegetables & Fruits', NULL, '2021-04-19 22:58:19', '2021-06-12 22:32:01', 14, 0, 'vegetables-and-fruits', 0, 9, 307, 'NO'),
(38, 'Household', NULL, '2021-04-19 22:59:30', '2021-06-12 22:32:01', 2, 0, 'household', 0, NULL, 308, 'NO'),
(39, 'Medical Supplies', NULL, '2021-04-19 23:00:09', '2021-06-12 22:32:01', 3, 0, 'medical-supplies', 0, NULL, 309, 'NO'),
(40, 'Beauty & Personal Care', NULL, '2021-04-19 23:01:34', '2021-06-12 22:32:01', 4, 0, 'beauty-and-personal-care', 0, NULL, 310, 'NO'),
(41, 'Baby & Child', NULL, '2021-04-19 23:02:10', '2021-06-12 22:32:01', 5, 0, 'baby-and-child', 0, NULL, 311, 'NO'),
(42, 'Chef Wenfee Catering', NULL, '2021-04-19 23:02:48', '2021-06-12 22:32:01', 6, 0, 'chef-wenfee-catering', 0, NULL, 312, 'NO'),
(43, 'American Foods', NULL, '2021-04-19 23:03:11', '2021-06-12 22:32:01', 8, 0, 'american-foods', 0, NULL, 313, 'NO'),
(44, 'Pet Care & Foods', NULL, '2021-04-19 23:04:53', '2021-06-12 22:32:01', 9, 0, 'pet-care-and-foods', 0, NULL, 314, 'NO'),
(45, 'Cereals', NULL, '2021-04-20 17:33:43', '2021-06-12 22:32:01', 1, 0, 'cereals', 0, 26, 334, 'NO'),
(46, 'Chocolate & Sweet Spreads', NULL, '2021-04-20 17:35:02', '2021-06-12 22:32:01', 2, 0, 'chocolate-and-sweet-spreads', 0, 26, 335, 'NO'),
(47, 'Jams', NULL, '2021-04-20 17:35:28', '2021-06-12 22:32:01', 3, 0, 'jams', 0, 26, 336, 'NO'),
(48, 'Halva', NULL, '2021-04-20 17:35:54', '2021-06-15 20:04:16', 4, 0, 'halva', 1, 26, 337, 'NO'),
(49, 'Honey', NULL, '2021-04-20 17:36:21', '2021-06-12 22:32:01', 5, 1, 'honey', 0, 26, 338, 'NO'),
(50, 'Molasses', NULL, '2021-04-20 17:37:35', '2021-06-12 22:32:01', 6, 0, 'molasses', 0, 26, 339, 'NO'),
(51, 'Tahini', NULL, '2021-04-20 17:38:11', '2021-06-15 20:06:41', 7, 0, 'tahini', 1, 26, 340, 'NO'),
(52, 'Candy & Snack', NULL, '2021-04-20 17:41:27', '2021-06-12 22:32:01', 1, 0, 'candy-and-snack', 0, 27, 341, 'NO'),
(53, 'Chips & Crisps', NULL, '2021-04-20 17:41:56', '2021-06-12 22:32:01', 2, 0, 'chips-and-crisps', 0, 27, 342, 'NO'),
(54, 'Chocolate', NULL, '2021-04-20 17:42:19', '2021-06-12 22:32:01', 3, 0, 'chocolate', 0, 27, 343, 'NO'),
(58, 'Beans & Peas in Can', NULL, '2021-04-20 17:44:20', '2021-06-12 22:32:01', 1, 0, 'beans-and-peas-in-can', 0, 28, 347, 'NO'),
(59, 'Dips', NULL, '2021-04-20 17:45:00', '2021-06-12 22:32:01', 2, 0, 'dips', 0, 28, 348, 'NO'),
(60, 'Eggplants in Can', NULL, '2021-04-20 17:45:28', '2021-06-15 20:12:09', 3, 0, 'eggplants-in-can', 1, 28, 349, 'NO'),
(61, 'Grape Leaves', NULL, '2021-04-20 17:45:49', '2021-06-12 22:32:01', 4, 0, 'grape-leaves', 0, 28, 350, 'NO'),
(62, 'Gourmet Foods in Can', NULL, '2021-04-20 17:46:24', '2021-06-12 22:32:01', 5, 0, 'gourmet-foods-in-can', 0, 28, 351, 'NO'),
(63, 'Mushrooms & Artichoke', NULL, '2021-04-20 17:46:49', '2021-06-15 20:13:12', 6, 0, 'mushrooms-and-artichoke', 1, 28, 352, 'NO'),
(64, 'Tomatoes & Peppers in Can', NULL, '2021-04-20 17:47:36', '2021-06-12 22:32:01', 7, 0, 'tomatoes-and-peppers-in-can', 0, 28, 353, 'NO'),
(65, 'Baking Aids', NULL, '2021-04-20 17:51:01', '2021-06-12 22:32:01', 1, 0, 'baking-aids', 0, 29, 354, 'NO'),
(67, 'Cooking Aids', NULL, '2021-04-20 17:51:53', '2021-06-12 22:32:01', 3, 0, 'cooking-aids', 0, 29, 356, 'NO'),
(68, 'Dessert Mixes', NULL, '2021-04-20 17:55:03', '2021-06-12 22:32:01', 4, 0, 'dessert-mixes', 0, 29, 357, 'NO'),
(69, 'Flour & Semolina', NULL, '2021-04-20 17:55:35', '2021-06-12 22:32:01', 5, 0, 'flour-and-semolina', 0, 29, 358, 'NO'),
(71, 'Rose & Flower Water', NULL, '2021-04-20 17:56:50', '2021-06-12 22:32:01', 7, 0, 'rose-and-flower-water', 0, 29, 360, 'NO'),
(72, 'Sugar & Sweeteners', NULL, '2021-04-20 17:57:24', '2021-06-15 20:06:04', 8, 0, 'sugar-and-sweeteners', 1, 29, 361, 'NO'),
(73, 'Syrups', NULL, '2021-04-20 17:57:56', '2021-06-12 22:32:01', 9, 0, 'syrups', 0, 29, 362, 'NO'),
(74, 'Ghee', NULL, '2021-04-20 18:00:03', '2021-06-12 22:32:01', 1, 0, 'ghee', 0, 30, 363, 'NO'),
(75, 'Eggs', NULL, '2021-04-20 18:00:24', '2021-06-12 22:32:01', 2, 0, 'eggs', 0, 30, 364, 'NO'),
(76, 'Cheese', NULL, '2021-04-20 18:00:48', '2021-06-12 22:32:01', 3, 0, 'cheese', 0, 30, 365, 'NO'),
(77, 'Butter', NULL, '2021-04-20 18:01:13', '2021-06-12 22:32:01', 4, 0, 'butter', 0, 30, 366, 'NO'),
(78, 'Yogurt', NULL, '2021-04-20 18:01:52', '2021-06-12 22:32:01', 5, 0, 'yogurt', 0, 30, 367, 'NO'),
(79, 'Labneh', NULL, '2021-04-20 18:02:37', '2021-06-12 22:32:01', 6, 0, 'labneh', 0, 30, 368, 'NO'),
(80, 'Milk', NULL, '2021-04-20 18:03:03', '2021-06-12 22:32:01', 7, 0, 'milk', 0, 30, 369, 'NO'),
(81, 'Kishk', NULL, '2021-04-20 18:03:34', '2021-06-12 22:32:01', 8, 0, 'kishk', 0, 30, 370, 'NO'),
(82, 'Pie and Pastry Dough', NULL, '2021-04-20 18:04:23', '2021-06-12 22:32:01', 6, 0, 'pie-and-pastry-dough', 0, 9, 371, 'NO'),
(83, 'Pickles', NULL, '2021-04-20 18:17:16', '2021-06-15 20:01:55', 1, 0, 'pickles', 0, 32, 372, 'NO'),
(84, 'Olives', NULL, '2021-04-20 18:17:38', '2021-06-15 20:16:03', 11, 0, 'olives', 0, 9, 373, 'NO'),
(85, 'Olive Oil', NULL, '2021-04-20 18:18:11', '2021-06-15 20:02:44', 1, 0, 'olive-oil', 0, 33, 374, 'NO'),
(86, 'Avocado Oil', NULL, '2021-04-20 18:18:36', '2021-06-12 22:32:01', 2, 0, 'avocado-oil', 0, 33, 375, 'NO'),
(87, 'Vinegar', NULL, '2021-04-20 18:18:58', '2021-06-12 22:32:01', 3, 0, 'vinegar', 0, 33, 376, 'NO'),
(88, 'Rice', NULL, '2021-04-20 18:21:57', '2021-06-12 22:32:01', 1, 0, 'rice', 0, 34, 377, 'NO'),
(89, 'Beans & Peas', NULL, '2021-04-20 18:22:22', '2021-06-15 20:11:23', 2, 0, 'beans-and-peas', 1, 34, 378, 'NO'),
(90, 'Wheat', NULL, '2021-04-20 18:22:49', '2021-06-12 22:32:01', 3, 0, 'wheat', 0, 34, 379, 'NO'),
(91, 'Lentils', NULL, '2021-04-20 18:23:42', '2021-06-12 22:32:01', 4, 0, 'lentils', 0, 34, 380, 'NO'),
(92, 'Spices, Herbs and Seasonings', NULL, '2021-04-20 18:35:34', '2021-06-12 22:32:01', 1, 0, 'spices-herbs-and-seasonings', 0, 9, 381, 'NO'),
(93, 'Spices and Herbs', NULL, '2021-04-20 18:36:17', '2021-06-12 22:32:01', 1, 0, 'spices-and-herbs', 0, 92, 382, 'NO'),
(94, 'Zattar', NULL, '2021-04-20 18:36:36', '2021-06-15 20:03:01', 2, 0, 'zattar', 0, 92, 383, 'NO'),
(97, 'Basturma', NULL, '2021-04-20 18:37:49', '2021-06-12 22:32:01', 1, 0, 'basturma', 0, 36, 386, 'NO'),
(98, 'Fish Products', NULL, '2021-04-20 18:38:08', '2021-06-12 22:32:01', 2, 0, 'fish-products', 0, 36, 387, 'NO'),
(99, 'Lahmajun', NULL, '2021-04-20 18:38:26', '2021-06-12 22:32:01', 3, 0, 'lahmajun', 0, 36, 388, 'NO'),
(100, 'Luncheon', NULL, '2021-04-20 18:38:48', '2021-06-12 22:32:01', 4, 0, 'luncheon', 0, 36, 389, 'NO'),
(101, 'Sausage & Makanek', NULL, '2021-04-20 18:39:16', '2021-06-12 22:32:01', 5, 0, 'sausage-and-makanek', 0, 36, 390, 'NO'),
(105, 'Lamb & Beef', NULL, '2021-04-20 18:40:59', '2021-06-15 20:14:56', 8, 0, 'lamb-and-beef', 1, 36, 394, 'NO'),
(106, 'Duck', NULL, '2021-04-20 18:41:15', '2021-06-12 22:32:01', 9, 0, 'duck', 0, 36, 395, 'NO'),
(109, 'Fresh Vegetables', NULL, '2021-04-20 18:52:30', '2021-06-12 22:32:01', 1, 0, 'fresh-vegetables', 0, 37, 398, 'NO'),
(110, 'Frozen Vegetables', NULL, '2021-04-20 18:53:53', '2021-06-12 22:32:01', 2, 0, 'frozen-vegetables', 0, 37, 399, 'NO'),
(111, 'Fresh Fruits', NULL, '2021-04-20 18:54:12', '2021-06-12 22:32:01', 3, 0, 'fresh-fruits', 0, 37, 400, 'NO'),
(112, 'Detergents', NULL, '2021-04-20 19:11:29', '2021-06-12 22:32:01', 1, 0, 'detergents', 0, 38, 401, 'NO'),
(114, 'Electrical Accessories', NULL, '2021-04-20 19:14:44', '2021-06-12 22:32:01', 3, 0, 'electrical-accessories', 0, 38, 403, 'NO'),
(115, 'Kitchenware', NULL, '2021-04-20 19:15:03', '2021-06-12 22:32:01', 4, 0, 'kitchenware', 0, 38, 404, 'NO'),
(116, 'Oriental Furniture', NULL, '2021-04-20 19:15:40', '2021-06-12 22:32:01', 4, 0, 'oriental-furniture', 0, 38, 405, 'NO'),
(117, 'Vitamins & Dietary Supplements', NULL, '2021-04-20 19:16:48', '2021-06-12 22:32:01', 1, 0, 'vitamins-and-dietary-supplements', 0, 39, 406, 'NO'),
(118, 'Pain Relievers', NULL, '2021-04-20 19:17:21', '2021-06-12 22:32:01', 2, 0, 'pain-relievers', 0, 39, 407, 'NO'),
(119, 'Disposable Face Masks & Gloves', NULL, '2021-04-20 19:18:28', '2021-06-12 22:32:01', 2, 0, 'disposable-face-masks-and-gloves', 0, 39, 408, 'NO'),
(120, 'Band Aids', NULL, '2021-04-20 19:19:26', '2021-06-12 22:32:01', 4, 0, 'band-aids', 0, 39, 409, 'NO'),
(121, 'Sexual Wellness', NULL, '2021-04-20 19:19:54', '2021-06-12 22:32:01', 5, 0, 'sexual-wellness', 0, 39, 410, 'NO'),
(122, 'Pregnancy Tests', NULL, '2021-04-20 19:21:25', '2021-06-12 22:32:01', 6, 0, 'pregnancy-tests', 0, 39, 411, 'NO'),
(123, 'Gift Bags', NULL, '2021-04-20 19:21:51', '2021-06-12 22:32:01', 7, 0, 'gift-bags', 0, 39, 412, 'NO'),
(124, 'Appetizers/Starters', NULL, '2021-04-20 19:32:01', '2021-06-12 22:32:01', 1, 0, 'appetizers-starters', 0, 42, 413, 'NO'),
(125, 'Mediterranean Foods', NULL, '2021-04-20 19:32:40', '2021-06-12 22:32:01', 2, 0, 'mediterranean-foods', 0, 42, 414, 'NO'),
(126, 'Bath Essentials', NULL, '2021-04-21 17:57:18', '2021-06-12 22:32:01', 1, 0, 'bath-essentials', 0, 40, 415, 'NO'),
(127, 'Feminine Care', NULL, '2021-04-21 17:58:03', '2021-06-12 22:32:01', 2, 0, 'feminine-care', 0, 40, 416, 'NO'),
(128, 'Makeup', NULL, '2021-04-21 17:58:38', '2021-06-12 22:32:01', 3, 0, 'makeup', 0, 40, 417, 'NO'),
(129, 'Baby Care', NULL, '2021-04-21 17:59:49', '2021-06-12 22:32:01', 1, 0, 'baby-care', 0, 41, 418, 'NO'),
(130, 'Baby Foods', NULL, '2021-04-21 18:00:20', '2021-06-12 22:32:01', 3, 0, 'baby-foods', 0, 41, 419, 'NO'),
(131, 'Kids Vitamins', NULL, '2021-04-21 18:00:41', '2021-06-12 22:32:01', 3, 0, 'kids-vitamins', 0, 41, 420, 'NO'),
(132, 'Pet Supplies', NULL, '2021-04-21 18:03:15', '2021-06-12 22:32:01', 1, 0, 'pet-supplies', 0, 44, 421, 'NO'),
(133, 'Pet Foods', NULL, '2021-04-21 18:03:47', '2021-06-12 22:32:01', 2, 0, 'pet-foods', 0, 44, 422, 'NO'),
(134, 'Nuts & Energy Mixes', NULL, '2021-04-21 23:00:02', '2021-06-12 22:32:01', 4, 0, 'nuts-and-energy-mixes', 0, 27, 423, 'NO'),
(135, 'Dried Fruit & Dates', NULL, '2021-04-21 23:02:21', '2021-06-12 22:32:01', 4, 0, 'dried-fruit-and-dates', 0, 37, 424, 'NO'),
(136, 'Raw Nuts and Seeds', NULL, '2021-04-21 23:02:45', '2021-06-12 22:32:01', 5, 0, 'raw-nuts-and-seeds', 0, 37, 425, 'NO'),
(138, 'Hookah & Accessories', NULL, '2021-05-05 20:24:21', '2021-06-12 22:32:01', 18, 0, 'hookah-and-accessories', 0, 38, 429, 'NO'),
(139, 'Eyewear & Accessories', NULL, '2021-05-17 18:19:26', '2021-06-12 22:32:01', 4, 0, 'eyewear-and-accessories', 0, NULL, 432, 'NO'),
(140, 'Sunglasses', NULL, '2021-05-17 18:20:42', '2021-06-12 22:32:01', 1, 0, 'sunglasses', 0, 139, 434, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_category_id` int(10) UNSIGNED NOT NULL,
  `preparation_time` int(11) NOT NULL,
  `serving_range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `slug`, `recipe_category_id`, `preparation_time`, `serving_range`, `short_desc`, `main_desc`, `recipe_image`, `created_at`, `updated_at`) VALUES
(1, 'rice', 'rice', 2, 10, 'aaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'recipes\\July2021\\Si7p9K0ivH36WWavgLtv.jpg', '2021-07-06 13:47:59', '2021-07-06 13:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_categories`
--

DROP TABLE IF EXISTS `recipe_categories`;
CREATE TABLE IF NOT EXISTS `recipe_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_categories`
--

INSERT INTO `recipe_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Milk Recipes', 'milk-recipes', '2021-07-06 13:42:16', '2021-07-06 13:42:16'),
(2, 'rice Recipe', 'rice-recipe', '2021-07-06 13:42:28', '2021-07-06 13:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(2, 'user', 'Normal User', '2020-10-16 05:43:15', '2020-10-16 05:43:15'),
(3, 'post-manager', 'Post Manager', '2020-10-20 04:51:52', '2020-10-20 04:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Wenfee', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to your Dashboard The Missing Admin for your shop', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `size_units`
--

DROP TABLE IF EXISTS `size_units`;
CREATE TABLE IF NOT EXISTS `size_units` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_units`
--

INSERT INTO `size_units` (`id`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'LBS', '2020-11-20 21:24:31', '2020-11-20 21:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '2003', 'Shop Special Offer & More Daily Deals. Get Special Offer at Wenfee™ Today. Wenfee Makes Shopping Easy!', 'slides/May2021/E13bE2Lg8eld9kWdLcbn.png', '2021-05-05 21:47:57', '2021-05-05 22:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-16 05:43:17', '2020-10-16 05:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `display_name`, `email`, `phone`, `address`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', NULL, 'info@admin.com', NULL, NULL, 'users/default.png', NULL, '$2y$10$I/H3JQp4d4Y9gqL.AQ8m.ujwnG5/arFi5He1xu/Yyz.fRHGNi.DPe', 'DSPZhf14i4W9TxfApvwMwl9Qf286bq9HePFujKhTbehUDBEyTmBDuwFMk0cQ', NULL, '2020-10-16 05:43:17', '2020-10-16 05:43:17'),
(2, 3, 'Mac Pro max', NULL, 'sos', NULL, NULL, 'users/default.png', NULL, '$2y$10$zkdWJfLOs4uXLkKXjw9bd.gYDfnZQYVqsVN2wxeu0jlu7T8kgvlXm', NULL, NULL, '2020-10-20 04:54:49', '2020-10-20 04:54:49'),
(3, 2, 'yousef safi', 'yousu', 'yousef@gmail.com', '71442157', NULL, 'users/default.png', NULL, '$2y$10$eKj5a0iMRnPo.HVUMxsIu.TQONyzcPS2gJ5dh/Am.ep08FBjliWWm', NULL, NULL, '2021-01-11 09:21:27', '2021-01-11 22:52:49'),
(4, 2, 'MohammadKhair Safi', NULL, 'sefo@sefo.com', '71442157', NULL, 'users/default.png', NULL, '$2y$10$935zKBcjL5M5bEKNG5weLuEGB9ozebV3/6x8HYzyLgP4I0UcEkdqC', NULL, NULL, '2021-01-11 22:18:40', '2021-01-11 22:18:40'),
(5, 2, 'Mksafi', NULL, 'safi@gmail.com', '71442157', 'Dekwaneh-tal elzattar', 'users/default.png', NULL, '$2y$10$8VzkCFnjTNUxRPtoaatQeuitpViwHIUknm4ElsqsHc8ibfNYBdF66', NULL, NULL, '2021-01-19 23:37:06', '2021-01-19 23:37:06'),
(6, 2, 'Mksafi', NULL, 'ali@gmail.com', '71442157', 'Dekwaneh-tal elzattar', 'users/default.png', NULL, '$2y$10$UwRfKD884mn4QXuBOpuRMuuhJ4BbgixrCV7PHeGRWxAKNDsODCrK.', NULL, NULL, '2021-01-21 15:06:24', '2021-01-21 15:06:24'),
(7, 2, 'yoso', NULL, 'yoso@gmail.com', '123456', 'jkbkjbjkb', 'users/default.png', NULL, '$2y$10$r8LyXqgSsaFha2ProAo9VOvE6iDfmRtTCuOnasm9BcRWXOj.GNpWW', NULL, NULL, '2021-01-21 21:16:24', '2021-01-21 21:16:24'),
(0, 1, 'mais', NULL, 'mais@test.com', NULL, NULL, 'users/default.png', NULL, '$2y$10$gkXInCXTkq8pj/mmb/lP/.pYsFV1on7kAqaI5N3XRx6w0Stls26Au', NULL, NULL, '2021-07-06 13:18:09', '2021-07-06 13:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
