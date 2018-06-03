-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 03 2018 г., 22:00
-- Версия сервера: 5.7.21-0ubuntu0.16.04.1
-- Версия PHP: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-31 22:48:59', '2018-05-31 19:48:59', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://test_wordpress.sv', 'yes'),
(2, 'home', 'http://test_wordpress.sv', 'yes'),
(3, 'blogname', 'TestWordpress', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'svirsa.denis@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:35:"books_post_type/books-post-type.php";i:1;s:39:"post_edit_gallery/post-edit-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:"/var/www/test_wordpress/wp-content/themes/twentyseventeen/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;i:6;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:7;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}i:8;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:9;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '32', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:10:"Поиск";}i:4;a:1:{s:5:"title";s:10:"Поиск";}}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1528055340;a:4:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1528055466;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1528062406;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:6:{s:18:"custom_css_post_id";i:67;s:18:"nav_menu_locations";a:2:{s:3:"top";i:4;s:6:"social";i:5;}s:7:"panel_1";i:36;s:7:"panel_2";i:33;s:7:"panel_3";i:35;s:7:"panel_4";i:34;}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.6.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1528012746;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1528012749;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(120, 'can_compress_scripts', '0', 'no'),
(121, 'category_children', 'a:0:{}', 'yes'),
(125, '_transient_timeout_plugin_slugs', '1528044536', 'no'),
(126, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:35:"books_post_type/books-post-type.php";i:2;s:9:"hello.php";i:3;s:39:"post_edit_gallery/post-edit-gallery.php";}', 'no'),
(127, 'recently_activated', 'a:0:{}', 'yes'),
(129, 'author_children', 'a:0:{}', 'yes'),
(145, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(196, '_site_transient_timeout_theme_roots', '1528014548', 'no'),
(197, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(198, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1528012750;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.3";s:35:"books_post_type/books-post-type.php";s:3:"1.0";s:9:"hello.php";s:3:"1.7";s:39:"post_edit_gallery/post-edit-gallery.php";s:3:"1.0";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(206, '_transient_is_multi_author', '0', 'yes'),
(209, '_site_transient_timeout_available_translations', '1528063092', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(210, '_site_transient_available_translations', 'a:113:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-06 13:56:09";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-24 07:02:30";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-25 15:24:22";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 03:44:52";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-03 11:08:37";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 13:12:01";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-24 10:52:38";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-25 09:11:29";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 18:15:25";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.6/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 18:14:55";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 17:56:21";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.6/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-31 19:43:07";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-05 12:41:56";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-22 00:27:45";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 08:45:22";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-22 19:01:38";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 23:18:17";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 15:47:52";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-27 18:50:21";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-18 03:09:27";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-02-27 05:22:44";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-31 11:12:52";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-30 07:44:25";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-16 10:29:40";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 21:23:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-25 14:56:25";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-17 12:42:52";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-02-14 06:16:04";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-15 08:49:46";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 03:43:25";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 15:45:31";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 22:45:22";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-30 09:55:05";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-28 07:55:20";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 11:38:59";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-08 06:01:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 22:24:38";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-26 15:32:13";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-24 09:42:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 08:05:19";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-22 19:04:05";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 14:40:52";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-30 12:22:32";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-18 13:37:44";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 09:27:50";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-28 15:53:31";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-21 19:42:47";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-24 11:43:38";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-28 11:37:00";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-29 17:37:01";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-22 17:23:37";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-25 10:30:04";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-17 22:21:34";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-29 07:47:42";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 21:51:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-06 20:34:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-13 08:24:25";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 10:37:43";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-11 05:09:29";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-09 00:56:52";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-13 02:41:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 22:20:52";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1527803159:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1527803189:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1527803115:1'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1527803864:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1527803136:1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1527892519:1'),
(15, 11, '_wp_attached_file', '2018/06/espresso.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/06/espresso.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 11, '_starter_content_theme', 'twentyseventeen'),
(18, 11, '_customize_draft_post_name', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be'),
(19, 12, '_wp_attached_file', '2018/06/sandwich.jpg'),
(20, 12, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/06/sandwich.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 12, '_starter_content_theme', 'twentyseventeen'),
(22, 12, '_customize_draft_post_name', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87'),
(23, 13, '_wp_attached_file', '2018/06/coffee.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2018/06/coffee.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 13, '_starter_content_theme', 'twentyseventeen'),
(26, 13, '_customize_draft_post_name', '%d0%ba%d0%be%d1%84%d0%b5'),
(27, 14, '_customize_draft_post_name', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(28, 14, '_customize_changeset_uuid', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371'),
(29, 15, '_thumbnail_id', '12'),
(30, 15, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(31, 15, '_customize_changeset_uuid', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371'),
(32, 16, '_thumbnail_id', '11'),
(33, 16, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(34, 16, '_customize_changeset_uuid', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371'),
(35, 17, '_thumbnail_id', '13'),
(36, 17, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(37, 17, '_customize_changeset_uuid', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371'),
(38, 18, '_thumbnail_id', '11'),
(39, 18, '_customize_draft_post_name', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b'),
(40, 18, '_customize_changeset_uuid', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371'),
(41, 20, '_wp_attached_file', '2018/06/espresso-1.jpg'),
(42, 20, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2018/06/espresso-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 20, '_starter_content_theme', 'twentyseventeen'),
(44, 20, '_customize_draft_post_name', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be'),
(45, 21, '_wp_attached_file', '2018/06/sandwich-1.jpg'),
(46, 21, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2018/06/sandwich-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 21, '_starter_content_theme', 'twentyseventeen'),
(48, 21, '_customize_draft_post_name', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87'),
(49, 22, '_wp_attached_file', '2018/06/coffee-1.jpg'),
(50, 22, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/06/coffee-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 22, '_starter_content_theme', 'twentyseventeen'),
(52, 22, '_customize_draft_post_name', '%d0%ba%d0%be%d1%84%d0%b5'),
(53, 23, '_customize_draft_post_name', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(54, 23, '_customize_changeset_uuid', 'c5289efe-9ef1-40d4-8233-9411c746cd6d'),
(55, 24, '_thumbnail_id', '21'),
(56, 24, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(57, 24, '_customize_changeset_uuid', 'c5289efe-9ef1-40d4-8233-9411c746cd6d'),
(58, 25, '_thumbnail_id', '20'),
(59, 25, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(60, 25, '_customize_changeset_uuid', 'c5289efe-9ef1-40d4-8233-9411c746cd6d'),
(61, 26, '_thumbnail_id', '22'),
(62, 26, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(63, 26, '_customize_changeset_uuid', 'c5289efe-9ef1-40d4-8233-9411c746cd6d'),
(64, 27, '_thumbnail_id', '20'),
(65, 27, '_customize_draft_post_name', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b'),
(66, 27, '_customize_changeset_uuid', 'c5289efe-9ef1-40d4-8233-9411c746cd6d'),
(67, 29, '_wp_attached_file', '2018/06/espresso-2.jpg'),
(68, 29, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2018/06/espresso-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 29, '_starter_content_theme', 'twentyseventeen'),
(71, 30, '_wp_attached_file', '2018/06/sandwich-2.jpg'),
(72, 30, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2018/06/sandwich-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 30, '_starter_content_theme', 'twentyseventeen'),
(75, 31, '_wp_attached_file', '2018/06/coffee-2.jpg'),
(76, 31, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/06/coffee-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 31, '_starter_content_theme', 'twentyseventeen'),
(80, 32, '_customize_changeset_uuid', 'ce5e7b23-b914-402d-97e2-9437696049d8'),
(81, 33, '_thumbnail_id', '30'),
(83, 33, '_customize_changeset_uuid', 'ce5e7b23-b914-402d-97e2-9437696049d8'),
(84, 34, '_thumbnail_id', '29'),
(86, 34, '_customize_changeset_uuid', 'ce5e7b23-b914-402d-97e2-9437696049d8'),
(87, 35, '_thumbnail_id', '31'),
(89, 35, '_customize_changeset_uuid', 'ce5e7b23-b914-402d-97e2-9437696049d8'),
(90, 36, '_thumbnail_id', '29'),
(92, 36, '_customize_changeset_uuid', 'ce5e7b23-b914-402d-97e2-9437696049d8'),
(95, 45, '_menu_item_type', 'custom'),
(96, 45, '_menu_item_menu_item_parent', '0'),
(97, 45, '_menu_item_object_id', '45'),
(98, 45, '_menu_item_object', 'custom'),
(99, 45, '_menu_item_target', ''),
(100, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 45, '_menu_item_xfn', ''),
(102, 45, '_menu_item_url', 'http://test_wordpress.sv/'),
(103, 46, '_menu_item_type', 'post_type'),
(104, 46, '_menu_item_menu_item_parent', '0'),
(105, 46, '_menu_item_object_id', '33'),
(106, 46, '_menu_item_object', 'page'),
(107, 46, '_menu_item_target', ''),
(108, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 46, '_menu_item_xfn', ''),
(110, 46, '_menu_item_url', ''),
(111, 47, '_menu_item_type', 'post_type'),
(112, 47, '_menu_item_menu_item_parent', '0'),
(113, 47, '_menu_item_object_id', '35'),
(114, 47, '_menu_item_object', 'page'),
(115, 47, '_menu_item_target', ''),
(116, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 47, '_menu_item_xfn', ''),
(118, 47, '_menu_item_url', ''),
(119, 48, '_menu_item_type', 'post_type'),
(120, 48, '_menu_item_menu_item_parent', '0'),
(121, 48, '_menu_item_object_id', '34'),
(122, 48, '_menu_item_object', 'page'),
(123, 48, '_menu_item_target', ''),
(124, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 48, '_menu_item_xfn', ''),
(126, 48, '_menu_item_url', ''),
(127, 49, '_menu_item_type', 'custom'),
(128, 49, '_menu_item_menu_item_parent', '0'),
(129, 49, '_menu_item_object_id', '49'),
(130, 49, '_menu_item_object', 'custom'),
(131, 49, '_menu_item_target', ''),
(132, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 49, '_menu_item_xfn', ''),
(134, 49, '_menu_item_url', 'https://www.yelp.com'),
(135, 50, '_menu_item_type', 'custom'),
(136, 50, '_menu_item_menu_item_parent', '0'),
(137, 50, '_menu_item_object_id', '50'),
(138, 50, '_menu_item_object', 'custom'),
(139, 50, '_menu_item_target', ''),
(140, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 50, '_menu_item_xfn', ''),
(142, 50, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(143, 51, '_menu_item_type', 'custom'),
(144, 51, '_menu_item_menu_item_parent', '0'),
(145, 51, '_menu_item_object_id', '51'),
(146, 51, '_menu_item_object', 'custom'),
(147, 51, '_menu_item_target', ''),
(148, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 51, '_menu_item_xfn', ''),
(150, 51, '_menu_item_url', 'https://twitter.com/wordpress'),
(151, 52, '_menu_item_type', 'custom'),
(152, 52, '_menu_item_menu_item_parent', '0'),
(153, 52, '_menu_item_object_id', '52'),
(154, 52, '_menu_item_object', 'custom'),
(155, 52, '_menu_item_target', ''),
(156, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 52, '_menu_item_xfn', ''),
(158, 52, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(159, 53, '_menu_item_type', 'custom'),
(160, 53, '_menu_item_menu_item_parent', '0'),
(161, 53, '_menu_item_object_id', '53'),
(162, 53, '_menu_item_object', 'custom'),
(163, 53, '_menu_item_target', ''),
(164, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(165, 53, '_menu_item_xfn', ''),
(166, 53, '_menu_item_url', 'mailto:wordpress@example.com'),
(167, 37, '_wp_trash_meta_status', 'publish'),
(168, 37, '_wp_trash_meta_time', '1527803589'),
(169, 32, '_edit_lock', '1527886656:1'),
(170, 54, '_wp_trash_meta_status', 'publish'),
(171, 54, '_wp_trash_meta_time', '1527803624'),
(172, 55, '_wp_trash_meta_status', 'publish'),
(173, 55, '_wp_trash_meta_time', '1527803680'),
(177, 36, '_edit_lock', '1527803921:1'),
(178, 57, '_edit_lock', '1527805728:1'),
(179, 57, '_wp_trash_meta_status', 'publish'),
(180, 57, '_wp_trash_meta_time', '1527805733'),
(181, 58, '_wp_trash_meta_status', 'publish'),
(182, 58, '_wp_trash_meta_time', '1527805897'),
(183, 1, '_edit_lock', '1527886699:1'),
(187, 63, '_wp_trash_meta_status', 'publish'),
(188, 63, '_wp_trash_meta_time', '1527887170'),
(189, 64, '_wp_trash_meta_status', 'publish'),
(190, 64, '_wp_trash_meta_time', '1527887267'),
(191, 65, '_wp_trash_meta_status', 'publish'),
(192, 65, '_wp_trash_meta_time', '1527892528'),
(196, 66, '_edit_lock', '1527892821:1'),
(197, 66, '_wp_trash_meta_status', 'publish'),
(198, 66, '_wp_trash_meta_time', '1527892828'),
(199, 2, '_edit_lock', '1528052148:1'),
(200, 2, '_edit_last', '1'),
(201, 30, 'img_template', 'template_2'),
(202, 29, 'img_template', 'template_2'),
(203, 29, '_edit_lock', '1527962371:1'),
(204, 31, 'img_template', 'template_2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-31 22:48:59', '2018-05-31 19:48:59', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-05-31 22:48:59', '2018-05-31 19:48:59', '', 0, 'http://test_wordpress.sv/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-31 22:48:59', '2018-05-31 19:48:59', '[gallery ids="31" template="template_2"]\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-03 20:42:15', '2018-06-03 17:42:15', '', 0, 'http://test_wordpress.sv/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-31 22:48:59', '2018-05-31 19:48:59', '<h2>Кто мы</h2><p>Наш адрес сайта: http://test_wordpress.sv.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email ("хеш") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность "Запомнить меня", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать ваши данные, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взвимодействия если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-05-31 22:48:59', '2018-05-31 19:48:59', '', 0, 'http://test_wordpress.sv/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-05-31 22:50:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-31 22:50:59', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?p=4', 0, 'post', '', 0),
(5, 1, '2018-06-01 00:46:59', '2018-05-31 21:46:59', '', 'Book 1', '', 'publish', 'open', 'closed', '', 'book-1_1', '', '', '2018-06-01 00:48:20', '2018-05-31 21:48:20', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=5', 0, 'books', '', 0),
(6, 1, '2018-06-01 00:47:25', '2018-05-31 21:47:25', '', 'Book 2', '', 'publish', 'open', 'closed', '', 'book-2', '', '', '2018-06-01 00:48:31', '2018-05-31 21:48:31', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=6', 0, 'books', '', 0),
(7, 1, '2018-06-01 00:47:37', '2018-05-31 21:47:37', '', 'Book 3', '', 'publish', 'open', 'closed', '', 'book-3', '', '', '2018-06-01 00:47:37', '2018-05-31 21:47:37', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=7', 0, 'books', '', 0),
(8, 1, '2018-06-01 00:47:47', '2018-05-31 21:47:47', '', 'Book 4', '', 'publish', 'open', 'closed', '', 'book-4', '', '', '2018-06-01 00:47:47', '2018-05-31 21:47:47', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=8', 0, 'books', '', 0),
(9, 1, '2018-06-01 00:47:58', '2018-05-31 21:47:58', '', 'Book 5', '', 'publish', 'open', 'closed', '', 'book-5', '', '', '2018-06-01 00:47:58', '2018-05-31 21:47:58', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=9', 0, 'books', '', 0),
(10, 1, '2018-06-01 00:48:09', '2018-05-31 21:48:09', '', 'Book 6', '', 'publish', 'open', 'closed', '', 'book-6', '', '', '2018-06-01 00:48:09', '2018-05-31 21:48:09', '', 0, 'http://test_wordpress.sv/?post_type=books&#038;p=10', 0, 'books', '', 0),
(11, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 'Эспрессо', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 'Сэндвич', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 'Кофе', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:49:48', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-06-01 00:49:49', '0000-00-00 00:00:00', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            11,\n            12,\n            13,\n            14,\n            15,\n            16,\n            17,\n            18\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430",\n            "url": "http://test_wordpress.sv/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 15,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "\\u041e \\u043d\\u0430\\u0441"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 17,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "\\u0411\\u043b\\u043e\\u0433"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 16,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "E-mail",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 14,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 17,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 18,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 15,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 17,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 16,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:49:49"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd40b1e20-6b10-4af6-8db5-9e55e79c3371', '', '', '2018-06-01 00:49:49', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', '', 'Эспрессо', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:51:13', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', '', 'Сэндвич', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', '', 'Кофе', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-01 00:51:14', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-06-01 00:51:15', '0000-00-00 00:00:00', '{\n    "widget_text[6]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "widget_text[7]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-6",\n            "search-3",\n            "text-7"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "widget_text[8]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-8"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "widget_text[9]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-9",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            20,\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430",\n            "url": "http://test_wordpress.sv/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 24,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "\\u041e \\u043d\\u0430\\u0441"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 26,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "\\u0411\\u043b\\u043e\\u0433"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 25,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "E-mail",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 23,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 26,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 27,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 24,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 26,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 25,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:51:15"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c5289efe-9ef1-40d4-8233-9411c746cd6d', '', '', '2018-06-01 00:51:15', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2018-06-01 00:53:03', '2018-05-31 21:53:03', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2018-06-03 20:34:58', '2018-06-03 17:34:58', '', 0, 'http://test_wordpress.sv/wp-content/uploads/2018/06/espresso-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-06-01 00:53:03', '2018-05-31 21:53:03', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2018-06-03 20:37:36', '2018-06-03 17:37:36', '', 2, 'http://test_wordpress.sv/wp-content/uploads/2018/06/sandwich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2018-06-03 20:42:04', '2018-06-03 17:42:04', '', 2, 'http://test_wordpress.sv/wp-content/uploads/2018/06/coffee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 0, 'http://test_wordpress.sv/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 0, 'http://test_wordpress.sv/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 0, 'http://test_wordpress.sv/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 'Блог', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 0, 'http://test_wordpress.sv/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 0, 'http://test_wordpress.sv/?page_id=36', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(37, 1, '2018-06-01 00:53:03', '2018-05-31 21:53:03', '{\n    "widget_text[6]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "widget_text[7]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-6",\n            "search-3",\n            "text-7"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "widget_text[8]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b59b8c601be72ba61b39b26564e2c109"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-8"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "widget_text[9]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d963c41d5d4a65c943d98ec19a2d030d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9",\n            "title": "\\u041f\\u043e\\u0438\\u0441\\u043a",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ca72a09626460faa3ecd9773449f20f8"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-9",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            38\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu[-1]": {\n        "value": {\n            "name": "\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-1]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430",\n            "url": "http://test_wordpress.sv/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-2]": {\n        "value": {\n            "object_id": 33,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "\\u041e \\u043d\\u0430\\u0441",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041e \\u043d\\u0430\\u0441",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-3]": {\n        "value": {\n            "object_id": 35,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "\\u0411\\u043b\\u043e\\u0433",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u0411\\u043b\\u043e\\u0433",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-4]": {\n        "value": {\n            "object_id": 34,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "nav_menu[-5]": {\n        "value": {\n            "name": "\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-5]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-6]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-7]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-8]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "nav_menu_item[-9]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "E-mail",\n            "url": "mailto:wordpress@example.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 32,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "page_for_posts": {\n        "value": "38",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:03"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 36,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 33,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 35,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 34,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:52:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ce5e7b23-b914-402d-97e2-9437696049d8', '', '', '2018-06-01 00:53:03', '2018-05-31 21:53:03', '', 0, 'http://test_wordpress.sv/?p=37', 0, 'customize_changeset', '', 0),
(39, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 32, 'http://test_wordpress.sv/?p=39', 0, 'revision', '', 0),
(40, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 33, 'http://test_wordpress.sv/?p=40', 0, 'revision', '', 0),
(41, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 34, 'http://test_wordpress.sv/?p=41', 0, 'revision', '', 0),
(42, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 35, 'http://test_wordpress.sv/?p=42', 0, 'revision', '', 0),
(43, 1, '2018-06-01 00:53:04', '2018-05-31 21:53:04', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-01 00:53:04', '2018-05-31 21:53:04', '', 36, 'http://test_wordpress.sv/?p=43', 0, 'revision', '', 0),
(45, 1, '2018-06-01 00:53:05', '2018-05-31 21:53:05', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-06-01 00:53:05', '2018-05-31 21:53:05', '', 0, 'http://test_wordpress.sv/?p=45', 0, 'nav_menu_item', '', 0),
(46, 1, '2018-06-01 00:53:05', '2018-05-31 21:53:05', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-06-01 00:53:05', '2018-05-31 21:53:05', '', 0, 'http://test_wordpress.sv/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-06-01 00:53:06', '2018-05-31 21:53:06', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-06-01 00:53:06', '2018-05-31 21:53:06', '', 0, 'http://test_wordpress.sv/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2018-06-01 00:53:06', '2018-05-31 21:53:06', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-06-01 00:53:06', '2018-05-31 21:53:06', '', 0, 'http://test_wordpress.sv/?p=48', 3, 'nav_menu_item', '', 0),
(49, 1, '2018-06-01 00:53:06', '2018-05-31 21:53:06', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-06-01 00:53:06', '2018-05-31 21:53:06', '', 0, 'http://test_wordpress.sv/?p=49', 0, 'nav_menu_item', '', 0),
(50, 1, '2018-06-01 00:53:07', '2018-05-31 21:53:07', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-06-01 00:53:07', '2018-05-31 21:53:07', '', 0, 'http://test_wordpress.sv/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-06-01 00:53:07', '2018-05-31 21:53:07', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-06-01 00:53:07', '2018-05-31 21:53:07', '', 0, 'http://test_wordpress.sv/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2018-06-01 00:53:08', '2018-05-31 21:53:08', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-06-01 00:53:08', '2018-05-31 21:53:08', '', 0, 'http://test_wordpress.sv/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2018-06-01 00:53:08', '2018-05-31 21:53:08', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2018-06-01 00:53:08', '2018-05-31 21:53:08', '', 0, 'http://test_wordpress.sv/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2018-06-01 00:53:44', '2018-05-31 21:53:44', '{\n    "page_for_posts": {\n        "value": "35",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:53:44"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b753eeed-ab23-4567-bcba-ce220dd0506d', '', '', '2018-06-01 00:53:44', '2018-05-31 21:53:44', '', 0, 'http://test_wordpress.sv/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2018-06-01 00:54:39', '2018-05-31 21:54:39', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 21:54:39"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95497779-3800-4260-a207-b827cd8c9606', '', '', '2018-06-01 00:54:39', '2018-05-31 21:54:39', '', 0, 'http://test_wordpress.sv/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2018-06-01 00:55:53', '2018-05-31 21:55:53', '', 'Book 4', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-06-01 00:55:53', '2018-05-31 21:55:53', '', 8, 'http://test_wordpress.sv/?p=56', 0, 'revision', '', 0),
(57, 1, '2018-06-01 01:28:53', '2018-05-31 22:28:53', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 22:28:07"\n    },\n    "page_for_posts": {\n        "value": "0",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 22:28:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be4b1871-3d29-4e45-8ce1-81162d116cae', '', '', '2018-06-01 01:28:53', '2018-05-31 22:28:53', '', 0, 'http://test_wordpress.sv/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2018-06-01 01:31:37', '2018-05-31 22:31:37', '{\n    "page_for_posts": {\n        "value": "35",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-31 22:31:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1aa25f8b-6d16-4653-ad76-e001119ae6a2', '', '', '2018-06-01 01:31:37', '2018-05-31 22:31:37', '', 0, 'http://test_wordpress.sv/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2018-06-02 00:00:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-02 00:00:44', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?p=59', 0, 'post', '', 0),
(60, 1, '2018-06-02 00:00:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-02 00:00:52', '0000-00-00 00:00:00', '', 0, 'http://test_wordpress.sv/?page_id=60', 0, 'page', '', 0),
(63, 1, '2018-06-02 00:06:10', '2018-06-01 21:06:10', '{\n    "page_on_front": {\n        "value": "61",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-01 21:06:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61ce80a7-2bd2-45d8-ba1a-fac0302757c3', '', '', '2018-06-02 00:06:10', '2018-06-01 21:06:10', '', 0, 'http://test_wordpress.sv/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2018-06-02 00:07:46', '2018-06-01 21:07:46', '{\n    "page_for_posts": {\n        "value": "0",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-01 21:07:46"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7cf5b5a-9b78-4cb7-87db-d38892e45a34', '', '', '2018-06-02 00:07:46', '2018-06-01 21:07:46', '', 0, 'http://test_wordpress.sv/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2018-06-02 01:35:28', '2018-06-01 22:35:28', '{\n    "page_on_front": {\n        "value": "32",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-01 22:35:28"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9cb49c5-488a-413e-8e98-a1de519c4d3a', '', '', '2018-06-02 01:35:28', '2018-06-01 22:35:28', '', 0, 'http://test_wordpress.sv/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2018-06-02 01:40:28', '2018-06-01 22:40:28', '{\n    "custom_css[twentyseventeen]": {\n        "value": "ul.authors_books,\\nul.authors_books ul{\\n\\tlist-style-type:none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-01 22:40:21"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c94a2f65-a073-4b80-928a-b5a4126d6f20', '', '', '2018-06-02 01:40:28', '2018-06-01 22:40:28', '', 0, 'http://test_wordpress.sv/?p=66', 0, 'customize_changeset', '', 0),
(67, 1, '2018-06-02 01:40:28', '2018-06-01 22:40:28', 'ul.authors_books,\nul.authors_books ul{\n	list-style-type:none;\n}', 'twentyseventeen', '', 'publish', 'closed', 'closed', '', 'twentyseventeen', '', '', '2018-06-02 01:40:28', '2018-06-01 22:40:28', '', 0, 'http://test_wordpress.sv/?p=67', 0, 'custom_css', '', 0),
(68, 1, '2018-06-02 01:40:28', '2018-06-01 22:40:28', 'ul.authors_books,\nul.authors_books ul{\n	list-style-type:none;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-02 01:40:28', '2018-06-01 22:40:28', '', 67, 'http://test_wordpress.sv/?p=68', 0, 'revision', '', 0),
(69, 1, '2018-06-03 20:36:39', '2018-06-03 17:36:39', '[gallery ids="30" template="undefined"]\n\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n...или так:\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-06-03 20:36:39', '2018-06-03 17:36:39', '', 2, 'http://test_wordpress.sv/?p=69', 0, 'revision', '', 0),
(70, 1, '2018-06-02 20:01:54', '2018-06-02 17:01:54', '[myshortcode id="29"]\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-02 20:01:54', '2018-06-02 17:01:54', '', 2, 'http://test_wordpress.sv/?p=70', 0, 'revision', '', 0),
(71, 1, '2018-06-02 20:52:50', '2018-06-02 17:52:50', '&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-02 20:52:50', '2018-06-02 17:52:50', '', 2, 'http://test_wordpress.sv/?p=71', 0, 'revision', '', 0),
(72, 1, '2018-06-03 15:30:53', '2018-06-03 12:30:53', '[myshortcode id="29" template="undefined"]\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-03 15:30:53', '2018-06-03 12:30:53', '', 2, 'http://test_wordpress.sv/?p=72', 0, 'revision', '', 0),
(73, 1, '2018-06-03 15:39:35', '2018-06-03 12:39:35', '&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-03 15:39:35', '2018-06-03 12:39:35', '', 2, 'http://test_wordpress.sv/?p=73', 0, 'revision', '', 0),
(74, 1, '2018-06-03 20:37:47', '2018-06-03 17:37:47', '[gallery template="undefined" ids="30"]\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-03 20:37:47', '2018-06-03 17:37:47', '', 2, 'http://test_wordpress.sv/?p=74', 0, 'revision', '', 0),
(75, 1, '2018-06-03 20:42:15', '2018-06-03 17:42:15', '[gallery ids="31" template="template_2"]\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://test_wordpress.sv/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-03 20:42:15', '2018-06-03 17:42:15', '', 2, 'http://test_wordpress.sv/?p=75', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Author 1', 'author-1', 0),
(3, 'Author 2', 'author-2', 0),
(4, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(5, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 1),
(6, 2, 1),
(7, 2, 1),
(8, 3, 1),
(9, 3, 1),
(10, 3, 1),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 5, 0),
(50, 5, 0),
(51, 5, 0),
(52, 5, 0),
(53, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'author', '', 0, 3),
(3, 3, 'author', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'denis'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"2d6b325632840ce966ca10474db4486370120b073146c8ec844d7b61c87a3756";a:4:{s:10:"expiration";i:1529005758;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36";s:5:"login";i:1527796158;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:19:"add-post-type-books";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:10:"add-author";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(24, 1, 'wp_user-settings-time', '1528020674');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'denis', '$P$B5Wq1AuNsYwreXNKm2I3uFzJu3x94/0', 'denis', 'svirsa.denis@gmail.com', '', '2018-05-31 19:48:58', '', 0, 'denis');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
