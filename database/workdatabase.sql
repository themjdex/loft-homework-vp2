-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.33 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6376
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп данных таблицы laravel.admin_emails: ~0 rows (приблизительно)
INSERT INTO `admin_emails` (`id`, `admin_email`, `created_at`, `updated_at`) VALUES
	(1, 'themjdex@gmail.com', '2022-05-05 09:38:03', '2022-05-06 00:13:30');

-- Дамп данных таблицы laravel.books: ~26 rows (приблизительно)
INSERT INTO `books` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Master', 100, NULL, NULL),
	(2, 'Dr. Timothy Green', 876, '2022-05-03 01:33:46', '2022-05-03 01:33:46'),
	(3, 'Ulices Armstrong', 272, '2022-05-03 01:33:46', '2022-05-03 01:33:46'),
	(4, 'Mr. Ryan Mitchell', 797, '2022-05-03 01:33:46', '2022-05-03 01:33:46'),
	(5, 'Maggie Price', 516, '2022-05-03 01:33:46', '2022-05-03 01:33:46'),
	(6, 'Ashleigh Carter', 762, '2022-05-03 01:33:46', '2022-05-03 01:33:46'),
	(7, 'Emil Nikolaus', 655, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(8, 'Annie Medhurst', 968, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(9, 'Idell Will', 921, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(10, 'Ms. Roxanne Ziemann PhD', 145, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(11, 'Dr. Miracle Jones PhD', 937, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(12, 'Odell Keebler', 543, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(13, 'Neoma Roob', 161, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(14, 'Winston McClure', 927, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(15, 'Easton Gerhold', 546, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(16, 'Chester Schinner', 418, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(17, 'Prof. Uriah Schaden', 590, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(18, 'Rodger Sipes', 177, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(19, 'Cortney Weissnat', 994, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(20, 'Mrs. Ramona Smith II', 683, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(21, 'Mrs. Ellie Reilly Sr.', 575, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(22, 'Mr. Austen Braun III', 433, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(23, 'Zachariah Adams', 470, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(24, 'Elisa Zieme', 530, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(25, 'Aubrey Ankunding', 988, '2022-05-03 01:37:06', '2022-05-03 01:37:06'),
	(26, 'Prof. Lexi Sawayn I', 695, '2022-05-03 01:37:06', '2022-05-03 01:37:06');

-- Дамп данных таблицы laravel.categories: ~5 rows (приблизительно)
INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Strategy', 'Loren', '2022-05-04 06:20:37', '2022-05-04 06:20:38'),
	(2, 'RPG', 'Lorem ipsum dolor sit amet', '2022-05-04 06:22:12', '2022-05-04 06:22:13'),
	(3, 'Action', 'Lorem ipsum dolor sit amet', '2022-05-04 06:22:14', '2022-05-04 06:22:14'),
	(4, 'Квесты', 'Lorem ipsum dolor sit amet', '2022-05-04 06:22:15', '2022-05-04 06:22:17'),
	(5, 'Онлайн-игры', 'Lorem ipsum dolor sit amet', '2022-05-04 06:22:16', '2022-05-04 06:22:16');

-- Дамп данных таблицы laravel.failed_jobs: ~0 rows (приблизительно)

-- Дамп данных таблицы laravel.migrations: ~7 rows (приблизительно)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_05_03_055534_create_books_table', 2),
	(6, '2022_05_04_050529_create_products_table', 3),
	(7, '2022_05_04_051621_create_categories_table', 4),
	(8, '2022_05_04_074959_create_orders_table', 5),
	(9, '2022_05_05_093634_create_admin_emails_table', 6);

-- Дамп данных таблицы laravel.orders: ~10 rows (приблизительно)
INSERT INTO `orders` (`id`, `product_id`, `customer`, `email`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Marat', 'themjdex@gmail.com', '2022-05-04 05:06:32', '2022-05-04 05:06:32'),
	(2, 1, 'Marat2', 'themjdex@gmail.com', '2022-05-04 05:07:09', '2022-05-04 05:07:09'),
	(3, 2, '111', 'themjdex@gmail.com', '2022-05-04 05:38:08', '2022-05-04 05:38:08'),
	(4, 2, '111', 'themjdex@gmail.com', '2022-05-04 05:39:49', '2022-05-04 05:39:49'),
	(5, 1, 'a', 'themjdex@gmail.com', '2022-05-04 06:45:11', '2022-05-04 06:45:11'),
	(6, 5, 'Марат', 'zhan-marat@mail.ru', '2022-05-05 00:30:00', '2022-05-05 00:30:00'),
	(7, 2, 'ppp', 'themjdex@gmail.com', '2022-05-05 03:48:07', '2022-05-05 03:48:07'),
	(8, 2, 'ppp', 'themjdex@gmail.com', '2022-05-05 03:48:49', '2022-05-05 03:48:49'),
	(9, 4, '123213', 'themjdex@gmail.com', '2022-05-05 06:19:10', '2022-05-05 06:19:10'),
	(10, 3, 'ooo', 'themjdex@gmail.com', '2022-05-05 06:22:56', '2022-05-05 06:22:56'),
	(11, 4, 'Иван', 'themjdex@gmail.com', '2022-05-05 23:57:50', '2022-05-05 23:57:50');

-- Дамп данных таблицы laravel.password_resets: ~0 rows (приблизительно)

-- Дамп данных таблицы laravel.personal_access_tokens: ~0 rows (приблизительно)

-- Дамп данных таблицы laravel.products: ~9 rows (приблизительно)
INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `annotation`, `created_at`, `updated_at`) VALUES
	(1, 'The Witcher 3: Wild Hunt', 'RPG', 400, '../../public/img/cover/game-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 05:57:51', '2022-05-04 05:57:53'),
	(2, 'Overwatch', 'Action', 400, '../../public/img/cover/game-2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 05:59:19', '2022-05-04 05:59:21'),
	(3, 'Deus Ex: Mankind Divided', 'Квесты', 400, '../../public/img/cover/game-3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:00:41', '2022-05-04 06:00:42'),
	(4, 'World of WarCraft', 'Онлайн-игры', 400, '../../public/img/cover/game-4.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:05:58', '2022-05-04 06:05:59'),
	(5, 'Call of Duty: Black ops II', 'Action', 400, '../../public/img/cover/game-5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:07:40', '2022-05-04 06:07:42'),
	(6, 'Batman', 'Action', 400, '../../public/img/cover/game-6.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:09:07', '2022-05-04 06:09:08'),
	(7, 'Rocket League', 'Онлайн-игры', 400, '../../public/img/cover/game-7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:11:45', '2022-05-04 06:11:46'),
	(8, 'Dishonored 2', 'RPG', 400, '../../public/img/cover/game-8.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:13:32', '2022-05-04 06:13:34'),
	(9, 'This War of Mine', 'Strategy', 400, '../../public/img/cover/game-9.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-05-04 06:13:35', '2022-05-04 06:13:35');

-- Дамп данных таблицы laravel.users: ~2 rows (приблизительно)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_role`) VALUES
	(1, 'Marat', 'themjdex@gmail.com', NULL, '$2y$10$ieDEbeCk1yXOmjgbEKvi9.pFUdm7352qopZD4D1WnFpsIzdi9PPkO', NULL, '2022-05-03 00:06:48', '2022-05-03 00:06:48', 'admin'),
	(2, 'Марат', 'zhan-marat@mail.ru', NULL, '$2y$10$.ygZ5k0FYub0VTGpj89bmurR5ri86mNR/nGx54lysZ302tYPqMNa6', NULL, '2022-05-05 00:29:30', '2022-05-05 00:29:30', 'user'),
	(3, '132', '13@12.ru', NULL, '$2y$10$h.gP2tn5mfA9wG0xNurIXecfjOtcvDA0r7tdqBHkSm7kT74Qmz3Qy', NULL, '2022-05-05 03:11:07', '2022-05-05 03:11:07', 'admin'),
	(4, 'Eva', 'eva@eva.ru', NULL, '$2y$10$1uhbzyrQ5mE1hxjFwJwn4.SQ5Sx0xZ5EsKUttLC6oDe.Im6R.Kmze', NULL, '2022-05-06 00:19:21', '2022-05-06 00:19:21', 'user'),
	(5, 'EvaAdmin', 'evaadmin@eva.ru', NULL, '$2y$10$dgiJgE7unYOpfINW1AmcQeqI8pjXwcUY/Rej660A7TYXyJb5YwJrS', NULL, '2022-05-06 00:19:56', '2022-05-06 00:19:56', 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
