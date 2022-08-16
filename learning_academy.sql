-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 10:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nour', 'nour@gmail.com', '$2y$10$AKngcKj0hk2aqQrNMYRROefBEINTdWsW9e0oTGrUbc9wfzlQLF0e2', '2022-08-13 04:40:28', '2022-08-13 04:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2022-08-11 19:23:32', '2022-08-11 19:23:32'),
(2, 'medical', '2022-08-11 19:26:05', '2022-08-11 19:26:05'),
(3, 'english', '2022-08-11 19:26:27', '2022-08-11 19:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `trainer_id`, `name`, `small_desc`, `desc`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'course num 1 category num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2734, '11.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(2, 1, 4, 'course num 1 category num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1598, '12.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(3, 1, 5, 'course num 1 category num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2139, '13.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(4, 1, 2, 'course num 1 category num 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2347, '14.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(5, 1, 3, 'course num 1 category num 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4964, '15.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(6, 1, 4, 'course num 1 category num 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2683, '16.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(7, 2, 2, 'course num 2 category num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2421, '21.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(8, 2, 4, 'course num 2 category num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4603, '22.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(9, 2, 3, 'course num 2 category num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1482, '23.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(10, 2, 5, 'course num 2 category num 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1623, '24.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(11, 2, 5, 'course num 2 category num 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4408, '25.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(12, 2, 4, 'course num 2 category num 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4274, '26.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(13, 3, 2, 'course num 3 category num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3049, '31.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(14, 3, 3, 'course num 3 category num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3997, '32.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(15, 3, 2, 'course num 3 category num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2871, '33.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(16, 3, 5, 'course num 3 category num 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2179, '34.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16'),
(17, 3, 1, 'course num 3 category num 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 209, '35.png', '2022-08-11 19:48:16', '2022-08-16 05:21:16'),
(18, 3, 2, 'course num 3 category num 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3058, '36.png', '2022-08-11 19:48:16', '2022-08-11 19:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approve','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 33, 'pending', '2022-08-11 20:21:48', '2022-08-11 20:21:48'),
(2, 14, 7, 'pending', '2022-08-11 20:21:48', '2022-08-11 20:21:48'),
(3, 9, 46, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(4, 2, 20, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(5, 7, 34, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(6, 4, 31, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(7, 7, 50, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(8, 14, 29, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(9, 13, 8, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(10, 15, 15, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(11, 8, 7, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(12, 16, 22, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(13, 10, 27, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(14, 17, 34, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(15, 18, 6, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(16, 1, 45, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(17, 1, 24, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(18, 2, 21, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(19, 13, 36, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(20, 15, 18, 'pending', '2022-08-11 20:21:49', '2022-08-11 20:21:49'),
(32, 6, 1, 'reject', '2022-08-16 05:23:22', '2022-08-16 05:23:22'),
(35, 6, 57, 'approve', NULL, NULL),
(36, 5, 57, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'noura', 'noura@gmail.com', 'Blocking', 'This is me hello', '2022-08-13 01:55:07', '2022-08-13 01:55:07'),
(2, 'Noura Saad', 'noura19@gmail.com', 'Blocking', 'this is me hello', '2022-08-13 01:55:27', '2022-08-13 01:55:27'),
(3, 'nour', 'nour@gmail.com', 'Blocking', 'Hello', '2022-08-16 05:12:27', '2022-08-16 05:12:27');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_08_11_052427_create_categories_table', 1),
(3, '2022_08_11_052428_create_trainers_table', 1),
(4, '2022_08_11_052429_create_courses_table', 1),
(5, '2022_08_11_053533_create_admins_table', 1),
(6, '2022_08_11_053634_create_students_table', 1),
(8, '2022_08_11_060123_create_course_student_table', 2),
(9, '2022_08_12_074437_create_testmonials_table', 3),
(10, '2022_08_13_021948_create_settings_table', 4),
(11, '2022_08_13_031732_create_site_contents_table', 5),
(12, '2022_08_13_033023_create_newsletters_table', 6),
(13, '2022_08_13_033156_create_messages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'salmasa3d12@gamil.com', '2022-08-13 01:41:42', '2022-08-13 01:41:42');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `city`, `address`, `phone`, `work_hours`, `email`, `map`, `fb`, `twitter`, `insta`, `created_at`, `updated_at`) VALUES
(1, 'Learning Academy', 'logo.png', 'favicon.png', 'Giza Egypt', '50 El-Nozha , Pyramids Gardens', '012025325665', 'Sun to Thurs \r\n9am to 5pm', 'contact@learningacademy.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d27651.155353849368!2d31.082639487410365!3d29.968092892232203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1660357989403!5m2!1sen!2seg\" width=\"1000\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'banner', '{\"title\":\"EVERY STUDENT YEARNS TO LEARN\",\"subtitle\":\"Making Your Students World Better\",\"desc\":\"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you will male grass yielding yielding man\"}', '2022-08-13 01:23:27', '2022-08-13 01:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `speciality`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Kaylie Walter', 'shyanne62@gmail.com', NULL, '2022-08-11 20:07:40', '2022-08-16 05:23:22'),
(2, 'Tyshawn Osinski', 'tromp.rashad@yahoo.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(3, 'Dr. Leonor Okuneva II', 'sadye97@schmeler.net', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(4, 'Prof. Maximo Orn', 'dino19@schumm.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(5, 'Kylie Feil Sr.', 'heaney.celia@hotmail.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(6, 'Erin Murray', 'daniel.cordie@gmail.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(7, 'Prof. Brannon Dach', 'jacobi.henderson@runolfsson.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(8, 'Melody Toy', 'ondricka.regan@gmail.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(9, 'Robbie Runte', 'bnolan@grant.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(10, 'Dr. Price Gulgowski Jr.', 'beryl84@rempel.com', NULL, '2022-08-11 20:07:40', '2022-08-11 20:07:40'),
(11, 'Kelly Blanda', 'nolan31@witting.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(12, 'Sonny Heller', 'imani00@gmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(13, 'Karli Wilderman', 'nienow.easter@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(14, 'Kari Strosin DDS', 'lheller@bartoletti.info', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(15, 'Annamae Christiansen', 'bernier.cade@bogisich.biz', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(16, 'Benny Konopelski', 'borer.georgianna@jacobson.biz', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(17, 'Prof. Eloy Terry III', 'jhettinger@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(18, 'Kendra Ritchie', 'afton88@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(19, 'Elva Cartwright MD', 'brandon79@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(20, 'Mrs. Sarai Konopelski', 'gusikowski.mia@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(21, 'Martin Thiel', 'hane.alejandra@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(22, 'Dewitt Mohr I', 'ekertzmann@grant.biz', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(23, 'Alexanne Bernier Sr.', 'corkery.verla@blick.biz', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(24, 'Ms. Aglae Hilpert DDS', 'braeden03@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(25, 'Lenore Ward', 'sydnee.powlowski@kunde.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(26, 'Miss Lauretta Cole', 'flockman@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(27, 'Miss Lillie Nitzsche', 'dietrich.orrin@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(28, 'Donavon Cummings', 'ggreen@marvin.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(29, 'Dr. Novella Murphy', 'ilabadie@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(30, 'Trystan Corkery', 'bergstrom.enrico@yahoo.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(31, 'Tracey Adams', 'emely.zieme@bergnaum.info', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(32, 'Miss Constance Hayes DDS', 'howell.alford@gmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(33, 'Maryam Labadie', 'ullrich.rey@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(34, 'Leone Wilkinson', 'bflatley@hotmail.com', NULL, '2022-08-11 20:13:42', '2022-08-11 20:13:42'),
(35, 'Veronica Grady', 'harber.fidel@dickens.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(36, 'Rosina Heller', 'iolson@balistreri.biz', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(37, 'Kacey Mueller', 'ludie42@hotmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(38, 'Brenden Gleason DVM', 'iroob@hotmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(39, 'Dianna Abernathy', 'irwin77@hotmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(40, 'Jazmin Wisoky', 'esta.rogahn@collier.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(41, 'Marjolaine Bernhard', 'bogisich.stewart@keebler.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(42, 'Mrs. Serenity Lynch II', 'kunze.scotty@yahoo.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(43, 'Adonis Muller V', 'llueilwitz@hotmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(44, 'Johnathan Haag', 'haylee.morissette@gmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(45, 'Joyce Thiel V', 'everette84@yahoo.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(46, 'Dr. Jarret Dickens', 'kling.noemy@gmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(47, 'Alexandro Barrows', 'bennett.lowe@yahoo.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(48, 'Bella Ullrich III', 'collins.wellington@gmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(49, 'Madelynn Yundt', 'johathan.predovic@yahoo.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(50, 'Ms. Allison Bosco Sr.', 'breitenberg.elsie@hotmail.com', NULL, '2022-08-11 20:13:43', '2022-08-11 20:13:43'),
(57, 'Noura', 'noura@gmail.com', 'Surgeon', '2022-08-16 04:48:37', '2022-08-16 04:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `testmonials`
--

CREATE TABLE `testmonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testmonials`
--

INSERT INTO `testmonials` (`id`, `name`, `spec`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Ali', 'Frontend Web Developer ', 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\n            when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n            ', '1.png', '2022-08-12 06:10:03', '2022-08-12 06:10:03'),
(2, 'Ahmed Ashraf', 'Backend Web Developer ', 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\n             when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n             It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n            ', '2.png', '2022-08-12 06:10:04', '2022-08-12 06:10:04'),
(3, 'Osama Amgad', 'Doctor', 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\n            when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n         ', '3.png', '2022-08-12 06:10:04', '2022-08-12 06:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `speciality`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Yahia srour', '0147852369', 'Web Development', '1.png', '2022-08-11 19:39:47', '2022-08-11 19:39:47'),
(2, 'Mohamed Ahmed', '025893214', 'Web Development', '2.png', '2022-08-11 19:39:47', '2022-08-11 19:39:47'),
(3, 'Ahmed Ashraf', '0125698521', 'Dentist', '3.png', '2022-08-11 19:39:47', '2022-08-11 19:39:47'),
(4, 'Ahmed Fathy', '01114528963', 'Doctor', '4.png', '2022-08-11 19:39:47', '2022-08-11 19:39:47'),
(5, 'Mourad Mustafa', '452111111', 'English Teacher', '5.png', '2022-08-11 19:39:47', '2022-08-16 05:21:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonials`
--
ALTER TABLE `testmonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `testmonials`
--
ALTER TABLE `testmonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
