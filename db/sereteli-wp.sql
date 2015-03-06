CREATE sereteli-wp;

USE  database sereteli-wp;
-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-03-2015 a las 00:25:08
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sereteli-wp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-02-20 07:02:53', '2015-02-20 07:02:53', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_fw_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_fw_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `fw_term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_layerslider`
--

CREATE TABLE IF NOT EXISTS `wp_layerslider` (
`id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `data` mediumtext NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=403 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/sereteli/blog', 'yes'),
(2, 'home', 'http://localhost/sereteli/blog', 'yes'),
(3, 'blogname', 'Sereteli', 'yes'),
(4, 'blogdescription', 'Sereteli', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sereteli@sereteli.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:27:"LayerSlider/layerslider.php";i:1;s:27:"js_composer/js_composer.php";i:2;s:17:"social/social.php";i:3;s:17:"unyson/unyson.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:113:"/Applications/XAMPP/xamppfiles/htdocs/sereteli/blog/wp-content/themes/materialwp-materialwp/inc/custom-header.php";i:1;s:101:"/Applications/XAMPP/xamppfiles/htdocs/sereteli/blog/wp-content/themes/materialwp-materialwp/style.css";i:2;s:102:"/Applications/XAMPP/xamppfiles/htdocs/sereteli/blog/wp-content/themes/materialwp-materialwp/footer.php";i:3;s:100:"/Applications/XAMPP/xamppfiles/htdocs/sereteli/blog/wp-content/themes/materialwp-materialwp/page.php";i:4;s:0:"";}', 'no'),
(41, 'template', 'materialwp-materialwp', 'yes'),
(42, 'stylesheet', 'materialwp-materialwp', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"LayerSlider/layerslider.php";s:29:"layerslider_uninstall_scripts";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:1:{s:5:"title";s:6:"Buscar";}}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:3:{s:5:"title";s:1:"s";s:5:"count";i:1;s:8:"dropdown";i:1;}}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"calendar-3";i:1;s:10:"archives-4";i:2;s:10:"archives-2";}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:18:"orphaned_widgets_1";a:1:{i:0;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:6:{i:1425685030;a:1:{s:16:"socialcron15init";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"every15min";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1425694504;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425711777;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425712103;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425714840;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_MX/wordpress-4.1.1.zip";s:6:"locale";s:5:"es_MX";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_MX/wordpress-4.1.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1425684186;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(106, '_transient_random_seed', '7684ab39563b060d16366131b1befb3a', 'yes'),
(107, '_site_transient_timeout_browser_25b283ac5a6c8b3b071241d04470c1fe', '1425020903', 'yes'),
(108, '_site_transient_browser_25b283ac5a6c8b3b071241d04470c1fe', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"40.0.2214.111";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(110, 'can_compress_scripts', '1', 'yes'),
(128, 'current_theme', 'MaterialWP', 'yes'),
(129, 'theme_mods_bridge', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425454038;s:4:"data";a:14:{s:19:"wp_inactive_widgets";a:2:{i:0;s:23:"call_to_action_widget-3";i:1;s:10:"archives-4";}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"sidebar_page";N;s:11:"header_left";N;s:12:"header_right";N;s:19:"header_bottom_right";N;s:8:"sidearea";a:0:{}s:18:"vertical_menu_area";N;s:15:"footer_column_1";N;s:15:"footer_column_2";N;s:15:"footer_column_3";N;s:15:"footer_column_4";N;s:11:"footer_text";N;s:18:"header_fixed_right";a:1:{i:0;s:8:"search-4";}}}}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(132, 'theme_mods_bridge-without-import-files/bridge', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"top-navigation";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1424417152;s:4:"data";a:14:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"sidebar_page";N;s:11:"header_left";N;s:12:"header_right";N;s:19:"header_bottom_right";N;s:8:"sidearea";a:1:{i:0;s:10:"archives-4";}s:18:"vertical_menu_area";N;s:15:"footer_column_1";N;s:15:"footer_column_2";N;s:15:"footer_column_3";N;s:15:"footer_column_4";N;s:11:"footer_text";N;s:18:"header_fixed_right";a:1:{i:0;s:8:"search-4";}}}}', 'yes'),
(133, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(134, 'theme_mods_bridge-child', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1424418909;s:4:"data";a:14:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"sidebar_page";N;s:11:"header_left";N;s:12:"header_right";N;s:19:"header_bottom_right";N;s:8:"sidearea";a:1:{i:0;s:10:"archives-4";}s:18:"vertical_menu_area";N;s:15:"footer_column_1";N;s:15:"footer_column_2";N;s:15:"footer_column_3";N;s:15:"footer_column_4";N;s:11:"footer_text";N;s:18:"header_fixed_right";a:2:{i:0;s:8:"search-4";i:1;s:23:"call_to_action_widget-3";}}}}', 'yes'),
(135, 'recently_activated', 'a:1:{s:19:"akismet/akismet.php";i:1425262807;}', 'yes'),
(138, 'qode_options_proya', 'a:539:{s:12:"google_fonts";s:2:"-1";s:11:"first_color";s:7:"#1e73be";s:12:"second_color";s:7:"#dddddd";s:11:"third_color";s:0:"";s:12:"fourth_color";s:0:"";s:16:"background_color";s:0:"";s:22:"background_color_boxes";s:0:"";s:15:"selection_color";s:0:"";s:5:"boxed";s:2:"no";s:20:"background_color_box";s:0:"";s:16:"background_image";s:0:"";s:24:"pattern_background_image";s:0:"";s:16:"page_transitions";s:1:"0";s:17:"loading_animation";s:3:"off";s:25:"loading_animation_spinner";s:5:"pulse";s:13:"spinner_color";s:0:"";s:13:"loading_image";s:0:"";s:13:"smooth_scroll";s:3:"yes";s:27:"elements_animation_on_touch";s:2:"no";s:16:"show_back_button";s:3:"yes";s:14:"responsiveness";s:3:"yes";s:13:"favicon_image";s:71:"http://localhost/sereteli/blog/wp-content/themes/bridge/img/favicon.ico";s:22:"internal_no_ajax_links";s:0:"";s:10:"custom_css";s:0:"";s:9:"custom_js";s:0:"";s:21:"google_analytics_code";s:0:"";s:16:"disable_qode_seo";s:2:"no";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:10:"logo_image";s:66:"http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png";s:16:"logo_image_light";s:74:"http://localhost/sereteli/blog/wp-content/themes/bridge/img/logo_white.png";s:15:"logo_image_dark";s:74:"http://localhost/sereteli/blog/wp-content/themes/bridge/img/logo_black.png";s:17:"logo_image_sticky";s:66:"http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png";s:23:"logo_image_fixed_hidden";s:0:"";s:25:"logo_mobile_header_height";s:0:"";s:18:"logo_mobile_height";s:0:"";s:13:"vertical_area";s:2:"no";s:14:"header_in_grid";s:3:"yes";s:24:"header_bottom_appearance";s:5:"fixed";s:24:"scroll_amount_for_sticky";s:0:"";s:30:"scroll_amount_for_fixed_hiding";s:0:"";s:13:"menu_position";s:0:"";s:17:"center_logo_image";s:2:"no";s:25:"center_logo_image_animate";s:2:"no";s:13:"header_height";s:0:"";s:20:"header_height_scroll";s:0:"";s:20:"header_height_sticky";s:0:"";s:27:"header_height_scroll_hidden";s:0:"";s:12:"header_style";s:0:"";s:23:"header_background_color";s:0:"";s:30:"header_background_color_scroll";s:0:"";s:30:"header_background_color_sticky";s:0:"";s:38:"header_background_transparency_initial";s:0:"";s:37:"header_background_transparency_scroll";s:0:"";s:37:"header_background_transparency_sticky";s:0:"";s:26:"header_bottom_border_color";s:0:"";s:32:"header_botom_border_transparency";s:0:"";s:32:"dropdown_separator_beetwen_items";s:2:"no";s:22:"dropdown_border_around";s:2:"no";s:22:"header_separator_color";s:0:"";s:25:"dropdown_background_color";s:0:"";s:32:"dropdown_background_transparency";s:0:"";s:13:"enable_search";s:3:"yes";s:23:"search_background_color";s:0:"";s:17:"search_text_color";s:0:"";s:16:"enable_side_area";s:3:"yes";s:15:"side_area_title";s:0:"";s:26:"side_area_background_color";s:0:"";s:20:"side_area_text_color";s:0:"";s:26:"side_area_text_hover_color";s:0:"";s:24:"side_area_text_font_size";s:0:"";s:29:"side_area_text_letter_spacing";s:0:"";s:26:"side_area_text_font_weight";s:0:"";s:21:"side_area_title_color";s:0:"";s:25:"side_area_title_font_size";s:0:"";s:30:"side_area_title_letter_spacing";s:0:"";s:27:"side_area_title_font_weight";s:0:"";s:26:"side_area_close_icon_style";s:0:"";s:17:"enable_popup_menu";s:2:"no";s:16:"logo_image_popup";s:0:"";s:16:"popup_menu_color";s:0:"";s:22:"popup_menu_hover_color";s:0:"";s:33:"popup_menu_hover_background_color";s:0:"";s:23:"popup_menu_google_fonts";s:2:"-1";s:19:"popup_menu_fontsize";s:0:"";s:21:"popup_menu_lineheight";s:0:"";s:20:"popup_menu_fontstyle";s:0:"";s:21:"popup_menu_fontweight";s:0:"";s:24:"popup_menu_letterspacing";s:0:"";s:20:"popup_menu_color_2nd";s:0:"";s:26:"popup_menu_hover_color_2nd";s:0:"";s:37:"popup_menu_hover_background_color_2nd";s:0:"";s:27:"popup_menu_google_fonts_2nd";s:2:"-1";s:23:"popup_menu_fontsize_2nd";s:0:"";s:25:"popup_menu_lineheight_2nd";s:0:"";s:24:"popup_menu_fontstyle_2nd";s:0:"";s:25:"popup_menu_fontweight_2nd";s:0:"";s:28:"popup_menu_letterspacing_2nd";s:0:"";s:27:"popup_menu_background_color";s:0:"";s:34:"popup_menu_background_transparency";s:0:"";s:15:"header_top_area";s:3:"yes";s:22:"header_top_area_scroll";s:2:"no";s:27:"header_top_background_color";s:0:"";s:23:"top_header_border_color";s:0:"";s:24:"top_header_border_weight";s:0:"";s:18:"vertical_area_type";s:0:"";s:33:"vertical_area_hidden_button_color";s:0:"";s:26:"vertical_area_transparency";s:2:"no";s:24:"vertical_area_background";s:0:"";s:30:"vertical_area_background_image";s:0:"";s:24:"vertical_area_text_color";s:0:"";s:19:"left_menu_alignment";s:4:"left";s:19:"vertical_menu_color";s:0:"";s:24:"vertical_menu_hovercolor";s:0:"";s:26:"vertical_menu_google_fonts";s:2:"-1";s:22:"vertical_menu_fontsize";s:0:"";s:24:"vertical_menu_lineheight";s:0:"";s:23:"vertical_menu_fontstyle";s:0:"";s:24:"vertical_menu_fontweight";s:0:"";s:23:"vertical_dropdown_color";s:0:"";s:28:"vertical_dropdown_hovercolor";s:0:"";s:30:"vertical_dropdown_google_fonts";s:2:"-1";s:26:"vertical_dropdown_fontsize";s:0:"";s:28:"vertical_dropdown_lineheight";s:0:"";s:27:"vertical_dropdown_fontstyle";s:0:"";s:28:"vertical_dropdown_fontweight";s:0:"";s:32:"vertical_dropdown_color_thirdlvl";s:0:"";s:37:"vertical_dropdown_hovercolor_thirdlvl";s:0:"";s:39:"vertical_dropdown_google_fonts_thirdlvl";s:2:"-1";s:35:"vertical_dropdown_fontsize_thirdlvl";s:0:"";s:37:"vertical_dropdown_lineheight_thirdlvl";s:0:"";s:36:"vertical_dropdown_fontstyle_thirdlvl";s:0:"";s:37:"vertical_dropdown_fontweight_thirdlvl";s:0:"";s:22:"mobile_separator_color";s:0:"";s:23:"mobile_background_color";s:0:"";s:20:"header_buttons_color";s:0:"";s:26:"header_buttons_hover_color";s:0:"";s:24:"header_buttons_font_size";s:0:"";s:19:"header_buttons_size";s:6:"normal";s:17:"uncovering_footer";s:2:"no";s:14:"footer_in_grid";s:3:"yes";s:15:"show_footer_top";s:3:"yes";s:18:"footer_top_columns";s:1:"4";s:27:"footer_top_background_color";s:0:"";s:22:"footer_top_title_color";s:0:"";s:21:"footer_top_text_color";s:0:"";s:17:"footer_link_color";s:0:"";s:23:"footer_link_hover_color";s:0:"";s:11:"footer_text";s:3:"yes";s:30:"footer_bottom_background_color";s:0:"";s:24:"footer_bottom_text_color";s:0:"";s:30:"footer_bottom_link_hover_color";s:0:"";s:18:"animate_title_area";s:2:"no";s:19:"page_title_position";s:4:"left";s:22:"predefined_title_sizes";s:5:"small";s:17:"title_text_shadow";s:2:"no";s:22:"title_background_color";s:0:"";s:11:"title_image";s:0:"";s:22:"responsive_title_image";s:2:"no";s:17:"fixed_title_image";s:2:"no";s:12:"title_height";s:0:"";s:19:"title_overlay_image";s:0:"";s:15:"title_separator";s:3:"yes";s:21:"title_separator_color";s:0:"";s:21:"title_separator_width";s:0:"";s:24:"border_bottom_title_area";s:2:"no";s:30:"border_bottom_title_area_color";s:0:"";s:18:"margin_after_title";s:0:"";s:18:"enable_breadcrumbs";s:2:"no";s:17:"breadcrumbs_color";s:0:"";s:8:"h1_color";s:0:"";s:11:"h1_fontsize";s:0:"";s:13:"h1_lineheight";s:0:"";s:16:"h1_texttransform";s:0:"";s:15:"h1_google_fonts";s:2:"-1";s:12:"h1_fontstyle";s:0:"";s:13:"h1_fontweight";s:0:"";s:16:"h1_letterspacing";s:0:"";s:8:"h2_color";s:0:"";s:11:"h2_fontsize";s:0:"";s:13:"h2_lineheight";s:0:"";s:16:"h2_texttransform";s:0:"";s:15:"h2_google_fonts";s:2:"-1";s:12:"h2_fontstyle";s:0:"";s:13:"h2_fontweight";s:0:"";s:16:"h2_letterspacing";s:0:"";s:8:"h3_color";s:0:"";s:11:"h3_fontsize";s:0:"";s:13:"h3_lineheight";s:0:"";s:16:"h3_texttransform";s:0:"";s:15:"h3_google_fonts";s:2:"-1";s:12:"h3_fontstyle";s:0:"";s:13:"h3_fontweight";s:0:"";s:16:"h3_letterspacing";s:0:"";s:8:"h4_color";s:0:"";s:11:"h4_fontsize";s:0:"";s:13:"h4_lineheight";s:0:"";s:16:"h4_texttransform";s:0:"";s:15:"h4_google_fonts";s:2:"-1";s:12:"h4_fontstyle";s:0:"";s:13:"h4_fontweight";s:0:"";s:16:"h4_letterspacing";s:0:"";s:8:"h5_color";s:0:"";s:11:"h5_fontsize";s:0:"";s:13:"h5_lineheight";s:0:"";s:16:"h5_texttransform";s:0:"";s:15:"h5_google_fonts";s:2:"-1";s:12:"h5_fontstyle";s:0:"";s:13:"h5_fontweight";s:0:"";s:16:"h5_letterspacing";s:0:"";s:8:"h6_color";s:0:"";s:11:"h6_fontsize";s:0:"";s:13:"h6_lineheight";s:0:"";s:16:"h6_texttransform";s:0:"";s:15:"h6_google_fonts";s:2:"-1";s:12:"h6_fontstyle";s:0:"";s:13:"h6_fontweight";s:0:"";s:16:"h6_letterspacing";s:0:"";s:10:"text_color";s:0:"";s:13:"text_fontsize";s:0:"";s:15:"text_lineheight";s:0:"";s:17:"text_google_fonts";s:2:"-1";s:14:"text_fontstyle";s:0:"";s:15:"text_fontweight";s:0:"";s:11:"text_margin";s:0:"";s:10:"link_color";s:0:"";s:15:"link_hovercolor";s:0:"";s:14:"link_fontstyle";s:0:"";s:15:"link_fontweight";s:0:"";s:19:"link_fontdecoration";s:0:"";s:10:"menu_color";s:0:"";s:15:"menu_hovercolor";s:0:"";s:16:"menu_activecolor";s:0:"";s:27:"menu_hover_background_color";s:0:"";s:17:"menu_google_fonts";s:2:"-1";s:13:"menu_fontsize";s:0:"";s:15:"menu_lineheight";s:0:"";s:40:"menu_hover_background_color_transparency";s:0:"";s:14:"menu_fontstyle";s:0:"";s:15:"menu_fontweight";s:0:"";s:18:"menu_letterspacing";s:0:"";s:19:"menu_text_transform";s:0:"";s:28:"menu_separator_between_items";s:2:"no";s:20:"menu_separator_color";s:0:"";s:14:"dropdown_color";s:0:"";s:19:"dropdown_hovercolor";s:0:"";s:21:"dropdown_google_fonts";s:2:"-1";s:17:"dropdown_fontsize";s:0:"";s:19:"dropdown_lineheight";s:0:"";s:27:"dropdown_padding_top_bottom";s:0:"";s:18:"dropdown_fontstyle";s:0:"";s:19:"dropdown_fontweight";s:0:"";s:22:"dropdown_letterspacing";s:0:"";s:22:"dropdown_texttransform";s:0:"";s:19:"dropdown_wide_color";s:0:"";s:24:"dropdown_wide_hovercolor";s:0:"";s:26:"dropdown_wide_google_fonts";s:2:"-1";s:22:"dropdown_wide_fontsize";s:0:"";s:24:"dropdown_wide_lineheight";s:0:"";s:23:"dropdown_wide_fontstyle";s:0:"";s:24:"dropdown_wide_fontweight";s:0:"";s:27:"dropdown_wide_letterspacing";s:0:"";s:27:"dropdown_wide_texttransform";s:0:"";s:23:"dropdown_color_thirdlvl";s:0:"";s:28:"dropdown_hovercolor_thirdlvl";s:0:"";s:30:"dropdown_google_fonts_thirdlvl";s:2:"-1";s:26:"dropdown_fontsize_thirdlvl";s:0:"";s:28:"dropdown_lineheight_thirdlvl";s:0:"";s:27:"dropdown_fontstyle_thirdlvl";s:0:"";s:28:"dropdown_fontweight_thirdlvl";s:0:"";s:31:"dropdown_letterspacing_thirdlvl";s:0:"";s:31:"dropdown_texttransform_thirdlvl";s:0:"";s:11:"fixed_color";s:0:"";s:16:"fixed_hovercolor";s:0:"";s:18:"fixed_google_fonts";s:2:"-1";s:14:"fixed_fontsize";s:0:"";s:16:"fixed_lineheight";s:0:"";s:15:"fixed_fontstyle";s:0:"";s:16:"fixed_fontweight";s:0:"";s:12:"sticky_color";s:0:"";s:17:"sticky_hovercolor";s:0:"";s:19:"sticky_google_fonts";s:2:"-1";s:15:"sticky_fontsize";s:0:"";s:17:"sticky_lineheight";s:0:"";s:16:"sticky_fontstyle";s:0:"";s:17:"sticky_fontweight";s:0:"";s:12:"mobile_color";s:0:"";s:17:"mobile_hovercolor";s:0:"";s:19:"mobile_google_fonts";s:2:"-1";s:15:"mobile_fontsize";s:0:"";s:17:"mobile_lineheight";s:0:"";s:16:"mobile_fontstyle";s:0:"";s:17:"mobile_fontweight";s:0:"";s:21:"mobile_letter_spacing";s:0:"";s:21:"top_header_text_color";s:0:"";s:27:"top_header_text_hover_color";s:0:"";s:27:"top_header_text_font_family";s:2:"-1";s:25:"top_header_text_font_size";s:0:"";s:27:"top_header_text_line_height";s:0:"";s:26:"top_header_text_font_style";s:0:"";s:27:"top_header_text_font_weight";s:0:"";s:30:"top_header_text_letter_spacing";s:0:"";s:16:"page_title_color";s:0:"";s:19:"page_title_fontsize";s:0:"";s:21:"page_title_lineheight";s:0:"";s:23:"page_title_google_fonts";s:2:"-1";s:20:"page_title_fontstyle";s:0:"";s:21:"page_title_fontweight";s:0:"";s:26:"page_title_medium_fontsize";s:0:"";s:28:"page_title_medium_lineheight";s:0:"";s:28:"page_title_medium_fontweight";s:0:"";s:25:"page_title_large_fontsize";s:0:"";s:27:"page_title_large_lineheight";s:0:"";s:27:"page_title_large_fontweight";s:0:"";s:19:"page_subtitle_color";s:0:"";s:22:"page_subtitle_fontsize";s:0:"";s:24:"page_subtitle_lineheight";s:0:"";s:25:"page_subtitle_font_family";s:2:"-1";s:24:"page_subtitle_font_style";s:0:"";s:24:"page_subtitle_fontweight";s:0:"";s:28:"page_subtitle_large_fontsize";s:0:"";s:30:"page_subtitle_large_lineheight";s:0:"";s:30:"page_subtitle_large_fontweight";s:0:"";s:18:"footer_title_color";s:0:"";s:22:"footer_title_font_size";s:0:"";s:27:"footer_title_letter_spacing";s:0:"";s:24:"footer_title_font_family";s:2:"-1";s:23:"footer_title_font_style";s:0:"";s:24:"footer_title_font_weight";s:0:"";s:27:"footer_title_text_transform";s:0:"";s:22:"portfolio_filter_color";s:0:"";s:26:"portfolio_filter_font_size";s:0:"";s:28:"portfolio_filter_line_height";s:0:"";s:31:"portfolio_filter_text_transform";s:0:"";s:28:"portfolio_filter_font_family";s:2:"-1";s:27:"portfolio_filter_font_style";s:0:"";s:28:"portfolio_filter_font_weight";s:0:"";s:31:"portfolio_filter_letter_spacing";s:0:"";s:15:"separator_color";s:0:"";s:28:"separator_color_transparency";s:0:"";s:19:"separator_thickness";s:0:"";s:19:"separator_topmargin";s:0:"";s:22:"separator_bottommargin";s:0:"";s:21:"separator_small_color";s:0:"";s:34:"separator_small_color_transparency";s:0:"";s:25:"separator_small_thickness";s:0:"";s:21:"separator_small_width";s:0:"";s:25:"separator_small_topmargin";s:0:"";s:28:"separator_small_bottommargin";s:0:"";s:25:"separator_with_icon_color";s:0:"";s:32:"separator_with_icon_transparency";s:0:"";s:29:"separator_with_icon_thickness";s:0:"";s:25:"separator_with_icon_width";s:0:"";s:29:"separator_with_icon_topmargin";s:0:"";s:32:"separator_with_icon_bottommargin";s:0:"";s:18:"button_title_color";s:0:"";s:23:"button_title_hovercolor";s:0:"";s:25:"button_title_google_fonts";s:2:"-1";s:21:"button_title_fontsize";s:0:"";s:23:"button_title_lineheight";s:0:"";s:22:"button_title_fontstyle";s:0:"";s:23:"button_title_fontweight";s:0:"";s:27:"button_title_letter_spacing";s:0:"";s:22:"button_backgroundcolor";s:0:"";s:28:"button_backgroundcolor_hover";s:0:"";s:19:"button_border_color";s:0:"";s:25:"button_border_hover_color";s:0:"";s:19:"button_border_width";s:0:"";s:20:"button_border_radius";s:0:"";s:23:"button_white_text_color";s:0:"";s:29:"button_white_text_color_hover";s:0:"";s:29:"button_white_background_color";s:0:"";s:35:"button_white_background_color_hover";s:0:"";s:25:"button_white_border_color";s:0:"";s:31:"button_white_border_color_hover";s:0:"";s:23:"small_button_lineheight";s:0:"";s:21:"small_button_fontsize";s:0:"";s:23:"small_button_fontweight";s:0:"";s:20:"small_button_padding";s:0:"";s:26:"small_button_border_radius";s:0:"";s:23:"large_button_lineheight";s:0:"";s:21:"large_button_fontsize";s:0:"";s:23:"large_button_fontweight";s:0:"";s:20:"large_button_padding";s:0:"";s:26:"large_button_border_radius";s:0:"";s:27:"big_large_button_lineheight";s:0:"";s:25:"big_large_button_fontsize";s:0:"";s:27:"big_large_button_fontweight";s:0:"";s:24:"big_large_button_padding";s:0:"";s:30:"big_large_button_border_radius";s:0:"";s:19:"message_title_color";s:0:"";s:23:"message_backgroundcolor";s:0:"";s:26:"message_title_google_fonts";s:2:"-1";s:22:"message_title_fontsize";s:0:"";s:24:"message_title_lineheight";s:0:"";s:23:"message_title_fontstyle";s:0:"";s:24:"message_title_fontweight";s:0:"";s:18:"message_icon_color";s:0:"";s:21:"message_icon_fontsize";s:0:"";s:30:"quote_link_blockqoute_fontsize";s:0:"";s:32:"quote_link_blockqoute_lineheight";s:0:"";s:21:"blockquote_font_color";s:0:"";s:27:"blockquote_background_color";s:0:"";s:23:"blockquote_border_color";s:0:"";s:27:"blockquote_quote_icon_color";s:0:"";s:17:"social_icon_color";s:0:"";s:28:"social_icon_background_color";s:0:"";s:24:"social_icon_border_color";s:0:"";s:23:"testimonaials_font_size";s:0:"";s:38:"testimonaials_navigation_border_radius";s:0:"";s:13:"counter_color";s:0:"";s:18:"counter_text_color";s:0:"";s:23:"counter_separator_color";s:0:"";s:18:"counters_font_size";s:0:"";s:20:"counters_font_family";s:2:"-1";s:19:"counters_fontweight";s:0:"";s:23:"counters_text_font_size";s:0:"";s:25:"counters_text_font_family";s:2:"-1";s:24:"counters_text_fontweight";s:0:"";s:27:"counters_text_texttransform";s:0:"";s:27:"counters_text_letterspacing";s:0:"";s:32:"progress_bar_horizontal_fontsize";s:0:"";s:34:"progress_bar_horizontal_fontweight";s:0:"";s:19:"pie_charts_fontsize";s:0:"";s:21:"pie_charts_fontweight";s:0:"";s:14:"tabs_text_size";s:0:"";s:15:"tabs_fontweight";s:0:"";s:17:"tabs_border_color";s:0:"";s:18:"tabs_border_radius";s:0:"";s:17:"tabs_border_width";s:0:"";s:37:"process_circle_hover_background_color";s:0:"";s:34:"process_text_in_circle_font_weight";s:0:"";s:24:"process_text_hover_color";s:0:"";s:22:"input_background_color";s:0:"";s:18:"input_border_color";s:0:"";s:16:"input_text_color";s:0:"";s:15:"highlight_color";s:0:"";s:10:"pagination";s:1:"1";s:10:"blog_style";s:1:"1";s:21:"category_blog_sidebar";s:7:"default";s:18:"blog_hide_comments";s:2:"no";s:16:"blog_hide_author";s:2:"no";s:9:"qode_like";s:2:"on";s:15:"blog_page_range";s:0:"";s:15:"number_of_chars";s:2:"45";s:23:"number_of_chars_masonry";s:0:"";s:27:"number_of_chars_large_image";s:0:"";s:27:"number_of_chars_small_image";s:0:"";s:18:"pagination_masonry";s:10:"pagination";s:19:"blog_masonry_filter";s:2:"no";s:28:"blog_large_image_text_in_box";s:0:"";s:23:"blog_large_image_border";s:0:"";s:29:"blog_large_image_border_width";s:0:"";s:33:"blog_large_image_background_color";s:0:"";s:29:"blog_large_image_border_color";s:0:"";s:28:"blog_small_image_text_in_box";s:0:"";s:23:"blog_small_image_border";s:0:"";s:29:"blog_small_image_border_width";s:0:"";s:33:"blog_small_image_background_color";s:0:"";s:29:"blog_small_image_border_color";s:0:"";s:29:"blog_masonry_background_color";s:0:"";s:25:"blog_masonry_border_color";s:0:"";s:26:"blog_masonry_border_radius";s:0:"";s:19:"blog_single_sidebar";s:7:"default";s:34:"blog_single_sidebar_custom_display";s:0:"";s:16:"blog_author_info";s:2:"no";s:25:"blog_quote_link_box_color";s:0:"";s:15:"portfolio_style";s:1:"1";s:19:"portfolio_qode_like";s:2:"on";s:23:"lightbox_single_project";s:2:"no";s:24:"portfolio_columns_number";s:1:"2";s:24:"portfolio_single_sidebar";s:7:"default";s:39:"portfolio_single_sidebar_custom_display";s:0:"";s:21:"portfolio_single_slug";s:0:"";s:21:"portfolio_text_follow";s:23:"portfolio_single_follow";s:20:"vss_navigation_color";s:0:"";s:19:"vss_navigation_size";s:0:"";s:19:"vss_left_panel_size";s:0:"";s:20:"vss_right_panel_size";s:0:"";s:19:"enable_social_share";s:2:"no";s:21:"post_types_names_post";s:0:"";s:21:"post_types_names_page";s:0:"";s:27:"post_types_names_attachment";s:0:"";s:31:"post_types_names_portfolio_page";s:0:"";s:21:"enable_facebook_share";s:2:"no";s:13:"facebook_icon";s:0:"";s:20:"enable_twitter_share";s:2:"no";s:12:"twitter_icon";s:0:"";s:11:"twitter_via";s:0:"";s:18:"enable_google_plus";s:2:"no";s:16:"google_plus_icon";s:0:"";s:15:"enable_linkedin";s:2:"no";s:13:"linkedin_icon";s:0:"";s:13:"enable_tumblr";s:2:"no";s:11:"tumblr_icon";s:0:"";s:16:"enable_pinterest";s:2:"no";s:14:"pinterest_icon";s:0:"";s:9:"enable_vk";s:2:"no";s:7:"vk_icon";s:0:"";s:9:"404_title";s:0:"";s:12:"404_subtitle";s:0:"";s:8:"404_text";s:0:"";s:13:"404_backlabel";s:0:"";s:17:"enable_google_map";s:2:"no";s:24:"section_between_map_form";s:3:"yes";s:19:"enable_contact_form";s:2:"no";s:19:"google_maps_address";s:0:"";s:20:"google_maps_address2";s:0:"";s:20:"google_maps_address3";s:0:"";s:20:"google_maps_address4";s:0:"";s:20:"google_maps_address5";s:0:"";s:21:"google_maps_pin_image";s:67:"http://localhost/sereteli/blog/wp-content/themes/bridge/img/pin.png";s:18:"google_maps_height";s:3:"750";s:16:"google_maps_zoom";s:2:"12";s:24:"google_maps_scroll_wheel";s:2:"no";s:17:"google_maps_style";s:3:"yes";s:17:"google_maps_color";s:0:"";s:22:"google_maps_saturation";s:0:"";s:21:"google_maps_lightness";s:0:"";s:33:"section_between_map_form_position";s:0:"";s:32:"contact_section_above_form_title";s:0:"";s:35:"contact_section_above_form_subtitle";s:0:"";s:12:"receive_mail";s:0:"";s:10:"email_from";s:0:"";s:13:"email_subject";s:0:"";s:25:"hide_contact_form_website";s:2:"no";s:21:"contact_heading_above";s:0:"";s:13:"use_recaptcha";s:2:"no";s:20:"recaptcha_public_key";s:0:"";s:21:"recaptcha_private_key";s:0:"";s:14:"parallax_onoff";s:2:"on";s:18:"parallax_minheight";s:3:"400";s:26:"enable_content_bottom_area";s:2:"no";s:37:"content_bottom_sidebar_custom_display";s:0:"";s:22:"content_bottom_in_grid";s:3:"yes";s:31:"content_bottom_background_color";s:0:"";s:21:"qode_maintenance_mode";s:2:"no";s:21:"qode_maintenance_page";s:0:"";s:17:"reset_to_defaults";s:2:"no";}', 'yes'),
(139, 'widget_call_to_action_widget', 'a:2:{i:3;a:22:{s:4:"type";s:6:"normal";s:10:"full_width";s:3:"yes";s:15:"content_in_grid";s:3:"yes";s:4:"text";s:4:"gggg";s:10:"text_color";s:0:"";s:9:"text_size";s:0:"";s:19:"text_letter_spacing";s:0:"";s:16:"text_font_weight";s:0:"";s:16:"background_color";s:0:"";s:12:"border_color";s:0:"";s:11:"padding_top";s:0:"";s:14:"padding_bottom";s:0:"";s:11:"show_button";s:3:"yes";s:11:"button_text";s:0:"";s:11:"button_link";s:0:"";s:13:"button_target";s:6:"_blank";s:17:"button_text_color";s:0:"";s:23:"button_hover_text_color";s:0:"";s:23:"button_background_color";s:0:"";s:29:"button_hover_background_color";s:0:"";s:19:"button_border_color";s:0:"";s:25:"button_hover_border_color";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(166, '_site_transient_timeout_browser_32a4deac9f9909e92a3f597868ec7b58', '1425835306', 'yes'),
(167, '_site_transient_browser_32a4deac9f9909e92a3f597868ec7b58', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"40.0.2214.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(191, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";s:10:"octaviomtc";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(195, 'ls-plugin-version', '5.3.2', 'yes'),
(196, 'ls-db-version', '5.0.0', 'yes'),
(197, 'ls-installed', '1', 'yes'),
(198, 'ls-google-fonts', 'a:4:{i:0;a:2:{s:5:"param";s:28:"Lato:100,300,regular,700,900";s:5:"admin";b:0;}i:1;a:2:{s:5:"param";s:13:"Open+Sans:300";s:5:"admin";b:0;}i:2;a:2:{s:5:"param";s:20:"Indie+Flower:regular";s:5:"admin";b:0;}i:3;a:2:{s:5:"param";s:22:"Oswald:300,regular,700";s:5:"admin";b:0;}}', 'yes'),
(199, 'ls-date-installed', '1425263698', 'yes'),
(202, 'vc_version', '4.3.5', 'yes'),
(210, '_site_transient_timeout_browser_cdcb30699c7399132a5ee6cec6ca57b9', '1426057014', 'yes'),
(211, '_site_transient_browser_cdcb30699c7399132a5ee6cec6ca57b9', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"41.0.2272.76";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(241, '_site_transient_timeout_available_translations', '1425464395', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(242, '_site_transient_available_translations', 'a:51:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 19:01:24";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-27 15:23:28";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:10:33";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-08 17:39:56";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 03:38:28";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-03 13:54:58";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 22:27:33";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-04 12:59:40";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:05:07";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 19:02:34";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 20:53:36";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-28 01:01:02";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-05 09:59:30";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 13:11:32";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-05 15:18:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-25 14:34:19";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-19 08:14:32";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-09 12:20:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-23 14:29:09";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-17 07:01:16";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 19:01:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 18:37:43";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-12 01:05:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-03 17:11:23";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-20 16:50:00";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-15 20:01:36";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-31 07:30:24";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 01:33:47";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-02 13:41:23";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-29 10:53:40";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-21 03:05:42";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-08 00:36:50";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-23 10:05:46";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:09:37";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 13:44:24";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-16 15:47:22";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-25 20:46:09";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 19:37:03";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-23 20:32:43";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 18:16:58";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-02 18:38:35";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-13 22:38:48";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-18 19:08:01";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-29 09:41:07";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 04:10:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-19 08:42:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 05:33:04";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 08:39:08";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(245, '_transient_twentyfifteen_categories', '1', 'yes'),
(250, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425453939;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"archives-4";i:1;s:8:"search-4";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(251, 'theme_mods_interface', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425453979;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"archives-4";i:1;s:8:"search-4";}s:22:"interface_left_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:23:"interface_right_sidebar";N;s:31:"interface_business_page_sidebar";N;s:42:"interface_business_page_our_client_sidebar";N;s:30:"interface_contact_page_sidebar";N;s:24:"interface_footer_sidebar";N;s:24:"interface_footer_column2";N;s:24:"interface_footer_column3";N;}}}', 'yes'),
(252, 'theme_mods_seller', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425454334;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"archives-4";}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;s:18:"orphaned_widgets_1";a:1:{i:0;s:8:"search-4";}}}}', 'yes'),
(253, 'seller_setting', 'a:13:{s:4:"logo";s:0:"";s:12:"phone-number";s:0:"";s:7:"mail-id";s:0:"";s:21:"slider-enable-on-home";b:0;s:23:"showcase-enable-on-home";b:0;s:19:"enable-social-icons";b:0;s:8:"facebook";s:22:"http://facebook.com/#/";s:7:"twitter";s:21:"http://twitter.com/#/";s:6:"google";s:25:"http://plus.google.com/#/";s:8:"rss-feed";s:30:"http://feeds.feedburner.com/#/";s:9:"instagram";s:23:"http://instagram.com/#/";s:6:"flickr";s:20:"http://flickr.com/#/";s:10:"custom-css";s:0:"";}', 'yes'),
(254, 'seller_setting-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1425454039;}', 'yes'),
(260, 'theme_mods_omega', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425454519;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"archives-4";}s:7:"primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_1";a:1:{i:0;s:8:"search-4";}}}}', 'yes'),
(262, 'theme_mods_materialwp-materialwp', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(274, 'fw_active_extensions', 'a:3:{s:4:"blog";a:0:{}s:6:"update";a:0:{}s:13:"github-update";a:0:{}}', 'yes'),
(279, 'widget_calendar', 'a:2:{i:3;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(286, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1425467910', 'yes'),
(287, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4916";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3078";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3022";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2529";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1892";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1729";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1680";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1678";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1676";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1612";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1609";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1505";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1322";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1276";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1175";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1171";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1083";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1079";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"918";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"905";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"874";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"843";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"837";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"794";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"758";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"748";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"709";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"700";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"692";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"682";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"657";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"649";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"642";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"642";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"623";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"620";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"605";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"600";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"593";}}', 'yes'),
(288, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1425684186;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:17:"social/social.php";O:8:"stdClass":7:{s:2:"id";s:5:"15022";s:4:"slug";s:6:"social";s:6:"plugin";s:17:"social/social.php";s:11:"new_version";s:3:"3.0";s:14:"upgrade_notice";s:186:"(fix) Change specific nonce behavior for WordPress 4.0 compatibility.\n(fix) Add additional nonce behavior to account for nonces added to URLs.\nSync up child_account_avatar() declarations";s:3:"url";s:37:"https://wordpress.org/plugins/social/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/social.3.0.zip";}s:17:"unyson/unyson.php";O:8:"stdClass":6:{s:2:"id";s:5:"55635";s:4:"slug";s:6:"unyson";s:6:"plugin";s:17:"unyson/unyson.php";s:11:"new_version";s:6:"2.1.25";s:3:"url";s:37:"https://wordpress.org/plugins/unyson/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/unyson.2.1.25.zip";}}}', 'yes'),
(289, 'social_install_date', '1425457325', 'yes'),
(290, 'social_system_cron_api_key', '7PqZuchAIJYuxaK2', 'yes'),
(291, 'social_unlocked', '1', 'yes'),
(292, 'social_last_lock_time', '2015-03-06 23:23:05', 'yes'),
(293, 'social_semaphore', '0', 'yes'),
(294, 'social_fetch_comments', '1', 'yes'),
(295, 'social_broadcast_by_default', '0', 'yes'),
(296, 'social_aggregation_queue', 'a:0:{}', 'yes'),
(297, 'social_installed_version', '3.0', 'yes'),
(304, 'category_children', 'a:0:{}', 'yes'),
(364, '_site_transient_timeout_wporg_theme_feature_list', '1425589332', 'yes'),
(365, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(366, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1425684186;s:7:"checked";a:2:{s:22:"FoundationPress-master";s:5:"5.5.1";s:21:"materialwp-materialwp";s:5:"0.0.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(367, 'theme_mods_FoundationPress-master', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425578632;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"calendar-3";i:1;s:10:"archives-4";i:2;s:10:"archives-2";}s:15:"sidebar-widgets";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:14:"footer-widgets";a:1:{i:0;s:8:"search-4";}}}}', 'yes'),
(385, '_site_transient_timeout_fw_ext_upd_gh_fw', '1425751644', 'yes'),
(386, '_site_transient_fw_ext_upd_gh_fw', 'a:2:{s:31:"ThemeFuse/Unyson-Blog-Extension";s:5:"0.0.0";s:33:"ThemeFuse/Unyson-Update-Extension";s:5:"0.0.0";}', 'yes'),
(387, '_transient_timeout_plugin_slugs', '1425751644', 'no'),
(388, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:27:"LayerSlider/layerslider.php";i:3;s:17:"social/social.php";i:4;s:17:"unyson/unyson.php";i:5;s:27:"js_composer/js_composer.php";}', 'no'),
(389, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1425708444', 'no'),
(390, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Couldn''t resolve host ''planet.wordpress.org''</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(391, '_transient_is_multi_author', '0', 'yes'),
(392, '_transient_materialwp_categories', '1', 'yes'),
(401, '_site_transient_timeout_theme_roots', '1425685985', 'yes'),
(402, '_site_transient_theme_roots', 'a:2:{s:22:"FoundationPress-master";s:7:"/themes";s:21:"materialwp-materialwp";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_qode-like', '0'),
(3, 5, '_wp_attached_file', '2015/03/header.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:932;s:4:"file";s:18:"2015/03/header.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"header-300x146.jpg";s:5:"width";i:300;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"header-1024x497.jpg";s:5:"width";i:1024;s:6:"height";i:497;s:9:"mime-type";s:10:"image/jpeg";}s:16:"portfolio-square";a:4:{s:4:"file";s:18:"header-570x570.jpg";s:5:"width";i:570;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio-portrait";a:4:{s:4:"file";s:18:"header-600x800.jpg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}s:19:"portfolio-landscape";a:4:{s:4:"file";s:18:"header-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:18:"menu-featured-post";a:4:{s:4:"file";s:18:"header-345x198.jpg";s:5:"width";i:345;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:20:"qode-carousel_slider";a:4:{s:4:"file";s:18:"header-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:16:"portfolio_slider";a:4:{s:4:"file";s:18:"header-500x380.jpg";s:5:"width";i:500;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio_masonry_regular";a:4:{s:4:"file";s:18:"header-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:22:"portfolio_masonry_wide";a:4:{s:4:"file";s:19:"header-1000x500.jpg";s:5:"width";i:1000;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:22:"portfolio_masonry_tall";a:4:{s:4:"file";s:18:"header-500x932.jpg";s:5:"width";i:500;s:6:"height";i:932;s:9:"mime-type";s:10:"image/jpeg";}s:23:"portfolio_masonry_large";a:4:{s:4:"file";s:19:"header-1000x932.jpg";s:5:"width";i:1000;s:6:"height";i:932;s:9:"mime-type";s:10:"image/jpeg";}s:28:"portfolio_masonry_with_space";a:4:{s:4:"file";s:18:"header-700x340.jpg";s:5:"width";i:700;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"latest_post_boxes";a:4:{s:4:"file";s:18:"header-539x303.jpg";s:5:"width";i:539;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(5, 4, '_edit_last', '1'),
(6, 4, 'qode_slide-background-type', 'image'),
(7, 4, 'qode_slide-image', 'http://localhost/sereteli/blog/wp-content/uploads/2015/03/header.jpg'),
(8, 4, 'qode_slide-thumbnail-animation', 'flip'),
(9, 4, 'qode_slide-content-animation', 'all_at_once'),
(10, 4, 'qode_slide-title-font-family', '-1'),
(11, 4, 'qode_slide-separator-after-title', 'no'),
(12, 4, 'qode_slide-border-around-title', 'no'),
(13, 4, 'qode_slide-subtitle-position', 'above_title'),
(14, 4, 'qode_slide-subtitle-font-family', '-1'),
(15, 4, 'qode_slide-text-font-family', '-1'),
(16, 4, 'qode_slide-separate-text-graphic', 'no'),
(17, 4, '_edit_lock', '1425263666:1'),
(18, 2, '_edit_lock', '1425264180:1'),
(19, 2, '_edit_last', '1'),
(20, 2, '_wpb_vc_js_status', 'false'),
(21, 2, '_wpb_vc_js_interface_version', '0'),
(22, 2, 'vc_teaser', 'a:2:{s:4:"data";s:115:"[{"name":"title","link":"post"},{"name":"image","image":"featured","link":"none"},{"name":"text","mode":"excerpt"}]";s:7:"bgcolor";s:0:"";}'),
(23, 2, 'qode_animate-page-title', 'no'),
(24, 2, 'qode_show-sidebar', '2'),
(25, 9, '_wp_attached_file', '2015/03/logo.png'),
(26, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:376;s:6:"height";i:200;s:4:"file";s:16:"2015/03/logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"logo-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:18:"menu-featured-post";a:4:{s:4:"file";s:16:"logo-345x198.png";s:5:"width";i:345;s:6:"height";i:198;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(27, 10, '_edit_last', '1'),
(28, 10, '_edit_lock', '1425453101:1'),
(31, 10, 'video_format_choose', 'youtube'),
(32, 10, 'qode_animate-page-title', 'no'),
(33, 10, 'qode_show-sidebar', 'default'),
(34, 10, 'qode_hide-featured-image', 'no'),
(35, 1, '_wp_trash_meta_status', 'publish'),
(36, 1, '_wp_trash_meta_time', '1425453172'),
(37, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(40, 10, '_qode-like', '0'),
(41, 14, '_edit_last', '1'),
(42, 14, '_edit_lock', '1425453112:1'),
(45, 14, 'video_format_choose', 'youtube'),
(46, 14, 'qode_animate-page-title', 'no'),
(47, 14, 'qode_show-sidebar', 'default'),
(48, 14, 'qode_hide-featured-image', 'no'),
(49, 16, '_edit_last', '1'),
(50, 16, '_edit_lock', '1425453154:1'),
(53, 16, 'video_format_choose', 'youtube'),
(54, 16, 'qode_animate-page-title', 'no'),
(55, 16, 'qode_show-sidebar', 'default'),
(56, 16, 'qode_hide-featured-image', 'no'),
(57, 18, '_edit_last', '1'),
(58, 18, '_edit_lock', '1425453232:1'),
(61, 18, 'video_format_choose', 'youtube'),
(62, 18, 'qode_animate-page-title', 'no'),
(63, 18, 'qode_show-sidebar', 'default'),
(64, 18, 'qode_hide-featured-image', 'no'),
(65, 18, '_qode-like', '0'),
(66, 16, '_qode-like', '0'),
(67, 14, '_qode-like', '0'),
(70, 20, '_edit_last', '1'),
(71, 20, '_edit_lock', '1425453241:1'),
(74, 20, 'video_format_choose', 'youtube'),
(75, 20, 'qode_animate-page-title', 'no'),
(76, 20, 'qode_show-sidebar', 'default'),
(77, 20, 'qode_hide-featured-image', 'no'),
(78, 22, '_edit_last', '1'),
(79, 22, '_edit_lock', '1425453251:1'),
(82, 22, 'video_format_choose', 'youtube'),
(83, 22, 'qode_animate-page-title', 'no'),
(84, 22, 'qode_show-sidebar', 'default'),
(85, 22, 'qode_hide-featured-image', 'no'),
(86, 24, '_edit_last', '1'),
(87, 24, '_edit_lock', '1425455549:1'),
(90, 24, 'video_format_choose', 'youtube'),
(91, 24, 'qode_animate-page-title', 'no'),
(92, 24, 'qode_show-sidebar', 'default'),
(93, 24, 'qode_hide-featured-image', 'no'),
(94, 24, '_qode-like', '0'),
(95, 22, '_qode-like', '0'),
(96, 20, '_qode-like', '0'),
(97, 24, '_thumbnail_id', '9'),
(102, 27, '_menu_item_type', 'custom'),
(103, 27, '_menu_item_menu_item_parent', '0'),
(104, 27, '_menu_item_object_id', '27'),
(105, 27, '_menu_item_object', 'custom'),
(106, 27, '_menu_item_target', ''),
(107, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 27, '_menu_item_xfn', ''),
(109, 27, '_menu_item_url', 'http://localhost/sereteli/blog/'),
(110, 27, '_menu_item_orphaned', '1425454620'),
(111, 28, '_menu_item_type', 'post_type'),
(112, 28, '_menu_item_menu_item_parent', '0'),
(113, 28, '_menu_item_object_id', '2'),
(114, 28, '_menu_item_object', 'page'),
(115, 28, '_menu_item_target', ''),
(116, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 28, '_menu_item_xfn', ''),
(118, 28, '_menu_item_url', ''),
(119, 28, '_menu_item_orphaned', '1425454620'),
(120, 29, '_menu_item_type', 'custom'),
(121, 29, '_menu_item_menu_item_parent', '0'),
(122, 29, '_menu_item_object_id', '29'),
(123, 29, '_menu_item_object', 'custom'),
(124, 29, '_menu_item_target', ''),
(125, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 29, '_menu_item_xfn', ''),
(127, 29, '_menu_item_url', 'http://localhost/sereteli/blog/'),
(128, 29, '_menu_item_orphaned', '1425456445'),
(129, 30, '_menu_item_type', 'post_type'),
(130, 30, '_menu_item_menu_item_parent', '0'),
(131, 30, '_menu_item_object_id', '2'),
(132, 30, '_menu_item_object', 'page'),
(133, 30, '_menu_item_target', ''),
(134, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 30, '_menu_item_xfn', ''),
(136, 30, '_menu_item_url', ''),
(137, 30, '_menu_item_orphaned', '1425456445'),
(138, 31, '_menu_item_type', 'custom'),
(139, 31, '_menu_item_menu_item_parent', '0'),
(140, 31, '_menu_item_object_id', '31'),
(141, 31, '_menu_item_object', 'custom'),
(142, 31, '_menu_item_target', ''),
(143, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 31, '_menu_item_xfn', ''),
(145, 31, '_menu_item_url', 'http://localhost/sereteli/blog/'),
(146, 31, '_menu_item_orphaned', '1425456582'),
(147, 32, '_menu_item_type', 'post_type'),
(148, 32, '_menu_item_menu_item_parent', '0'),
(149, 32, '_menu_item_object_id', '2'),
(150, 32, '_menu_item_object', 'page'),
(151, 32, '_menu_item_target', ''),
(152, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 32, '_menu_item_xfn', ''),
(154, 32, '_menu_item_url', ''),
(155, 32, '_menu_item_orphaned', '1425456582'),
(156, 33, '_menu_item_type', 'custom'),
(157, 33, '_menu_item_menu_item_parent', '0'),
(158, 33, '_menu_item_object_id', '33'),
(159, 33, '_menu_item_object', 'custom'),
(160, 33, '_menu_item_target', ''),
(161, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 33, '_menu_item_xfn', ''),
(163, 33, '_menu_item_url', 'http://localhost/sereteli/blog/'),
(164, 33, '_menu_item_orphaned', '1425456590'),
(165, 34, '_menu_item_type', 'post_type'),
(166, 34, '_menu_item_menu_item_parent', '0'),
(167, 34, '_menu_item_object_id', '2'),
(168, 34, '_menu_item_object', 'page'),
(169, 34, '_menu_item_target', ''),
(170, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 34, '_menu_item_xfn', ''),
(172, 34, '_menu_item_url', ''),
(173, 34, '_menu_item_orphaned', '1425456590'),
(174, 35, '_menu_item_type', 'custom'),
(175, 35, '_menu_item_menu_item_parent', '0'),
(176, 35, '_menu_item_object_id', '35'),
(177, 35, '_menu_item_object', 'custom'),
(178, 35, '_menu_item_target', ''),
(179, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 35, '_menu_item_xfn', ''),
(181, 35, '_menu_item_url', 'http://localhost/sereteli/blog/'),
(182, 35, '_menu_item_orphaned', '1425456846'),
(183, 36, '_menu_item_type', 'post_type'),
(184, 36, '_menu_item_menu_item_parent', '0'),
(185, 36, '_menu_item_object_id', '2'),
(186, 36, '_menu_item_object', 'page'),
(187, 36, '_menu_item_target', ''),
(188, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 36, '_menu_item_xfn', ''),
(190, 36, '_menu_item_url', ''),
(191, 36, '_menu_item_orphaned', '1425456846'),
(192, 37, '_menu_item_type', 'custom'),
(193, 37, '_menu_item_menu_item_parent', '0'),
(194, 37, '_menu_item_object_id', '37'),
(195, 37, '_menu_item_object', 'custom'),
(196, 37, '_menu_item_target', ''),
(197, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 37, '_menu_item_xfn', ''),
(199, 37, '_menu_item_url', 'http://localhost/sereteli/'),
(212, 40, '_edit_last', '1'),
(213, 40, '_edit_lock', '1425665323:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-02-20 07:02:53', '2015-02-20 07:02:53', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-03-04 07:12:52', '2015-03-04 07:12:52', '', 0, 'http://localhost/sereteli/blog/?p=1', 0, 'post', '', 1),
(2, 1, '2015-02-20 07:02:53', '2015-02-20 07:02:53', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/sereteli/blog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-03-02 02:40:51', '2015-03-02 02:40:51', '', 0, 'http://localhost/sereteli/blog/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-03-02 02:18:04', '2015-03-02 02:18:04', '', 'Sereteli', '', 'publish', 'closed', 'closed', '', '4', '', '', '2015-03-02 02:36:45', '2015-03-02 02:36:45', '', 0, 'http://localhost/sereteli/blog/?post_type=slides&#038;p=4', 0, 'slides', '', 0),
(5, 1, '2015-03-02 02:17:46', '2015-03-02 02:17:46', '', 'header', '', 'inherit', 'open', 'open', '', 'header', '', '', '2015-03-02 02:17:46', '2015-03-02 02:17:46', '', 0, 'http://localhost/sereteli/blog/wp-content/uploads/2015/03/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-03-02 02:35:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-02 02:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?post_type=slides&p=6', 0, 'slides', '', 0),
(7, 1, '2015-03-02 02:40:51', '2015-03-02 02:40:51', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/sereteli/blog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-03-02 02:40:51', '2015-03-02 02:40:51', '', 2, 'http://localhost/sereteli/blog/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-03-02 02:45:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-02 02:45:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=8', 0, 'post', '', 0),
(9, 1, '2015-03-04 06:59:02', '2015-03-04 06:59:02', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2015-03-04 07:13:12', '2015-03-04 07:13:12', '', 10, 'http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2015-03-04 07:12:30', '2015-03-04 07:12:30', '<a href="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png"><img class=" size-medium wp-image-9 aligncenter" src="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo-300x160.png" alt="logo" width="300" height="160" /></a>\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test1', '', 'publish', 'open', 'open', '', 'test1', '', '', '2015-03-04 07:13:18', '2015-03-04 07:13:18', '', 0, 'http://localhost/sereteli/blog/?p=10', 0, 'post', '', 0),
(11, 1, '2015-03-04 07:12:30', '2015-03-04 07:12:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test1', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-03-04 07:12:30', '2015-03-04 07:12:30', '', 10, 'http://localhost/sereteli/blog/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-03-04 07:12:52', '2015-03-04 07:12:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-03-04 07:12:52', '2015-03-04 07:12:52', '', 1, 'http://localhost/sereteli/blog/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-03-04 07:13:18', '2015-03-04 07:13:18', '<a href="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png"><img class=" size-medium wp-image-9 aligncenter" src="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo-300x160.png" alt="logo" width="300" height="160" /></a>\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test1', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-03-04 07:13:18', '2015-03-04 07:13:18', '', 10, 'http://localhost/sereteli/blog/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-03-04 07:14:15', '2015-03-04 07:14:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test2', '', 'publish', 'open', 'open', '', 'test2', '', '', '2015-03-04 07:14:15', '2015-03-04 07:14:15', '', 0, 'http://localhost/sereteli/blog/?p=14', 0, 'post', '', 0),
(15, 1, '2015-03-04 07:14:15', '2015-03-04 07:14:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test2', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-04 07:14:15', '2015-03-04 07:14:15', '', 14, 'http://localhost/sereteli/blog/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-03-04 07:14:56', '2015-03-04 07:14:56', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test3', '', 'publish', 'open', 'open', '', 'test3', '', '', '2015-03-04 07:14:56', '2015-03-04 07:14:56', '', 0, 'http://localhost/sereteli/blog/?p=16', 0, 'post', '', 0),
(17, 1, '2015-03-04 07:14:56', '2015-03-04 07:14:56', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test3', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-03-04 07:14:56', '2015-03-04 07:14:56', '', 16, 'http://localhost/sereteli/blog/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-03-04 07:15:07', '2015-03-04 07:15:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test4', '', 'publish', 'open', 'open', '', 'test4', '', '', '2015-03-04 07:16:14', '2015-03-04 07:16:14', '', 0, 'http://localhost/sereteli/blog/?p=18', 0, 'post', '', 0),
(19, 1, '2015-03-04 07:15:07', '2015-03-04 07:15:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test4', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-03-04 07:15:07', '2015-03-04 07:15:07', '', 18, 'http://localhost/sereteli/blog/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-03-04 07:16:23', '2015-03-04 07:16:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test5', '', 'publish', 'open', 'open', '', 'test5', '', '', '2015-03-04 07:16:23', '2015-03-04 07:16:23', '', 0, 'http://localhost/sereteli/blog/?p=20', 0, 'post', '', 0),
(21, 1, '2015-03-04 07:16:23', '2015-03-04 07:16:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test5', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-03-04 07:16:23', '2015-03-04 07:16:23', '', 20, 'http://localhost/sereteli/blog/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-03-04 07:16:32', '2015-03-04 07:16:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test6', '', 'publish', 'open', 'open', '', 'test6', '', '', '2015-03-04 07:16:32', '2015-03-04 07:16:32', '', 0, 'http://localhost/sereteli/blog/?p=22', 0, 'post', '', 0),
(23, 1, '2015-03-04 07:16:32', '2015-03-04 07:16:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test6', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-03-04 07:16:32', '2015-03-04 07:16:32', '', 22, 'http://localhost/sereteli/blog/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-03-04 07:16:45', '2015-03-04 07:16:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test7', '', 'publish', 'open', 'open', '', 'test7', '', '', '2015-03-04 07:28:20', '2015-03-04 07:28:20', '', 0, 'http://localhost/sereteli/blog/?p=24', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(25, 1, '2015-03-04 07:16:45', '2015-03-04 07:16:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean velit lacus, vehicula sit amet pulvinar ac, molestie mattis lorem. Phasellus eget luctus lorem, id bibendum mi. Nam at volutpat libero, id rutrum tellus. Aenean at lectus vel ante venenatis blandit sit amet ut enim. Curabitur nec venenatis arcu, sit amet congue leo. Vivamus mattis, ligula eu congue laoreet, diam sem mollis mi, vitae efficitur tellus tortor dignissim justo. Aenean vel sodales metus, sit amet pellentesque arcu.\r\n\r\nSed sit amet nisi blandit, suscipit sapien a, varius sem. Quisque urna massa, placerat vitae elementum id, volutpat ut ante. Aenean et volutpat augue. Vivamus nibh dui, imperdiet ac metus vel, tincidunt commodo nunc. Vivamus iaculis neque non mi blandit rutrum. Maecenas eu augue elementum, faucibus lacus vel, tristique elit. In vestibulum lectus vitae ultrices vehicula. Duis tincidunt mi vel tellus consequat, eget fringilla nisl porta. Curabitur gravida erat tortor, ac dictum orci rhoncus id. Vestibulum placerat ligula et imperdiet molestie. Nulla quis suscipit mauris, scelerisque bibendum augue. Suspendisse et rhoncus arcu. Praesent non commodo justo.\r\n\r\nCras mattis, diam vitae mollis dignissim, orci quam aliquam orci, sed convallis nisi quam sit amet est. Vivamus lobortis, nisl vel scelerisque malesuada, elit nisl tempus diam, a laoreet dui nisi a tellus. Pellentesque pharetra, lectus ac ullamcorper fermentum, metus nisl rhoncus erat, sit amet tempor magna est ac nunc. Maecenas eu sapien sit amet lorem bibendum faucibus. Nunc risus diam, sagittis eu arcu sit amet, finibus pellentesque diam. Quisque ornare, erat sed feugiat aliquet, sem purus mattis felis, nec bibendum ex erat sit amet turpis. Sed scelerisque cursus dui, eget vestibulum augue aliquet ac. Maecenas dapibus, nunc blandit venenatis blandit, ligula dui vestibulum lorem, nec semper ligula augue venenatis lacus. Nullam a nulla odio. Vestibulum et egestas lacus, rhoncus rhoncus nisi. Donec dictum tempus turpis non eleifend.\r\n\r\nDonec et consectetur mauris. Suspendisse blandit, lectus vitae facilisis vestibulum, tortor tellus semper lorem, eu ultrices elit libero sed dolor. Nam tincidunt felis at erat aliquam gravida. Nulla ligula libero, venenatis sit amet ultrices at, lacinia eu enim. Vivamus luctus massa et odio gravida, quis efficitur sem convallis. Morbi vulputate tellus dolor, at vulputate quam tempus sed. Nulla facilisi. Pellentesque efficitur, odio vel vestibulum malesuada, erat ligula lobortis massa, vel vulputate mi tellus vestibulum eros. Nullam dui libero, sagittis nec sollicitudin eu, fermentum in lorem. Vivamus dictum, lorem sit amet interdum convallis, risus nulla iaculis nisl, id suscipit dui quam sed eros. Etiam porttitor nec nulla sed ornare. Suspendisse bibendum tincidunt aliquet. In hendrerit tortor at leo fringilla finibus.\r\n\r\n&nbsp;', 'Test7', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-03-04 07:16:45', '2015-03-04 07:16:45', '', 24, 'http://localhost/sereteli/blog/?p=25', 0, 'revision', '', 0),
(27, 1, '2015-03-04 07:37:00', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 07:37:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2015-03-04 07:37:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 07:37:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-03-04 08:07:25', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:07:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2015-03-04 08:07:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:07:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2015-03-04 08:09:42', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:09:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2015-03-04 08:09:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:09:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2015-03-04 08:09:50', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:09:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-03-04 08:09:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:09:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2015-03-04 08:14:06', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:14:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-03-04 08:14:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-04 08:14:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/sereteli/blog/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-03-04 08:15:34', '2015-03-04 08:15:34', '', 'Inicio', '', 'publish', 'open', 'open', '', 'inicio', '', '', '2015-03-04 08:17:05', '2015-03-04 08:17:05', '', 0, 'http://localhost/sereteli/blog/?p=37', 1, 'nav_menu_item', '', 0),
(40, 1, '2015-03-06 18:08:43', '0000-00-00 00:00:00', '<a href="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo.png"><img class="alignnone size-medium wp-image-9" src="http://localhost/sereteli/blog/wp-content/uploads/2015/03/logo-300x160.png" alt="logo" width="300" height="160" /></a>\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\nmjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,mjinkmlmlkñ,ñl,l,l,kl,', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-06 18:08:43', '2015-03-06 18:08:43', '', 0, 'http://localhost/sereteli/blog/?p=40', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(24, 1, 0),
(37, 2, 0),
(40, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sereteli'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '8'),
(16, 1, 'wp_user-settings', 'posts_list_mode=excerpt&libraryContent=browse&post_dfw=off'),
(17, 1, 'wp_user-settings-time', '1425453292'),
(18, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:0:"";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(22, 1, 'closedpostboxes_slides', 'a:0:{}'),
(23, 1, 'metaboxhidden_slides', 'a:2:{i:0;s:7:"slugdiv";i:1;s:36:"qodef-meta-box-slides_video_settings";}'),
(25, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 1, 'nav_menu_recently_edited', '2'),
(31, 1, 'session_tokens', 'a:1:{s:64:"809bbe5fad01fa3b63702e7de3ca7dea6f693266c4d1b38b7230be945930c9f0";a:4:{s:10:"expiration";i:1425838043;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425665243;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sereteli', '$P$Bd8s0MfzGv5ztMIKESZITW6iMni1rQ1', 'sereteli', 'sereteli@sereteli.com', '', '2015-02-20 07:02:53', '', 0, 'sereteli');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_fw_termmeta`
--
ALTER TABLE `wp_fw_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `fw_term_id` (`fw_term_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_fw_termmeta`
--
ALTER TABLE `wp_fw_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
