-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 06 2018 г., 11:53
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `house`
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
(8, '2018_03_19_071734_create_permission_tables', 1);

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
(36, 2, '/storage/posts/JvGWfqgezdgxl16ZHVj4tvZuUGr5uSIR8qGOlMoH.jpeg', '2018-04-06 05:50:34', '2018-04-06 05:50:34'),
(37, 2, '/storage/posts/xhO2Wia2XJgvQ39VMAenXVBDzFJYSq984ycyEUEW.jpeg', '2018-04-06 05:50:37', '2018-04-06 05:50:37'),
(38, 2, '/storage/posts/LTeueKVjQVIgZOqGS4vPsMAe97vD756vNqqQe54h.jpeg', '2018-04-06 05:50:40', '2018-04-06 05:50:40'),
(39, 2, '/storage/posts/WmD8RrrdZ3otLwjKezRj3P5auIJ8kEWFkU4940Fu.jpeg', '2018-04-06 05:50:42', '2018-04-06 05:50:42'),
(40, 2, '/storage/posts/l38ZyRfOMXOj8Uou39QFggEL34wJdVnLkdcY8lgd.jpeg', '2018-04-06 05:50:44', '2018-04-06 05:50:44'),
(41, 2, '/storage/posts/ldjsGtwJmRqWHbyWn9BjYM9xYvc3Y1XQvz3nkXiJ.jpeg', '2018-04-06 05:50:46', '2018-04-06 05:50:46'),
(42, 2, '/storage/posts/5izaEfYyWPN1O85SeWAz5eIB8ema8qpxbQwfIv6x.jpeg', '2018-04-06 05:50:48', '2018-04-06 05:50:48'),
(43, 2, '/storage/posts/kpGvJ7gtMhAArUnsgHekzb9Ng6nJnXmhPrsWIan0.jpeg', '2018-04-06 05:50:50', '2018-04-06 05:50:50'),
(44, 2, '/storage/posts/i6NGZ5a37yRcfRiHgRg6umjK7sdPeWAiLdU2Z7qK.jpeg', '2018-04-06 05:50:52', '2018-04-06 05:50:52'),
(45, 2, '/storage/posts/o6qs4e47UAxXJ8A9P2Q787SKDx0O7pymUnk9FEqr.jpeg', '2018-04-06 05:50:53', '2018-04-06 05:50:53'),
(46, 2, '/storage/posts/4wvBfGhdG6d8DGIzlqZc2x4rJvdeOiKKcV5yy22t.jpeg', '2018-04-06 05:50:55', '2018-04-06 05:50:55');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `posts` (`id`, `title`, `url`, `price`, `distance`, `housearea`, `landarea`, `location`, `excerpt`, `body`, `iframe`, `category_id`, `user_id`, `days`, `published_at`, `hide_at`, `created_at`, `updated_at`) VALUES
(2, 'Дом, Московская область', 'vtoraya', '2 700 000$', '17', '400', '24', '55.719201, 37.123582', 'Шоссе: Рублево-Успенское шоссе (17км от МКАД)\r\nПлощадь уч-ка: 24сот.( 12- собственность, 12- аренда на 49 лет)\r\nПлощадь дома: 400м2 Этажность дома: 3 эт.', '<p><strong>Бузаево</strong>. Закрытый клубный поселок всего в 17 км от МКАД, а потому надежно защищен от шума и суеты городской жизни.Очень удобный подъезд к поселку, есть второй выезд на случай затруднения движения по Рубдево-Успенскому шоссе. Дом окружен лесным участком и имеет свой выход в лес. Архитектура дома напоминает архитектуру викторианской, изысканной Англии и создает атмосферу спокойствия и благочинности, в то время как интерьер дома выполнен по самым современным стандартам и впечатляет своей продуманностью и вниманием к деталям.</p>\r\n\r\n<p>Планировка :</p>\r\n\r\n<ul>\r\n	<li>1 этаж - холл, блок для прислуги, постирочная, гостевая спальня &nbsp;со своим сан узлом, гардеробная, библиотека с камином, каминый зал, зимний сад, столовая, просторная кухня, гостевая спальня с ванной комнатой, блок для персонала с отдельным входом, со своей кухней и с/у, постирочная, котельная.</li>\r\n	<li>2 этаж- хозяйская спальня с просторной ванной комнатой, две спальни, ванная. Мансарда - кабинет, детская игровая, с/у.&nbsp;</li>\r\n</ul>', NULL, 1, 1, 30, '2018-04-05 21:00:00', '2018-05-05 21:00:00', '2018-04-05 02:39:17', '2018-04-06 05:52:01');

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
(1, 'admin', 'admin@admin.com', '$2y$10$qlhWGCZ.X71gR85WWYDrQ./wgWR2bY1ioTWV9PiuYQ71pl44XsD5C', 'uBIBGnAn4xqASUCabXvmyN8jmF5aON2wC14btC5aoQYW1E2OOpWYeLEIHDhO', '2018-04-04 04:24:29', '2018-04-04 04:24:29'),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
