-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 19 2018 г., 07:26
-- Версия сервера: 10.1.22-MariaDB-1~wheezy
-- Версия PHP: 7.0.17-1~dotdeb+8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u3080_cs1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Продажа', 'prodazha', '2018-04-04 04:24:30', '2018-04-04 04:24:30'),
(2, 'Аренда', 'arenda', '2018-04-04 04:24:30', '2018-04-04 04:24:30');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_11_110354_create_posts_table', 1),
(4, '2018_02_11_142948_create_categories_table', 1),
(5, '2018_02_11_145857_create_tags_table', 1),
(6, '2018_02_11_150422_create_post_tag_table', 1),
(7, '2018_03_11_100700_create_photos_table', 1),
(8, '2018_03_19_071734_create_permission_tables', 1),
(10, '2018_04_13_071527_add_currency_to_posts', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View posts', 'Просмотр публикаций', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(2, 'Create posts', 'Создание публикаций', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(3, 'Update posts', 'Обновление публикаций', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(4, 'Delete posts', 'Удаление публикаций', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(5, 'View users', 'Просмотр пользователей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(6, 'Create users', 'Создание пользователей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(7, 'Update users', 'Обновление пользователей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(8, 'Delete users', 'Удаление пользователей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(9, 'View roles', 'Просмотр ролей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(10, 'Create roles', 'Создание ролей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(11, 'Update roles', 'Обновление ролей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(12, 'Delete roles', 'Удаление ролей', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(13, 'View permissions', 'Просмотр разрешений', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(14, 'Update permissions', 'Обновление разрешений', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `post_id`, `url`, `created_at`, `updated_at`) VALUES
(47, 2, '/storage/posts/twfEebAvOXqn0Ds7iYctK1TV1EfAJVOK3F7WLofy.jpeg', '2018-04-06 06:43:15', '2018-04-06 06:43:15'),
(48, 2, '/storage/posts/vQVaebnfmAkrPC48tTwJL20QO0clgvWdnGeMBGFe.jpeg', '2018-04-06 06:43:18', '2018-04-06 06:43:18'),
(49, 2, '/storage/posts/Gk7luol53vowptZRaUvWf90jlK84Z8rPeuBVv8w4.jpeg', '2018-04-06 06:43:20', '2018-04-06 06:43:20'),
(50, 2, '/storage/posts/E9CVeG70eEGSovwrePOnUj5oAbXImTywIivAXai7.jpeg', '2018-04-06 06:43:23', '2018-04-06 06:43:23'),
(51, 2, '/storage/posts/d3sfBGPkezh8e5AVtHXWWkLn7TsbKneR5jz2ISv6.jpeg', '2018-04-06 06:43:27', '2018-04-06 06:43:27'),
(52, 2, '/storage/posts/sqJinEyCQNDBMoiX9vQVq3M2O4E7sdI4w5Wco0Ks.jpeg', '2018-04-06 06:43:29', '2018-04-06 06:43:29'),
(53, 2, '/storage/posts/owIB66E3n3TF0c0oV1buNmFo30uy7rirIgAYmvzt.jpeg', '2018-04-06 06:43:31', '2018-04-06 06:43:31'),
(54, 2, '/storage/posts/c4CFos25gU0cjbay2v3W9phzyNOLf5jG3lolP5J2.jpeg', '2018-04-06 06:43:33', '2018-04-06 06:43:33'),
(55, 2, '/storage/posts/Fg14ETDBO2LzmvOXwNTFl7r1h2ODJkaYLZwCE5BU.jpeg', '2018-04-06 06:43:35', '2018-04-06 06:43:35'),
(56, 2, '/storage/posts/aJIBc9paBYBCoooeOPVZcdtU7r34OZWEhAxJH7Yd.jpeg', '2018-04-06 06:43:37', '2018-04-06 06:43:37'),
(57, 3, '/storage/posts/TPHiW1vmi1RpQPg1aEcVWFpvtje06YQmFxIPrt3O.jpeg', '2018-04-06 09:08:54', '2018-04-06 09:08:54'),
(58, 3, '/storage/posts/O8E2a4kmB7GPAZdanPhyiz8Wf8XxgjEruFBQdOdA.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(59, 3, '/storage/posts/XEI6GGkwmPy4BVe1Mwi3CcTCE8UMB7oA1cxVI6xT.jpeg', '2018-04-06 09:08:54', '2018-04-06 09:08:54'),
(60, 3, '/storage/posts/sPw8ngc4fPAFClz6qwvki1yTb3wJ8m1L19g4Uqjj.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(61, 3, '/storage/posts/zysRT1zkZPhNL5bIkFk79nOhL36YQeDtVxE4bUT9.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(62, 3, '/storage/posts/1v4vSRRKkCPnBQxwBBKj0vKJpMd7vLCpoRElIAOI.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(63, 3, '/storage/posts/aaetmuQ1BhYWqnQlMxPit80yR5y8ENBW8cLnzX3N.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(64, 3, '/storage/posts/1NnVaaBai0GQ4lDFEe8Sum5DUIR7e6oYz1aq49gs.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(65, 3, '/storage/posts/SeJIwbAZvSm95aEDS85UR7S0ZG4VlHyDpouY0mha.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(66, 3, '/storage/posts/WRLKPxaPOQdOx3LMkJvcMf4jtCgZPxix6fxhbdf8.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(67, 3, '/storage/posts/puf3zILlbdL2ScsTT4NQWQ9rKQLzYJNOOvONhYeu.jpeg', '2018-04-06 09:08:55', '2018-04-06 09:08:55'),
(68, 3, '/storage/posts/A6e04nDr1LlViZYzwhpZzLcvtTt9mRv2D8jDXH8w.jpeg', '2018-04-06 09:08:56', '2018-04-06 09:08:56'),
(70, 4, '/storage/posts/xfaxDEjF6XmEo8JgJGsnP8dSY5p82ZDU5snbVzfO.jpeg', '2018-04-06 11:33:47', '2018-04-06 11:33:47'),
(71, 4, '/storage/posts/bUmrhkOmMalEyWQhfI3Fw68jE2pSfD3cABhQxSVC.jpeg', '2018-04-06 11:33:49', '2018-04-06 11:33:49'),
(72, 4, '/storage/posts/O6MQC2EZkjukErufarWjvRrYHUGS52v1fPjK3ARN.jpeg', '2018-04-06 11:33:52', '2018-04-06 11:33:52'),
(73, 4, '/storage/posts/EQRkV9YbcuVoItee3sFoBJJw2stZtsI2M9LAEtTL.jpeg', '2018-04-06 11:33:54', '2018-04-06 11:33:54'),
(74, 4, '/storage/posts/bHEAUOz60Cg6uOJ43SNEx2LFRDfGsZ6JAOzQizlW.jpeg', '2018-04-06 11:33:56', '2018-04-06 11:33:56'),
(75, 4, '/storage/posts/N1J778k24jeOmgkJVEnmmBbkStSOIGYha4AiW8aW.jpeg', '2018-04-06 11:34:00', '2018-04-06 11:34:00'),
(76, 4, '/storage/posts/RRPfQONSSHeisMEWiuliZtoOwyXD7BR3XyFAGELy.jpeg', '2018-04-06 11:34:02', '2018-04-06 11:34:02'),
(77, 4, '/storage/posts/qDC07M9TqexqM9f0nJOvSyHvkpsMimNcTiCChHaE.jpeg', '2018-04-06 11:34:04', '2018-04-06 11:34:04'),
(78, 4, '/storage/posts/VmUvRYRLcK64m3o4cGI8NIdhgPI8y3bWS1K5Apq3.jpeg', '2018-04-06 11:34:06', '2018-04-06 11:34:06'),
(79, 4, '/storage/posts/XRt7MmhlUiJyNStSR4DtkBPWQo5unlA9PVrQwSlF.jpeg', '2018-04-06 11:34:08', '2018-04-06 11:34:08'),
(80, 4, '/storage/posts/kaW5ZKDIWclv6RSRGXSXDPYKHNpBVrsvvSpZM3Jv.jpeg', '2018-04-06 11:34:10', '2018-04-06 11:34:10'),
(81, 4, '/storage/posts/2TfIBGYHqsHjvkgPE3WoDwDeJUELjC6f5LSOHu2C.jpeg', '2018-04-06 11:34:11', '2018-04-06 11:34:11'),
(82, 4, '/storage/posts/21Ut9Iv7L3sJo5XKGDR9IEW2yW09q3dvolwAu2SW.jpeg', '2018-04-06 11:34:13', '2018-04-06 11:34:13'),
(83, 4, '/storage/posts/Eu2zxsTM3DkzJBUlSZImy62xrbSoW9OMV5ITs39r.jpeg', '2018-04-06 11:34:15', '2018-04-06 11:34:15'),
(84, 4, '/storage/posts/Ciqh043fpqXeTJfNqBKO6G09c6hI5LVjDVc5HO1k.jpeg', '2018-04-06 11:34:18', '2018-04-06 11:34:18'),
(85, 4, '/storage/posts/FsMP6YwgJVyOQYr3CjQWfsOyLPjVuKAn2nxf8SaD.jpeg', '2018-04-06 11:34:18', '2018-04-06 11:34:18'),
(86, 5, '/storage/posts/9t4V77KJGj8XPB19RJyWJc3cBbZkMmT7A25F7EMB.jpeg', '2018-04-06 11:59:35', '2018-04-06 11:59:35'),
(87, 5, '/storage/posts/63wrFUk1CF1QSFCE4gcrNkF6lsQhCD65gYwSYaDM.jpeg', '2018-04-06 11:59:39', '2018-04-06 11:59:39'),
(88, 5, '/storage/posts/0dh9nwZKm91pvCGhV9o6y4MuOLsBv9Qbk51so7JY.jpeg', '2018-04-06 11:59:41', '2018-04-06 11:59:41'),
(89, 5, '/storage/posts/NElLTkfr8Grekd7ZyXTF2N2xIkVGvOR5zcHsEfZT.jpeg', '2018-04-06 11:59:43', '2018-04-06 11:59:43'),
(90, 5, '/storage/posts/ahVxknV42QapFuB2GbAzepKSZOjpgpQ2CwvS7wsY.jpeg', '2018-04-06 11:59:45', '2018-04-06 11:59:45'),
(91, 5, '/storage/posts/P09vkju6yl2duu7iwzpHqPpHSXB8RmMJmvZxJJn1.jpeg', '2018-04-06 11:59:47', '2018-04-06 11:59:47'),
(92, 5, '/storage/posts/icVeq2cwv0h02Wbo4RrAqCwMCub3uNVFw3SFN5Qz.jpeg', '2018-04-06 11:59:49', '2018-04-06 11:59:49'),
(93, 5, '/storage/posts/8a3XIuTkxlVK3I2KAei50H7LtqKrLBVCEUJ2MHHn.jpeg', '2018-04-06 11:59:51', '2018-04-06 11:59:51'),
(94, 5, '/storage/posts/2chWXcVA6a17uV3A2f8gc2ExhpRyhjZOkkWiq9qJ.jpeg', '2018-04-06 11:59:53', '2018-04-06 11:59:53'),
(95, 5, '/storage/posts/XcgThTqYt8E24iEL07kGsfHzOgFWsR4dnM8KRivK.jpeg', '2018-04-06 11:59:55', '2018-04-06 11:59:55'),
(96, 6, '/storage/posts/7xVCAXYnGN9aKNr1sNKUnRZ46PmLBf9P6xvsBfIf.jpeg', '2018-04-06 12:10:14', '2018-04-06 12:10:14'),
(97, 6, '/storage/posts/Re7ROOrhqYuHnFG7l8wj3j0ff6IAVFL2jaNKnNZ5.jpeg', '2018-04-06 12:10:17', '2018-04-06 12:10:17'),
(98, 6, '/storage/posts/MdZzkwVcBIZ4TfKdAFGoqT7wzh5iTtvxSHptdB8b.jpeg', '2018-04-06 12:10:19', '2018-04-06 12:10:19'),
(99, 6, '/storage/posts/mkYtgL8PS8PBOO11rXSlGpBw1RcLyubMvgRWFI63.jpeg', '2018-04-06 12:10:22', '2018-04-06 12:10:22'),
(100, 6, '/storage/posts/qzy0vkFiWLCGbJWGTz3VWHZwbYVHw5iCqCJNQfNO.jpeg', '2018-04-06 12:10:24', '2018-04-06 12:10:24'),
(101, 6, '/storage/posts/ONF5p12wwlDv5qLqOCnDu7OBvipcupqx3Qjfsf2f.jpeg', '2018-04-06 12:10:26', '2018-04-06 12:10:26'),
(102, 6, '/storage/posts/OMO8VJphLEjDjKg2DXOa37uIOJXcT0qNMz0u7YJt.jpeg', '2018-04-06 12:10:28', '2018-04-06 12:10:28'),
(103, 6, '/storage/posts/w0DSd75QZl3lRa6isBeTh9e0X9RUE5ROJvlPCXQn.jpeg', '2018-04-06 12:10:31', '2018-04-06 12:10:31'),
(104, 6, '/storage/posts/FN4x3T3WduoXNzvV2wUuBN2Dik0nDNp64viNzbZe.jpeg', '2018-04-06 12:10:33', '2018-04-06 12:10:33'),
(105, 6, '/storage/posts/CGRXO5e0WfCp68d76DFIy7rhyrN5VUlCdCIxirRE.jpeg', '2018-04-06 12:10:35', '2018-04-06 12:10:35'),
(106, 6, '/storage/posts/jl67tQlQmrdlQp8UWvfMf2cUfkeEIovsvB801tLE.jpeg', '2018-04-06 12:10:37', '2018-04-06 12:10:37'),
(107, 6, '/storage/posts/3TmSopOf5xTmmTe8Im7AAvu48ZZMNAR78WT7mnZj.jpeg', '2018-04-06 12:10:39', '2018-04-06 12:10:39'),
(108, 6, '/storage/posts/XxtPrzLwfsOJbDozgzYZ3R1dy7S18HHNCB4ptVOj.jpeg', '2018-04-06 12:10:41', '2018-04-06 12:10:41'),
(109, 6, '/storage/posts/oWll1CpUxw55LAFBxG2IEWd5KJXvrdQw4imW3lF2.jpeg', '2018-04-06 12:10:43', '2018-04-06 12:10:43'),
(110, 6, '/storage/posts/tG9wC1YwBYbyN7fQu84BAC8vO64ACiIzsvbJqmTt.jpeg', '2018-04-06 12:10:45', '2018-04-06 12:10:45'),
(111, 6, '/storage/posts/1dt15CxXdQuO9DryO4oS5bt0XkHfRJ9IaEZbtR8F.jpeg', '2018-04-06 12:10:47', '2018-04-06 12:10:47'),
(112, 6, '/storage/posts/SR99aelxx8IjK6maFreicRTCBWrlcLCMgaUtXgs7.jpeg', '2018-04-06 12:10:49', '2018-04-06 12:10:49'),
(113, 6, '/storage/posts/fQKsXyK0wZqE8d6WmGWGPjNlZKf5NJq9xzC7DUmB.jpeg', '2018-04-06 12:10:51', '2018-04-06 12:10:51'),
(114, 6, '/storage/posts/wQiIaPcG1UucgA4o7mlnK8FerliXt9qvDzRlto3T.jpeg', '2018-04-06 12:10:53', '2018-04-06 12:10:53'),
(115, 6, '/storage/posts/lx6Iva4FrXheEsAF8flxj0Qa8wFETNsdNGdqqY55.jpeg', '2018-04-06 12:11:13', '2018-04-06 12:11:13'),
(116, 6, '/storage/posts/Q6p4waUorOM1BgW1vIh6EKYWySsj1TKxlG2be7PM.jpeg', '2018-04-06 12:11:15', '2018-04-06 12:11:15'),
(117, 7, '/storage/posts/xu9PHc5ndOaci2x0UoNCTkFTDz4DfOOKMvdF0yTy.jpeg', '2018-04-06 12:23:35', '2018-04-06 12:23:35'),
(118, 7, '/storage/posts/hhWQFyiVL6x8KNjbk1ioBPYPX0u5JgluG9OcUXrx.jpeg', '2018-04-06 12:23:37', '2018-04-06 12:23:37'),
(119, 7, '/storage/posts/34cKK0R2NDDKGhVcfcRBF3X2kCGQ7cKDKHB7X96S.jpeg', '2018-04-06 12:23:39', '2018-04-06 12:23:39'),
(120, 7, '/storage/posts/DrkoPUedcJKbJodUYF3pIAK65eGqCJUfJ5SJ4fGF.jpeg', '2018-04-06 12:23:42', '2018-04-06 12:23:42'),
(121, 7, '/storage/posts/ydyhEGDlE97Y0uVeKt1kgcDKIcftUsKwTsfibUwX.jpeg', '2018-04-06 12:23:44', '2018-04-06 12:23:44'),
(122, 7, '/storage/posts/LL01ZXU7hct3Nsxpb9aWfYVKPDkIl02IRCZuzNv9.jpeg', '2018-04-06 12:23:46', '2018-04-06 12:23:46'),
(123, 7, '/storage/posts/FOOLIFxB7dU6bAxvUMpjzpKB2clRcXP2FNz5CAks.jpeg', '2018-04-06 12:23:48', '2018-04-06 12:23:48'),
(124, 7, '/storage/posts/khxKd7UCNdq5nqgYjorB3i09NXHbZlPwyNXrXCQj.jpeg', '2018-04-06 12:23:50', '2018-04-06 12:23:50'),
(125, 7, '/storage/posts/fu8NSpGG7UWsR6J85mhWWZc4kMcJM5EcujI81Wav.jpeg', '2018-04-06 12:23:52', '2018-04-06 12:23:52'),
(126, 7, '/storage/posts/l6vI1eOdjgRKkyM18bJyMYdXeiwbrgl65nxVKKzF.jpeg', '2018-04-06 12:23:55', '2018-04-06 12:23:55'),
(127, 7, '/storage/posts/FLCtiKjuNf7Ismx33U6c1mGLw4DPiGfSQ5k15jgV.jpeg', '2018-04-06 12:24:00', '2018-04-06 12:24:00'),
(128, 7, '/storage/posts/goAUG0yxrMNH73LwbtuPjGDkEabhKxa0VEbDJmyJ.jpeg', '2018-04-06 12:24:01', '2018-04-06 12:24:01'),
(129, 7, '/storage/posts/VHa2VCplDUxfnMmwkz7hEURs1k2F16rArMKa9GaY.jpeg', '2018-04-06 12:24:03', '2018-04-06 12:24:03'),
(130, 7, '/storage/posts/iXYpMyjIvupAPFQONpHnlBbsK8X0pdThxId4qyQ8.jpeg', '2018-04-06 12:24:06', '2018-04-06 12:24:06'),
(131, 7, '/storage/posts/I8lRFUZJIN3Es49dN61U1gA44tOCTckraTl1s1KA.jpeg', '2018-04-06 12:24:07', '2018-04-06 12:24:07'),
(132, 7, '/storage/posts/BpHRyaJHdY8tWGzbNTIwrLycddEkT4IIShsJc8q9.jpeg', '2018-04-06 12:24:09', '2018-04-06 12:24:09'),
(133, 7, '/storage/posts/LVmh0OYmIWiLec0CZXj9AKvNCaeg5ETWdOlRhhS4.jpeg', '2018-04-06 12:24:11', '2018-04-06 12:24:11'),
(134, 7, '/storage/posts/2TtGhzyYQSqAQRAvsvqFNpCuWwsOym25Rbz2Qw89.jpeg', '2018-04-06 12:24:14', '2018-04-06 12:24:14'),
(135, 7, '/storage/posts/vIzVgok2FmrLNc2ZPeugsdMuLaw9rufV89iD7Sno.jpeg', '2018-04-06 12:24:17', '2018-04-06 12:24:17'),
(136, 7, '/storage/posts/T8GRaFj7KMs82TB7LxknzecW22vDzdFfdGMwwK3q.jpeg', '2018-04-06 12:24:18', '2018-04-06 12:24:18'),
(137, 7, '/storage/posts/LIqIjGj9LEDhvVYZQAhy2HGQZZ65tPLZf1OseaJq.jpeg', '2018-04-06 12:24:21', '2018-04-06 12:24:21'),
(138, 7, '/storage/posts/fVIUyyQkk9hKeGzfXyngcSLlT1seJ5Jw0z047JvE.jpeg', '2018-04-06 12:24:23', '2018-04-06 12:24:23'),
(139, 7, '/storage/posts/qYJE6RTFqrMv038WNQp9XAgeEOpftxbKvJDnvsvI.jpeg', '2018-04-06 12:24:24', '2018-04-06 12:24:24'),
(140, 7, '/storage/posts/LpPEo6D2DBQafQpHox6A6weTCRZOuZ7NfXVPaqvM.jpeg', '2018-04-06 12:24:27', '2018-04-06 12:24:27'),
(141, 7, '/storage/posts/Kt0nz2e0iCKjlCzbjE7HYCn6csMO1zXeGbyXR76z.jpeg', '2018-04-06 12:24:29', '2018-04-06 12:24:29'),
(142, 7, '/storage/posts/8cFVOBII85ueBFu2kaD7ODtirINjjzNBcXj6ceiF.jpeg', '2018-04-06 12:24:30', '2018-04-06 12:24:30'),
(143, 8, '/storage/posts/C5PTChnG5EzE1315UNKxY1hr7RDO3mXLBn2N6l7A.jpeg', '2018-04-06 12:38:01', '2018-04-06 12:38:01'),
(144, 8, '/storage/posts/0TuoldY7eu5p8vRMIFNr17s2AMKskoXWslIaQet7.jpeg', '2018-04-06 12:38:04', '2018-04-06 12:38:04'),
(145, 8, '/storage/posts/OiwqhEKTTxNHCTH4pfS0MIT1DasxCQNMBdPLjmEL.jpeg', '2018-04-06 12:38:06', '2018-04-06 12:38:06'),
(146, 8, '/storage/posts/TMqcFN0GiRxUI7JUgRp0xaQJWa1369PgAYVfhO5D.jpeg', '2018-04-06 12:38:18', '2018-04-06 12:38:18'),
(147, 8, '/storage/posts/uwSApUieaXDHCblCEGofPC3OnmCQpe3GVnvTCVPw.jpeg', '2018-04-06 12:38:20', '2018-04-06 12:38:20'),
(148, 8, '/storage/posts/5Yj2NIRJ4HOSu5UPCZCZyTCAopOmkY5YhL3pIFzC.jpeg', '2018-04-06 12:38:22', '2018-04-06 12:38:22'),
(149, 8, '/storage/posts/gDO11sT8Z3RkNf4w2Y06LiRbvz3Utg4JyxXchgJE.jpeg', '2018-04-06 12:38:24', '2018-04-06 12:38:24'),
(150, 8, '/storage/posts/ZvmENxfg2RjJYP2nf80pUJeIVzsqlI0zmPDYJHaL.jpeg', '2018-04-06 12:38:26', '2018-04-06 12:38:26'),
(151, 8, '/storage/posts/ghSbqq5DlTXsv2P0NznHFG8mNPCaEeBKjAQ7lTZ8.jpeg', '2018-04-06 12:38:31', '2018-04-06 12:38:31'),
(152, 8, '/storage/posts/jiGR346Rdu40ghfUCz6JPCTeJHrhC1mA1FgAx6hz.jpeg', '2018-04-06 12:38:32', '2018-04-06 12:38:32'),
(153, 8, '/storage/posts/tLlacGGp87STLWcnjdmNrqJrvBTUbeSPQqr7Q6KO.jpeg', '2018-04-06 12:38:35', '2018-04-06 12:38:35'),
(154, 8, '/storage/posts/JtHnUlLxZxvfBGbbjmG5FsHH0iovKD1wSFkxgXyZ.jpeg', '2018-04-06 12:38:37', '2018-04-06 12:38:37'),
(155, 8, '/storage/posts/B7WG7Hop5VgTzvmjHw3RpJ74zb9ApQblBPV5FjWY.jpeg', '2018-04-06 12:38:39', '2018-04-06 12:38:39'),
(156, 8, '/storage/posts/nOvWVUE5BM0yg3F5sQOjkMM0eBoA5epXiMlR7jqC.jpeg', '2018-04-06 12:38:40', '2018-04-06 12:38:40'),
(157, 8, '/storage/posts/3ul8VUzSGZWVpKu0dwZHzBql70K4FTMOdIQwI8qo.jpeg', '2018-04-06 12:38:42', '2018-04-06 12:38:42'),
(158, 8, '/storage/posts/wtfE6pwyURFxKmQLAVoKDNsQHFqhia68s4PU9Nqc.jpeg', '2018-04-06 12:38:44', '2018-04-06 12:38:44'),
(159, 8, '/storage/posts/b1HzIwXSf3VwXVSk4jpoRyXOBgJYwA6jBandQGWj.jpeg', '2018-04-06 12:38:46', '2018-04-06 12:38:46'),
(160, 8, '/storage/posts/kQqiWorf4uqv6eLCB6aGbezmCYjJVKO2YGASYaQ9.jpeg', '2018-04-06 12:38:48', '2018-04-06 12:38:48'),
(161, 8, '/storage/posts/RD3ckF8WTAR9tL2j4pikaAZL4VRktE6KGjBCbbE1.jpeg', '2018-04-06 12:38:50', '2018-04-06 12:38:50'),
(162, 8, '/storage/posts/pk7ZUULZiVwkfmu0ZuYnSi6NIVfebyOLukyFEJQY.jpeg', '2018-04-06 12:38:51', '2018-04-06 12:38:51'),
(163, 9, '/storage/posts/9B5IKOehRkkMYU96876uwGnN0u2buRDFsrFrk7zs.jpeg', '2018-04-06 12:52:18', '2018-04-06 12:52:18'),
(164, 9, '/storage/posts/J7MOjCzIFcYOF0ZpPpmVNcNtXdL1hldFYpxuFegg.jpeg', '2018-04-06 12:52:59', '2018-04-06 12:52:59'),
(165, 9, '/storage/posts/3DCeGJTxQNpJukreGiU870J6DE6DNstpELG5R2N8.jpeg', '2018-04-06 12:53:02', '2018-04-06 12:53:02'),
(166, 9, '/storage/posts/FRah9XNh6ugHPSpE5JuZXTh59PtPxmnOrCuW2pMb.jpeg', '2018-04-06 12:53:04', '2018-04-06 12:53:04'),
(167, 9, '/storage/posts/F1PkQeVKYS242fUMb1eyBoCawHVH3sQnP5C3UCJQ.jpeg', '2018-04-06 12:53:07', '2018-04-06 12:53:07'),
(168, 9, '/storage/posts/STjrpCIJNK8hfC7Q9viOqEevN8HXikQkVGaOgKNj.jpeg', '2018-04-06 12:53:11', '2018-04-06 12:53:11'),
(169, 9, '/storage/posts/HUOGr4M3rBmnr7eCdPv7e78TzlzyqGsMycnXIcNS.jpeg', '2018-04-06 12:53:14', '2018-04-06 12:53:14'),
(170, 9, '/storage/posts/rjG5sCPsAsSYg5c22DA0S7RGabuPeTJKuW6i64Pk.jpeg', '2018-04-06 12:53:18', '2018-04-06 12:53:18'),
(171, 9, '/storage/posts/8IFeeooHEKCdCqcy6r6bEagt0wtaEAj8CvX46Mvn.jpeg', '2018-04-06 12:53:20', '2018-04-06 12:53:20'),
(172, 10, '/storage/posts/SYrzAx2JwNIXvTmCzEjA51aWunk9O9tTHB7JALO0.jpeg', '2018-04-06 13:01:56', '2018-04-06 13:01:56'),
(173, 10, '/storage/posts/t3hg3A7JY34ZQbO0oS4uE82rEBWGdLC5ZxEtAmCh.jpeg', '2018-04-06 13:01:58', '2018-04-06 13:01:58'),
(174, 10, '/storage/posts/ePYFs0YbVxK5kvjqkE8NrX8cdq2qzTjMzTBxOib6.jpeg', '2018-04-06 13:02:00', '2018-04-06 13:02:00'),
(175, 10, '/storage/posts/6sLn0IGLrVBax9jODvLn9qWtCHaVmRDlQf9Obxhj.jpeg', '2018-04-06 13:02:02', '2018-04-06 13:02:02'),
(176, 10, '/storage/posts/pVJvwZQzSlUqo2Ysr3MhV6hR1hsIMeRVGwOvfinH.jpeg', '2018-04-06 13:02:04', '2018-04-06 13:02:04'),
(177, 10, '/storage/posts/97xHFwVaW6giw9cyg3lIMSTmDHAifNtDQuZXftrm.jpeg', '2018-04-06 13:02:06', '2018-04-06 13:02:06'),
(178, 10, '/storage/posts/TTseM1ydPtu32WTLOqCRQm6gK5u2BgC144byCACM.jpeg', '2018-04-06 13:02:08', '2018-04-06 13:02:08'),
(179, 10, '/storage/posts/ES4cLSTgF9gZNalE03tQmejNKdJuIgfXOMfVPNv2.jpeg', '2018-04-06 13:02:09', '2018-04-06 13:02:09'),
(180, 10, '/storage/posts/YPPFUDbM5frfz9PLQVzkuzN2zn01oJEYoFBihRtR.jpeg', '2018-04-06 13:02:11', '2018-04-06 13:02:11'),
(181, 10, '/storage/posts/bCMvm3hYkKWleKoun1CBceyqaV4BXDsfpT1fCKUY.jpeg', '2018-04-06 13:02:13', '2018-04-06 13:02:13'),
(182, 10, '/storage/posts/PwCWu9a9bTgHlOBfAmlidSduqJuxnDcaiLq0Lldu.jpeg', '2018-04-06 13:02:15', '2018-04-06 13:02:15'),
(183, 10, '/storage/posts/KmAdUKW4lx6zO5C78DTUDQBxTVpICwO38q9hOXyD.jpeg', '2018-04-06 13:02:17', '2018-04-06 13:02:17'),
(184, 12, '/storage/posts/OvCCdOWakxvayJu2sQpqqUaf5WUcKjufLNYV6n4f.jpeg', '2018-04-13 15:37:48', '2018-04-13 15:37:48'),
(185, 12, '/storage/posts/9F5D7nAAssTVR4WcOhQERChnQ2EKgmOGArNGhW3S.jpeg', '2018-04-13 15:37:59', '2018-04-13 15:37:59'),
(186, 12, '/storage/posts/VMKUG6eBENStlMyNd5UabuZPsJiDAArb1c983UgZ.jpeg', '2018-04-13 15:38:07', '2018-04-13 15:38:07'),
(187, 12, '/storage/posts/2HKTk6fDp4J6KyQgmahSPTKy75Y5W2lSZKABWLUh.jpeg', '2018-04-13 15:38:12', '2018-04-13 15:38:12'),
(188, 12, '/storage/posts/TAZDu1dJRtEuNOo7lWglb2z5eZTMcUABUbkGyWq4.jpeg', '2018-04-13 15:38:24', '2018-04-13 15:38:24'),
(189, 13, '/storage/posts/sezt0AUFLb9KeDTOxaKmFnZ3CqYDKEWxwEdHIesn.jpeg', '2018-04-13 15:56:13', '2018-04-13 15:56:13'),
(190, 13, '/storage/posts/oTe7rwAnpKruA3bbOcu6dyMLfaIpR0pNLqrtlhvz.jpeg', '2018-04-13 15:56:24', '2018-04-13 15:56:24'),
(191, 13, '/storage/posts/dA0qtextcTPHVyx8pbqEsC45Na4goNTZZC9dBgKm.jpeg', '2018-04-13 15:56:30', '2018-04-13 15:56:30'),
(192, 13, '/storage/posts/o1CGbhecSmhFkQC83OiIU5tACH6yoPKzyKb0CBSL.jpeg', '2018-04-13 15:56:44', '2018-04-13 15:56:44'),
(193, 13, '/storage/posts/DzmALfjod6q0bciZou8NXY31BgqVWNSlX4rY2bYh.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(194, 13, '/storage/posts/R9ee977Ye8ti0y2V6Ij8nM6t2hDO5AbQfByXrgcC.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(195, 13, '/storage/posts/ZKYP4ZwsSMAQPSCpKunLDZW7uxOyjyMm2Oc7JiHd.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(196, 13, '/storage/posts/t7LF3gpptlkIeACKFANGYvAQVkytbwcLj5x6S1Ah.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(197, 13, '/storage/posts/i0S8mRFAlTmbBd1fLuk7DoYYzoVFUYZ2kPupP3s7.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(198, 13, '/storage/posts/5MCku31tfhGQAkJo8L6SKKraWpZ9AfXoooqh4b8Q.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(199, 13, '/storage/posts/MkUUNigymOlzpDknSkt6K8kiDynViLuF5zYFSmCs.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(200, 13, '/storage/posts/4hPmES72eU3bwqnAmC8PUB9lKVvfSowyYYEyAwHa.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(201, 13, '/storage/posts/Ojur6vocoQyG2jH1foTJkOR0jkMBIRNyFpcKkBZo.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(202, 13, '/storage/posts/JW14p8wp04QMAI1Cb0NjXpjXDlpgH0JCrroxshU9.jpeg', '2018-04-13 15:56:45', '2018-04-13 15:56:45'),
(203, 13, '/storage/posts/wlXlmRqTCWDbeIkhCHWX98bA2z2CpsuBcUgP20O9.jpeg', '2018-04-13 15:56:46', '2018-04-13 15:56:46'),
(204, 14, '/storage/posts/ifr4EkmgrWaTBEJpilGb80BdJIO9qvWOdZVlu24y.jpeg', '2018-04-15 15:19:38', '2018-04-15 15:19:38'),
(205, 14, '/storage/posts/MQsIdVFfpgf9iS3FSQTgj63t35G4bMKIRJ3xTVeF.jpeg', '2018-04-15 15:19:45', '2018-04-15 15:19:45'),
(206, 14, '/storage/posts/L4CpQOC1SpfmDj9asdiYGWCZki6qici48fTGCR7S.jpeg', '2018-04-15 15:19:55', '2018-04-15 15:19:55'),
(207, 14, '/storage/posts/mFeeEQMFF1dOXRc5Azdu4XDCtYN65kReyZoRwEtE.jpeg', '2018-04-15 15:19:59', '2018-04-15 15:19:59'),
(208, 14, '/storage/posts/PX8N13seq62EI3wz7tfKovlxWpjcwqnoPqKc7jwL.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(209, 14, '/storage/posts/SKjLoP1EBRjCBHGDTaP9q5OkLmx2wMCG4MP8U2iA.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(210, 14, '/storage/posts/V6i9dVq6jhAJLMJzIlFJJVzZK3tNJaNsheb02Ciw.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(211, 14, '/storage/posts/dS25lhUW5GYyhL1Yw3XO0C6dks5Wu8LENIn3VRBL.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(212, 14, '/storage/posts/7KWKxrW5FoAvYz2zaoewKS7euzUjovJIgo6fkCSQ.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(213, 14, '/storage/posts/zTBtJLc5LoZojGt3W2mgSQsr544euwQ3tlNwjCaZ.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(214, 14, '/storage/posts/ILy4gMKLc0L9sO8l1tCZT0JBUrdFJQJUuMV1cchA.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(215, 14, '/storage/posts/W2ICDEurUZJz5iKKW1i5kf9nvm7AbLB3Z1pKWrZm.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(216, 14, '/storage/posts/3cZZBENKhcc420XVq26S2oyc1IA4HHy4bvXGolFs.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(217, 14, '/storage/posts/PGS1zL1KD6TnQrQsq0yQvRSIU0KOHC3pUBvub0rK.jpeg', '2018-04-15 15:20:07', '2018-04-15 15:20:07'),
(218, 14, '/storage/posts/u37ro1HqYgmRS1WczhyaxAjaaEXwLNKBQw3LOXTd.jpeg', '2018-04-15 15:20:24', '2018-04-15 15:20:24'),
(219, 14, '/storage/posts/ahRuo5r8PzqW4xhx52W4e2qL4oTXQ9RM4ea4jFvh.jpeg', '2018-04-15 15:24:19', '2018-04-15 15:24:19'),
(220, 14, '/storage/posts/BCkyfEzLG4rgMnFo24lC8jIxYK55zmBZYe8ZiD0G.jpeg', '2018-04-15 15:24:19', '2018-04-15 15:24:19');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `housearea` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landarea` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `excerpt` mediumtext COLLATE utf8mb4_unicode_ci,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `iframe` mediumtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `hide_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `url`, `price`, `currency`, `distance`, `housearea`, `landarea`, `location`, `excerpt`, `body`, `iframe`, `category_id`, `user_id`, `days`, `published_at`, `hide_at`, `created_at`, `updated_at`) VALUES
(2, 'Дом, Московская область', 'dom', '350000 рублей в месяц', NULL, '17', '400', '24', '55.719201, 37.123582', 'Шоссе: Рублево-Успенское шоссе (17км от МКАД)\r\nПлощадь уч-ка: 24сот.( 12- собственность, 12- аренда на 49 лет)\r\nПлощадь дома: 400м2 Этажность дома: 3 эт.', '<p><strong>Бузаево</strong>. Закрытый клубный поселок всего в 17 км от МКАД, а потому надежно защищен от шума и суеты городской жизни.Очень удобный подъезд к поселку, есть второй выезд на случай затруднения движения по Рубдево-Успенскому шоссе. Дом окружен лесным участком и имеет свой выход в лес. Архитектура дома напоминает архитектуру викторианской, изысканной Англии и создает атмосферу спокойствия и благочинности, в то время как интерьер дома выполнен по самым современным стандартам и впечатляет своей продуманностью и вниманием к деталям.</p>\r\n\r\n<p>Планировка :</p>\r\n\r\n<ul>\r\n	<li>1 этаж - холл, блок для прислуги, постирочная, гостевая спальня &nbsp;со своим сан узлом, гардеробная, библиотека с камином, каминый зал, зимний сад, столовая, просторная кухня, гостевая спальня с ванной комнатой, блок для персонала с отдельным входом, со своей кухней и с/у, постирочная, котельная.</li>\r\n	<li>2 этаж- хозяйская спальня с просторной ванной комнатой, две спальни, ванная. Мансарда - кабинет, детская игровая, с/у.&nbsp;</li>\r\n</ul>', NULL, 1, 1, 30, '2018-04-05 21:00:00', '2018-05-05 21:00:00', '2018-04-05 02:39:17', '2018-04-15 15:01:21'),
(3, 'Аренда в поселке Дивный на Новой Риге', 'arenda-v-poselke-divnyy-na-novoy-rige', '300000 рублей в месяц', NULL, '25', '350', '20', '55.826192, 36.995324', 'Дом на аренду в ОКП Дивный', '<p>&nbsp;Ново-рижское шоссе, деревня Падиково, новый элитный поселок на ареду с развитой инфрапструктурой. В домах имеется 4 спальни, каминный зал в два света, кабинет. Современный дизайн, новая мебель.</p>', NULL, 2, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 09:07:33', '2018-04-15 15:01:46'),
(4, 'Новый мини поселок в Раздорах 2!!!', 'novyy-mini-poselok-v-razdorakh', '24 500 000', 'рубли', '4', '350', '5', '55.747622, 37.299261', 'Рядом с новой школой в Раздорах-2!!!! Новый охраняемый поселок, самое близкое расположение от Москвы!!', '<p>Рублево-Успенское шоссе, 4 км от МКАД.</p>\r\n\r\n<p>Рядом с новой школой в Раздорах-2!!!!Новый охраняемый поселок, самое близкое расположение от Москвы!! Дом,( дуплекс) состоящий из двух равноценных половин, под отделку.</p>\r\n\r\n<p>В каждой равноценной половине имеется 4 спальни, каминный зал, 3 сан узла. В цоколе- сауна, бильярдная. Первая очередь поселка, состоящая из двух домов( 4 половины)- полностью готова. В домах разведены коммуникации</p>\r\n\r\n<p>Тауны в Раздорах под чистовую. 350м, участок 5 соток. 24 500 000 руб ( торг)</p>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 11:27:26', '2018-04-15 15:02:23'),
(5, 'Таун в Маленькой Италии( c отделкой)', 'taun-v-malenkoy-italii-c-otdelkoy', '17 000 000', NULL, NULL, '260', '3.5', '55.807967, 37.131117', 'Часть жилого дома 260 кв.м. на участке 3,5 сотки. Под отделку.', '<p>Информация&nbsp;по объекту &laquo;Дуплексы в к/п &laquo;Маленькая Италия&raquo;.</p>\r\n\r\n<p>Продаётся: Часть жилого дома 260 кв.м. на участке 3,5 сотки. Под отделку.<br />\r\nЦена: 17 000 000 рублей.<br />\r\n&nbsp;<br />\r\nОбщая информация:<br />\r\n9 дуплексов, 18 блоков.<br />\r\nПлощадь одного Дуплекса = 520 кв.м.<br />\r\nПлощадь участка на котором расположен Дуплекс - 7 соток.<br />\r\nПлощадь одного Блока = в 3-х уровнях 260 кв.м. (включая гараж на 1 машину)<br />\r\nПлощадь участка на котором расположен Блок - 3,5 сотки.</p>\r\n\r\n<p>Котельное оборудование - настенный котёл Viessmann</p>\r\n\r\n<p>Конструктив:<br />\r\n- фундаменты - буронабивные сваи, глубина залегания 3 метра, ростверк.<br />\r\n- перекрытия - ж/б круглопустотные плиты.<br />\r\n- стены - 500 mm (несущие - 250 mm пустотелый кирпич, 100 mm утеплитель Paroc, 20 mm воздушный зазор, облицовка - 120 mm пустотелый кирпич)<br />\r\n- кровля - композитная черепица Lindab (Швеция), 200 mm утеплитель Paroc.&nbsp;<br />\r\n- водосточная система - Aquasystem.<br />\r\n- окна - пластиковые 2-х камерные стеклопакеты, профиль 70 mm REHAU, ламинация под дерево, запорная фурнитура Roto.<br />\r\n- фасад - декоративная штукатурка TERRACO, декор &ndash; ПП, дерево.<br />\r\n- цоколь - искусственный камень White Hills.</p>\r\n\r\n<p>Коммуникации заведены в дом:<br />\r\n- газ<br />\r\n- вода<br />\r\n- электричество 5 кВт, возможно докупить по $2000/кВт.<br />\r\n- канализация<br />\r\n&nbsp;</p>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 11:51:26', '2018-04-06 12:00:05'),
(6, 'ОКП Жуковка, ДСК Лес', 'okp-zhukovka-dsk-les', '3 500 000 $', 'доллары', '6', '700', '15', '55.740920, 37.257722', 'Срочная\\ продажа и снижение цены!!\r\nРублево-Успенское шоссе, 6 км от МКАД, ОКП Жуковка.', '<p>Рублево-Успенское шоссе, 6 км от МКАД, ОКП Жуковка.&nbsp;&nbsp;Кирпичный современный особняк 700м, лесной участок 15 соток( собственность). Индивидуальный проект и дизайн, дорогая качественная отделка. Имеется 4 спальни со своими сан узлами и гардеробными. Три этажа. На первом этаже- студио 150м, высота потолков 4.5 м. Плавательный бассейн 10м с зоной СПА. Полноценный цокольный этаж с бильярдной, домашним кинотеатром. Система &laquo; умный дом&raquo;, центральные коммуникации. Имеется отдельно стоящий гараж на 4 машины с квартирой для персонала, зимняя беседка с барбекю. цена- 3 500 000 $</p>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 12:06:26', '2018-04-15 15:02:40'),
(7, 'Жуковка, Аренда', 'zhukovka-arenda', '550 000 рублей в месяц', 'рубли', '8', '500', '20', '55.740920, 37.257722', 'Рублево-Успенское шоссе, 8 км от МКАД. Элитный поселкок на берегу реки.', '<p>Рублево-Успенское шоссе, 8 км от МКАД. Элитный поселкок на берегу реки.</p>\r\n\r\n<p>Дом 500м, участок 20 соток. Имеется 4 спальни, каминный зал, кабинет. Гараж на 2 машины с квартирой для прислуги. цена- 550 000 р в месяц</p>', NULL, 2, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 12:20:43', '2018-04-15 15:03:05'),
(8, 'Особняк в Дрофе, продажа', 'osobnyak-v-drofe-prodazha', '2 300 000$', 'доллары', '15', '1200', '30', '55.511413, 37.756934', 'Рублево-Успенское шоссе, 15 км от МКАД, Уникальный поселок на 20  домов ,Горки-1.', '<p>Рублево-Успенское шоссе, 15 км от МКАД, Уникальный поселок на 20&nbsp; домов ,Горки-1.&nbsp; В поселке находятся: детская площадка, ресторан, комплекс с залом приемов с камином, бассейном 25 м2, детским бассейном, теннисным кортом, большим тренажерным залом, раздевалками, бильярдной, баней, солярием Дом в стиле Шале 1200м, участок 30 соток( собственность). Современная,&nbsp; просторная и очень удобная планировка, большие светлые помещения.</p>\r\n\r\n<p>&nbsp;Новая&nbsp; Цена- 2 300&nbsp;000$</p>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 12:26:53', '2018-04-15 15:03:24'),
(9, 'Жуковка-3, продажа', 'zhukovka-3-prodazha', '$ 9 600 000', NULL, '9', '1200', '33', '55.741959, 37.257532', 'Новая цена 6,5 с большим торгом', '<table style=\"width:292.5pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:82.5pt\">\r\n			<p><strong>Местоположение:</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:198.0pt\">\r\n			<p>Одинцовский район<br />\r\n			Рублево-Успенское ш., 9 км<br />\r\n			Жуковка<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.5pt; width:82.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:7.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:7.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:22.5pt; width:82.5pt\">\r\n			<p><strong>Продажа</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; width:198.0pt\">\r\n			<p>&nbsp;&nbsp;&nbsp;<strong>$ 9 600 000</strong><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.5pt; width:82.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:7.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:7.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:82.5pt\">\r\n			<p><strong>Участок:</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:198.0pt\">\r\n			<p>Площадь: <strong>33 соток </strong><br />\r\n			Ландшафт: Лесной<br />\r\n			Дополнительно: На участке отдельно расположен гараж на 3 а/м. Над гаражом 2-х комнатная квартира для персонала с кухней и с/у. В правом крыле гаража расположена котельная.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.5pt; width:82.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:7.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:7.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:82.5pt\">\r\n			<p><strong>Дом:</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:198.0pt\">\r\n			<p>Площадь: <strong>1200 кв.м.</strong><br />\r\n			Этажность: 2<br />\r\n			Число уровней: 4<br />\r\n			Фундамент: Монолит<br />\r\n			Стены: Кирпич<br />\r\n			Перекрытия: Монолит<br />\r\n			Кровля: Медь<br />\r\n			Внутренняя отделка: Под отделку<br />\r\n			Мебель: Нет<br />\r\n			Дополнительно: При проектировании применены интересные архитектурные решения. Дом представляет собой галерею с большой площадью остекления, где главной достопримечательностью является природа. При строительстве были использованы экологически чистые и натуральные материалы.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.5pt; width:82.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:7.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:7.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:82.5pt\">\r\n			<p><strong>Планировка:</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:198.0pt\">\r\n			<p>Цоколь: бильярдная, кинозал, винный погреб, постирочная, гладильная, технические помещения;<br />\r\n			1 этаж: прихожая, гардеробная, холл, кухня, столовая, каминный зал, кабинет, гостевой с/у, бассейн (16 метров), зона отдыха, сауна, с/у;<br />\r\n			2 этаж: спальня с с/у и гардеробной, 2 спальни с с/у, библиотека;<br />\r\n			Мансарда: 2 спальни с с/у и гардеробными</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.5pt; width:82.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:7.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:7.5pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:82.5pt\">\r\n			<p><strong>Коммуникации:</strong></p>\r\n			</td>\r\n			<td style=\"height:22.5pt; width:4.5pt\">&nbsp;</td>\r\n			<td style=\"height:22.5pt; vertical-align:top; width:198.0pt\">\r\n			<p>Газ: Магистральный<br />\r\n			Электричество: 25 кВт<br />\r\n			Водоснабжение: Центральное<br />\r\n			Канализация: Центральная</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 12:41:50', '2018-04-06 12:53:47'),
(10, 'дом в Горках-8 ( под ключ- 80%)', 'dom-v-gorkakh-8-pod-klyuch-80', '2000000$', 'доллары', NULL, '780', '30', '55.718363, 37.160666', 'В элитном поселке ГОРКИ-8 продается дом общей площадью 780 кв.м., кирпично-монолитный (стена 64см.) с возможностью перепланировки.', '<p>В элитном поселке ГОРКИ-8 продается дом общей площадью 780 кв.м., кирпично-монолитный (стена 64см.) с возможностью перепланировки. Электричество 40кВт, газ, центральное водоснабжение, центральная канализация (3 куб./сутки) участок 30 соток.<br />\r\nЦоколь: кинотеатр с камином, сауна, джакузи, SPA, с/у, тренажерный зал, раздевалка,<br />\r\n2-е душевые, котельная-бойлерная, 3-и кладовые комнаты, комната для водоочистки;<br />\r\n1-й этаж: прихожая, большой холл, кухня с выходом на террасу, столовая, гостиная с камином и выходом в сад и лес, игровая комната (или гостевая), с/у с душем для животных, постирочная комната с кладовой;<br />\r\n2-й этаж: хозяйская спальня с большим с/у, душем и гардеробной, кабинет со вторым светом и выходом на огромный балкон, спальня с с/у и красивым видом, детская комната с балконом, общий с/у с ванной и душевой кабиной, гардеробная; гостевая комната-спальня;</p>\r\n\r\n<p>3-й этаж: бильярдная, настольный (комнатный) теннис, Бар-гостиная, 3-и спальни.&nbsp;</p>\r\n\r\n<p>Участок 30 соток граничит с лесом (есть возможность увеличить до 40 соток). Плодовые молодые деревья, сосны, елки, туи, цветы, кустарники, крыжовник, черешня, смородина, малина, на всем участке газон.</p>\r\n\r\n<p>Строения на участке: Гостевой деревянный (сруб по финской технологии)<br />\r\n2-х этажный дом с цоколем (полностью меблирован) общей площадью 190 кв.м.<br />\r\n1-й этаж: Прихожая, кухня-столовая, с/у, Финская сауна с печкой Tulikivi, купель на 4-е человека, душевая, топочная с выходом в сад;<br />\r\n2-й этаж: Большая спальня с балконом;<br />\r\nЦоколь: Винный погребок в стиле старой таверны и дубовой мебелью, бойлерная с выходом в сад и постирочная комната.</p>\r\n\r\n<p>Так же на участке кирпично-монолитный 2-х этажный гараж на 2-е машины, общей площадью 120 кв.м.&nbsp;<br />\r\nНа 2-м этаже 2-х комнатная квартира, прихожая, кухня, с/у. с ванной и душем.&nbsp;</p>\r\n\r\n<p>Подъездная дорога Асфальт,<br />\r\nВъездная и уличная охрана, въезд по пропускам.<br />\r\nНа территории своя церковь, 2-е детских площадки, магазин Перекресток,&nbsp;<br />\r\nАптека, Химчистка, кофе-бар, винный бар (часы работы - круглосуточно).<br />\r\n&nbsp;</p>', NULL, 1, 1, 100, '2018-04-05 21:00:00', '2018-07-14 21:00:00', '2018-04-06 12:56:42', '2018-04-15 15:04:18'),
(11, 'Новый дом под отделку на Ильинском шоссе', 'novyy-dom-pod-otdelku-na-ilinskom-shosse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2018-04-13 15:30:47', '2018-04-13 15:30:47'),
(12, 'Новый дом в ОКП Нива', 'novyy-dom-v-okp-niva', '62000000 рублей', 'рубли', '12', '500', '12', '55.422551, 36.896924', 'Новый дом под чистовую отделку на Ильинском шоссе', '<p>&nbsp;Новый дом 500м, участок12 соток. Качественное строительство. Отдельно стоящий дом120м с гаражом и квартирой для персонала.</p>', NULL, 1, 1, 130, '2018-04-12 21:00:00', '2018-08-20 21:00:00', '2018-04-13 15:32:54', '2018-04-15 15:25:41'),
(13, 'Аренда современного дома в Горках-2', 'arenda-sovremennogo-doma-v-gorkakh-2', '550000 рублей в месяц', 'рубли', '15', '620', '30', '55.710131, 37.160070', 'Новый дом с стиле Райт. Качественная отделка и интерьеры.Камерный поселок на 4 дома с лесной территорией. Новый современный дом 620м. Авторский дизайн  интерьера. Развитая инфраструктура Горок-2. Лесной участок. Есть дом для прислуги 50 кв.м. Возможна длительная аренда', NULL, NULL, 2, 1, 170, '2018-04-12 21:00:00', '2018-09-29 21:00:00', '2018-04-13 15:48:50', '2018-04-15 15:25:12'),
(14, 'Особняк в аренду в Горках-2', 'osobnyak-v-arendu-v-gorkakh-2', '650000 рублей в месяц', 'рубли', '15', '700', '55', '55.713322, 37.162038', 'Особняк на лесной территории в аренду и продажу', '<p>&nbsp;Дом в стиле Арк-деко для проживания большой семьи. После хорошего ремонта. Имеется отдельно стоящая деревянная баня- 150м. Основной дом:1-й этаж: прихожая гардеробная холл гостевой с у ,гостиная каминный зал кухня-столовая гараж на 1 машину</p>\r\n\r\n<p>2-й этаж:холл,2 спальни ванная ,комната гостиная-спальня</p>\r\n\r\n<p>Мансарда: холл хозяйская спальня с ванной комнатой и гардеробной ,кабинет( может быть спальней)</p>\r\n\r\n<p>Цоколь: солярий сауна душ с у постирочная кладовая котельная.</p>', NULL, 2, 1, 200, '2018-04-14 21:00:00', '2018-10-31 21:00:00', '2018-04-15 15:13:27', '2018-04-15 15:25:59');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Администратор', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(2, 'Moderator', 'Модератор', 'web', '2018-04-04 04:24:29', '2018-04-04 04:24:29');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$qlhWGCZ.X71gR85WWYDrQ./wgWR2bY1ioTWV9PiuYQ71pl44XsD5C', 'Sfjz9lLKDLfbV9zn1IbULU6jjZ4cgcHvu5Ir4gElKPhxb5oCMTWgM5XnV3LV', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
(2, 'user', 'user@user.com', '$2y$10$xat2QgZmzMYts4iSfm6CgOO7HsaEIG5knCvFne0SVyIXjk7o6/sE6', NULL, '2018-04-04 04:24:29', '2018-04-04 04:24:29');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_url_unique` (`url`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
