-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laravel
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `laravel`;

-- Dumping structure for table laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2015_07_22_115516_create_ticketit_tables', 2),
	(5, '2015_07_22_123254_alter_users_table', 2),
	(6, '2015_09_29_123456_add_completed_at_column_to_ticketit_table', 2),
	(7, '2015_10_08_123457_create_settings_table', 2),
	(8, '2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments', 2),
	(9, '2016_01_15_040207_enlarge_settings_columns', 2),
	(10, '2016_01_15_120557_add_indexes', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit
CREATE TABLE IF NOT EXISTS `ticketit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` int(10) unsigned NOT NULL,
  `priority_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `agent_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketit_subject_index` (`subject`),
  KEY `ticketit_status_id_index` (`status_id`),
  KEY `ticketit_priority_id_index` (`priority_id`),
  KEY `ticketit_user_id_index` (`user_id`),
  KEY `ticketit_agent_id_index` (`agent_id`),
  KEY `ticketit_category_id_index` (`category_id`),
  KEY `ticketit_completed_at_index` (`completed_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit: ~7 rows (approximately)
/*!40000 ALTER TABLE `ticketit` DISABLE KEYS */;
INSERT INTO `ticketit` (`id`, `subject`, `content`, `html`, `status_id`, `priority_id`, `user_id`, `agent_id`, `category_id`, `created_at`, `updated_at`, `completed_at`) VALUES
	(1, 'Permohonan kemaskini no telefon', 'pertukaran no telefon baruno baru: 0123456788', '<p>pertukaran no telefon baru</p><p>no baru: 0123456788</p>', 2, 1, 2, 1, 1, '2020-10-07 07:25:02', '2020-10-07 07:26:13', '2020-10-07 07:26:13'),
	(2, 'test bila internet tak sambung', 'hello!', '<p>hello!</p>', 2, 1, 2, 1, 1, '2020-10-07 07:29:25', '2020-10-07 07:29:55', '2020-10-07 07:29:55'),
	(4, 'Kemaskini no telefon', 'Sila kemaskini no telefon', '<p>Sila kemaskini no telefon</p>', 2, 1, 3, 6, 3, '2020-10-27 09:17:10', '2020-10-27 09:19:21', '2020-10-27 09:19:21'),
	(5, 'Tak Paham', 'Selesaikan', '<p>Selesaikan</p>', 2, 1, 3, 1, 1, '2020-10-27 09:21:48', '2020-10-27 09:22:26', '2020-10-27 09:22:26'),
	(6, 'Selesaikan', 'Tak paham', '<p>Tak paham</p>', 2, 1, 3, 6, 3, '2020-10-27 09:23:20', '2020-10-27 09:24:54', '2020-10-27 09:24:54'),
	(7, 'Permohonan kemaskini no telefon', 'sddsdsds', '<p>sddsdsds</p>', 2, 1, 3, 6, 3, '2020-10-30 07:00:50', '2020-10-30 07:01:43', '2020-10-30 07:01:42'),
	(8, 'dsdasd', 'dasdasd', '<p>dasdasd</p>', 1, 1, 3, 5, 1, '2020-10-30 07:02:04', '2020-10-30 07:11:35', NULL);
/*!40000 ALTER TABLE `ticketit` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_audits
CREATE TABLE IF NOT EXISTS `ticketit_audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_audits: ~0 rows (approximately)
/*!40000 ALTER TABLE `ticketit_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketit_audits` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_categories
CREATE TABLE IF NOT EXISTS `ticketit_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_categories: ~3 rows (approximately)
/*!40000 ALTER TABLE `ticketit_categories` DISABLE KEYS */;
INSERT INTO `ticketit_categories` (`id`, `name`, `color`) VALUES
	(1, 'Support', '#000000'),
	(2, 'Korporat', '#28fbbf'),
	(3, 'Webmaster', '#ffadad');
/*!40000 ALTER TABLE `ticketit_categories` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_categories_users
CREATE TABLE IF NOT EXISTS `ticketit_categories_users` (
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_categories_users: ~3 rows (approximately)
/*!40000 ALTER TABLE `ticketit_categories_users` DISABLE KEYS */;
INSERT INTO `ticketit_categories_users` (`category_id`, `user_id`) VALUES
	(2, 5),
	(3, 6),
	(1, 5);
/*!40000 ALTER TABLE `ticketit_categories_users` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_comments
CREATE TABLE IF NOT EXISTS `ticketit_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `ticket_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketit_comments_user_id_index` (`user_id`),
  KEY `ticketit_comments_ticket_id_index` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_comments: ~7 rows (approximately)
/*!40000 ALTER TABLE `ticketit_comments` DISABLE KEYS */;
INSERT INTO `ticketit_comments` (`id`, `content`, `html`, `user_id`, `ticket_id`, `created_at`, `updated_at`) VALUES
	(1, 'permohonan selesai', '<p>permohonan selesai</p>', 1, 1, '2020-10-07 07:26:07', '2020-10-07 07:26:07'),
	(2, 'connection okay', '<p>connection okay</p>', 1, 2, '2020-10-07 07:29:41', '2020-10-07 07:29:41'),
	(3, 'Selesai kemaskini', '<p>Selesai kemaskini<br /></p>', 6, 4, '2020-10-27 09:19:15', '2020-10-27 09:19:15'),
	(4, 'Sila permudahkan', '<p>Sila permudahkan<br /></p>', 5, 6, '2020-10-27 09:23:50', '2020-10-27 09:23:50'),
	(5, 'Dah mudahkan', '<p>Dah mudahkan</p>', 3, 6, '2020-10-27 09:24:07', '2020-10-27 09:24:07'),
	(6, 'Selesai', '<p>Selesai<br /></p>', 6, 6, '2020-10-27 09:24:51', '2020-10-27 09:24:51'),
	(7, 'tak lengkap.. masuk no betul', '<p>tak lengkap.. masuk no betul<br /></p>', 5, 8, '2020-10-30 07:11:35', '2020-10-30 07:11:35');
/*!40000 ALTER TABLE `ticketit_comments` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_priorities
CREATE TABLE IF NOT EXISTS `ticketit_priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_priorities: ~3 rows (approximately)
/*!40000 ALTER TABLE `ticketit_priorities` DISABLE KEYS */;
INSERT INTO `ticketit_priorities` (`id`, `name`, `color`) VALUES
	(1, 'High', '#830909'),
	(2, 'Normal', '#090909'),
	(3, 'Low', '#125f71');
/*!40000 ALTER TABLE `ticketit_priorities` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_settings
CREATE TABLE IF NOT EXISTS `ticketit_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  KEY `ticketit_settings_lang_index` (`lang`),
  KEY `ticketit_settings_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_settings: ~42 rows (approximately)
/*!40000 ALTER TABLE `ticketit_settings` DISABLE KEYS */;
INSERT INTO `ticketit_settings` (`id`, `lang`, `slug`, `value`, `default`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'main_route', 'tickets', 'tickets', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(2, NULL, 'main_route_path', 'tickets', 'tickets', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(3, NULL, 'admin_route', 'tickets-admin', 'tickets-admin', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(4, NULL, 'admin_route_path', 'tickets-admin', 'tickets-admin', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(5, NULL, 'master_template', 'layouts.app', 'layouts.app', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(6, NULL, 'bootstrap_version', '4', '4', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(7, NULL, 'email.template', 'ticketit::emails.templates.ticketit', 'ticketit::emails.templates.ticketit', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(8, NULL, 'email.header', 'Ticket Update', 'Ticket Update', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(9, NULL, 'email.signoff', 'Thank you for your patience!', 'Thank you for your patience!', '2020-10-07 01:38:12', '2020-10-07 01:38:12'),
	(10, NULL, 'email.signature', 'Your friends', 'Your friends', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(11, NULL, 'email.dashboard', 'My Dashboard', 'My Dashboard', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(12, NULL, 'email.google_plus_link', '#', '#', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(13, NULL, 'email.facebook_link', '#', '#', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(14, NULL, 'email.twitter_link', '#', '#', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(15, NULL, 'email.footer', 'Powered by Ticketit', 'Powered by Ticketit', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(16, NULL, 'email.footer_link', 'https://github.com/thekordy/ticketit', 'https://github.com/thekordy/ticketit', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(17, NULL, 'email.color_body_bg', '#FFFFFF', '#FFFFFF', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(18, NULL, 'email.color_header_bg', '#44B7B7', '#44B7B7', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(19, NULL, 'email.color_content_bg', '#F46B45', '#F46B45', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(20, NULL, 'email.color_footer_bg', '#414141', '#414141', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(21, NULL, 'email.color_button_bg', '#AC4D2F', '#AC4D2F', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(22, NULL, 'default_status_id', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(23, NULL, 'default_close_status_id', '2', '0', '2020-10-07 01:38:13', '2020-10-07 01:38:14'),
	(24, NULL, 'default_reopen_status_id', '3', '0', '2020-10-07 01:38:13', '2020-10-07 01:38:14'),
	(25, NULL, 'paginate_items', '10', '10', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(26, NULL, 'length_menu', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(27, NULL, 'status_notification', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(28, NULL, 'comment_notification', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(29, NULL, 'queue_emails', '0', '0', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(30, NULL, 'assigned_notification', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(31, NULL, 'agent_restrict', '0', '0', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(32, NULL, 'close_ticket_perm', 'a:3:{s:5:"owner";b:1;s:5:"agent";b:1;s:5:"admin";b:1;}', 'a:3:{s:5:"owner";b:1;s:5:"agent";b:1;s:5:"admin";b:1;}', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(33, NULL, 'reopen_ticket_perm', 'a:3:{s:5:"owner";b:1;s:5:"agent";b:1;s:5:"admin";b:1;}', 'a:3:{s:5:"owner";b:1;s:5:"agent";b:1;s:5:"admin";b:1;}', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(34, NULL, 'delete_modal_type', 'builtin', 'builtin', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(35, NULL, 'editor_enabled', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(36, NULL, 'include_font_awesome', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(37, NULL, 'summernote_locale', 'en', 'en', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(38, NULL, 'editor_html_highlighter', '1', '1', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(39, NULL, 'codemirror_theme', 'monokai', 'monokai', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(40, NULL, 'summernote_options_json_file', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(41, NULL, 'purifier_config', 'a:3:{s:15:"HTML.SafeIframe";s:4:"true";s:20:"URI.SafeIframeRegexp";s:72:"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%";s:18:"URI.AllowedSchemes";a:5:{s:4:"data";b:1;s:4:"http";b:1;s:5:"https";b:1;s:6:"mailto";b:1;s:3:"ftp";b:1;}}', 'a:3:{s:15:"HTML.SafeIframe";s:4:"true";s:20:"URI.SafeIframeRegexp";s:72:"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%";s:18:"URI.AllowedSchemes";a:5:{s:4:"data";b:1;s:4:"http";b:1;s:5:"https";b:1;s:6:"mailto";b:1;s:3:"ftp";b:1;}}', '2020-10-07 01:38:13', '2020-10-07 01:38:13'),
	(42, NULL, 'routes', 'C:\\Users\\UiTM\\Desktop\\LARAVEL\\20201007-TICKETIT\\ticketit\\vendor/kordy/ticketit/src/routes.php', 'C:\\Users\\UiTM\\Desktop\\LARAVEL\\20201007-TICKETIT\\ticketit\\vendor/kordy/ticketit/src/routes.php', '2020-10-07 01:38:13', '2020-10-07 01:38:13');
/*!40000 ALTER TABLE `ticketit_settings` ENABLE KEYS */;

-- Dumping structure for table laravel.ticketit_statuses
CREATE TABLE IF NOT EXISTS `ticketit_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.ticketit_statuses: ~3 rows (approximately)
/*!40000 ALTER TABLE `ticketit_statuses` DISABLE KEYS */;
INSERT INTO `ticketit_statuses` (`id`, `name`, `color`) VALUES
	(1, 'New', '#e9551e'),
	(2, 'Closed', '#186107'),
	(3, 'Re-opened', '#71001f');
/*!40000 ALTER TABLE `ticketit_statuses` ENABLE KEYS */;

-- Dumping structure for table laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT '0',
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `ticketit_admin`, `ticketit_agent`) VALUES
	(1, 'fauzan', 'fauzan@demo.com', NULL, '$2y$10$3j1J0ZalpqNwfg3rHegwpe6i8UstkrJYYcpI1uhEgCQw/ehr6lOyK', 'RPTJAKXb7Ec82wppENICLprxBwJUSKn6KrZbk1XpFx3hSvxXKE1DWMu5vLBh', '2020-10-07 01:38:05', '2020-10-27 09:17:33', 1, 1),
	(2, 'ali', 'ali@demo.cm', NULL, '$2y$10$zr.UqGtAUPg/2K0eNGvSGetJnxxUh44YNu9zMEkBHCCVxLfw2Ofea', NULL, '2020-10-07 07:23:57', '2020-10-27 06:39:38', 0, 0),
	(3, 'umar', 'umar@demo.com', NULL, '$2y$10$Xa5WGl9MKtoTmaeVEW0Ie.zL3.lLuk3DUg3rk.szqIEzC6.CTj.1q', NULL, '2020-10-07 09:14:30', '2020-10-07 09:14:30', 0, 0),
	(4, 'ali', 'ali@user.com', NULL, '$2y$10$GfYzw2ZNHt8bgh7XY3uxb.1klDDlTvkkCGAc7ZRSHDpRZDcC/jrQi', NULL, '2020-10-27 06:32:40', '2020-10-27 06:32:40', 0, 0),
	(5, 'fiza', 'fiza@korporat.com', NULL, '$2y$10$QgOaiq0JGckm.niMh0GNK.jvkZooxY.DguSH9sxgR50vp49J8rIU2', NULL, '2020-10-27 09:14:39', '2020-10-27 09:17:33', 0, 1),
	(6, 'aina', 'aina@webmaster.com', NULL, '$2y$10$Qvgb6O.zqTnPa7Irmvg/AOpRboBfX0mwmmnpXPK6SDQVfoOe5Nrz2', NULL, '2020-10-27 09:15:08', '2020-10-27 09:17:33', 0, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
