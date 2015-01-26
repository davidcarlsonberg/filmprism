-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2015 at 04:30 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scr33npri5m8WqSLr`
--

-- --------------------------------------------------------

--
-- Table structure for table `exp_accessories`
--

CREATE TABLE `exp_accessories` (
`accessory_id` int(10) unsigned NOT NULL,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_accessories`
--

INSERT INTO `exp_accessories` (`accessory_id`, `class`, `member_groups`, `controllers`, `accessory_version`) VALUES
(1, 'Expressionengine_info_acc', '1|5', 'addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities', '1.0'),
(2, 'Freeform_acc', '1|5', 'addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities', '4.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `exp_actions`
--

CREATE TABLE `exp_actions` (
`action_id` int(4) unsigned NOT NULL,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_actions`
--

INSERT INTO `exp_actions` (`action_id`, `class`, `method`, `csrf_exempt`) VALUES
(1, 'Email', 'send_email', 0),
(2, 'Search', 'do_search', 1),
(3, 'Channel', 'submit_entry', 0),
(4, 'Channel', 'filemanager_endpoint', 0),
(5, 'Channel', 'smiley_pop', 0),
(6, 'Channel', 'combo_loader', 0),
(7, 'Member', 'registration_form', 0),
(8, 'Member', 'register_member', 0),
(9, 'Member', 'activate_member', 0),
(10, 'Member', 'member_login', 0),
(11, 'Member', 'member_logout', 0),
(12, 'Member', 'send_reset_token', 0),
(13, 'Member', 'process_reset_password', 0),
(14, 'Member', 'send_member_email', 0),
(15, 'Member', 'update_un_pw', 0),
(16, 'Member', 'member_search', 0),
(17, 'Member', 'member_delete', 0),
(18, 'Rte', 'get_js', 0),
(19, 'Assets_mcp', 'upload_file', 0),
(20, 'Assets_mcp', 'get_files_view_by_folders', 0),
(21, 'Assets_mcp', 'get_props', 0),
(22, 'Assets_mcp', 'save_props', 0),
(23, 'Assets_mcp', 'get_ordered_files_view', 0),
(24, 'Assets_mcp', 'get_session_id', 0),
(25, 'Assets_mcp', 'start_index', 0),
(26, 'Assets_mcp', 'perform_index', 0),
(27, 'Assets_mcp', 'finish_index', 0),
(28, 'Assets_mcp', 'get_s3_buckets', 0),
(29, 'Assets_mcp', 'get_gc_buckets', 0),
(30, 'Assets_mcp', 'get_rs_regions', 0),
(31, 'Assets_mcp', 'get_rs_containers', 0),
(32, 'Assets_mcp', 'move_folder', 0),
(33, 'Assets_mcp', 'rename_folder', 0),
(34, 'Assets_mcp', 'create_folder', 0),
(35, 'Assets_mcp', 'delete_folder', 0),
(36, 'Assets_mcp', 'view_file', 0),
(37, 'Assets_mcp', 'move_file', 0),
(38, 'Assets_mcp', 'delete_file', 0),
(39, 'Assets_mcp', 'view_thumbnail', 0),
(40, 'Assets_mcp', 'build_sheet', 0),
(41, 'Assets_mcp', 'get_selected_files', 0),
(42, 'Ajw_datagrab', 'run_action', 0),
(43, 'Freeform', 'save_form', 0),
(44, 'Playa_mcp', 'filter_entries', 0),
(45, 'Zoo_flexible_admin', 'ajax_preview', 0),
(46, 'Zoo_flexible_admin', 'ajax_load_tree', 0),
(47, 'Zoo_flexible_admin', 'ajax_load_settings', 0),
(48, 'Zoo_flexible_admin', 'ajax_save_tree', 0),
(49, 'Zoo_flexible_admin', 'ajax_remove_tree', 0),
(50, 'Zoo_flexible_admin', 'ajax_copy_tree', 0),
(51, 'Template_morsels', 'parse_queue', 0),
(52, 'Template_morsels', 'cron_refresh_morsel', 0),
(53, 'Tag', 'insert_tags', 0),
(54, 'Tag', 'ajax', 1),
(55, 'Tag', 'tag_js', 0),
(56, 'Tag', 'subscribe', 0),
(57, 'Tag', 'unsubscribe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_ajw_datagrab`
--

CREATE TABLE `exp_ajw_datagrab` (
`id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passkey` varchar(255) DEFAULT '',
  `settings` text,
  `last_run` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_files`
--

CREATE TABLE `exp_assets_files` (
`file_id` int(10) unsigned NOT NULL,
  `folder_id` int(10) unsigned NOT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `source_id` int(10) unsigned DEFAULT NULL,
  `filedir_id` int(4) unsigned DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `alt_text` tinytext,
  `caption` tinytext,
  `author` tinytext,
  `desc` text,
  `location` tinytext,
  `keywords` text,
  `date_modified` int(10) unsigned DEFAULT NULL,
  `kind` varchar(5) DEFAULT NULL,
  `width` int(2) DEFAULT NULL,
  `height` int(2) DEFAULT NULL,
  `size` int(3) DEFAULT NULL,
  `search_keywords` text
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_assets_files`
--

INSERT INTO `exp_assets_files` (`file_id`, `folder_id`, `source_type`, `source_id`, `filedir_id`, `file_name`, `title`, `date`, `alt_text`, `caption`, `author`, `desc`, `location`, `keywords`, `date_modified`, `kind`, `width`, `height`, `size`, `search_keywords`) VALUES
(1, 1, 'ee', NULL, 1, 'hobbit-movie-poster-01.jpg', NULL, 1418946137, NULL, NULL, NULL, NULL, NULL, NULL, 1418946137, 'image', 350, 525, 68033, 'hobbit-movie-poster-01.jpg'),
(2, 1, 'ee', NULL, 1, 'hobbit-movie-poster-02.jpg', NULL, 1418946137, NULL, NULL, NULL, NULL, NULL, NULL, 1418946137, 'image', 350, 519, 63515, 'hobbit-movie-poster-02.jpg'),
(3, 1, 'ee', NULL, 1, 'birdman-poster-01.jpg', NULL, 1422158705, NULL, NULL, NULL, NULL, NULL, NULL, 1422158705, 'image', 400, 626, 65198, 'birdman-poster-01.jpg'),
(4, 2, 'ee', NULL, 4, 'birdman-poster-00.jpg', NULL, 1422158379, NULL, NULL, NULL, NULL, NULL, NULL, 1422158379, 'image', 486, 720, 81842, 'birdman-poster-00.jpg'),
(5, 3, 'ee', NULL, 2, 'under-the-skin.jpg', NULL, 1422168777, NULL, NULL, NULL, NULL, NULL, NULL, 1422168777, 'image', 1920, 1080, 1092334, 'under-the-skin.jpg'),
(6, 3, 'ee', NULL, 2, 'birdman-image.jpg', NULL, 1422169030, NULL, NULL, NULL, NULL, NULL, NULL, 1422169030, 'image', 1998, 1080, 758290, 'birdman-image.jpg'),
(7, 3, 'ee', NULL, 2, 'grand-budapest-image.jpg', NULL, 1422169114, NULL, NULL, NULL, NULL, NULL, NULL, 1422169114, 'image', 1200, 800, 811534, 'grand-budapest-image.jpg'),
(8, 3, 'ee', NULL, 2, 'interstellar-image-01.jpg', NULL, 1422169714, NULL, NULL, NULL, NULL, NULL, NULL, 1422169714, 'image', 1200, 540, 222269, 'interstellar-image-01.jpg'),
(9, 3, 'ee', NULL, 2, 'inherent-vice-01.jpg', NULL, 1422169909, NULL, NULL, NULL, NULL, NULL, NULL, 1422169909, 'image', 1888, 1062, 193299, 'inherent-vice-01.jpg'),
(10, 3, 'ee', NULL, 2, 'babadook.jpg', NULL, 1422170280, NULL, NULL, NULL, NULL, NULL, NULL, 1422170280, 'image', 1920, 1080, 269551, 'babadook.jpg'),
(11, 3, 'ee', NULL, 2, 'selma-image-01.jpg', NULL, 1422170977, NULL, NULL, NULL, NULL, NULL, NULL, 1422170977, 'image', 1201, 720, 394659, 'selma-image-01.jpg'),
(12, 3, 'ee', NULL, 2, 'nightcrawler-image-01.jpg', NULL, 1422171416, NULL, NULL, NULL, NULL, NULL, NULL, 1422171416, 'image', 3000, 1800, 2162478, 'nightcrawler-image-01.jpg'),
(13, 3, 'ee', NULL, 2, 'boyhood-image-01.jpg', NULL, 1422172360, NULL, NULL, NULL, NULL, NULL, NULL, 1422172360, 'image', 1296, 730, 484357, 'boyhood-image-01.jpg'),
(14, 1, 'ee', NULL, 1, 'american-horror-story-box.jpg', NULL, 1422258488, NULL, NULL, NULL, NULL, NULL, NULL, 1422258488, 'image', 538, 800, 143795, 'american-horror-story-box.jpg'),
(15, 1, 'ee', NULL, 1, 'seinfeld-box-01.jpg', NULL, 1422258983, NULL, NULL, NULL, NULL, NULL, NULL, 1422258983, 'image', 350, 520, 88349, 'seinfeld-box-01.jpg'),
(16, 1, 'ee', NULL, 1, 'oitnb-box-01.jpg', NULL, 1422259349, NULL, NULL, NULL, NULL, NULL, NULL, 1422259349, 'image', 350, 520, 87710, 'oitnb-box-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_folders`
--

CREATE TABLE `exp_assets_folders` (
`folder_id` int(10) unsigned NOT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `folder_name` varchar(255) NOT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `filedir_id` int(4) unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_assets_folders`
--

INSERT INTO `exp_assets_folders` (`folder_id`, `source_type`, `folder_name`, `full_path`, `parent_id`, `source_id`, `filedir_id`) VALUES
(1, 'ee', 'Covers', '', NULL, NULL, 1),
(2, 'ee', 'Uploads', '', NULL, NULL, 4),
(3, 'ee', 'Article Image', '', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_index_data`
--

CREATE TABLE `exp_assets_index_data` (
  `session_id` char(36) DEFAULT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `source_id` int(10) unsigned DEFAULT NULL,
  `offset` int(10) unsigned DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `filesize` int(10) unsigned DEFAULT NULL,
  `type` enum('file','folder') DEFAULT NULL,
  `record_id` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_rackspace_access`
--

CREATE TABLE `exp_assets_rackspace_access` (
  `connection_key` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `storage_url` varchar(255) NOT NULL,
  `cdn_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_selections`
--

CREATE TABLE `exp_assets_selections` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `field_id` int(6) unsigned DEFAULT NULL,
  `col_id` int(6) unsigned DEFAULT NULL,
  `row_id` int(10) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `sort_order` int(4) unsigned DEFAULT NULL,
  `is_draft` tinyint(1) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_assets_selections`
--

INSERT INTO `exp_assets_selections` (`file_id`, `entry_id`, `field_id`, `col_id`, `row_id`, `var_id`, `element_id`, `content_type`, `sort_order`, `is_draft`) VALUES
(3, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 5, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, 10, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, 9, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, 8, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, 7, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, 11, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, 12, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(12, 13, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(13, 14, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 15, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(1, 16, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(14, 17, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(15, 18, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, 19, 1, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_assets_sources`
--

CREATE TABLE `exp_assets_sources` (
`source_id` int(10) unsigned NOT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 's3',
  `name` varchar(255) NOT NULL DEFAULT '',
  `settings` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_captcha`
--

CREATE TABLE `exp_captcha` (
`captcha_id` bigint(13) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_categories`
--

CREATE TABLE `exp_categories` (
`cat_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_categories`
--

INSERT INTO `exp_categories` (`cat_id`, `site_id`, `group_id`, `parent_id`, `cat_name`, `cat_url_title`, `cat_description`, `cat_image`, `cat_order`) VALUES
(1, 1, 1, 0, 'Comedy', 'comedy', '', '', 1),
(2, 1, 1, 0, 'Drama', 'drama', '', '', 3),
(3, 1, 1, 0, 'Horror', 'horror', '', '', 4),
(4, 1, 1, 0, 'Romantic', 'romantic', '', '', 5),
(5, 1, 2, 0, 'Q & A', 'q-and-a', '', '', 2),
(6, 1, 2, 0, 'Article', 'article', '', '', 1),
(7, 1, 1, 0, 'Crime', 'crime', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `exp_category_fields`
--

CREATE TABLE `exp_category_fields` (
`field_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_category_field_data`
--

CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_category_field_data`
--

INSERT INTO `exp_category_field_data` (`cat_id`, `site_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 2),
(6, 1, 2),
(7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exp_category_groups`
--

CREATE TABLE `exp_category_groups` (
`group_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_category_groups`
--

INSERT INTO `exp_category_groups` (`group_id`, `site_id`, `group_name`, `sort_order`, `exclude_group`, `field_html_formatting`, `can_edit_categories`, `can_delete_categories`) VALUES
(1, 1, 'Genre', 'a', 2, 'all', '', ''),
(2, 1, 'Article Type', 'a', 2, 'all', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exp_category_posts`
--

CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_category_posts`
--

INSERT INTO `exp_category_posts` (`entry_id`, `cat_id`) VALUES
(5, 6),
(6, 1),
(6, 2),
(7, 5),
(8, 6),
(9, 6),
(10, 5),
(11, 5),
(12, 6),
(13, 6),
(14, 5),
(15, 2),
(16, 2),
(17, 2),
(17, 3),
(18, 1),
(19, 1),
(19, 2),
(19, 7);

-- --------------------------------------------------------

--
-- Table structure for table `exp_channels`
--

CREATE TABLE `exp_channels` (
`channel_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channels`
--

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`) VALUES
(1, 1, 'film', 'Film', 'http://screenprism.dev/index.php', NULL, 'en', 3, 0, 1418792400, 0, '1', 1, 'open', 1, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(2, 1, 'television', 'Television', 'http://screenprism.dev/index.php', NULL, 'en', 3, 0, 1373515200, 0, '1', 1, 'open', 1, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(3, 1, 'articles', 'Articles', 'http://screenprism.dev/index.php', '', 'en', 9, 0, 1422172260, 0, '2', 1, 'open', 2, 6, '', 'y', 'y', NULL, 'all', 'y', 'n', 'n', '', '', 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, '', 'y', '', 'n', 10, '', '', 0),
(4, 1, 'pages', 'Pages', 'http://screenprism.dev/index.php', NULL, 'en', 4, 0, 1422114780, 0, '', 1, 'open', 3, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_data`
--

CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` text,
  `field_ft_2` tinytext,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_data`
--

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`) VALUES
(1, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>', 'none'),
(2, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>', 'none'),
(3, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>', 'none'),
(4, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>', 'none'),
(5, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget lacus orci. Proin urna sapien, commodo vel eros eu, porttitor rutrum risus. Cras quis quam hendrerit, pellentesque enim ut, pulvinar metus. Maecenas non urna vel lorem ultricies convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus a finibus arcu. Sed volutpat sagittis risus eget ultrices. Sed ullamcorper, nunc id porta vehicula, lacus mi sodales metus, et consequat ante metus et libero. In arcu est, aliquet quis consequat a, tristique ut nunc. Duis accumsan sem justo, in interdum arcu varius in. Nam porta, odio in pretium scelerisque, nisi dolor molestie massa, quis dapibus lectus mauris vitae ligula. Donec nec tristique mi. Suspendisse ultricies faucibus diam eget porttitor.</p>\n\n<p>Nam vitae bibendum nunc. Donec pulvinar tincidunt mi, vitae convallis elit efficitur nec. Ut vitae diam vitae tortor vehicula tincidunt eu nec purus. Quisque ac malesuada lorem, ac eleifend turpis. In egestas euismod diam, at laoreet mi accumsan eu. Aliquam eu magna semper, tincidunt mauris sed, vulputate tellus. Quisque lacus libero, dapibus et vehicula quis, interdum nec ipsum.</p>', 'none', 'Nam vitae bibendum nunc. Donec pulvinar tincidunt mi, vitae convallis elit efficitur nec. Ut vitae diam vitae tortor vehicula tincidunt eu nec purus.', 'none', 'Testing Tag', 'xhtml', 'under-the-skin.jpg', 'none', '[18] [seinfeld] Seinfeld', 'none', 'Test Author', 'none', '', NULL, '', NULL),
(6, 1, 1, 'birdman-poster-01.jpg', 'none', 'Alejandro González Iñárritu', 'none', '1', 'none', 'Michael Keaton\nEmma Stone\nZach Galifianakis\nEdward Norton\nNaomi Watts\nAmy Ryan', 'xhtml', '<p>Actor Riggan Thomson is most famous for his movie role from over twenty years ago of the comic book superhero Birdman in the blockbuster movie of the same name and its two equally popular sequels. His association with the role took over his life, where Birdman is more renowned than "Riggan Thomson" the actor. Now past middle age, Riggan is trying to establish himself as a true artist by writing, directing, starring in and co-producing with his best friend Jake what is his Broadway debut, an adaptation of Raymond Carver&#39;s story, What We Talk About When We Talk About Love. He is staking his name, what little artistic reputation that comes with that name and his life savings on the project, and as such will do anything needed to make the play a success. As he and Jake go through the process of the previews toward opening night, Riggan runs into several issues: needing to find a replacement for the integral supporting male role the night before the first preview; hiring the talented Broadway name, Mike Shiner, for that role, Mike who ends up being difficult to work with and who may end up overshadowing Riggan in the play; having to deal potentially with a lawsuit based on one of his actions to ensure success; needing to be there for his daughter, Sam, who he has hired to be his production assistant and who has just come out of drug rehab; and pleasing the New York Times critic, Tabitha Dickinson, who wants to use any excuse to give the play a scathing review which in turn would close the show after the opening night performance. But Riggan&#39;s biggest problem may be his own insecurities, which are manifested by him constantly hearing what he believes to be the truth from the voice of his Birdman character, who he often battles both internally and externally.</p>\n\n<p>-Written by Huggo</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Alexander Dinelaris, Alejandro González Iñárritu, Armando Bo, Nicolás Giacobone', 'none', '', NULL),
(7, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis. Morbi et egestas magna. Donec in metus blandit, pretium urna vel, pretium magna. Donec turpis dolor, maximus suscipit posuere at, vehicula eget ligula. Vestibulum sed lorem ut nunc feugiat maximus in sit amet ipsum. Maecenas in eros elementum, fermentum diam eget, dignissim enim. Fusce sit amet lorem enim. Fusce tincidunt finibus tortor. Etiam sed tempor enim.</p>\n\n<p>Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue. Nulla odio dui, fermentum id massa non, luctus dignissim metus. Integer semper elementum mollis. Praesent tincidunt ipsum a risus varius luctus. Praesent faucibus lorem erat, ac ullamcorper ex lacinia at.</p>\n\n<p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque. Morbi eu congue tortor. Praesent pellentesque mi a odio varius gravida. Ut porttitor sed nibh nec condimentum. Suspendisse non ornare felis, quis aliquet mauris. In ac feugiat ex. Proin sollicitudin, erat tempus porta accumsan, orci diam tempor eros, et luctus diam ligula in ligula. Etiam a odio condimentum, condimentum odio ut, mollis ipsum.</p>\n\n<p>Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim. Fusce turpis ligula, ornare imperdiet lectus at, rutrum tincidunt leo. Nunc in diam viverra, tempor risus aliquam, hendrerit ex. Mauris pretium ac quam non cursus. Cras vitae risus tincidunt, sollicitudin lectus sit amet, commodo massa. Cras tristique gravida erat, et pellentesque ipsum eleifend et. Cras ut vulputate libero. Proin eu venenatis arcu. Ut fringilla sed libero in fringilla.</p>', 'none', 'Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim.', 'none', 'tag test\ntesting tag', 'xhtml', 'inherent-vice-01.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Someone', 'none', '', NULL, '', NULL),
(8, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis. Morbi et egestas magna. Donec in metus blandit, pretium urna vel, pretium magna. Donec turpis dolor, maximus suscipit posuere at, vehicula eget ligula. Vestibulum sed lorem ut nunc feugiat maximus in sit amet ipsum. Maecenas in eros elementum, fermentum diam eget, dignissim enim. Fusce sit amet lorem enim. Fusce tincidunt finibus tortor. Etiam sed tempor enim.</p>\n\n<p>Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue. Nulla odio dui, fermentum id massa non, luctus dignissim metus. Integer semper elementum mollis. Praesent tincidunt ipsum a risus varius luctus. Praesent faucibus lorem erat, ac ullamcorper ex lacinia at.</p>\n\n<p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque. Morbi eu congue tortor. Praesent pellentesque mi a odio varius gravida. Ut porttitor sed nibh nec condimentum. Suspendisse non ornare felis, quis aliquet mauris. In ac feugiat ex. Proin sollicitudin, erat tempus porta accumsan, orci diam tempor eros, et luctus diam ligula in ligula. Etiam a odio condimentum, condimentum odio ut, mollis ipsum.</p>\n\n<p>Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim. Fusce turpis ligula, ornare imperdiet lectus at, rutrum tincidunt leo. Nunc in diam viverra, tempor risus aliquam, hendrerit ex. Mauris pretium ac quam non cursus. Cras vitae risus tincidunt, sollicitudin lectus sit amet, commodo massa. Cras tristique gravida erat, et pellentesque ipsum eleifend et. Cras ut vulputate libero. Proin eu venenatis arcu. Ut fringilla sed libero in fringilla.</p>', 'none', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis.', 'none', '', 'xhtml', 'interstellar-image-01.jpg', 'none', '[19] [orange-is-the-new-black] Orange is the New Black', 'none', 'Someone', 'none', '', NULL, '', NULL),
(9, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis. Morbi et egestas magna. Donec in metus blandit, pretium urna vel, pretium magna. Donec turpis dolor, maximus suscipit posuere at, vehicula eget ligula. Vestibulum sed lorem ut nunc feugiat maximus in sit amet ipsum. Maecenas in eros elementum, fermentum diam eget, dignissim enim. Fusce sit amet lorem enim. Fusce tincidunt finibus tortor. Etiam sed tempor enim.</p>\n\n<p>Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue. Nulla odio dui, fermentum id massa non, luctus dignissim metus. Integer semper elementum mollis. Praesent tincidunt ipsum a risus varius luctus. Praesent faucibus lorem erat, ac ullamcorper ex lacinia at.</p>\n\n<p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque. Morbi eu congue tortor. Praesent pellentesque mi a odio varius gravida. Ut porttitor sed nibh nec condimentum. Suspendisse non ornare felis, quis aliquet mauris. In ac feugiat ex. Proin sollicitudin, erat tempus porta accumsan, orci diam tempor eros, et luctus diam ligula in ligula. Etiam a odio condimentum, condimentum odio ut, mollis ipsum.</p>', 'none', 'Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue.', 'none', 'Tag Test\nTesting Tag', 'xhtml', 'grand-budapest-image.jpg', 'none', '[17] [american-horror-story] American Horror Story', 'none', 'Author Name', 'none', '', NULL, '', NULL),
(10, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque. Morbi eu congue tortor. Praesent pellentesque mi a odio varius gravida. Ut porttitor sed nibh nec condimentum. Suspendisse non ornare felis, quis aliquet mauris. In ac feugiat ex. Proin sollicitudin, erat tempus porta accumsan, orci diam tempor eros, et luctus diam ligula in ligula. Etiam a odio condimentum, condimentum odio ut, mollis ipsum.</p>\n\n<p>Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim. Fusce turpis ligula, ornare imperdiet lectus at, rutrum tincidunt leo. Nunc in diam viverra, tempor risus aliquam, hendrerit ex. Mauris pretium ac quam non cursus. Cras vitae risus tincidunt, sollicitudin lectus sit amet, commodo massa. Cras tristique gravida erat, et pellentesque ipsum eleifend et. Cras ut vulputate libero. Proin eu venenatis arcu. Ut fringilla sed libero in fringilla.</p>\n\n<p>Pellentesque tristique vel velit a tristique. Phasellus eu mauris tellus. Donec blandit imperdiet ornare. Vivamus placerat, quam ac ultricies fermentum, erat orci varius dolor, non ornare enim est sit amet metus. Proin turpis elit, semper eget sagittis vitae, luctus id nisl. Proin pellentesque lobortis nibh, vel ornare ex rutrum et. Phasellus sagittis consequat orci, eu mollis turpis malesuada eu. Ut tempus aliquam turpis vel faucibus. Morbi euismod sit amet mi imperdiet condimentum. Maecenas a lectus mauris. In hac habitasse platea dictumst. Fusce pellentesque dignissim arcu, eu bibendum turpis euismod vitae. Nunc placerat eros in urna facilisis suscipit. Nulla pharetra justo nec ornare consequat. Aenean sed ex gravida, fermentum arcu nec, tempus augue.</p>', 'none', 'Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque.', 'none', 'Tag Test\nTesting Tag', 'xhtml', 'birdman-image.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Author Name', 'none', '', NULL, '', NULL),
(11, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n\n<p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris. Mauris sit amet ligula mattis nibh malesuada hendrerit a et risus. Phasellus vel lectus at arcu fermentum porttitor et et libero. Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit. Praesent sem dolor, tincidunt at bibendum eu, fermentum a sem. Ut cursus, felis et varius scelerisque, nisi nulla molestie sapien, id fermentum libero mauris ac urna. Nullam bibendum vitae felis vel congue. Morbi quis tellus vel urna sagittis aliquam vitae faucibus mi. Nam consequat eu felis eu bibendum. Sed pulvinar pharetra arcu eget hendrerit.</p>', 'none', 'Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris.', 'none', 'tag test\ntesting tag', 'xhtml', 'babadook.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Author Name', 'none', '', NULL, '', NULL),
(12, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>', 'none', 'Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.', 'none', 'Tag Test', 'xhtml', 'selma-image-01.jpg', 'none', '[16] [the-hobbit-the-desolation-of-smaug] The Hobbit: The Desolation of Smaug', 'none', 'Someone', 'none', '', NULL, '', NULL),
(13, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a tellus orci. Etiam vulputate venenatis gravida. Ut euismod tortor id urna tincidunt, placerat sodales purus suscipit. Nulla enim ipsum, ullamcorper quis nisi eget, rhoncus viverra erat. In hac habitasse platea dictumst. Duis euismod ex et felis gravida, porta volutpat tortor sagittis. Donec ultrices consequat risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus quis sem diam. Donec pellentesque, felis vel luctus elementum, odio velit hendrerit justo, vel consectetur ex justo a tellus.</p>\n\n<p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>', 'none', 'Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna. Etiam vehicula rutrum nulla condimentum bibendum.', 'none', 'Tag Test\nTesting Tag', 'xhtml', 'nightcrawler-image-01.jpg', 'none', '[15] [the-hobbit-the-battle-of-the-five-armies] The Hobbit: The Battle of the Five Armies', 'none', 'Author Name', 'none', '', NULL, '', NULL),
(14, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n\n<p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris. Mauris sit amet ligula mattis nibh malesuada hendrerit a et risus. Phasellus vel lectus at arcu fermentum porttitor et et libero. Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit. Praesent sem dolor, tincidunt at bibendum eu, fermentum a sem. Ut cursus, felis et varius scelerisque, nisi nulla molestie sapien, id fermentum libero mauris ac urna. Nullam bibendum vitae felis vel congue. Morbi quis tellus vel urna sagittis aliquam vitae faucibus mi. Nam consequat eu felis eu bibendum. Sed pulvinar pharetra arcu eget hendrerit.</p>', 'none', 'Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit.', 'none', 'Lone Tag\nTesting Tag', 'xhtml', 'boyhood-image-01.jpg', 'none', '[15] [the-hobbit-the-battle-of-the-five-armies] The Hobbit: The Battle of the Five Armies', 'none', 'Someone', 'none', '', NULL, '', NULL),
(15, 1, 1, 'hobbit-movie-poster-02.jpg', 'none', 'Peter Jackson', 'none', '1', 'none', 'Martin Freeman\nIan McKellen\nRichard Armitage\nAidan Turner\nOrlando Bloom\nEvangeline Lilly\nJohn Bell\nDean O''Gorman\nLee Pace\nBenedict Cumberbatch\nLuke Evans\nCate Blanchett\nHugo Weaving\nChristopher Lee\nBilly Connolly\nIan Holm\nJames Nesbitt', 'xhtml', '<p>The Hobbit: The Battle of the Five Armies&nbsp;brings to an epic conclusion the adventures of Bilbo Baggins, Thorin Oakenshield and the Company of Dwarves. Having reclaimed their homeland from the Dragon Smaug, the Company has unwittingly unleashed a deadly force into the world. Enraged, Smaug rains his fiery wrath down upon the defenseless men, women and children of Lake-town.</p>\n\n<p>Obsessed above all else with his reclaimed treasure, Thorin sacrifices friendship and honor to hoard it as Bilbo&#39;s frantic attempts to make him see reason drive the Hobbit towards a desperate and dangerous choice. But there are even greater dangers ahead. Unseen by any but the Wizard Gandalf, the great enemy Sauron has sent forth legions of Orcs in a stealth attack upon the Lonely Mountain.</p>\n\n<p>As darkness converges on their escalating conflict, the races of Dwarves, Elves and Men must decide unite or be destroyed. Bilbo finds himself fighting for his life and the lives of his friends in the epic Battle of the Five Armies, as the future of Middle-earth hangs in the balance.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'J.R.R. Tolkien, Peter Jackson, Fran Walsh', 'none', '', NULL),
(16, 1, 1, 'hobbit-movie-poster-01.jpg', 'none', 'Peter Jackson', 'none', '', 'none', 'Ian McKellen\nMartin Freeman\nRichard Armitage\nRichard Armitage\nBenedict Cumberbatch\nEvangeline Lilly\nLee Pace\nLuke Evans\nKen Stott\nJames Nesbitt\nOrlando Bloom', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla mauris vitae varius tincidunt. Cras auctor egestas tortor, in placerat nisi viverra in. Duis ut magna vitae nisl tempus posuere. Nam luctus felis vehicula viverra volutpat. Maecenas eget nisl malesuada, finibus lectus in, dapibus eros. Sed tristique turpis quis fringilla mattis. Cras eget magna quis mauris tincidunt vestibulum non a leo. Duis et dolor vestibulum, commodo nisl et, tincidunt risus. Nullam sodales molestie massa sed interdum.</p>\n\n<p>Etiam quis sapien tempus, rhoncus massa eu, placerat dui. Vivamus cursus odio nisl. Duis feugiat augue urna, ac rutrum mi bibendum ut. Vestibulum sollicitudin hendrerit sapien, id blandit lectus posuere vitae. Nulla semper lacinia lorem, at lobortis dolor. Curabitur nec vulputate felis, et tincidunt justo. Etiam magna nibh, consectetur vel magna at, tempus sagittis massa. Quisque non ipsum elit. Curabitur ultricies massa pellentesque lectus pulvinar, vel hendrerit justo feugiat. Phasellus eleifend malesuada mauris. Mauris feugiat venenatis condimentum. Integer sagittis malesuada neque, at luctus nunc commodo nec. Ut tincidunt sed turpis at iaculis. Nullam vehicula ligula nec rhoncus luctus. Morbi pulvinar ex sit amet felis aliquam sodales. Suspendisse consequat purus odio, vitae laoreet nibh blandit at.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'J. R. R. Tolkien, Fran Walsh, Philippa Boyens, Peter Jackson, Guillermo del Toro', 'none', '', NULL),
(17, 1, 2, 'american-horror-story-box.jpg', 'none', 'Ryan Murphy, Brad Falchuk', 'none', '', 'none', 'Connie Britton\nDylan McDermott\nEvan Peters\nTaissa Farmiga\nDenis O''Hare\nJessica Lange\nZachary Quinto\nJoseph Fiennes\nSarah Paulson\nLily Rabe\nLizzie Brocheré\nJames Cromwell\nFrances Conroy\nEmma Roberts\nKathy Bates\nMichael Chiklis\nFinn Wittrock\nAngela Bassett', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Brad Falchuk, Ryan Murphy, Jennifer Salt, Jessica Sharzer, Tim Minear, James Wong, Douglas Petrie, John J. Gray, Crystal Liu', 'none', '', NULL),
(18, 1, 2, 'seinfeld-box-01.jpg', 'none', 'Art Wolff, Tom Cherones, Andy Ackerman, David Steinberg', 'none', '', 'none', 'Jerry Seinfeld\nJulia Louis-Dreyfus\nMichael Richards\nJason Alexander', 'xhtml', '<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Larry David, Jerry Seinfeld', 'none', '', NULL),
(19, 1, 2, 'oitnb-box-01.jpg', 'none', 'Jenji Kohan', 'none', '', 'none', 'Taylor Schilling\nLaura Prepon\nMichael J. Harney\nMichelle Hurst\nKate Mulgrew\nJason Biggs\nUzo Aduba\nDanielle Brooks\nNatasha Lyonne\nTaryn Manning\nSelenis Leyva\nAdrienne C. Moore\nDascha Polanco\nNick Sandow\nYael Stone\nSamira Wiley', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jenji Kohan', 'none', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_entries_autosave`
--

CREATE TABLE `exp_channel_entries_autosave` (
`entry_id` int(10) unsigned NOT NULL,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_fields`
--

CREATE TABLE `exp_channel_fields` (
`field_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_fields`
--

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`) VALUES
(1, 1, 1, 'media_cover', 'Cover Image', '', 'assets', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToxIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToieSI7czo5OiJzaG93X2NvbHMiO2E6MTp7aTowO3M6NDoibmFtZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(2, 1, 1, 'media_director', 'Directed By', '', 'text', '', '0', 0, 0, 2, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 2, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(3, 1, 1, 'media_external', 'Around the Web', '', 'matrix', '', '0', 0, 0, 2, 128, 'n', 'ltr', 'y', 'n', 'none', 'n', 6, 'any', 'YTozOntzOjg6Im1pbl9yb3dzIjtzOjE6IjAiO3M6ODoibWF4X3Jvd3MiO3M6MDoiIjtzOjc6ImNvbF9pZHMiO2E6NDp7aTowO3M6MToiMSI7aToxO3M6MToiNCI7aToyO3M6MToiMiI7aTozO3M6MToiMyI7fX0='),
(4, 1, 1, 'media_starring', 'Starring', '', 'fieldpack_list', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'xhtml', 'n', 4, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(5, 1, 1, 'media_summary', 'Summary', '', 'wygwam', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(6, 1, 2, 'article_body', 'Body', '', 'wygwam', '', '0', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 2, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(7, 1, 2, 'article_summary', 'Summary', 'Optional. If no summary is provided, an excerpt will be taken from the article body.', 'textarea', '', '0', 0, 0, 3, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(8, 1, 2, 'article_tags', 'Tags', '', 'tag', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 4, 'any', 'YToxMDp7czo4OiJhbGxfb3BlbiI7czoyOiJubyI7czoxMjoic3VnZ2VzdF9mcm9tIjtzOjU6Imdyb3VwIjtzOjk6InRhZ19ncm91cCI7czoxOiIyIjtzOjEzOiJ0b3BfdGFnX2xpbWl0IjtzOjE6IjUiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(9, 1, 2, 'article_image', 'Featured Image', '', 'assets', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToyIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToieSI7czo5OiJzaG93X2NvbHMiO2E6MTp7aTowO3M6NDoibmFtZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(10, 1, 2, 'article_related_media', 'Related Media', '', 'playa', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YToxMzp7czo1OiJtdWx0aSI7czoxOiJuIjtzOjc6ImV4cGlyZWQiO3M6MToibiI7czo2OiJmdXR1cmUiO3M6MToieSI7czo4OiJlZGl0YWJsZSI7czoxOiJuIjtzOjg6ImNoYW5uZWxzIjthOjI6e2k6MDtzOjE6IjEiO2k6MTtzOjE6IjIiO31zOjc6Im9yZGVyYnkiO3M6NToidGl0bGUiO3M6NDoic29ydCI7czozOiJBU0MiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(11, 1, 2, 'article_author', 'Author', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(12, 1, 1, 'media_writer', 'Written By', '', 'text', '', '0', 0, 0, 6, 0, 'y', 'ltr', 'y', 'n', 'none', 'n', 3, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(13, 1, 3, 'page_body', 'Body', '', 'wygwam', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_form_settings`
--

CREATE TABLE `exp_channel_form_settings` (
`channel_form_settings_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_member_groups`
--

CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_member_groups`
--

INSERT INTO `exp_channel_member_groups` (`group_id`, `channel_id`) VALUES
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `exp_channel_titles`
--

CREATE TABLE `exp_channel_titles` (
`entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_titles`
--

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`) VALUES
(1, 1, 4, 1, NULL, '::1', 'Submit a Question', 'ask', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114600, '2015', '01', '24', 0, 0, 20150126053218, 0, 0),
(2, 1, 4, 1, NULL, '::1', 'About Us', 'about-us', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114660, '2015', '01', '24', 0, 0, 20150126052915, 0, 0),
(3, 1, 4, 1, NULL, '::1', 'Terms & Conditions', 'terms-and-conditions', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114780, '2015', '01', '24', 0, 0, 20150126052813, 0, 0),
(4, 1, 4, 1, NULL, '::1', 'Privacy Policy', 'privacy-policy', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114780, '2015', '01', '24', 0, 0, 20150126052846, 0, 0),
(5, 1, 3, 1, NULL, '::1', 'Testing Article 1', 'testing-article-1', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422157980, '2015', '01', '24', 0, 0, 20150126092559, 0, 0),
(6, 1, 1, 1, NULL, '::1', 'Birdman', 'birdman', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1413518400, '2014', '10', '17', 0, 0, 20150126073100, 0, 0),
(7, 1, 3, 1, NULL, '::1', 'Testing Article 2', 'testing-article-2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422166260, '2015', '01', '25', 0, 0, 20150125071903, 0, 0),
(8, 1, 3, 1, NULL, '::1', 'Testing Article 3', 'testing-article-3', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422166500, '2015', '01', '25', 0, 0, 20150126092545, 0, 0),
(9, 1, 3, 1, NULL, '::1', 'Testing Article 4', 'testing-article-4', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422166560, '2015', '01', '25', 0, 0, 20150126092531, 0, 0),
(10, 1, 3, 1, NULL, '::1', 'Testing Article 5', 'testing-article-5', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422166620, '2015', '01', '25', 0, 0, 20150126092521, 0, 0),
(11, 1, 3, 1, NULL, '::1', 'Testing Article 6', 'testing-article-6', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422170160, '2015', '01', '25', 0, 0, 20150125071809, 0, 0),
(12, 1, 3, 1, NULL, '::1', 'Testing Article 7', 'testing-article-7', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422170880, '2015', '01', '25', 0, 0, 20150126092453, 0, 0),
(13, 1, 3, 1, NULL, '::1', 'Testing Article 8', 'testing-article-8', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422171360, '2015', '01', '25', 0, 0, 20150126092438, 0, 0),
(14, 1, 3, 1, NULL, '::1', 'Testing Article 9', 'testing-article-9', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422172260, '2015', '01', '25', 0, 0, 20150126092422, 0, 0),
(15, 1, 1, 1, NULL, '::1', 'The Hobbit: The Battle of the Five Armies', 'the-hobbit-the-battle-of-the-five-armies', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1418792400, '2014', '12', '17', 0, 0, 20150126065349, 0, 0),
(16, 1, 1, 1, NULL, '::1', 'The Hobbit: The Desolation of Smaug', 'the-hobbit-the-desolation-of-smaug', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1385960400, '2013', '12', '02', 0, 0, 20150126071904, 0, 0),
(17, 1, 2, 1, NULL, '::1', 'American Horror Story', 'american-horror-story', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1317787200, '2011', '10', '05', 0, 0, 20150126075407, 0, 0),
(18, 1, 2, 1, NULL, '::1', 'Seinfeld', 'seinfeld', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 615614400, '1989', '07', '05', 0, 0, 20150126075818, 0, 0),
(19, 1, 2, 1, NULL, '::1', 'Orange is the New Black', 'orange-is-the-new-black', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1373515200, '2013', '07', '11', 0, 0, 20150126080815, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_content_types`
--

CREATE TABLE `exp_content_types` (
`content_type_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_content_types`
--

INSERT INTO `exp_content_types` (`content_type_id`, `name`) VALUES
(1, 'grid'),
(2, 'channel');

-- --------------------------------------------------------

--
-- Table structure for table `exp_cp_log`
--

CREATE TABLE `exp_cp_log` (
`id` int(10) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_cp_log`
--

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`) VALUES
(1, 1, 1, 'kentonquatman@gmail.com', '::1', 1422059991, 'Logged in'),
(2, 1, 1, 'kentonquatman@gmail.com', '::1', 1422060014, 'Logged out'),
(3, 1, 1, 'kentonquatman@gmail.com', '::1', 1422105603, 'Logged in'),
(4, 1, 1, 'kentonquatman@gmail.com', '::1', 1422108103, 'Field Group Created:&nbsp;Media'),
(5, 1, 1, 'kentonquatman@gmail.com', '::1', 1422111020, 'Category Group Created:&nbsp;&nbsp;Genre'),
(6, 1, 1, 'kentonquatman@gmail.com', '::1', 1422111159, 'Channel Created:&nbsp;&nbsp;Film'),
(7, 1, 1, 'kentonquatman@gmail.com', '::1', 1422111185, 'Channel Created:&nbsp;&nbsp;Television'),
(8, 1, 1, 'kentonquatman@gmail.com', '::1', 1422111252, 'Field Group Created:&nbsp;Article'),
(9, 1, 1, 'kentonquatman@gmail.com', '::1', 1422112737, 'Channel Created:&nbsp;&nbsp;Article'),
(10, 1, 1, 'kentonquatman@gmail.com', '::1', 1422113106, 'Category Group Created:&nbsp;&nbsp;Article Type'),
(11, 1, 1, 'kentonquatman@gmail.com', '::1', 1422113925, 'Member Group Updated:&nbsp;&nbsp;Authors'),
(12, 1, 1, 'kentonquatman@gmail.com', '::1', 1422114464, 'Field Group Created:&nbsp;Pages'),
(13, 1, 1, 'kentonquatman@gmail.com', '::1', 1422114527, 'Channel Created:&nbsp;&nbsp;Pages'),
(14, 1, 1, 'kentonquatman@gmail.com', '::1', 1422115743, 'Logged in'),
(15, 1, 1, 'kentonquatman@gmail.com', '::1', 1422115750, 'Logged in'),
(16, 1, 1, 'kentonquatman@gmail.com', '::1', 1422115754, 'Logged in'),
(17, 1, 1, 'kentonquatman@gmail.com', '::1', 1422115762, 'Logged out'),
(18, 1, 1, 'kentonquatman@gmail.com', '::1', 1422120464, 'Logged in'),
(19, 1, 1, 'kentonquatman@gmail.com', '::1', 1422123632, 'Logged out'),
(20, 1, 1, 'kentonquatman@gmail.com', '::1', 1422153950, 'Logged in'),
(21, 1, 1, 'kentonquatman@gmail.com', '::1', 1422168546, 'Upload Preference Deleted:&nbsp;&nbsp;Featured Image'),
(22, 1, 1, 'kentonquatman@gmail.com', '::1', 1422233024, 'Logged in'),
(23, 1, 1, 'kentonquatman@gmail.com', '::1', 1422233033, 'Logged out'),
(24, 1, 1, 'kentonquatman@gmail.com', '::1', 1422233102, 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `exp_cp_search_index`
--

CREATE TABLE `exp_cp_search_index` (
`search_id` int(10) unsigned NOT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_developer_log`
--

CREATE TABLE `exp_developer_log` (
`log_id` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_developer_log`
--

INSERT INTO `exp_developer_log` (`log_id`, `timestamp`, `viewed`, `description`, `function`, `line`, `file`, `deprecated_since`, `use_instead`, `template_id`, `template_name`, `template_group`, `addon_module`, `addon_method`, `snippets`, `hash`) VALUES
(1, 1422107326, 'n', NULL, 'add_to_head()', 123, 'system/expressionengine/third_party/zoo_flexible_admin/mcp.zoo_flexible_admin.php', '2.8', 'CP::add_to_foot() for scripts', 0, NULL, NULL, NULL, NULL, NULL, '507d1de1b40c4617454248ad8f2e002f'),
(2, 1422115762, 'n', NULL, 'set_cookie()', 140, 'system/expressionengine/third_party/mountee/libraries/EE_Cocoa.php', '2.8', 'EE_Input::set_cookie()', 0, NULL, NULL, NULL, NULL, NULL, '7c337d621944ab3586bb5f6d9d3d56ea'),
(3, 1422115762, 'n', NULL, 'set_cookie()', 764, 'system/expressionengine/libraries/Functions.php', '2.8', 'EE_Input::delete_cookie()', 0, NULL, NULL, NULL, NULL, NULL, 'fe7f51992a03148e3c5d898db4cf6112');

-- --------------------------------------------------------

--
-- Table structure for table `exp_email_cache`
--

CREATE TABLE `exp_email_cache` (
`cache_id` int(6) unsigned NOT NULL,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_email_cache_mg`
--

CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_email_cache_ml`
--

CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_email_console_cache`
--

CREATE TABLE `exp_email_console_cache` (
`cache_id` int(6) unsigned NOT NULL,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_email_tracker`
--

CREATE TABLE `exp_email_tracker` (
`email_id` int(10) unsigned NOT NULL,
  `email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(45) NOT NULL,
  `sender_email` varchar(75) NOT NULL,
  `sender_username` varchar(50) NOT NULL,
  `number_recipients` int(4) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_entry_versioning`
--

CREATE TABLE `exp_entry_versioning` (
`version_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_extensions`
--

CREATE TABLE `exp_extensions` (
`extension_id` int(10) unsigned NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_extensions`
--

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`) VALUES
(1, 'Rte_ext', 'myaccount_nav_setup', 'myaccount_nav_setup', '', 10, '1.0.1', 'y'),
(2, 'Rte_ext', 'cp_menu_array', 'cp_menu_array', '', 10, '1.0.1', 'y'),
(3, 'Assets_ext', 'channel_entries_query_result', 'channel_entries_query_result', '', 10, '2.5', 'y'),
(4, 'Assets_ext', 'file_after_save', 'file_after_save', '', 9, '2.5', 'y'),
(5, 'Assets_ext', 'files_after_delete', 'files_after_delete', '', 8, '2.5', 'y'),
(6, 'Low_variables_ext', 'sessions_end', 'sessions_end', 'a:9:{s:11:"license_key";s:36:"5c345d58-9748-4005-8258-f824973c60ac";s:10:"can_manage";a:2:{i:0;s:1:"5";i:1;s:1:"1";}s:11:"clear_cache";s:1:"n";s:16:"register_globals";s:1:"n";s:20:"register_member_data";s:1:"n";s:13:"save_as_files";s:1:"n";s:9:"file_path";s:0:"";s:12:"one_way_sync";s:1:"n";s:13:"enabled_types";a:20:{i:0;s:6:"assets";i:1;s:12:"low_checkbox";i:2;s:18:"low_checkbox_group";i:3;s:14:"fieldpack_list";i:4;s:14:"fieldpack_pill";i:5;s:16:"fieldpack_switch";i:6;s:8:"low_grid";i:7;s:6:"matrix";i:8;s:5:"playa";i:9;s:15:"low_radio_group";i:10;s:10:"low_select";i:11;s:21:"low_select_categories";i:12;s:19:"low_select_channels";i:13;s:18:"low_select_entries";i:14;s:16:"low_select_files";i:15;s:9:"low_table";i:16;s:14:"low_text_input";i:17;s:7:"low_rte";i:18;s:6:"wygwam";i:19;s:12:"low_textarea";}}', 2, '2.5.0', 'y'),
(7, 'Low_variables_ext', 'template_fetch_template', 'template_fetch_template', 'a:9:{s:11:"license_key";s:36:"5c345d58-9748-4005-8258-f824973c60ac";s:10:"can_manage";a:2:{i:0;s:1:"5";i:1;s:1:"1";}s:11:"clear_cache";s:1:"n";s:16:"register_globals";s:1:"n";s:20:"register_member_data";s:1:"n";s:13:"save_as_files";s:1:"n";s:9:"file_path";s:0:"";s:12:"one_way_sync";s:1:"n";s:13:"enabled_types";a:20:{i:0;s:6:"assets";i:1;s:12:"low_checkbox";i:2;s:18:"low_checkbox_group";i:3;s:14:"fieldpack_list";i:4;s:14:"fieldpack_pill";i:5;s:16:"fieldpack_switch";i:6;s:8:"low_grid";i:7;s:6:"matrix";i:8;s:5:"playa";i:9;s:15:"low_radio_group";i:10;s:10:"low_select";i:11;s:21:"low_select_categories";i:12;s:19:"low_select_channels";i:13;s:18:"low_select_entries";i:14;s:16:"low_select_files";i:15;s:9:"low_table";i:16;s:14:"low_text_input";i:17;s:7:"low_rte";i:18;s:6:"wygwam";i:19;s:12:"low_textarea";}}', 2, '2.5.0', 'y'),
(8, 'Playa_ext', 'channel_entries_tagdata', 'channel_entries_tagdata', '', 9, '4.5.2', 'y'),
(9, 'Zoo_flexible_admin_ext', 'cp_css_end', 'cp_css_end', '', 1, '1.83', 'y'),
(10, 'Zoo_flexible_admin_ext', 'cp_js_end', 'cp_js_end', '', 1, '1.83', 'y'),
(11, 'Zoo_flexible_admin_ext', 'sessions_end', 'sessions_end', '', 1, '1.83', 'y'),
(12, 'Template_morsels_ext', 'refresh_morsels_from_channel', 'entry_submission_end', 'a:0:{}', 10, '1.7.3', 'y'),
(13, 'Template_morsels_ext', 'delete_entries_loop', 'delete_entries_loop', 'a:0:{}', 10, '1.7.3', 'y'),
(14, 'Template_morsels_ext', 'delete_entries_end', 'delete_entries_end', 'a:0:{}', 10, '1.7.3', 'y'),
(15, 'Template_morsels_ext', 'refresh_morsels_from_template', 'update_template_end', 'a:0:{}', 10, '1.7.3', 'y'),
(16, 'Template_morsels_ext', 'refresh_morsels_from_category', 'sessions_end', 'a:0:{}', 10, '1.7.3', 'y'),
(17, 'Template_morsels_ext', 'template_fetch_template', 'template_fetch_template', 'a:0:{}', 10, '1.7.3', 'y'),
(18, 'Template_morsels_ext', 'cp_js_end', 'cp_js_end', 'a:0:{}', 10, '1.7.3', 'y'),
(19, 'Matrix_ext', 'channel_entries_tagdata', 'channel_entries_tagdata', '', 10, '2.6.1', 'y'),
(20, 'Tag_ext', 'delete_entries_start', 'delete_entries_start', 'a:0:{}', 4, '4.2.8', 'y'),
(21, 'Tag_ext', 'sessions_end', 'sessions_end', 'a:0:{}', 4, '4.2.8', 'y'),
(22, 'Tag_ext', 'entry_submission_end', 'entry_submission_end', 'a:0:{}', 4, '4.2.8', 'y'),
(23, 'Tag_ext', 'cp_js_end', 'cp_js_end', 'a:0:{}', 4, '4.2.8', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `exp_fieldtypes`
--

CREATE TABLE `exp_fieldtypes` (
`fieldtype_id` int(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_fieldtypes`
--

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`) VALUES
(1, 'select', '1.0', 'YTowOnt9', 'n'),
(2, 'text', '1.0', 'YTowOnt9', 'n'),
(3, 'textarea', '1.0', 'YTowOnt9', 'n'),
(4, 'date', '1.0', 'YTowOnt9', 'n'),
(5, 'file', '1.0', 'YTowOnt9', 'n'),
(6, 'grid', '1.0', 'YTowOnt9', 'n'),
(7, 'multi_select', '1.0', 'YTowOnt9', 'n'),
(8, 'checkboxes', '1.0', 'YTowOnt9', 'n'),
(9, 'radio', '1.0', 'YTowOnt9', 'n'),
(10, 'relationship', '1.0', 'YTowOnt9', 'n'),
(11, 'rte', '1.0', 'YTowOnt9', 'n'),
(12, 'assets', '2.5', 'YToxOntzOjExOiJsaWNlbnNlX2tleSI7czozNjoiNTc0YzRkNWMtNzRhYS00ZGExLWFhYWYtMTgzN2I0OWM4MDRlIjt9', 'y'),
(13, 'low_variables', '2.5.0', 'YTowOnt9', 'n'),
(14, 'playa', '4.5.2', 'YToyOntzOjExOiJsaWNlbnNlX2tleSI7czozNjoiMGY0ODE1Y2EtNzU4Ny00OTJjLWJkY2ItNzEyMjJkMWQyN2MwIjtzOjEwOiJmaWx0ZXJfbWluIjtzOjI6IjIwIjt9', 'y'),
(15, 'wygwam', '3.3.3', 'YToyOntzOjExOiJsaWNlbnNlX2tleSI7czozNjoiMTU1NzFmZWQtYTUzZi00M2MxLWEwZTAtZTE2M2ZiOWI5YTUzIjtzOjEyOiJmaWxlX2Jyb3dzZXIiO3M6NjoiYXNzZXRzIjt9', 'y'),
(16, 'matrix', '2.6.1', 'YToxOntzOjExOiJsaWNlbnNlX2tleSI7czozNjoiMzA5MTRlOGUtYzgzMi00MzU1LWE4MDgtYjZmMTc3ZTdmMTNkIjt9', 'y'),
(17, 'fieldpack_checkboxes', '2.2', 'YTowOnt9', 'n'),
(18, 'fieldpack_dropdown', '2.2', 'YTowOnt9', 'n'),
(19, 'fieldpack_list', '2.2', 'YTowOnt9', 'n'),
(20, 'fieldpack_multiselect', '2.2', 'YTowOnt9', 'n'),
(21, 'fieldpack_pill', '2.2', 'YTowOnt9', 'n'),
(22, 'fieldpack_radio_buttons', '2.2', 'YTowOnt9', 'n'),
(23, 'fieldpack_switch', '2.2', 'YTowOnt9', 'n'),
(24, 'tag', '4.2.8', 'YTowOnt9', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_field_formatting`
--

CREATE TABLE `exp_field_formatting` (
`formatting_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_field_formatting`
--

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`) VALUES
(1, 1, 'none'),
(2, 1, 'br'),
(3, 1, 'markdown'),
(4, 1, 'xhtml'),
(5, 2, 'none'),
(6, 2, 'br'),
(7, 2, 'markdown'),
(8, 2, 'xhtml'),
(9, 3, 'none'),
(10, 3, 'br'),
(11, 3, 'markdown'),
(12, 3, 'xhtml'),
(13, 4, 'none'),
(14, 4, 'br'),
(15, 4, 'markdown'),
(16, 4, 'xhtml'),
(17, 5, 'none'),
(18, 5, 'br'),
(19, 5, 'markdown'),
(20, 5, 'xhtml'),
(21, 6, 'none'),
(22, 6, 'br'),
(23, 6, 'markdown'),
(24, 6, 'xhtml'),
(25, 7, 'none'),
(26, 7, 'br'),
(27, 7, 'markdown'),
(28, 7, 'xhtml'),
(29, 8, 'none'),
(30, 8, 'br'),
(31, 8, 'markdown'),
(32, 8, 'xhtml'),
(33, 9, 'none'),
(34, 9, 'br'),
(35, 9, 'markdown'),
(36, 9, 'xhtml'),
(37, 10, 'none'),
(38, 10, 'br'),
(39, 10, 'markdown'),
(40, 10, 'xhtml'),
(41, 11, 'none'),
(42, 11, 'br'),
(43, 11, 'markdown'),
(44, 11, 'xhtml'),
(45, 12, 'none'),
(46, 12, 'br'),
(47, 12, 'markdown'),
(48, 12, 'xhtml'),
(49, 13, 'none'),
(50, 13, 'br'),
(51, 13, 'markdown'),
(52, 13, 'xhtml');

-- --------------------------------------------------------

--
-- Table structure for table `exp_field_groups`
--

CREATE TABLE `exp_field_groups` (
`group_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_field_groups`
--

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'Media'),
(2, 1, 'Article'),
(3, 1, 'Page');

-- --------------------------------------------------------

--
-- Table structure for table `exp_files`
--

CREATE TABLE `exp_files` (
`file_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_files`
--

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`) VALUES
(1, 1, 'hobbit-movie-poster-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/hobbit-movie-poster-01.jpg', 'image/jpeg', 'hobbit-movie-poster-01.jpg', 68033, NULL, NULL, NULL, 1, 1418946137, 1, 1418946137, '525 350'),
(2, 1, 'hobbit-movie-poster-02.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/hobbit-movie-poster-02.jpg', 'image/jpeg', 'hobbit-movie-poster-02.jpg', 63515, NULL, NULL, NULL, 1, 1418946137, 1, 1418946137, '519 350'),
(3, 1, 'birdman-poster-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/birdman-poster-01.jpg', 'image/jpeg', 'birdman-poster-01.jpg', 65198, NULL, NULL, NULL, 1, 1422158705, 1, 1422158705, '626 400'),
(4, 1, 'birdman-poster-00.jpg', 4, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/uploads/birdman-poster-00.jpg', 'image/jpeg', 'birdman-poster-00.jpg', 81842, NULL, NULL, NULL, 1, 1422158379, 1, 1422158379, '720 486'),
(5, 1, 'under-the-skin.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/under-the-skin.jpg', 'image/jpeg', 'under-the-skin.jpg', 1092334, NULL, NULL, NULL, 1, 1422168777, 1, 1422168777, '1080 1920'),
(6, 1, 'birdman-image.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/birdman-image.jpg', 'image/jpeg', 'birdman-image.jpg', 758290, NULL, NULL, NULL, 1, 1422169030, 1, 1422169030, '1080 1998'),
(7, 1, 'grand-budapest-image.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/grand-budapest-image.jpg', 'image/jpeg', 'grand-budapest-image.jpg', 811534, NULL, NULL, NULL, 1, 1422169114, 1, 1422169114, '800 1200'),
(8, 1, 'interstellar-image-01.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/interstellar-image-01.jpg', 'image/jpeg', 'interstellar-image-01.jpg', 222269, NULL, NULL, NULL, 1, 1422169714, 1, 1422169714, '540 1200'),
(9, 1, 'inherent-vice-01.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/inherent-vice-01.jpg', 'image/jpeg', 'inherent-vice-01.jpg', 193299, NULL, NULL, NULL, 1, 1422169909, 1, 1422169909, '1062 1888'),
(10, 1, 'babadook.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/babadook.jpg', 'image/jpeg', 'babadook.jpg', 269551, NULL, NULL, NULL, 1, 1422170280, 1, 1422170280, '1080 1920'),
(11, 1, 'selma-image-01.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/selma-image-01.jpg', 'image/jpeg', 'selma-image-01.jpg', 394659, NULL, NULL, NULL, 1, 1422170977, 1, 1422170977, '720 1201'),
(12, 1, 'nightcrawler-image-01.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/nightcrawler-image-01.jpg', 'image/jpeg', 'nightcrawler-image-01.jpg', 2162478, NULL, NULL, NULL, 1, 1422171416, 1, 1422171416, '1800 3000'),
(13, 1, 'boyhood-image-01.jpg', 2, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/boyhood-image-01.jpg', 'image/jpeg', 'boyhood-image-01.jpg', 484357, NULL, NULL, NULL, 1, 1422172360, 1, 1422172360, '730 1296'),
(14, 1, 'american-horror-story-box.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/american-horror-story-box.jpg', 'image/jpeg', 'american-horror-story-box.jpg', 143795, NULL, NULL, NULL, 1, 1422258488, 1, 1422258488, '800 538'),
(15, 1, 'seinfeld-box-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/seinfeld-box-01.jpg', 'image/jpeg', 'seinfeld-box-01.jpg', 88349, NULL, NULL, NULL, 1, 1422258983, 1, 1422258983, '520 350'),
(16, 1, 'oitnb-box-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/oitnb-box-01.jpg', 'image/jpeg', 'oitnb-box-01.jpg', 87710, NULL, NULL, NULL, 1, 1422259349, 1, 1422259349, '520 350');

-- --------------------------------------------------------

--
-- Table structure for table `exp_file_categories`
--

CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_file_dimensions`
--

CREATE TABLE `exp_file_dimensions` (
`id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_file_dimensions`
--

INSERT INTO `exp_file_dimensions` (`id`, `site_id`, `upload_location_id`, `title`, `short_name`, `resize_type`, `width`, `height`, `watermark_id`) VALUES
(1, 1, 1, '270x400', '270x400', 'crop', 270, 400, 0),
(2, 1, 1, '350x520', '350x520', 'crop', 350, 520, 0),
(3, 1, 2, '720x360', '720x360', 'crop', 720, 360, 0),
(4, 1, 2, '1080x360', '1080x360', 'crop', 1080, 360, 0),
(5, 1, 2, '720x270', '720x270', 'crop', 720, 270, 0),
(6, 1, 3, '800x450', '800x450', 'crop', 800, 450, 0),
(7, 1, 3, '120x120', '120x120', 'crop', 120, 120, 0),
(8, 1, 4, '600', '600', 'constrain', 600, 600, 0),
(9, 1, 2, '800x450', '800x450', 'crop', 800, 450, 0),
(10, 1, 2, '120x120', '120x120', 'crop', 120, 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_file_watermarks`
--

CREATE TABLE `exp_file_watermarks` (
`wm_id` int(4) unsigned NOT NULL,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_composer_layouts`
--

CREATE TABLE `exp_freeform_composer_layouts` (
`composer_id` int(10) unsigned NOT NULL,
  `composer_data` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preview` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_composer_templates`
--

CREATE TABLE `exp_freeform_composer_templates` (
`template_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `template_name` varchar(150) NOT NULL DEFAULT 'default',
  `template_label` varchar(150) NOT NULL DEFAULT 'default',
  `template_description` text,
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_data` text,
  `param_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_email_logs`
--

CREATE TABLE `exp_freeform_email_logs` (
`id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT 'user',
  `success` char(1) NOT NULL DEFAULT 'y',
  `from` text,
  `from_name` text,
  `to` text,
  `subject` text,
  `message` text,
  `debug_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_fields`
--

CREATE TABLE `exp_freeform_fields` (
`field_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `field_name` varchar(150) NOT NULL DEFAULT 'default',
  `field_label` varchar(150) NOT NULL DEFAULT 'default',
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `settings` text,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'n',
  `submissions_page` char(1) NOT NULL DEFAULT 'y',
  `moderation_page` char(1) NOT NULL DEFAULT 'y',
  `composer_use` char(1) NOT NULL DEFAULT 'y',
  `field_description` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_fields`
--

INSERT INTO `exp_freeform_fields` (`field_id`, `site_id`, `field_name`, `field_label`, `field_type`, `settings`, `author_id`, `entry_date`, `edit_date`, `required`, `submissions_page`, `moderation_page`, `composer_use`, `field_description`) VALUES
(1, 1, 'first_name', 'First Name', 'text', '{"field_length":150,"field_content_type":"any"}', 1, 1422106312, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s first name.'),
(2, 1, 'last_name', 'Last Name', 'text', '{"field_length":150,"field_content_type":"any"}', 1, 1422106312, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s last name.'),
(3, 1, 'email', 'Email', 'text', '{"field_length":150,"field_content_type":"email"}', 1, 1422106312, 0, 'n', 'y', 'y', 'y', 'A basic email field for collecting stuff like an email address.'),
(4, 1, 'user_message', 'Message', 'textarea', '{"field_ta_rows":6}', 1, 1422106312, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s message.');

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_fieldtypes`
--

CREATE TABLE `exp_freeform_fieldtypes` (
`fieldtype_id` int(10) unsigned NOT NULL,
  `fieldtype_name` varchar(250) DEFAULT NULL,
  `settings` text,
  `default_field` char(1) NOT NULL DEFAULT 'n',
  `version` varchar(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_fieldtypes`
--

INSERT INTO `exp_freeform_fieldtypes` (`fieldtype_id`, `fieldtype_name`, `settings`, `default_field`, `version`) VALUES
(1, 'file_upload', '[]', 'n', '4.2.0'),
(2, 'mailinglist', '[]', 'n', '4.2.0'),
(3, 'text', '[]', 'n', '4.2.0'),
(4, 'textarea', '[]', 'n', '4.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_file_uploads`
--

CREATE TABLE `exp_freeform_file_uploads` (
`file_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_path` varchar(750) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_forms`
--

CREATE TABLE `exp_freeform_forms` (
`form_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_name` varchar(150) NOT NULL DEFAULT 'default',
  `form_label` varchar(150) NOT NULL DEFAULT 'default',
  `default_status` varchar(150) NOT NULL DEFAULT 'default',
  `notify_user` char(1) NOT NULL DEFAULT 'n',
  `notify_admin` char(1) NOT NULL DEFAULT 'n',
  `user_email_field` varchar(150) NOT NULL DEFAULT '',
  `user_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_email` text,
  `form_description` text,
  `field_ids` text,
  `field_order` text,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `composer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_forms`
--

INSERT INTO `exp_freeform_forms` (`form_id`, `site_id`, `form_name`, `form_label`, `default_status`, `notify_user`, `notify_admin`, `user_email_field`, `user_notification_id`, `admin_notification_id`, `admin_notification_email`, `form_description`, `field_ids`, `field_order`, `template_id`, `composer_id`, `author_id`, `entry_date`, `edit_date`, `settings`) VALUES
(1, 1, 'contact', 'Contact', 'pending', 'n', 'y', '', 0, 1, 'kentonquatman@gmail.com', 'This is a basic contact form.', '1|2|3|4', NULL, 0, 0, 1, 1422106312, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_form_entries_1`
--

CREATE TABLE `exp_freeform_form_entries_1` (
`entry_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_2` text,
  `form_field_3` text,
  `form_field_4` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_form_entries_1`
--

INSERT INTO `exp_freeform_form_entries_1` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_1`, `form_field_2`, `form_field_3`, `form_field_4`) VALUES
(1, 1, 0, 'y', '127.0.0.1', 1422106312, 0, 'pending', 'Jake', 'Solspace', 'support@solspace.com', 'Welcome to Freeform. We hope that you will enjoy Solspace software.');

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_multipage_hashes`
--

CREATE TABLE `exp_freeform_multipage_hashes` (
`hash_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit` char(1) NOT NULL DEFAULT 'n',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_notification_templates`
--

CREATE TABLE `exp_freeform_notification_templates` (
`notification_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `notification_name` varchar(150) NOT NULL DEFAULT 'default',
  `notification_label` varchar(150) NOT NULL DEFAULT 'default',
  `notification_description` text,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `allow_html` char(1) NOT NULL DEFAULT 'n',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to_email` varchar(250) NOT NULL DEFAULT '',
  `email_subject` varchar(128) NOT NULL DEFAULT 'default',
  `include_attachments` char(1) NOT NULL DEFAULT 'n',
  `template_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_params`
--

CREATE TABLE `exp_freeform_params` (
`params_id` int(10) unsigned NOT NULL,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_preferences`
--

CREATE TABLE `exp_freeform_preferences` (
`preference_id` int(10) unsigned NOT NULL,
  `preference_name` varchar(80) DEFAULT NULL,
  `preference_value` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_preferences`
--

INSERT INTO `exp_freeform_preferences` (`preference_id`, `preference_name`, `preference_value`, `site_id`) VALUES
(1, 'ffp', 'n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_user_email`
--

CREATE TABLE `exp_freeform_user_email` (
`email_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_count` int(10) unsigned NOT NULL DEFAULT '0',
  `email_addresses` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_global_variables`
--

CREATE TABLE `exp_global_variables` (
`variable_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_global_variables`
--

INSERT INTO `exp_global_variables` (`variable_id`, `site_id`, `variable_name`, `variable_data`) VALUES
(1, 1, 'low_home_featured', '5|8|10|9|7'),
(2, 1, 'low_site_tagline', 'The hub for Film & TV analysis'),
(3, 1, 'low_twitter_link', 'https://twitter.com/screenprism'),
(4, 1, 'low_facebook_link', ''),
(5, 1, 'low_insights_seotitle', 'Insights'),
(6, 1, 'low_insights_seodescription', 'Description for the Insights landing page.'),
(7, 1, 'low_film_seotitle', 'Film'),
(8, 1, 'low_film_seodescription', 'SEO description for the Film landing page.'),
(9, 1, 'low_tv_seotitle', 'TV Shows'),
(10, 1, 'low_tv_seodescriptions', 'SEO description for the TV landing page.'),
(11, 1, 'low_home_seotitle', 'The hub for Film & TV analysis'),
(12, 1, 'low_home_seodescription', 'SEO description for the home page.');

-- --------------------------------------------------------

--
-- Table structure for table `exp_grid_columns`
--

CREATE TABLE `exp_grid_columns` (
`col_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_html_buttons`
--

CREATE TABLE `exp_html_buttons` (
`id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_html_buttons`
--

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`) VALUES
(1, 1, 0, 'b', '<strong>', '</strong>', 'b', 1, '1', 'btn_b'),
(2, 1, 0, 'i', '<em>', '</em>', 'i', 2, '1', 'btn_i'),
(3, 1, 0, 'blockquote', '<blockquote>', '</blockquote>', 'q', 3, '1', 'btn_blockquote'),
(4, 1, 0, 'a', '<a href="[![Link:!:http://]!]"(!( title="[![Title]!]")!)>', '</a>', 'a', 4, '1', 'btn_a'),
(5, 1, 0, 'img', '<img src="[![Link:!:http://]!]" alt="[![Alternative text]!]" />', '', '', 5, '1', 'btn_img');

-- --------------------------------------------------------

--
-- Table structure for table `exp_layout_publish`
--

CREATE TABLE `exp_layout_publish` (
`layout_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_layout_publish`
--

INSERT INTO `exp_layout_publish` (`layout_id`, `site_id`, `member_group`, `channel_id`, `field_layout`) VALUES
(6, 1, 1, 3, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:11;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:6;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:7;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:8;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:9;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:10;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(7, 1, 5, 3, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:11;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:6;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:7;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:8;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:9;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:10;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(19, 1, 1, 1, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(20, 1, 5, 1, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(21, 1, 1, 2, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(22, 1, 5, 2, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(23, 1, 1, 4, 'a:4:{s:7:"publish";a:5:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:13;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:7:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(24, 1, 5, 4, 'a:4:{s:7:"publish";a:5:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:13;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:7:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `exp_low_variables`
--

CREATE TABLE `exp_low_variables` (
  `variable_id` int(6) unsigned NOT NULL,
  `group_id` int(6) unsigned NOT NULL DEFAULT '0',
  `variable_label` varchar(100) NOT NULL DEFAULT '',
  `variable_notes` text NOT NULL,
  `variable_type` varchar(50) NOT NULL DEFAULT 'low_textarea',
  `variable_settings` text NOT NULL,
  `variable_order` int(4) unsigned NOT NULL DEFAULT '0',
  `early_parsing` char(1) NOT NULL DEFAULT 'n',
  `is_hidden` char(1) NOT NULL DEFAULT 'n',
  `save_as_file` char(1) NOT NULL DEFAULT 'n',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_low_variables`
--

INSERT INTO `exp_low_variables` (`variable_id`, `group_id`, `variable_label`, `variable_notes`, `variable_type`, `variable_settings`, `variable_order`, `early_parsing`, `is_hidden`, `save_as_file`, `edit_date`) VALUES
(1, 1, 'Featured Articles', 'Select five entries to feature on the homepage.', 'low_select_entries', 'YToxMTp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czoxMDoiY2F0ZWdvcmllcyI7YToxOntpOjA7czowOiIiO31zOjg6InN0YXR1c2VzIjthOjE6e2k6MDtzOjQ6Im9wZW4iO31zOjc6Im9yZGVyYnkiO3M6MTA6ImVudHJ5X2RhdGUiO3M6NDoic29ydCI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MToiMCI7czo4OiJtdWx0aXBsZSI7czoxOiJ5IjtzOjk6InNlcGFyYXRvciI7czo0OiJwaXBlIjtzOjE1OiJtdWx0aV9pbnRlcmZhY2UiO3M6OToiZHJhZy1saXN0IjtzOjExOiJzaG93X2Z1dHVyZSI7czowOiIiO3M6MTI6InNob3dfZXhwaXJlZCI7czowOiIiO30', 3, 'n', 'n', 'n', 1422244228),
(2, 2, 'Tagline', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo1OiJsYXJnZSI7czo3OiJwYXR0ZXJuIjtzOjA6IiI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjt9', 1, 'n', 'n', 'n', 1422245060),
(3, 3, 'Twitter URL', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422246358),
(4, 3, 'Facebook URL', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 2, 'n', 'n', 'n', 1422246358),
(5, 4, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422242936),
(6, 4, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422242936),
(7, 5, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422243029),
(8, 5, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422243029),
(9, 6, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422243115),
(10, 6, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422243115),
(11, 1, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422244228),
(12, 1, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422244228);

-- --------------------------------------------------------

--
-- Table structure for table `exp_low_variable_groups`
--

CREATE TABLE `exp_low_variable_groups` (
`group_id` int(6) unsigned NOT NULL,
  `site_id` int(6) unsigned NOT NULL DEFAULT '1',
  `group_label` varchar(100) NOT NULL DEFAULT '',
  `group_notes` text NOT NULL,
  `group_order` int(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_low_variable_groups`
--

INSERT INTO `exp_low_variable_groups` (`group_id`, `site_id`, `group_label`, `group_notes`, `group_order`) VALUES
(1, 1, 'Home Page', '', 1),
(2, 1, 'Site Variables', '', 6),
(3, 1, 'Social Media', '', 5),
(4, 1, 'Insights', '', 2),
(5, 1, 'Film', '', 3),
(6, 1, 'Television', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `exp_matrix_cols`
--

CREATE TABLE `exp_matrix_cols` (
`col_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT '1',
  `field_id` int(6) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_instructions` text,
  `col_type` varchar(50) DEFAULT 'text',
  `col_required` char(1) DEFAULT 'n',
  `col_search` char(1) DEFAULT 'n',
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_width` varchar(4) DEFAULT NULL,
  `col_settings` text
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_matrix_cols`
--

INSERT INTO `exp_matrix_cols` (`col_id`, `site_id`, `field_id`, `var_id`, `col_name`, `col_label`, `col_instructions`, `col_type`, `col_required`, `col_search`, `col_order`, `col_width`, `col_settings`) VALUES
(1, 1, 3, NULL, 'media_link_title', 'Title', '', 'text', 'y', 'n', 0, '20%', 'YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),
(2, 1, 3, NULL, 'media_link_source', 'Source', '', 'text', 'y', 'n', 2, '20%', 'YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),
(3, 1, 3, NULL, 'media_link_url', 'Link URL', '', 'text', 'y', 'n', 3, '20%', 'YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),
(4, 1, 3, NULL, 'media_link_summary', 'Summary', '', 'text', 'y', 'n', 1, '40%', 'YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30=');

-- --------------------------------------------------------

--
-- Table structure for table `exp_matrix_data`
--

CREATE TABLE `exp_matrix_data` (
`row_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT NULL,
  `field_id` int(6) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `is_draft` tinyint(1) unsigned DEFAULT '0',
  `row_order` int(4) unsigned DEFAULT NULL,
  `col_id_1` text,
  `col_id_2` text,
  `col_id_3` text,
  `col_id_4` text
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_matrix_data`
--

INSERT INTO `exp_matrix_data` (`row_id`, `site_id`, `entry_id`, `field_id`, `var_id`, `is_draft`, `row_order`, `col_id_1`, `col_id_2`, `col_id_3`, `col_id_4`) VALUES
(1, 1, 6, 3, NULL, 0, 1, 'The irreducible element of Michael Keaton', 'thedissolve.com', 'http://thedissolve.com/features/exposition/792-the-irreducible-element-of-michael-keaton/', 'In an entertaining installment of Grantland’s “B.S. Report” podcast last year, Bill Simmons and Wesley Morris examined Jodie Foster’s filmography in an attempt to determine if she was, in the site’s parlance, “Overrated, Underrated, or Properly Rated.”'),
(2, 1, 15, 3, NULL, 0, 1, 'Sheila O''Malley''s Review for Ebert Digital', 'rogerebert.com', 'http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.'),
(3, 1, 15, 3, NULL, 0, 2, 'Tasha Robinson''s Review for The Dissolve', 'thedissolve.com', 'http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.');

-- --------------------------------------------------------

--
-- Table structure for table `exp_members`
--

CREATE TABLE `exp_members` (
`member_id` int(10) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_members`
--

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`) VALUES
(1, 1, 'kentonquatman@gmail.com', 'Kenton Quatman', '0371a309f01a48fb8e273f4aec6c37ce00ce76e45e8e36bd6f73c5bb7fb2a502a2d6c2247ea69ec694b5b4568a0737232a19193f3f55b4340123309261b421af', 'AU9$a!"N/0Cl+-`d?NoWa|taOo8?Ags<}].WkaeN3sRTH}{G,nxb*WCdq3X`Seq?iKt<%UM"6kq14:J<MaLGgH|"G&R-L6<(I~fVEqWqs7C;}w8GXQ}nnlgh#r]a?[2B', '66bc3fcde266a6b8fc0e630b9801f24d15ea26c1', '578a986efcd2746fef1a4797dd52708697ca3f7c', NULL, 'kentonquatman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '::1', 1422059926, 1422176505, 1422264634, 19, 0, 0, 0, 1422259695, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/New_York', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', '', 'Template Morsels|C=addons_modules&M=show_module_cp&module=template_morsels|1\nGlobals|C=addons_modules&M=show_module_cp&module=low_variables|2', 'n', 0, 'y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_bulletin_board`
--

CREATE TABLE `exp_member_bulletin_board` (
`bulletin_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_data`
--

CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_member_data`
--

INSERT INTO `exp_member_data` (`member_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_fields`
--

CREATE TABLE `exp_member_fields` (
`m_field_id` int(4) unsigned NOT NULL,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_groups`
--

CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_member_groups`
--

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`) VALUES
(1, 1, 'Super Admins', '', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', '', 'y', 'y', 'y', 0, 'y', 20, 60, 'y', 'y', 'y', 'y', 'y'),
(2, 1, 'Banned', '', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', '', 'n', 'n', 'n', 60, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(3, 1, 'Guests', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(4, 1, 'Pending', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(5, 1, 'Authors', '', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'n', '', 'n', 'n', 'y', 10, 'n', 20, 60, 'y', 'n', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_homepage`
--

CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_member_homepage`
--

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`) VALUES
(1, 'l', 1, 'l', 2, 'n', 0, 'r', 1, 'n', 0, 'r', 2, 'r', 0, 'l', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_member_search`
--

CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_message_attachments`
--

CREATE TABLE `exp_message_attachments` (
`attachment_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_message_copies`
--

CREATE TABLE `exp_message_copies` (
`copy_id` int(10) unsigned NOT NULL,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_message_data`
--

CREATE TABLE `exp_message_data` (
`message_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_message_folders`
--

CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_message_folders`
--

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`) VALUES
(1, 'InBox', 'Sent', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exp_message_listed`
--

CREATE TABLE `exp_message_listed` (
`listed_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_modules`
--

CREATE TABLE `exp_modules` (
`module_id` int(4) unsigned NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_modules`
--

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`) VALUES
(1, 'Email', '2.0', 'n', 'n'),
(2, 'Emoticon', '2.0', 'n', 'n'),
(3, 'Jquery', '1.0', 'n', 'n'),
(4, 'Pages', '2.2', 'y', 'y'),
(5, 'Rss', '2.0', 'n', 'n'),
(6, 'Search', '2.2.2', 'n', 'n'),
(7, 'Channel', '2.0.1', 'n', 'n'),
(8, 'Member', '2.1', 'n', 'n'),
(9, 'Stats', '2.0', 'n', 'n'),
(10, 'Rte', '1.0.1', 'y', 'n'),
(11, 'Assets', '2.5', 'y', 'n'),
(12, 'Ajw_datagrab', '1.8.0', 'y', 'n'),
(13, 'Freeform', '4.2.0', 'y', 'n'),
(14, 'Low_variables', '2.5.0', 'y', 'n'),
(15, 'Playa', '4.5.2', 'n', 'n'),
(16, 'Zoo_flexible_admin', '1.83', 'y', 'n'),
(17, 'Wygwam', '3.3.3', 'y', 'n'),
(18, 'Template_morsels', '1.7.3', 'y', 'n'),
(19, 'Seo_lite', '1.4.9.3', 'y', 'y'),
(20, 'Reelocate', '1.3', 'y', 'n'),
(21, 'Mountee', '2.3', 'n', 'n'),
(22, 'Tag', '4.2.8', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `exp_module_member_groups`
--

CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_module_member_groups`
--

INSERT INTO `exp_module_member_groups` (`group_id`, `module_id`) VALUES
(5, 4),
(5, 11),
(5, 13),
(5, 14),
(5, 17),
(5, 19),
(5, 22);

-- --------------------------------------------------------

--
-- Table structure for table `exp_online_users`
--

CREATE TABLE `exp_online_users` (
`online_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_online_users`
--

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`) VALUES
(18, 1, 1, 'n', 'Kenton Quatman', '::1', 1422264543, ''),
(17, 1, 1, 'n', 'Kenton Quatman', '::1', 1422264543, ''),
(16, 1, 1, 'n', 'Kenton Quatman', '::1', 1422264543, ''),
(14, 1, 1, 'n', 'Kenton Quatman', '::1', 1422264543, ''),
(15, 1, 1, 'n', 'Kenton Quatman', '::1', 1422264543, '');

-- --------------------------------------------------------

--
-- Table structure for table `exp_pages_configuration`
--

CREATE TABLE `exp_pages_configuration` (
`configuration_id` int(10) unsigned NOT NULL,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_password_lockout`
--

CREATE TABLE `exp_password_lockout` (
`lockout_id` int(10) unsigned NOT NULL,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_playa_relationships`
--

CREATE TABLE `exp_playa_relationships` (
`rel_id` int(10) unsigned NOT NULL,
  `parent_entry_id` int(10) unsigned DEFAULT NULL,
  `parent_field_id` int(6) unsigned DEFAULT NULL,
  `parent_col_id` int(6) unsigned DEFAULT NULL,
  `parent_row_id` int(10) unsigned DEFAULT NULL,
  `parent_var_id` int(6) unsigned DEFAULT NULL,
  `parent_element_id` varchar(255) DEFAULT NULL,
  `parent_is_draft` int(1) unsigned DEFAULT '0',
  `child_entry_id` int(10) unsigned DEFAULT NULL,
  `rel_order` int(4) unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_playa_relationships`
--

INSERT INTO `exp_playa_relationships` (`rel_id`, `parent_entry_id`, `parent_field_id`, `parent_col_id`, `parent_row_id`, `parent_var_id`, `parent_element_id`, `parent_is_draft`, `child_entry_id`, `rel_order`) VALUES
(25, 5, 10, NULL, NULL, NULL, NULL, 0, 18, 0),
(13, 7, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(24, 8, 10, NULL, NULL, NULL, NULL, 0, 19, 0),
(23, 9, 10, NULL, NULL, NULL, NULL, 0, 17, 0),
(22, 10, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(12, 11, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(21, 12, 10, NULL, NULL, NULL, NULL, 0, 16, 0),
(20, 13, 10, NULL, NULL, NULL, NULL, 0, 15, 0),
(19, 14, 10, NULL, NULL, NULL, NULL, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_relationships`
--

CREATE TABLE `exp_relationships` (
`relationship_id` int(6) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_remember_me`
--

CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_reset_password`
--

CREATE TABLE `exp_reset_password` (
`reset_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_revision_tracker`
--

CREATE TABLE `exp_revision_tracker` (
`tracker_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_rte_tools`
--

CREATE TABLE `exp_rte_tools` (
`tool_id` int(10) unsigned NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_rte_tools`
--

INSERT INTO `exp_rte_tools` (`tool_id`, `name`, `class`, `enabled`) VALUES
(1, 'Blockquote', 'Blockquote_rte', 'y'),
(2, 'Bold', 'Bold_rte', 'y'),
(3, 'Headings', 'Headings_rte', 'y'),
(4, 'Image', 'Image_rte', 'y'),
(5, 'Italic', 'Italic_rte', 'y'),
(6, 'Link', 'Link_rte', 'y'),
(7, 'Ordered List', 'Ordered_list_rte', 'y'),
(8, 'Underline', 'Underline_rte', 'y'),
(9, 'Unordered List', 'Unordered_list_rte', 'y'),
(10, 'View Source', 'View_source_rte', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `exp_rte_toolsets`
--

CREATE TABLE `exp_rte_toolsets` (
`toolset_id` int(10) unsigned NOT NULL,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_rte_toolsets`
--

INSERT INTO `exp_rte_toolsets` (`toolset_id`, `member_id`, `name`, `tools`, `enabled`) VALUES
(1, 0, 'Default', '3|2|5|1|9|7|6|4|10', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `exp_search`
--

CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_search_log`
--

CREATE TABLE `exp_search_log` (
`id` int(10) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_security_hashes`
--

CREATE TABLE `exp_security_hashes` (
`hash_id` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_security_hashes`
--

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`) VALUES
(2, 1422105604, '05696510b45662cd098c8d303129ae77bc2fdafc', '0f3c82031f3142e0f8805b412bc7e5fd8bd2953d'),
(5, 1422153950, '758c220726a2e81cf6c4c564c8dfb2b7410fa0df', '2d7bb8f5be4fad2d0ad20176ff732809ee9f6bde'),
(7, 1422233102, '4eb590729eb41e431a20234ce60e963937bd375e', '0c1cc1d2581563e5377f642a794acfef6ed51095');

-- --------------------------------------------------------

--
-- Table structure for table `exp_seolite_config`
--

CREATE TABLE `exp_seolite_config` (
`seolite_config_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned DEFAULT NULL,
  `template` text,
  `default_keywords` varchar(1024) NOT NULL,
  `default_description` varchar(1024) NOT NULL,
  `default_title_postfix` varchar(60) NOT NULL,
  `include_pagination_in_canonical` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_seolite_config`
--

INSERT INTO `exp_seolite_config` (`seolite_config_id`, `site_id`, `template`, `default_keywords`, `default_description`, `default_title_postfix`, `include_pagination_in_canonical`) VALUES
(1, 1, '<title>{title}{site_name}</title>\n<meta content="{meta_description}" name="description">\n<meta content="{meta_keywords}" name="keywords">\n<meta content="{site_name}" name="author">\n<meta content="{title}{site_name}" name="DC.title">\n<meta content="{meta_description}" name="DC.subject">\n<meta content="{site_name}" name="DC.creator">\n<meta content="{site_url}assets/img/fav/facebook.png" property="og:image">\n<meta content="{title}{site_name}" property="og:title">\n<meta content="{meta_description}" property="og:description">\n<meta content="{canonical_url}" property="og:url">\n<link content="{canonical_url}" rel="canonical">', 'film, tv, analysis, screenprism, movies', 'Default SEO description', '&nbsp;|&nbsp;', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_seolite_content`
--

CREATE TABLE `exp_seolite_content` (
`seolite_content_id` int(10) unsigned NOT NULL,
  `site_id` int(10) NOT NULL,
  `entry_id` int(10) NOT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` text
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_seolite_content`
--

INSERT INTO `exp_seolite_content` (`seolite_content_id`, `site_id`, `entry_id`, `title`, `keywords`, `description`) VALUES
(1, 1, 1, '', '', ''),
(2, 1, 2, '', '', ''),
(3, 1, 3, '', '', ''),
(4, 1, 4, '', '', ''),
(5, 1, 5, '', '', ''),
(6, 1, 6, '', '', ''),
(7, 1, 7, '', '', ''),
(8, 1, 8, '', '', ''),
(9, 1, 9, '', '', ''),
(10, 1, 10, '', '', ''),
(11, 1, 11, '', '', ''),
(12, 1, 12, '', '', ''),
(13, 1, 13, '', '', ''),
(14, 1, 14, '', '', ''),
(15, 1, 15, '', '', ''),
(16, 1, 16, '', '', ''),
(17, 1, 17, '', '', ''),
(18, 1, 18, '', '', ''),
(19, 1, 19, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exp_sessions`
--

CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_sessions`
--

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `fingerprint`, `sess_start`, `last_activity`) VALUES
('4eb590729eb41e431a20234ce60e963937bd375e', 1, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '99a4a03f3905c15f0ed353c0da7589b4', 1422263331, 1422264635);

-- --------------------------------------------------------

--
-- Table structure for table `exp_sites`
--

CREATE TABLE `exp_sites` (
`site_id` int(5) unsigned NOT NULL,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_sites`
--

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`, `site_pages`) VALUES
(1, 'ScreenPrism', 'default_site', NULL, 'YTo4OTp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjM6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvIjtzOjE2OiJ0aGVtZV9mb2xkZXJfdXJsIjtzOjMwOiJodHRwOi8vc2NyZWVucHJpc20uZGV2L3RoZW1lcy8iO3M6MTU6IndlYm1hc3Rlcl9lbWFpbCI7czoyMzoia2VudG9ucXVhdG1hbkBnbWFpbC5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjM5OiJodHRwOi8vc2NyZWVucHJpc20uZGV2L2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfcGF0aCI7czo3NDoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfZm9udCI7czoxOiJ5IjtzOjEyOiJjYXB0Y2hhX3JhbmQiO3M6MToieSI7czoyMzoiY2FwdGNoYV9yZXF1aXJlX21lbWJlcnMiO3M6MToibiI7czoxNzoiZW5hYmxlX2RiX2NhY2hpbmciO3M6MToibiI7czoxODoiZW5hYmxlX3NxbF9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImZvcmNlX3F1ZXJ5X3N0cmluZyI7czoxOiJuIjtzOjEzOiJzaG93X3Byb2ZpbGVyIjtzOjE6Im4iO3M6MTg6InRlbXBsYXRlX2RlYnVnZ2luZyI7czoxOiJ5IjtzOjE1OiJpbmNsdWRlX3NlY29uZHMiO3M6MToibiI7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czoyMDoid2Vic2l0ZV9zZXNzaW9uX3R5cGUiO3M6MToiYyI7czoxNToiY3Bfc2Vzc2lvbl90eXBlIjtzOjI6ImNzIjtzOjIxOiJhbGxvd191c2VybmFtZV9jaGFuZ2UiO3M6MToieSI7czoxODoiYWxsb3dfbXVsdGlfbG9naW5zIjtzOjE6InkiO3M6MTY6InBhc3N3b3JkX2xvY2tvdXQiO3M6MToieSI7czoyNToicGFzc3dvcmRfbG9ja291dF9pbnRlcnZhbCI7czoxOiIxIjtzOjIwOiJyZXF1aXJlX2lwX2Zvcl9sb2dpbiI7czoxOiJ5IjtzOjIyOiJyZXF1aXJlX2lwX2Zvcl9wb3N0aW5nIjtzOjE6InkiO3M6MjQ6InJlcXVpcmVfc2VjdXJlX3Bhc3N3b3JkcyI7czoxOiJuIjtzOjE5OiJhbGxvd19kaWN0aW9uYXJ5X3B3IjtzOjE6InkiO3M6MjM6Im5hbWVfb2ZfZGljdGlvbmFyeV9maWxlIjtzOjA6IiI7czoxNzoieHNzX2NsZWFuX3VwbG9hZHMiO3M6MToieSI7czoxNToicmVkaXJlY3RfbWV0aG9kIjtzOjg6InJlZGlyZWN0IjtzOjk6ImRlZnRfbGFuZyI7czo3OiJlbmdsaXNoIjtzOjg6InhtbF9sYW5nIjtzOjI6ImVuIjtzOjEyOiJzZW5kX2hlYWRlcnMiO3M6MToieSI7czoxMToiZ3ppcF9vdXRwdXQiO3M6MToibiI7czoxMzoibG9nX3JlZmVycmVycyI7czoxOiJuIjtzOjEzOiJtYXhfcmVmZXJyZXJzIjtzOjM6IjUwMCI7czoxMToiZGF0ZV9mb3JtYXQiO3M6ODoiJW4vJWovJXkiO3M6MTE6InRpbWVfZm9ybWF0IjtzOjI6IjEyIjtzOjEzOiJzZXJ2ZXJfb2Zmc2V0IjtzOjA6IiI7czoyMToiZGVmYXVsdF9zaXRlX3RpbWV6b25lIjtzOjE2OiJBbWVyaWNhL05ld19Zb3JrIjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjE5OiJkZW55X2R1cGxpY2F0ZV9kYXRhIjtzOjE6InkiO3M6MjQ6InJlZGlyZWN0X3N1Ym1pdHRlZF9saW5rcyI7czoxOiJuIjtzOjE2OiJlbmFibGVfY2Vuc29yaW5nIjtzOjE6Im4iO3M6MTQ6ImNlbnNvcmVkX3dvcmRzIjtzOjA6IiI7czoxODoiY2Vuc29yX3JlcGxhY2VtZW50IjtzOjA6IiI7czoxMDoiYmFubmVkX2lwcyI7czowOiIiO3M6MTM6ImJhbm5lZF9lbWFpbHMiO3M6MDoiIjtzOjE2OiJiYW5uZWRfdXNlcm5hbWVzIjtzOjA6IiI7czoxOToiYmFubmVkX3NjcmVlbl9uYW1lcyI7czowOiIiO3M6MTA6ImJhbl9hY3Rpb24iO3M6ODoicmVzdHJpY3QiO3M6MTE6ImJhbl9tZXNzYWdlIjtzOjM0OiJUaGlzIHNpdGUgaXMgY3VycmVudGx5IHVuYXZhaWxhYmxlIjtzOjE1OiJiYW5fZGVzdGluYXRpb24iO3M6MjE6Imh0dHA6Ly93d3cueWFob28uY29tLyI7czoxNjoiZW5hYmxlX2Vtb3RpY29ucyI7czoxOiJ5IjtzOjEyOiJlbW90aWNvbl91cmwiO3M6Mzg6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvaW1hZ2VzL3NtaWxleXMvIjtzOjE5OiJyZWNvdW50X2JhdGNoX3RvdGFsIjtzOjQ6IjEwMDAiO3M6MTc6Im5ld192ZXJzaW9uX2NoZWNrIjtzOjE6InkiO3M6MTc6ImVuYWJsZV90aHJvdHRsaW5nIjtzOjE6Im4iO3M6MTc6ImJhbmlzaF9tYXNrZWRfaXBzIjtzOjE6InkiO3M6MTQ6Im1heF9wYWdlX2xvYWRzIjtzOjI6IjEwIjtzOjEzOiJ0aW1lX2ludGVydmFsIjtzOjE6IjgiO3M6MTI6ImxvY2tvdXRfdGltZSI7czoyOiIzMCI7czoxNToiYmFuaXNobWVudF90eXBlIjtzOjc6Im1lc3NhZ2UiO3M6MTQ6ImJhbmlzaG1lbnRfdXJsIjtzOjA6IiI7czoxODoiYmFuaXNobWVudF9tZXNzYWdlIjtzOjUwOiJZb3UgaGF2ZSBleGNlZWRlZCB0aGUgYWxsb3dlZCBwYWdlIGxvYWQgZnJlcXVlbmN5LiI7czoxNzoiZW5hYmxlX3NlYXJjaF9sb2ciO3M6MToieSI7czoxOToibWF4X2xvZ2dlZF9zZWFyY2hlcyI7czozOiI1MDAiO3M6MTc6InRoZW1lX2ZvbGRlcl9wYXRoIjtzOjY1OiIvVXNlcnMva2VudG9ucXVhdG1hbi9TaXRlcy9maWxtcHJpc20uZGV2L2RldmVsb3BtZW50L2h0bWwvdGhlbWVzLyI7czoxMDoiaXNfc2l0ZV9vbiI7czoxOiJ5IjtzOjExOiJydGVfZW5hYmxlZCI7czoxOiJ5IjtzOjIyOiJydGVfZGVmYXVsdF90b29sc2V0X2lkIjtzOjE6IjEiO3M6MTI6ImNhY2hlX2RyaXZlciI7czo0OiJmaWxlIjt9', 'YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==', 'YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6Mzg6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo3MzoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9hdmF0YXJzLyI7czoxNjoiYXZhdGFyX21heF93aWR0aCI7czozOiIxMDAiO3M6MTc6ImF2YXRhcl9tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMzoiYXZhdGFyX21heF9rYiI7czoyOiI1MCI7czoxMzoiZW5hYmxlX3Bob3RvcyI7czoxOiJuIjtzOjk6InBob3RvX3VybCI7czo0NDoiaHR0cDovL3NjcmVlbnByaXNtLmRldi9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTA6InBob3RvX3BhdGgiO3M6Nzk6Ii9Vc2Vycy9rZW50b25xdWF0bWFuL1NpdGVzL2ZpbG1wcmlzbS5kZXYvZGV2ZWxvcG1lbnQvaHRtbC9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo1MjoiaHR0cDovL3NjcmVlbnByaXNtLmRldi9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjg3OiIvVXNlcnMva2VudG9ucXVhdG1hbi9TaXRlcy9maWxtcHJpc20uZGV2L2RldmVsb3BtZW50L2h0bWwvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czo4MDoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9wbV9hdHRhY2htZW50cy8iO3M6MjM6InBydl9tc2dfbWF4X2F0dGFjaG1lbnRzIjtzOjE6IjMiO3M6MjI6InBydl9tc2dfYXR0YWNoX21heHNpemUiO3M6MzoiMjUwIjtzOjIwOiJwcnZfbXNnX2F0dGFjaF90b3RhbCI7czozOiIxMDAiO3M6MTk6InBydl9tc2dfaHRtbF9mb3JtYXQiO3M6NDoic2FmZSI7czoxODoicHJ2X21zZ19hdXRvX2xpbmtzIjtzOjE6InkiO3M6MTc6InBydl9tc2dfbWF4X2NoYXJzIjtzOjQ6IjYwMDAiO3M6MTk6Im1lbWJlcmxpc3Rfb3JkZXJfYnkiO3M6MTE6InRvdGFsX3Bvc3RzIjtzOjIxOiJtZW1iZXJsaXN0X3NvcnRfb3JkZXIiO3M6NDoiZGVzYyI7czoyMDoibWVtYmVybGlzdF9yb3dfbGltaXQiO3M6MjoiMjAiO30=', 'YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToibiI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjE6Ii8iO30=', 'YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJ5IjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=', 'YToxOntzOjY3OiIvVXNlcnMva2VudG9ucXVhdG1hbi9TaXRlcy9maWxtcHJpc20uZGV2L2RldmVsb3BtZW50L2h0bWwvaW5kZXgucGhwIjtzOjMyOiI5MmJlMTRkYWEwMTRmNGU3YTUzYjUxOTk5M2IyYTIyNyI7fQ==', 'YToxOntpOjE7YTozOntzOjM6InVybCI7czoyMzoiaHR0cDovL3NjcmVlbnByaXNtLmRldi8iO3M6NDoidXJpcyI7YTo0OntpOjE7czo0OiIvYXNrIjtpOjM7czoyMToiL3Rlcm1zLWFuZC1jb25kaXRpb25zIjtpOjQ7czoxNToiL3ByaXZhY3ktcG9saWN5IjtpOjI7czo2OiIvYWJvdXQiO31zOjk6InRlbXBsYXRlcyI7YTo0OntpOjE7czoyOiIxMSI7aTozO3M6MjoiMTAiO2k6NDtzOjI6IjEwIjtpOjI7czoyOiIxMCI7fX19');

-- --------------------------------------------------------

--
-- Table structure for table `exp_snippets`
--

CREATE TABLE `exp_snippets` (
`snippet_id` int(10) unsigned NOT NULL,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_snippets`
--

INSERT INTO `exp_snippets` (`snippet_id`, `site_id`, `snippet_name`, `snippet_contents`) VALUES
(1, 1, 'svg_sprite', '<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>');

-- --------------------------------------------------------

--
-- Table structure for table `exp_specialty_templates`
--

CREATE TABLE `exp_specialty_templates` (
`template_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_specialty_templates`
--

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`) VALUES
(1, 1, 'y', 'offline_template', '', '<html>\n<head>\n\n<title>System Offline</title>\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),
(2, 1, 'y', 'message_template', '', '<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=''content-type'' content=''text/html; charset={charset}'' />\n\n{meta_refresh}\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),
(3, 1, 'y', 'admin_notify_reg', 'Notification of new member registration', 'New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),
(4, 1, 'y', 'admin_notify_entry', 'A new channel entry has been posted', 'A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),
(5, 1, 'y', 'admin_notify_mailinglist', 'Someone has subscribed to your mailing list', 'A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),
(6, 1, 'y', 'admin_notify_comment', 'You have just received a comment', 'You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),
(7, 1, 'y', 'mbr_activation_instructions', 'Enclosed is your activation code', 'Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),
(8, 1, 'y', 'forgot_password_instructions', 'Login information', '{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),
(9, 1, 'y', 'validated_member_notify', 'Your membership account has been activated', '{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),
(10, 1, 'y', 'decline_member_validation', 'Your membership account has been declined', '{name},\n\nWe''re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),
(11, 1, 'y', 'mailinglist_activation_instructions', 'Email Confirmation', 'Thank you for joining the "{mailing_list}" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),
(12, 1, 'y', 'comment_notification', 'Someone just responded to your comment', '{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
(13, 1, 'y', 'comments_opened_notification', 'New comments have been added', 'Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),
(14, 1, 'y', 'private_message_notification', 'Someone has sent you a Private Message', '\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),
(15, 1, 'y', 'pm_inbox_full', 'Your private message mailbox is full', '{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');

-- --------------------------------------------------------

--
-- Table structure for table `exp_stats`
--

CREATE TABLE `exp_stats` (
`stat_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_stats`
--

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`) VALUES
(1, 1, 1, 1, 'Kenton Quatman', 19, 0, 0, 0, 1422172260, 0, 0, 1422264543, 7, 1422173389, 1422710582);

-- --------------------------------------------------------

--
-- Table structure for table `exp_statuses`
--

CREATE TABLE `exp_statuses` (
`status_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_statuses`
--

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`) VALUES
(1, 1, 1, 'open', 1, '009933'),
(2, 1, 1, 'closed', 2, '990000');

-- --------------------------------------------------------

--
-- Table structure for table `exp_status_groups`
--

CREATE TABLE `exp_status_groups` (
`group_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_status_groups`
--

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'Statuses');

-- --------------------------------------------------------

--
-- Table structure for table `exp_status_no_access`
--

CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_bad_tags`
--

CREATE TABLE `exp_tag_bad_tags` (
`tag_id` int(10) unsigned NOT NULL,
  `tag_name` varchar(150) NOT NULL,
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL,
  `edit_date` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_entries`
--

CREATE TABLE `exp_tag_entries` (
  `entry_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `channel_id` smallint(3) unsigned NOT NULL,
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT 'channel',
  `tag_group_id` int(10) unsigned NOT NULL DEFAULT '1',
  `remote` char(1) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_entries`
--

INSERT INTO `exp_tag_entries` (`entry_id`, `tag_id`, `channel_id`, `site_id`, `author_id`, `ip_address`, `type`, `tag_group_id`, `remote`) VALUES
(11, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(11, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(7, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(7, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(14, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(14, 3, 3, 1, 1, '::1', 'channel', 2, 'n'),
(13, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(13, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(12, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(10, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(10, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(9, 1, 3, 1, 1, '::1', 'channel', 2, 'n'),
(9, 2, 3, 1, 1, '::1', 'channel', 2, 'n'),
(5, 1, 3, 1, 1, '::1', 'channel', 2, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_groups`
--

CREATE TABLE `exp_tag_groups` (
`tag_group_id` int(10) unsigned NOT NULL,
  `tag_group_name` varchar(150) NOT NULL,
  `tag_group_short_name` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_groups`
--

INSERT INTO `exp_tag_groups` (`tag_group_id`, `tag_group_name`, `tag_group_short_name`) VALUES
(1, 'default', 'default'),
(2, 'Article', 'Article');

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_preferences`
--

CREATE TABLE `exp_tag_preferences` (
`tag_preference_id` int(10) unsigned NOT NULL,
  `tag_preference_name` varchar(100) NOT NULL,
  `tag_preference_value` varchar(100) NOT NULL,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_preferences`
--

INSERT INTO `exp_tag_preferences` (`tag_preference_id`, `tag_preference_name`, `tag_preference_value`, `site_id`) VALUES
(1, 'separator', 'comma', 1),
(2, 'convert_case', 'n', 1),
(3, 'enable_tag_form', 'y', 1),
(4, 'allow_tag_creation_publish', 'y', 1),
(5, 'publish_entry_tag_limit', '0', 1),
(6, 'explode_input_on_separator', 'n', 1),
(7, 'enable_explode_controls', 'n', 1),
(8, '3_publish_tab_label', '', 1),
(9, '3_tag_field', '11', 1),
(10, '1_publish_tab_label', '', 1),
(11, '1_tag_field', '1', 1),
(12, '4_publish_tab_label', '', 1),
(13, '4_tag_field', '13', 1),
(14, '2_publish_tab_label', '', 1),
(15, '2_tag_field', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_subscriptions`
--

CREATE TABLE `exp_tag_subscriptions` (
  `tag_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_tags`
--

CREATE TABLE `exp_tag_tags` (
`tag_id` int(10) unsigned NOT NULL,
  `tag_alpha` char(3) NOT NULL,
  `tag_name` varchar(200) NOT NULL,
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL,
  `entry_date` int(10) NOT NULL,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `clicks` int(10) NOT NULL DEFAULT '0',
  `total_entries` int(10) NOT NULL DEFAULT '0',
  `total_entries_1` int(10) NOT NULL DEFAULT '0',
  `channel_entries` int(10) NOT NULL DEFAULT '0',
  `total_entries_2` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_tags`
--

INSERT INTO `exp_tag_tags` (`tag_id`, `tag_alpha`, `tag_name`, `site_id`, `author_id`, `entry_date`, `edit_date`, `clicks`, `total_entries`, `total_entries_1`, `channel_entries`, `total_entries_2`) VALUES
(1, 'T', 'Testing Tag', 1, 1, 1422166501, 1422264359, 10, 7, 0, 7, 7),
(2, 'T', 'Tag Test', 1, 1, 1422166501, 1422264331, 7, 6, 0, 6, 6),
(3, 'L', 'Lone Tag', 1, 1, 1422233869, 1422264262, 11, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exp_templates`
--

CREATE TABLE `exp_templates` (
`template_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_javascript` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_templates`
--

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`, `protect_javascript`) VALUES
(1, 1, 1, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_home_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{site_url}"\n  body_id="home"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="homepage_featured"}\n{exp:template_morsels:fetch name="homepage_recent"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422249654, 1, 'n', 0, '', 'n', 'n', 'o', 196, 'n'),
(6, 1, 5, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_insights_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_insights_seodescription''}"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_feed" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250710, 1, 'n', 0, '', 'n', 'n', 'o', 184, 'n'),
(7, 1, 5, 'tag', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_insights_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_insights_seodescription''}"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_tag_feed" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250716, 1, 'n', 0, '', 'n', 'n', 'o', 67, 'n'),
(8, 1, 5, 'article', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_article" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250701, 1, 'n', 0, '', 'n', 'n', 'o', 85, 'n'),
(10, 1, 1, 'page', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="page"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="simple_page" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250616, 1, 'n', 0, '', 'n', 'n', 'o', 29, 'n'),
(13, 1, 6, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_film_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_film_seodescription''}"\n  meta_url="{path=''film''}"\n  body_id="media"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_landing" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422256161, 1, 'n', 0, '', 'n', 'n', 'o', 83, 'n'),
(12, 1, 1, 'media', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="page"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_entry" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422264138, 1, 'n', 0, '', 'n', 'n', 'o', 42, 'n'),
(11, 1, 1, 'ask', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="ask"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main">\n  <article class="submit-form">\n    {exp:channel:entries\n      channel="pages"\n	  limit="1"\n	  cache="yes"\n	  refresh="1440"\n    }\n    <div class="form-top">\n      <header>\n        <h1>{title}</h1>\n      </header>\n      {page_body}\n    </div>\n    {/exp:channel:entries}\n    <form>\n      <textarea></textarea>\n      <input type="submit" value="Submit" />\n    </form>\n  </article>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250420, 1, 'n', 0, '', 'n', 'n', 'o', 6, 'n'),
(14, 1, 7, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_tv_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_tv_seodescription''}"\n  meta_url="{path=''tv''}"\n  body_id="media"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_landing" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422257688, 1, 'n', 0, '', 'n', 'n', 'o', 49, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_groups`
--

CREATE TABLE `exp_template_groups` (
`group_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_groups`
--

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`) VALUES
(1, 1, 'site', 1, 'y'),
(5, 1, 'insights', 2, 'n'),
(6, 1, 'film', 3, 'n'),
(7, 1, 'tv', 4, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_member_groups`
--

CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_morsels_cache`
--

CREATE TABLE `exp_template_morsels_cache` (
`cache_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `refreshes` int(10) unsigned NOT NULL DEFAULT '0',
  `rows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `morsel_name` varchar(150) NOT NULL DEFAULT '',
  `code` text,
  `notes` text,
  `morsel` mediumtext,
  `preparsed_snippet` char(1) NOT NULL DEFAULT 'n',
  `filetime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_morsels_cache`
--

INSERT INTO `exp_template_morsels_cache` (`cache_id`, `member_id`, `site_id`, `date`, `refresh`, `refreshes`, `rows`, `morsel_name`, `code`, `notes`, `morsel`, `preparsed_snippet`, `filetime`) VALUES
(1, 1, 1, 1422335936, 1440, 25, 20, 'head_landing', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>{meta_title} | {site_name}</title>\n  \n  <meta content="{meta_description}" name="description">\n  <meta content="{site_name}" name="author">\n\n  <meta content="{meta_title} | {site_name}" name="DC.title">\n  <meta content="{meta_description}" name="DC.subject">\n  <meta content="{site_name}" name="DC.creator">\n  \n  <meta content="{site_url}assets/img/fav/facebook.png" property="og:image">\n  <meta content="{meta_title} | {site_name}" property="og:title">\n  <meta content="{meta_description}" property="og:description">\n  <meta content="{meta_url}" property="og:url">\n  \n  <link content="{meta_url}" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="{site_url}assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="{site_url}assets/js/modernizr.js"></script>\n  \n  <link href="{site_url}assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="{site_url}assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n{svg_sprite}', '', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>{meta_title} | ScreenPrism</title>\n  \n  <meta content="{meta_description}" name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="{meta_title} | ScreenPrism" name="DC.title">\n  <meta content="{meta_description}" name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="{meta_title} | ScreenPrism" property="og:title">\n  <meta content="{meta_description}" property="og:description">\n  <meta content="{meta_url}" property="og:url">\n  \n  <link content="{meta_url}" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>', 'n', 1422249536),
(2, 1, 1, 1422336451, 1440, 19, 20, 'foot', '<footer class="site-footer">\n  <div class="inner">\n    <div class="footer-links">\n      <h1><a href="{site_url}">{site_name}</a></h1>\n      <ol class="legal-links">\n        <li><a href="{path=''terms-and-conditions''}">Terms &amp; Conditions</a></li>\n        <li><a href="{path=''privacy-policy''}">Privacy Policy</a></li>\n      </ol>\n      <ol class="social-links">\n      {exp:low_variables:pair var="low_facebook_link"}\n        {if low_facebook_link != ""}\n        <li>\n          <a href="{low_facebook_link}">\n            <svg viewBox="0 0 20 20" class="icon facebook-icon">\n              <use xlink:href="#facebook-icon"></use>\n            </svg>\n          </a>\n        </li>\n        {/if}\n      {/exp:low_variables:pair}\n      {exp:low_variables:pair var="low_twitter_link"}\n        {if low_twitter_link != ""}\n        <li>\n          <a href="{low_twitter_link}">\n            <svg viewBox="0 0 20 20" class="icon twitter-icon">\n              <use xlink:href="#twitter-icon"></use>\n            </svg>\n          </a>\n        </li>\n        {/if}\n      {/exp:low_variables:pair}\n      </ol>\n    </div>\n    <aside id="mailing-list" class="mailing-list">\n      <h5>Join our Mailing List</h5>\n      <form>\n        <input type="text" placeholder="Email Address">\n        <input type="submit" value="Subscribe">\n      </form>\n    </aside>\n    <small class="copyright">&copy; {current_time format="%Y"} {site_name}, LLC</small>\n  </div>\n</footer>\n\n<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>\n<script>!window.jQuery && document.write(unescape(''%3Cscript src="{site_url}assets/js/jquery.js"%3E%3C/script%3E''))</script>\n<script src="{site_url}assets/js/scripts.foot.deploy.js"></script>\n<!--[if (lt IE 9) & (!IEMobile)]>\n<script src="{site_url}assets/js/ie8.scripts.deploy.js"></script>\n<![endif]-->\n<!--[if (lt IE 8) & (!IEMobile)]>\n<script src=''assets/js/imgsizer.js''></script>\n<script>\n  addLoadEvent(function() {\n    if (document.getElementById && document.getElementsByTagName) {\n      var aImgs = document.getElementById("content").getElementsByTagName("img");\n      imgSizer.collate(aImgs);\n    }\n  });\n</script>\n<![endif]-->\n<script type="text/javascript">\n  var disqus_shortname = ''filmprism'';\n  (function () {\n    var s = document.createElement(''script''); s.async = true;\n    s.type = ''text/javascript'';\n    s.src = ''//'' + disqus_shortname + ''.disqus.com/count.js'';\n    (document.getElementsByTagName(''HEAD'')[0] || document.getElementsByTagName(''BODY'')[0]).appendChild(s);\n  }());\n</script>\n</body>\n</html>', '', '<footer class="site-footer">\n  <div class="inner">\n    <div class="footer-links">\n      <h1><a href="http://screenprism.dev/">ScreenPrism</a></h1>\n      <ol class="legal-links">\n        <li><a href="http://screenprism.dev/terms-and-conditions">Terms &amp; Conditions</a></li>\n        <li><a href="http://screenprism.dev/privacy-policy">Privacy Policy</a></li>\n      </ol>\n      <ol class="social-links">\n      \n      <li>\n          <a href="https://twitter.com/screenprism">\n            <svg viewBox="0 0 20 20" class="icon twitter-icon">\n              <use xlink:href="#twitter-icon"></use>\n            </svg>\n          </a>\n        </li>\n      </ol>\n    </div>\n    <aside id="mailing-list" class="mailing-list">\n      <h5>Join our Mailing List</h5>\n      <form>\n        <input type="text" placeholder="Email Address">\n        <input type="submit" value="Subscribe">\n      </form>\n    </aside>\n    <small class="copyright">&copy; 2015 ScreenPrism, LLC</small>\n  </div>\n</footer>\n\n<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>\n<script>!window.jQuery && document.write(unescape(''%3Cscript src="http://screenprism.dev/assets/js/jquery.js"%3E%3C/script%3E''))</script>\n<script src="http://screenprism.dev/assets/js/scripts.foot.deploy.js"></script>\n<!--[if (lt IE 9) & (!IEMobile)]>\n<script src="http://screenprism.dev/assets/js/ie8.scripts.deploy.js"></script>\n<![endif]-->\n<!--[if (lt IE 8) & (!IEMobile)]>\n<script src=''assets/js/imgsizer.js''></script>\n<script>\n  addLoadEvent(function() {\n    if (document.getElementById && document.getElementsByTagName) {\n      var aImgs = document.getElementById("content").getElementsByTagName("img");\n      imgSizer.collate(aImgs);\n    }\n  });\n</script>\n<![endif]-->\n<script type="text/javascript">\n  var disqus_shortname = ''filmprism'';\n  (function () {\n    var s = document.createElement(''script''); s.async = true;\n    s.type = ''text/javascript'';\n    s.src = ''//'' + disqus_shortname + ''.disqus.com/count.js'';\n    (document.getElementsByTagName(''HEAD'')[0] || document.getElementsByTagName(''BODY'')[0]).appendChild(s);\n  }());\n</script>\n</body>\n</html>', 'n', 1422250051),
(5, 1, 1, 1422350760, 1440, 42, 20, 'homepage_featured', '<section class="popular">\n  <div class="inner">\n    <h5 class="section-heading">Popular Articles</h5>\n    {exp:low_variables:parse}\n    {exp:channel:entries channel="articles" limit="5" fixed_order="{low_home_featured}" cache="yes" refresh="1440"}\n    {if count == 1}\n    <article class="featured">\n      <a href="{url_title_path=''insights/article''}">\n        {article_image}\n        <figure>\n          <img src="{url:800x450}" alt="{alt_text}">\n        </figure>\n        {/article_image}\n        <div class="summary">\n          <h3>{title}</h3>\n          <p>{article_summary}</p>\n          <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n        </div>\n      </a>\n    </article>\n    <ol class="article-list">\n    {if:else}\n      <li>\n        <a href="{url_title_path=''insights/article''}">\n          {article_image}\n          <figure>\n            <img src="{url:120x120}" alt="{alt_text}">\n          </figure>\n          {/article_image}\n          <div class="summary">\n            <h5>{title}</h5>\n            <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n          </div>\n        </a>\n      </li>\n    {/if}\n    {if count == total_results}</ol>{/if}\n    {/exp:channel:entries}\n    {/exp:low_variables:parse}\n  </div>\n</section>', '', '<section class="popular">\n  <div class="inner">\n    <h5 class="section-heading">Popular Articles</h5>\n    <article class="featured">\n      <a href="http://screenprism.dev/insights/article/testing-article-1">\n        \n        <figure>\n          <img src="http://screenprism.dev/assets/img/article/_800x450/under-the-skin.jpg" alt="">\n        </figure>\n        \n        <div class="summary">\n          <h3>Testing Article 1</h3>\n          <p>Nam vitae bibendum nunc. Donec pulvinar tincidunt mi, vitae convallis elit efficitur nec. Ut vitae diam vitae tortor vehicula tincidunt eu nec purus.</p>\n          <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-1">0</span></p>\n        </div>\n      </a>\n    </article>\n    <ol class="article-list"><li>\n        <a href="http://screenprism.dev/insights/article/testing-article-3">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_120x120/interstellar-image-01.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Testing Article 3</h5>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-3">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/insights/article/testing-article-5">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_120x120/birdman-image.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Testing Article 5</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-5">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/insights/article/testing-article-4">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_120x120/grand-budapest-image.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Testing Article 4</h5>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-4">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/insights/article/testing-article-2">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_120x120/inherent-vice-01.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Testing Article 2</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-2">0</span></p>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>', 'n', 1422246742),
(6, 1, 1, 1422350760, 1440, 42, 20, 'homepage_recent', '<section class="recent">\n  <div class="inner">\n    <h5 class="section-heading">Recent Articles</h5>\n    <ol class="article-list">\n	  {exp:channel:entries channel="articles" limit="12" cache="yes" refresh="1440" disable="category_fields|member_data|pagination"}\n      <li>\n        <a href="{url_title_path=''insights/article''}">\n          {article_image}\n          <figure>\n            <img src="{url:720x360}" alt="{alt_text}" />\n          </figure>\n          {/article_image}\n          <div class="summary">\n            <h3>{title}</h3>\n            <p>{article_summary}</p>\n            <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n          </div>\n        </a>\n      </li>\n	  {/exp:channel:entries}\n    </ol>\n    <a href="{path=''insights''}" class="button load">See More</a>\n  </div>\n</section>', '', '<section class="recent">\n  <div class="inner">\n    <h5 class="section-heading">Recent Articles</h5>\n    <ol class="article-list">\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-9">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/boyhood-image-01.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 9</h3>\n            <p>Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-8">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/nightcrawler-image-01.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 8</h3>\n            <p>Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna. Etiam vehicula rutrum nulla condimentum bibendum.</p>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-7">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/selma-image-01.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 7</h3>\n            <p>Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-6">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/babadook.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 6</h3>\n            <p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-6">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-5">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/birdman-image.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 5</h3>\n            <p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-5">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-4">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/grand-budapest-image.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 4</h3>\n            <p>Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue.</p>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-4">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-3">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/interstellar-image-01.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 3</h3>\n            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis.</p>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-3">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-2">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/inherent-vice-01.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 2</h3>\n            <p>Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-2">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://screenprism.dev/insights/article/testing-article-1">\n          \n          <figure>\n            <img src="http://screenprism.dev/assets/img/article/_720x360/under-the-skin.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Testing Article 1</h3>\n            <p>Nam vitae bibendum nunc. Donec pulvinar tincidunt mi, vitae convallis elit efficitur nec. Ut vitae diam vitae tortor vehicula tincidunt eu nec purus.</p>\n            <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-1">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n    </ol>\n    <a href="http://screenprism.dev/insights" class="button load">See More</a>\n  </div>\n</section>', 'n', 1422246742),
(7, 1, 1, 1422350760, 1440, 33, 20, 'insights_feed', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type {exp:channel:categories channel="articles" category_group="2" style="linear" backspace="1"}<a href="{path=''insights''}">{category_name}</a> {/exp:channel:categories}</p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      {exp:tag:cloud tag_group_id="2" orderby="count" websafe_separator="-"}\n      <option value="{path=''insights/tag''}/{websafe_tag}">{tag}</option>\n      {/exp:tag:cloud}\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    {exp:channel:entries\n      channel="articles"\n      limit="3"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    <article class="feature">\n      <h6>{categories}{category_name}{/categories}</h6>\n      {article_image}\n      <figure>\n        <a href="{url_title_path=''insights/article''}"><img src="{url:720x270}" alt="{alt_text}"></a>\n      </figure>\n      {/article_image}\n      <div class="summary">\n        <h2><a href="{url_title_path=''insights/article''}">{title}</a></h2>\n        <p>{article_summary}</p>\n      </div>\n      <footer>\n        <p><a href="{url_title_path=''insights/article''}"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    {paginate}\n    {if next_page}<a href="{auto_path}" class="button load">Load More</a>{/if}\n    {/paginate}\n    {/exp:channel:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type <a href="http://screenprism.dev/insights/category/article">Article</a> <a href="http://screenprism.dev/insights/category/q-and-a">Q & A</a></p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      \n      <option value="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</option>\n      \n      <option value="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</option>\n      \n      <option value="http://screenprism.dev/insights/tag/Lone-Tag">Lone Tag</option>\n      \n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://screenprism.dev/insights/article/testing-article-9"><img src="http://screenprism.dev/assets/img/article/_720x270/boyhood-image-01.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2><a href="http://screenprism.dev/insights/article/testing-article-9">Testing Article 9</a></h2>\n        <p>Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit.</p>\n      </div>\n      <footer>\n        <p><a href="http://screenprism.dev/insights/article/testing-article-9"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Article</h6>\n      \n      <figure>\n        <a href="http://screenprism.dev/insights/article/testing-article-8"><img src="http://screenprism.dev/assets/img/article/_720x270/nightcrawler-image-01.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2><a href="http://screenprism.dev/insights/article/testing-article-8">Testing Article 8</a></h2>\n        <p>Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna. Etiam vehicula rutrum nulla condimentum bibendum.</p>\n      </div>\n      <footer>\n        <p><a href="http://screenprism.dev/insights/article/testing-article-8"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Article</h6>\n      \n      <figure>\n        <a href="http://screenprism.dev/insights/article/testing-article-7"><img src="http://screenprism.dev/assets/img/article/_720x270/selma-image-01.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2><a href="http://screenprism.dev/insights/article/testing-article-7">Testing Article 7</a></h2>\n        <p>Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n      </div>\n      <footer>\n        <p><a href="http://screenprism.dev/insights/article/testing-article-7"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    <a href="http://screenprism.dev/cp/content_publish/entry_form/P3" class="button load">Load More</a>\n  </div>\n</section>', 'n', 1422247398),
(8, 1, 1, 1422350760, 1440, 29, 20, 'insights_tag_feed', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type {exp:channel:categories channel="articles" category_group="2" style="linear" backspace="1"}<a href="{path=''insights''}">{category_name}</a> {/exp:channel:categories}</p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      {exp:tag:cloud tag_group_id="2" orderby="count" websafe_separator="-"}\n      <option value="{path=''insights/tag''}/{websafe_tag}"{if segment_3 == websafe_tag} selected{/if}>{tag}</option>\n      {/exp:tag:cloud}\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    {exp:tag:entries\n      channel="articles"\n      limit="3"\n      inclusive="yes"\n      websafe_separator="-"\n      paginate="bottom"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    <article class="feature">\n      <h6>{categories}{category_name}{/categories}</h6>\n      {article_image}\n      <figure>\n        <a href="{url_title_path=''insights/article''}"><img src="{url:720x270}" alt="{alt_text}"></a>\n      </figure>\n      {/article_image}\n      <div class="summary">\n        <h2><a href="{url_title_path=''insights/article''}">{title}</a></h2>\n        <p>{article_summary}</p>\n      </div>\n      <footer>\n        <p><a href="{url_title_path=''insights/article''}"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    {tag_paginate}\n    {if next_page}<a href="{tag_auto_path}" class="button load">Load More</a>{/if}\n    {/tag_paginate}\n    {/exp:tag:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type <a href="http://screenprism.dev/insights/category/article">Article</a> <a href="http://screenprism.dev/insights/category/q-and-a">Q & A</a></p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</option><option value="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</option><option value="http://screenprism.dev/insights/tag/Lone-Tag">Lone Tag</option>\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    \n  </div>\n</section>', 'n', 1422247433),
(9, 1, 1, 1422350760, 1440, 23, 20, 'insights_article', '<section class="main">\n  <div class="content single thoughts feature">\n    {exp:channel:entries\n      channel="articles"\n      limit="1"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data|pagination"\n    }\n      {article_image}\n      <figure class="article-image">\n        <img src="{url:1080x360}" alt="Hero image">\n      </figure>\n      {/article_image}\n      <article>\n        <header>\n          <h1>{title}</h1>\n          {article_related_media}\n          <h5><a href="{url_title_path=''media''}">{title}</a></h5>\n          {/article_related_media}\n          <p class="by-line">{article_author} <span class="spacer">|</span> <time datetime="{entry_date format=''%Y-%m-%dT%H%i''}">{entry_date format="%F %j, %Y"}</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></a></p>\n        </header>\n        {article_body}\n        <footer>\n          <ul class="tags">\n          {exp:tag:tags case="title" websafe_separator="-"}\n            <li><a href="{path=''insights/tag''}/{websafe_tag}">{tag}</a></li>\n          {/exp:tag:tags}\n          </ul>\n        </footer>\n      </article>\n    {/exp:channel:entries}\n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          {exp:tag:related_entries channel="articles" limit="3"}\n            <li>\n              <a href="{url_title_path=''insights/article''}">\n                <h5>{title}</h5>\n                <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {/exp:tag:related_entries}\n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>', '', '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/boyhood-image-01.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 9</h1>\n          \n          <h5><a href="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies">The Hobbit: The Battle of the Five Armies</a></h5>\n          \n          <p class="by-line">Someone <span class="spacer">|</span> <time datetime="2015-01-25T0251">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></a></p>\n        </header>\n        <p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n\n<p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris. Mauris sit amet ligula mattis nibh malesuada hendrerit a et risus. Phasellus vel lectus at arcu fermentum porttitor et et libero. Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit. Praesent sem dolor, tincidunt at bibendum eu, fermentum a sem. Ut cursus, felis et varius scelerisque, nisi nulla molestie sapien, id fermentum libero mauris ac urna. Nullam bibendum vitae felis vel congue. Morbi quis tellus vel urna sagittis aliquam vitae faucibus mi. Nam consequat eu felis eu bibendum. Sed pulvinar pharetra arcu eget hendrerit.</p>\n        <footer>\n          <ul class="tags">\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>', 'n', 1422247129),
(10, 1, 1, 1422333142, 1440, 10, 20, 'header', '<header class="site-header">\n  <div class="header-top inner">\n    {exp:template_morsels:escape}\n    <form class="search-bar">\n      <input type="text" placeholder="Search by film title, genre, director&hellip;" />\n      <button><span>Search</span><svg viewBox="0 0 20 20" class="icon search-icon"><use xlink:href="#search-icon"></use></svg></button>\n    </form>\n    {/exp:template_morsels:escape}\n    <div class="logo-group">\n      <h1><a href="{path=''site_index''}">ScreenPrism</a></h1>\n      <p class="tagline">{exp:low_variables:single var=''low_site_tagline''}</p>\n    </div>\n  </div>\n  <div class="header-bottom">\n    <div class="inner">\n      <nav>\n        <ol class="site-nav">\n          <li class="insights"><a href="{path=''insights''}">Insights</a></li>\n          <li class="film"><a href="{path=''film''}">Film</a></li>\n          <li class="tv"><a href="{path=''tv''}">TV</a></li>\n          <li class="ask"><a href="{path=''ask''}">Ask</a></li>\n          <li class="about"><a href="{path=''about''}">About</a></li>\n          <li class="subscribe"><a href="#mailing-list">Email Subscribe</a></li>\n        </ol>\n      </nav>\n      <div class="header-links">\n        <div class="mailing-list">\n          <a href="#mailing-list">Email Subscribe</a>\n          <div class="form-wrapper">\n            <form>\n              <h6>Join Our Mailing List</h6>\n              <input type="text" placeholder="Email Address">\n              <input type="submit" value="Subscribe">\n            </form>\n          </div>\n        </div>\n        <ol class="social-links">\n          {exp:low_variables:pair var="low_facebook_link"}\n            {if low_facebook_link != ""}\n            <li>\n              <a href="{low_facebook_link}">\n                <svg viewBox="0 0 20 20" class="icon facebook-icon">\n                  <use xlink:href="#facebook-icon"></use>\n                </svg>\n              </a>\n            </li>\n            {/if}\n          {/exp:low_variables:pair}\n          {exp:low_variables:pair var="low_twitter_link"}\n            {if low_twitter_link != ""}\n            <li>\n              <a href="{low_twitter_link}">\n                <svg viewBox="0 0 20 20" class="icon twitter-icon">\n                  <use xlink:href="#twitter-icon"></use>\n                </svg>\n              </a>\n            </li>\n            {/if}\n          {/exp:low_variables:pair}\n        </ol>\n      </div>\n    </div>\n  </div>\n</header>', '', '<header class="site-header">\n  <div class="header-top inner">\n    \n    <form class="search-bar">\n      <input type="text" placeholder="Search by film title, genre, director&hellip;" />\n      <button><span>Search</span><svg viewBox="0 0 20 20" class="icon search-icon"><use xlink:href="#search-icon"></use></svg></button>\n    </form>\n    \n    <div class="logo-group">\n      <h1><a href="http://screenprism.dev/">ScreenPrism</a></h1>\n      <p class="tagline">The hub for Film & TV analysis</p>\n    </div>\n  </div>\n  <div class="header-bottom">\n    <div class="inner">\n      <nav>\n        <ol class="site-nav">\n          <li class="insights"><a href="http://screenprism.dev/insights">Insights</a></li>\n          <li class="film"><a href="http://screenprism.dev/film">Film</a></li>\n          <li class="tv"><a href="http://screenprism.dev/tv">TV</a></li>\n          <li class="ask"><a href="http://screenprism.dev/ask">Ask</a></li>\n          <li class="about"><a href="http://screenprism.dev/about">About</a></li>\n          <li class="subscribe"><a href="#mailing-list">Email Subscribe</a></li>\n        </ol>\n      </nav>\n      <div class="header-links">\n        <div class="mailing-list">\n          <a href="#mailing-list">Email Subscribe</a>\n          <div class="form-wrapper">\n            <form>\n              <h6>Join Our Mailing List</h6>\n              <input type="text" placeholder="Email Address">\n              <input type="submit" value="Subscribe">\n            </form>\n          </div>\n        </div>\n        <ol class="social-links">\n          \n          <li>\n              <a href="https://twitter.com/screenprism">\n                <svg viewBox="0 0 20 20" class="icon twitter-icon">\n                  <use xlink:href="#twitter-icon"></use>\n                </svg>\n              </a>\n            </li>\n        </ol>\n      </div>\n    </div>\n  </div>\n</header>', 'n', 1422246742);
INSERT INTO `exp_template_morsels_cache` (`cache_id`, `member_id`, `site_id`, `date`, `refresh`, `refreshes`, `rows`, `morsel_name`, `code`, `notes`, `morsel`, `preparsed_snippet`, `filetime`) VALUES
(11, 1, 1, 1422350760, 1440, 30, 20, 'head_entry', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  {exp:seo_lite use_last_segment="yes"}\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="{site_url}assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="{site_url}assets/js/modernizr.js"></script>\n  \n  <link href="{site_url}assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="{site_url}assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n{svg_sprite}', '', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/cp/content_publish/entry_form" property="og:url">\n<link content="http://screenprism.dev/cp/content_publish/entry_form" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>', 'n', 1422249499),
(12, 1, 1, 1422337016, 1440, 3, 20, 'simple_page', '<section class="main">\n  <div class="content single">\n    {exp:channel:entries\n      channel="pages"\n	  limit="1"\n	  cache="yes"\n	  refresh="1440"\n    }\n    <article>\n      <header>\n        <h1>{title}</h1>\n      </header>\n	  {page_body}\n    </article>\n	{/exp:channel:entries}\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n      <form>\n        <h5><label for="name">Your Name</label></h5>\n        <input type="text" id="name" name="name">\n        <h5><label for="email">E-Mail Address</label></h5>\n        <input type="text" id="email" name="email">\n        <h5><label for="subject">Subject</label></h5>\n        <input type="text" id="subject" name="subject">\n        <h5><label for="message">Message</label></h5>\n        <textarea id="message" name="message"></textarea>\n        <input type="submit" value="Send">\n      </form>\n    </aside>\n  </div>\n</section>', '', '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>Privacy Policy</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n      <form>\n        <h5><label for="name">Your Name</label></h5>\n        <input type="text" id="name" name="name">\n        <h5><label for="email">E-Mail Address</label></h5>\n        <input type="text" id="email" name="email">\n        <h5><label for="subject">Subject</label></h5>\n        <input type="text" id="subject" name="subject">\n        <h5><label for="message">Message</label></h5>\n        <textarea id="message" name="message"></textarea>\n        <input type="submit" value="Send">\n      </form>\n    </aside>\n  </div>\n</section>', 'n', 1422250526),
(13, 1, 1, 1422346449, 1440, 16, 20, 'media_landing', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="{path=''{segment_1}''}">Release Date</a> <a href="{path=''{segment_1}/title''}">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      {exp:channel:categories\n        category_group="1"\n        channel="film"\n        style="linear"\n        disable="category_fields"\n      }\n      <option {if segment_2 == "title"}value="{path=''{segment_1}/title''}"{if:else}value="{path=''{segment_1}''}"{/if}{if (segment_3 == category_url_title) OR (segment_4 == category_url_title)} selected{/if}>{category_name}</option>\n      {/exp:channel:categories}\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    {exp:channel:entries\n      {if segment_1 == "film"}\n        channel="film"\n      {/if}\n      {if segment_1 == "tv"}\n        channel="television"\n      {/if}\n      {if segment_2 == "title"}\n        orderby="title"\n        sort="asc"\n      {/if}\n      limit="2"\n      show_future_entries="yes"\n      paginate="bottom"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    {if count == 1}<ol>{/if}\n      <li>\n        <a href="{url_title_path=''media''}">\n          <figure>\n            {if media_cover != ""}\n              <img src="{media_cover:url:270x400}" alt="Media graphic">\n            {if:else}\n              <img src="{site_url}assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            {/if}\n          </figure>\n          <div class="details">\n            <h5>{title}</h5>\n          </div>\n        </a>\n      </li>\n    {if count == total_results}\n    </ol>\n    {paginate}\n      {if next_page}<a href="{auto_path}" class="button load">Load More</a>{/if}\n    {/paginate}\n    {/if}\n    {/exp:channel:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/cp">Release Date</a> <a href="http://screenprism.dev/cp/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/cp/category/comedy">Comedy</option><option value="http://screenprism.dev/cp/category/crime">Crime</option><option value="http://screenprism.dev/cp/category/drama">Drama</option><option value="http://screenprism.dev/cp/category/horror">Horror</option><option value="http://screenprism.dev/cp/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/testing-article-9">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Testing Article 9</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/testing-article-8">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Testing Article 8</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://screenprism.dev/cp/addons_modules/show_module_cp/P2" class="button load">Load More</a>\n  </div>\n</section>', 'n', 1422260049),
(14, 1, 1, 1422350908, 1440, 11, 20, 'media_entry', '{exp:channel:entries\n  channel="film|television"\n  limit="1"\n  show_future_entries="yes"\n  cache="yes"\n  refresh="1440"\n  disable="categories|category_fields|member_data|pagination"\n}\n<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>{title}</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      {if media_cover != ""}\n        <img src="{media_cover:url:350x520}" alt="Media graphic">\n      {if:else}\n        <img src="{site_url}assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n      {/if}\n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="{entry_date format=''%Y-%m-%d''}">{entry_date format="%F %j, %Y"}</time></li>\n        <li><strong>Directed By:</strong> {media_director}</li>\n        <li><strong>Written By:</strong> {media_writer}</li>\n        <li><strong>Starring:</strong> {media_starring backspace="2"}<span>{item}</span>, {/media_starring}</li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          {media_summary}\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        {exp:playa:parents\n          channel="articles"\n          category="5"\n          disable="category_fields|member_data|pagination"\n          var_prefix="rel"\n        }\n        {if {rel:total_results} >= 1}\n          {if {rel:count} == 1}<ul>{/if}\n            <li>\n              <a href="{rel:url_title_path=''insights/article''}">\n                <h3>Q: {rel:title}?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {if {rel:count} == {rel:total_results}}</ul>{/if}\n        {/if}\n        {if no_parents}<p>There are no Q &amp; A''s at this time. If you have a question, please send it to us using the form at the bottom of this page.</p>{/if}\n        {/exp:playa:parents}\n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        {exp:playa:parents\n          channel="articles"\n          category="6"\n          disable="category_fields|member_data|pagination"\n          var_prefix="rel"\n        }\n        {if {rel:total_results} >= 1}\n          {if {rel:count} == 1}<ul>{/if}\n            <li>\n              <a href="{rel:url_title_path=''insights/article''}">\n                <h5>{rel:title}</h5>\n                <p>{rel:article_summary}</p>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {if {rel:count} == {rel:total_results}}</ul>{/if}\n        {/if}\n        {if no_parents}<p>There are no articles at this time. Please check back again soon.</p>{/if}\n        {/exp:playa:parents}\n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        {if media_external != ""}\n        {media_external}\n        {if row_count == 1}<ul>{/if}\n          <li>\n            <a href="{media_link_url}" target="_blank">\n              <h5>{media_link_title}</h5>\n              <p>{media_link_summary}</p>\n              <p><strong>Source:</strong> {media_link_source}</p>\n            </a>\n          </li>\n        {if row_count == total_rows}</ul>{/if}\n        {/media_external}\n        {if:else}\n          <p>There are no links available at this time. Please check back soon.</p>\n        {/if}\n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        <form>\n          <textarea></textarea>\n          <input type="submit" value="Submit" />\n        </form>\n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related Films</h4>\n      <ul>\n        <li>\n          <a href="media-page.php">\n            <figure>\n              <img src="{site_url}assets/img/covers/hobbit-movie-poster-01.jpg" />\n            </figure>\n            <div class="details">\n              <h5>The Hobbit: The Desolation of Smaug</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>\n{/exp:channel:entries}', '', '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>The Hobbit: The Battle of the Five Armies</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://screenprism.dev/assets/img/covers/_350x520/hobbit-movie-poster-02.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2014-12-17">December 17, 2014</time></li>\n        <li><strong>Directed By:</strong> Peter Jackson</li>\n        <li><strong>Written By:</strong> J.R.R. Tolkien, Peter Jackson, Fran Walsh</li>\n        <li><strong>Starring:</strong> <span>Martin Freeman</span>, <span>Ian McKellen</span>, <span>Richard Armitage</span>, <span>Aidan Turner</span>, <span>Orlando Bloom</span>, <span>Evangeline Lilly</span>, <span>John Bell</span>, <span>Dean O''Gorman</span>, <span>Lee Pace</span>, <span>Benedict Cumberbatch</span>, <span>Luke Evans</span>, <span>Cate Blanchett</span>, <span>Hugo Weaving</span>, <span>Christopher Lee</span>, <span>Billy Connolly</span>, <span>Ian Holm</span>, <span>James Nesbitt</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p>The Hobbit: The Battle of the Five Armies&nbsp;brings to an epic conclusion the adventures of Bilbo Baggins, Thorin Oakenshield and the Company of Dwarves. Having reclaimed their homeland from the Dragon Smaug, the Company has unwittingly unleashed a deadly force into the world. Enraged, Smaug rains his fiery wrath down upon the defenseless men, women and children of Lake-town.</p>\n\n<p>Obsessed above all else with his reclaimed treasure, Thorin sacrifices friendship and honor to hoard it as Bilbo&#39;s frantic attempts to make him see reason drive the Hobbit towards a desperate and dangerous choice. But there are even greater dangers ahead. Unseen by any but the Wizard Gandalf, the great enemy Sauron has sent forth legions of Orcs in a stealth attack upon the Lonely Mountain.</p>\n\n<p>As darkness converges on their escalating conflict, the races of Dwarves, Elves and Men must decide unite or be destroyed. Bilbo finds himself fighting for his life and the lives of his friends in the epic Battle of the Five Armies, as the future of Middle-earth hangs in the balance.</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-9">\n                <h3>Q: Testing Article 9?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p>Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna. Etiam vehicula rutrum nulla condimentum bibendum.</p>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n        <ul>\n          <li>\n            <a href="http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014" target="_blank">\n              <h5>Sheila O''Malley''s Review for Ebert Digital</h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.</p>\n              <p><strong>Source:</strong> rogerebert.com</p>\n            </a>\n          </li><li>\n            <a href="http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/" target="_blank">\n              <h5>Tasha Robinson''s Review for The Dissolve</h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.</p>\n              <p><strong>Source:</strong> thedissolve.com</p>\n            </a>\n          </li>\n        </ul>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        <form>\n          <textarea></textarea>\n          <input type="submit" value="Submit" />\n        </form>\n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related Films</h4>\n      <ul>\n        <li>\n          <a href="media-page.php">\n            <figure>\n              <img src="http://screenprism.dev/assets/img/covers/hobbit-movie-poster-01.jpg" />\n            </figure>\n            <div class="details">\n              <h5>The Hobbit: The Desolation of Smaug</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>', 'n', 1422264508);

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_morsels_dynamic_cache`
--

CREATE TABLE `exp_template_morsels_dynamic_cache` (
`cache_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `notes` text,
  `morsel` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_morsels_dynamic_cache`
--

INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(149, 1, 1, 1422336085, '2b219fe57f56c6a443c2e76f4b6cbfab', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights" property="og:url">\n  \n  <link content="http://screenprism.dev/insights" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(151, 1, 1, 1422336089, '1dfa6a456959fa589d8a4307b044523b', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>The hub for Film & TV analysis | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="The hub for Film & TV analysis | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="The hub for Film & TV analysis | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://screenprism.dev/" property="og:url">\n  \n  <link content="http://screenprism.dev/" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="home">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(152, 1, 1, 1422336094, '8095fa936baf6fc1fc69438603587c98', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/category/article" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/category/article" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(154, 1, 1, 1422336095, '28d8f0a966bee27659f06d13dfb3f3e5', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/category/q-and-a" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/category/q-and-a" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(156, 1, 1, 1422336098, '1f76d28aa280a5fb7f3e194fc9b6a26a', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/tag/Lone-Tag" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/tag/Lone-Tag" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(158, 1, 1, 1422336105, 'e4c7fb145e8df320c99c0eaecaed2071', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/tag/Testing-Tag" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/tag/Testing-Tag" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(160, 1, 1, 1422336107, 'b230bb942ca1230d1e5447985f20cb35', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/tag/Testing-Tag/P3" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/tag/Testing-Tag/P3" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(175, 12, 1, 1422337019, '748a8f1750262d3ae1d24393eaba9b68', NULL, '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>Privacy Policy</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n      <form>\n        <h5><label for="name">Your Name</label></h5>\n        <input type="text" id="name" name="name">\n        <h5><label for="email">E-Mail Address</label></h5>\n        <input type="text" id="email" name="email">\n        <h5><label for="subject">Subject</label></h5>\n        <input type="text" id="subject" name="subject">\n        <h5><label for="message">Message</label></h5>\n        <textarea id="message" name="message"></textarea>\n        <input type="submit" value="Send">\n      </form>\n    </aside>\n  </div>\n</section>'),
(176, 12, 1, 1422337025, '5596e6e47351766f8ad19c070c66b5c3', NULL, '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>Terms &amp; Conditions</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n      <form>\n        <h5><label for="name">Your Name</label></h5>\n        <input type="text" id="name" name="name">\n        <h5><label for="email">E-Mail Address</label></h5>\n        <input type="text" id="email" name="email">\n        <h5><label for="subject">Subject</label></h5>\n        <input type="text" id="subject" name="subject">\n        <h5><label for="message">Message</label></h5>\n        <textarea id="message" name="message"></textarea>\n        <input type="submit" value="Send">\n      </form>\n    </aside>\n  </div>\n</section>'),
(177, 12, 1, 1422337032, 'c8e058fbe22a0d0ab3f998c07a5cd776', NULL, '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>About Us</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n      <form>\n        <h5><label for="name">Your Name</label></h5>\n        <input type="text" id="name" name="name">\n        <h5><label for="email">E-Mail Address</label></h5>\n        <input type="text" id="email" name="email">\n        <h5><label for="subject">Subject</label></h5>\n        <input type="text" id="subject" name="subject">\n        <h5><label for="message">Message</label></h5>\n        <textarea id="message" name="message"></textarea>\n        <input type="submit" value="Send">\n      </form>\n    </aside>\n  </div>\n</section>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(179, 1, 1, 1422337124, 'ae3f7d921364731eeceb39b77174e51a', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/P3" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/P3" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(181, 1, 1, 1422337128, 'a7afc347e6d9109a7daa3d17c1db5822', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/P6" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/P6" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(184, 1, 1, 1422337136, '4efe331d78fe42634b4630791921fc25', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/category/article/P3" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/category/article/P3" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(187, 1, 1, 1422337141, '727013a8e95d1513f71e0e71ebac01fc', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/category/q-and-a/P3" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/category/q-and-a/P3" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(192, 1, 1, 1422337158, '5dd2b76e6ad3858a54082eeb9f9d7eb6', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://screenprism.dev/insights/tag/Testing-Tag/P6" property="og:url">\n  \n  <link content="http://screenprism.dev/insights/tag/Testing-Tag/P6" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(198, 1, 1, 1422338375, '76401cde4f11702f4fed8024c18e7940', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Film | ScreenPrism</title>\n  \n  <meta content="SEO description for the Film landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Film | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the Film landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Film | ScreenPrism" property="og:title">\n  <meta content="SEO description for the Film landing page." property="og:description">\n  <meta content="http://screenprism.dev/film" property="og:url">\n  \n  <link content="http://screenprism.dev/film" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="media">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(236, 1, 1, 1422344091, 'c93230ab487079b18762bb5f7367e2d1', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>TV Shows | ScreenPrism</title>\n  \n  <meta content="" name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="TV Shows | ScreenPrism" name="DC.title">\n  <meta content="" name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n  <meta content="TV Shows | ScreenPrism" property="og:title">\n  <meta content="" property="og:description">\n  <meta content="http://screenprism.dev/tv" property="og:url">\n  \n  <link content="http://screenprism.dev/tv" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="media">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(255, 13, 1, 1422346451, '9f867829b40f651a6f900b8dd1ab28b8', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/category/crime">Crime</option><option value="http://screenprism.dev/tv/category/drama">Drama</option><option value="http://screenprism.dev/tv/category/horror">Horror</option><option value="http://screenprism.dev/tv/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/orange-is-the-new-black">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/oitnb-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Orange is the New Black</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/american-horror-story">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/american-horror-story-box.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>American Horror Story</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://screenprism.dev/tv/category/category/P2" class="button load">Load More</a>\n  </div>\n</section>'),
(256, 13, 1, 1422346454, '9af13c810c9d8db9fccb3b82eadbe719', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/category/crime">Crime</option><option value="http://screenprism.dev/tv/category/drama">Drama</option><option value="http://screenprism.dev/tv/category/horror">Horror</option><option value="http://screenprism.dev/tv/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/orange-is-the-new-black">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/oitnb-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Orange is the New Black</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/american-horror-story">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/american-horror-story-box.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>American Horror Story</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://screenprism.dev/tv/P2" class="button load">Load More</a>\n  </div>\n</section>'),
(257, 13, 1, 1422346456, '3f35f5cc6103ead27a7e06a76226f796', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/title/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/title/category/crime">Crime</option><option value="http://screenprism.dev/tv/title/category/drama">Drama</option><option value="http://screenprism.dev/tv/title/category/horror">Horror</option><option value="http://screenprism.dev/tv/title/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/american-horror-story">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/american-horror-story-box.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>American Horror Story</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/orange-is-the-new-black">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/oitnb-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Orange is the New Black</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://screenprism.dev/tv/title/P2" class="button load">Load More</a>\n  </div>\n</section>'),
(258, 13, 1, 1422346461, 'eaf0d907724991820aca153f7b940426', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/title/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/title/category/crime" selected>Crime</option><option value="http://screenprism.dev/tv/title/category/drama">Drama</option><option value="http://screenprism.dev/tv/title/category/horror">Horror</option><option value="http://screenprism.dev/tv/title/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/orange-is-the-new-black">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/oitnb-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Orange is the New Black</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>'),
(259, 13, 1, 1422346473, 'f6601eac5208a974b778196e0b5c28a2', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/title/category/comedy" selected>Comedy</option><option value="http://screenprism.dev/tv/title/category/crime">Crime</option><option value="http://screenprism.dev/tv/title/category/drama">Drama</option><option value="http://screenprism.dev/tv/title/category/horror">Horror</option><option value="http://screenprism.dev/tv/title/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/orange-is-the-new-black">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/oitnb-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Orange is the New Black</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/seinfeld">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/seinfeld-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Seinfeld</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>'),
(260, 13, 1, 1422346536, '809e2a576eb75a02ce0ced274160e4fc', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/category/crime">Crime</option><option value="http://screenprism.dev/tv/category/drama">Drama</option><option value="http://screenprism.dev/tv/category/horror">Horror</option><option value="http://screenprism.dev/tv/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/seinfeld">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/seinfeld-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Seinfeld</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(261, 13, 1, 1422346542, '01fdb894f7817ac033e6a5d86a958252', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/tv">Release Date</a> <a href="http://screenprism.dev/tv/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/tv/title/category/comedy">Comedy</option><option value="http://screenprism.dev/tv/title/category/crime">Crime</option><option value="http://screenprism.dev/tv/title/category/drama">Drama</option><option value="http://screenprism.dev/tv/title/category/horror">Horror</option><option value="http://screenprism.dev/tv/title/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/seinfeld">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/seinfeld-box-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Seinfeld</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>'),
(264, 13, 1, 1422347271, 'bccbe3c5951db937fd2fae0ba754c9ba', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://screenprism.dev/film">Release Date</a> <a href="http://screenprism.dev/film/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://screenprism.dev/film/category/comedy">Comedy</option><option value="http://screenprism.dev/film/category/crime">Crime</option><option value="http://screenprism.dev/film/category/drama">Drama</option><option value="http://screenprism.dev/film/category/horror">Horror</option><option value="http://screenprism.dev/film/category/romantic">Romantic</option>\n    </select>\n  </div>\n</section>\n<section class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/hobbit-movie-poster-02.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>The Hobbit: The Battle of the Five Armies</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://screenprism.dev/media/birdman">\n          <figure>\n            \n              <img src="http://screenprism.dev/assets/img/covers/_270x400/birdman-poster-01.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Birdman</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://screenprism.dev/film/P2" class="button load">Load More</a>\n  </div>\n</section>'),
(274, 11, 1, 1422350763, '9910ecda32e9380eae0560dfcc2324bc', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Birdman | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Birdman | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Birdman | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/media/birdman" property="og:url">\n<link content="http://screenprism.dev/media/birdman" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="page">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(276, 11, 1, 1422350775, '3814dbbb1343bd2f412a7adb3acb4e50', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>The Hobbit: The Battle of the Five Armies | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="The Hobbit: The Battle of the Five Armies | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="The Hobbit: The Battle of the Five Armies | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies" property="og:url">\n<link content="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="page">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(279, 11, 1, 1422350861, '74a072bade8c345ba7cab8fb979605bc', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>The Hobbit: The Battle of the Five Armies | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="The Hobbit: The Battle of the Five Armies | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="The Hobbit: The Battle of the Five Armies | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies" property="og:url">\n<link content="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(280, 9, 1, 1422350861, '0db837e0e660cd70643d82aec7982177', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>'),
(281, 14, 1, 1422350911, '5528a81664fc58426117d5f31b5d12d6', NULL, '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>The Hobbit: The Battle of the Five Armies</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://screenprism.dev/assets/img/covers/_350x520/hobbit-movie-poster-02.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2014-12-17">December 17, 2014</time></li>\n        <li><strong>Directed By:</strong> Peter Jackson</li>\n        <li><strong>Written By:</strong> J.R.R. Tolkien, Peter Jackson, Fran Walsh</li>\n        <li><strong>Starring:</strong> <span>Martin Freeman</span>, <span>Ian McKellen</span>, <span>Richard Armitage</span>, <span>Aidan Turner</span>, <span>Orlando Bloom</span>, <span>Evangeline Lilly</span>, <span>John Bell</span>, <span>Dean O''Gorman</span>, <span>Lee Pace</span>, <span>Benedict Cumberbatch</span>, <span>Luke Evans</span>, <span>Cate Blanchett</span>, <span>Hugo Weaving</span>, <span>Christopher Lee</span>, <span>Billy Connolly</span>, <span>Ian Holm</span>, <span>James Nesbitt</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p>The Hobbit: The Battle of the Five Armies&nbsp;brings to an epic conclusion the adventures of Bilbo Baggins, Thorin Oakenshield and the Company of Dwarves. Having reclaimed their homeland from the Dragon Smaug, the Company has unwittingly unleashed a deadly force into the world. Enraged, Smaug rains his fiery wrath down upon the defenseless men, women and children of Lake-town.</p>\n\n<p>Obsessed above all else with his reclaimed treasure, Thorin sacrifices friendship and honor to hoard it as Bilbo&#39;s frantic attempts to make him see reason drive the Hobbit towards a desperate and dangerous choice. But there are even greater dangers ahead. Unseen by any but the Wizard Gandalf, the great enemy Sauron has sent forth legions of Orcs in a stealth attack upon the Lonely Mountain.</p>\n\n<p>As darkness converges on their escalating conflict, the races of Dwarves, Elves and Men must decide unite or be destroyed. Bilbo finds himself fighting for his life and the lives of his friends in the epic Battle of the Five Armies, as the future of Middle-earth hangs in the balance.</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-9">\n                <h3>Q: Testing Article 9?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p>Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna. Etiam vehicula rutrum nulla condimentum bibendum.</p>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/the-hobbit-the-battle-of-the-five-armies">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n        <ul>\n          <li>\n            <a href="http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014" target="_blank">\n              <h5>Sheila O''Malley''s Review for Ebert Digital</h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.</p>\n              <p><strong>Source:</strong> rogerebert.com</p>\n            </a>\n          </li><li>\n            <a href="http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/" target="_blank">\n              <h5>Tasha Robinson''s Review for The Dissolve</h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.</p>\n              <p><strong>Source:</strong> thedissolve.com</p>\n            </a>\n          </li>\n        </ul>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        <form>\n          <textarea></textarea>\n          <input type="submit" value="Submit" />\n        </form>\n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related Films</h4>\n      <ul>\n        <li>\n          <a href="media-page.php">\n            <figure>\n              <img src="http://screenprism.dev/assets/img/covers/hobbit-movie-poster-01.jpg" />\n            </figure>\n            <div class="details">\n              <h5>The Hobbit: The Desolation of Smaug</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>'),
(282, 11, 1, 1422350915, '98b59a676c67234bfc455159e26f580f', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Testing Article 9 | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Testing Article 9 | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Testing Article 9 | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/testing-article-9" property="og:url">\n<link content="http://screenprism.dev/insights/article/testing-article-9" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(283, 9, 1, 1422350915, '6c99b26e034a29dac3b0110591649f0c', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/boyhood-image-01.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 9</h1>\n          \n          <h5><a href="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies">The Hobbit: The Battle of the Five Armies</a></h5>\n          \n          <p class="by-line">Someone <span class="spacer">|</span> <time datetime="2015-01-25T0251">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></a></p>\n        </header>\n        <p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n\n<p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris. Mauris sit amet ligula mattis nibh malesuada hendrerit a et risus. Phasellus vel lectus at arcu fermentum porttitor et et libero. Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit. Praesent sem dolor, tincidunt at bibendum eu, fermentum a sem. Ut cursus, felis et varius scelerisque, nisi nulla molestie sapien, id fermentum libero mauris ac urna. Nullam bibendum vitae felis vel congue. Morbi quis tellus vel urna sagittis aliquam vitae faucibus mi. Nam consequat eu felis eu bibendum. Sed pulvinar pharetra arcu eget hendrerit.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://screenprism.dev/insights/tag/Lone-Tag">Lone Tag</a></li>\n          \n            <li><a href="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-6">\n                <h5>Testing Article 6</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-6">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-5">\n                <h5>Testing Article 5</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-5">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>'),
(284, 11, 1, 1422350920, 'd9b3d3151dc817a53d45db6304d96398', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Testing Article 8 | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Testing Article 8 | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Testing Article 8 | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/testing-article-8" property="og:url">\n<link content="http://screenprism.dev/insights/article/testing-article-8" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(285, 9, 1, 1422350920, '7d66f8effcecf268b2c3f239e85685d5', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/nightcrawler-image-01.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 8</h1>\n          \n          <h5><a href="http://screenprism.dev/media/the-hobbit-the-battle-of-the-five-armies">The Hobbit: The Battle of the Five Armies</a></h5>\n          \n          <p class="by-line">Author Name <span class="spacer">|</span> <time datetime="2015-01-25T0236">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></a></p>\n        </header>\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a tellus orci. Etiam vulputate venenatis gravida. Ut euismod tortor id urna tincidunt, placerat sodales purus suscipit. Nulla enim ipsum, ullamcorper quis nisi eget, rhoncus viverra erat. In hac habitasse platea dictumst. Duis euismod ex et felis gravida, porta volutpat tortor sagittis. Donec ultrices consequat risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus quis sem diam. Donec pellentesque, felis vel luctus elementum, odio velit hendrerit justo, vel consectetur ex justo a tellus.</p>\n\n<p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</a></li>\n          \n            <li><a href="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-9">\n                <h5>Testing Article 9</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-7">\n                <h5>Testing Article 7</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-6">\n                <h5>Testing Article 6</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-6">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>'),
(286, 11, 1, 1422350925, '1d37db8dca759850ac81c80c58859ec6', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Testing Article 6 | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Testing Article 6 | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Testing Article 6 | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/testing-article-6" property="og:url">\n<link content="http://screenprism.dev/insights/article/testing-article-6" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(287, 9, 1, 1422350925, '9b4040aa893ee5d759ec82f540633cf5', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/babadook.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 6</h1>\n          \n          <h5><a href="http://screenprism.dev/media/birdman">Birdman</a></h5>\n          \n          <p class="by-line">Author Name <span class="spacer">|</span> <time datetime="2015-01-25T0216">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-6">0</span></a></p>\n        </header>\n        <p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n\n<p>Sed vel cursus diam. Quisque dapibus magna nec sem efficitur, nec ultricies ligula consequat. Nam et enim sit amet sem convallis facilisis vitae quis mauris. Mauris sit amet ligula mattis nibh malesuada hendrerit a et risus. Phasellus vel lectus at arcu fermentum porttitor et et libero. Quisque vitae augue est. Pellentesque quam enim, tincidunt ac gravida a, faucibus ut sapien. Praesent a posuere purus. Mauris posuere, mauris at posuere ullamcorper, ligula elit fringilla diam, id pulvinar dui nunc sit amet elit. Praesent sem dolor, tincidunt at bibendum eu, fermentum a sem. Ut cursus, felis et varius scelerisque, nisi nulla molestie sapien, id fermentum libero mauris ac urna. Nullam bibendum vitae felis vel congue. Morbi quis tellus vel urna sagittis aliquam vitae faucibus mi. Nam consequat eu felis eu bibendum. Sed pulvinar pharetra arcu eget hendrerit.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</a></li>\n          \n            <li><a href="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-9">\n                <h5>Testing Article 9</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-7">\n                <h5>Testing Article 7</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>'),
(288, 14, 1, 1422350927, 'b5e6db36107ab9650c653331e2e8fff8', NULL, '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>Birdman</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://screenprism.dev/assets/img/covers/_350x520/birdman-poster-01.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2014-10-17">October 17, 2014</time></li>\n        <li><strong>Directed By:</strong> Alejandro González Iñárritu</li>\n        <li><strong>Written By:</strong> Alexander Dinelaris, Alejandro González Iñárritu, Armando Bo, Nicolás Giacobone</li>\n        <li><strong>Starring:</strong> <span>Michael Keaton</span>, <span>Emma Stone</span>, <span>Zach Galifianakis</span>, <span>Edward Norton</span>, <span>Naomi Watts</span>, <span>Amy Ryan</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p>Actor Riggan Thomson is most famous for his movie role from over twenty years ago of the comic book superhero Birdman in the blockbuster movie of the same name and its two equally popular sequels. His association with the role took over his life, where Birdman is more renowned than "Riggan Thomson" the actor. Now past middle age, Riggan is trying to establish himself as a true artist by writing, directing, starring in and co-producing with his best friend Jake what is his Broadway debut, an adaptation of Raymond Carver&#39;s story, What We Talk About When We Talk About Love. He is staking his name, what little artistic reputation that comes with that name and his life savings on the project, and as such will do anything needed to make the play a success. As he and Jake go through the process of the previews toward opening night, Riggan runs into several issues: needing to find a replacement for the integral supporting male role the night before the first preview; hiring the talented Broadway name, Mike Shiner, for that role, Mike who ends up being difficult to work with and who may end up overshadowing Riggan in the play; having to deal potentially with a lawsuit based on one of his actions to ensure success; needing to be there for his daughter, Sam, who he has hired to be his production assistant and who has just come out of drug rehab; and pleasing the New York Times critic, Tabitha Dickinson, who wants to use any excuse to give the play a scathing review which in turn would close the show after the opening night performance. But Riggan&#39;s biggest problem may be his own insecurities, which are manifested by him constantly hearing what he believes to be the truth from the voice of his Birdman character, who he often battles both internally and externally.</p>\n\n<p>-Written by Huggo</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-6">\n                <h3>Q: Testing Article 6?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/birdman">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-5">\n                <h3>Q: Testing Article 5?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/birdman">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-2">\n                <h3>Q: Testing Article 2?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/birdman">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        <p>There are no articles at this time. Please check back again soon.</p>\n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n        <ul>\n          <li>\n            <a href="http://thedissolve.com/features/exposition/792-the-irreducible-element-of-michael-keaton/" target="_blank">\n              <h5>The irreducible element of Michael Keaton</h5>\n              <p>In an entertaining installment of Grantland’s “B.S. Report” podcast last year, Bill Simmons and Wesley Morris examined Jodie Foster’s filmography in an attempt to determine if she was, in the site’s parlance, “Overrated, Underrated, or Properly Rated.”</p>\n              <p><strong>Source:</strong> thedissolve.com</p>\n            </a>\n          </li>\n        </ul>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        <form>\n          <textarea></textarea>\n          <input type="submit" value="Submit" />\n        </form>\n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related Films</h4>\n      <ul>\n        <li>\n          <a href="media-page.php">\n            <figure>\n              <img src="http://screenprism.dev/assets/img/covers/hobbit-movie-poster-01.jpg" />\n            </figure>\n            <div class="details">\n              <h5>The Hobbit: The Desolation of Smaug</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>'),
(289, 11, 1, 1422350930, 'eb067cb900c00c35dd20f6c0aa0398d7', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Testing Article 2 | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Testing Article 2 | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Testing Article 2 | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/testing-article-2" property="og:url">\n<link content="http://screenprism.dev/insights/article/testing-article-2" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(290, 9, 1, 1422350930, '0177b6d1e316028d8924866c9b5a09fa', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/inherent-vice-01.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 2</h1>\n          \n          <h5><a href="http://screenprism.dev/media/birdman">Birdman</a></h5>\n          \n          <p class="by-line">Someone <span class="spacer">|</span> <time datetime="2015-01-25T0111">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-2">0</span></a></p>\n        </header>\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor nulla, ultrices vitae enim ut, congue convallis tellus. Integer elementum egestas dolor vitae facilisis. Morbi et egestas magna. Donec in metus blandit, pretium urna vel, pretium magna. Donec turpis dolor, maximus suscipit posuere at, vehicula eget ligula. Vestibulum sed lorem ut nunc feugiat maximus in sit amet ipsum. Maecenas in eros elementum, fermentum diam eget, dignissim enim. Fusce sit amet lorem enim. Fusce tincidunt finibus tortor. Etiam sed tempor enim.</p>\n\n<p>Maecenas faucibus maximus pharetra. Suspendisse quis nisl erat. Curabitur consectetur neque eget justo ornare sodales. Phasellus blandit rutrum congue. Nulla odio dui, fermentum id massa non, luctus dignissim metus. Integer semper elementum mollis. Praesent tincidunt ipsum a risus varius luctus. Praesent faucibus lorem erat, ac ullamcorper ex lacinia at.</p>\n\n<p>Nam a vestibulum sapien, ut dignissim felis. Nullam nunc quam, rutrum venenatis luctus sit amet, elementum vitae velit. Sed neque elit, aliquet at metus sed, mollis egestas neque. Morbi eu congue tortor. Praesent pellentesque mi a odio varius gravida. Ut porttitor sed nibh nec condimentum. Suspendisse non ornare felis, quis aliquet mauris. In ac feugiat ex. Proin sollicitudin, erat tempus porta accumsan, orci diam tempor eros, et luctus diam ligula in ligula. Etiam a odio condimentum, condimentum odio ut, mollis ipsum.</p>\n\n<p>Nunc facilisis et dui ac suscipit. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante elit, interdum nec consequat et, tincidunt at enim. Fusce turpis ligula, ornare imperdiet lectus at, rutrum tincidunt leo. Nunc in diam viverra, tempor risus aliquam, hendrerit ex. Mauris pretium ac quam non cursus. Cras vitae risus tincidunt, sollicitudin lectus sit amet, commodo massa. Cras tristique gravida erat, et pellentesque ipsum eleifend et. Cras ut vulputate libero. Proin eu venenatis arcu. Ut fringilla sed libero in fringilla.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</a></li>\n          \n            <li><a href="http://screenprism.dev/insights/tag/Testing-Tag">Testing Tag</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-9">\n                <h5>Testing Article 9</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-9">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-7">\n                <h5>Testing Article 7</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>'),
(291, 11, 1, 1422350941, 'd9345a99099af2a54dd1abc0c39f989f', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Testing Article 7 | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Testing Article 7 | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="Testing Article 7 | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/insights/article/testing-article-7" property="og:url">\n<link content="http://screenprism.dev/insights/article/testing-article-7" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(292, 9, 1, 1422350941, 'a36ce8c0800585da2bcbf49029aa270f', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    \n      \n      <figure class="article-image">\n        <img src="http://screenprism.dev/assets/img/article/_1080x360/selma-image-01.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Testing Article 7</h1>\n          \n          <h5><a href="http://screenprism.dev/media/the-hobbit-the-desolation-of-smaug">The Hobbit: The Desolation of Smaug</a></h5>\n          \n          <p class="by-line">Someone <span class="spacer">|</span> <time datetime="2015-01-25T0228">January 25, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-7">0</span></a></p>\n        </header>\n        <p>Vivamus lectus lacus, auctor eget lorem sed, efficitur molestie ex. Praesent feugiat nibh sit amet tincidunt dapibus. Praesent interdum orci ac tempor vulputate. In egestas erat enim, quis tincidunt tortor tincidunt vel. Nunc sed egestas nunc. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed consectetur dapibus lorem, ac convallis erat euismod non. Pellentesque ornare augue eget lacinia molestie. Aliquam tincidunt gravida urna ac ullamcorper. Nam nec nulla sit amet nisi blandit ultricies. Nulla a dictum augue.</p>\n\n<p>Aenean et nulla pellentesque, posuere diam ut, semper ex. In ultricies elit vitae efficitur consequat. Nulla facilisi. Sed nec pellentesque leo. Maecenas tristique metus ligula. Phasellus id felis malesuada, pulvinar nulla eget, euismod sem. Nunc faucibus elit id est mollis blandit. Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://screenprism.dev/insights/tag/Tag-Test">Tag Test</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    \n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-8">\n                <h5>Testing Article 8</h5>\n                <p class="meta">Article <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-8">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-6">\n                <h5>Testing Article 6</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-6">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-5">\n                <h5>Testing Article 5</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/testing-article-5">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''filmprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>\n    </div>\n  </div>\n</section>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(293, 11, 1, 1422350943, '4957c3b674f6a70df9463921321e5383', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>The Hobbit: The Desolation of Smaug | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="The Hobbit: The Desolation of Smaug | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://screenprism.dev/assets/img/fav/facebook.png" property="og:image">\n<meta content="The Hobbit: The Desolation of Smaug | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://screenprism.dev/media/the-hobbit-the-desolation-of-smaug" property="og:url">\n<link content="http://screenprism.dev/media/the-hobbit-the-desolation-of-smaug" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://screenprism.dev/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://screenprism.dev/assets/js/modernizr.js"></script>\n  \n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://screenprism.dev/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://screenprism.dev/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="page">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(294, 14, 1, 1422350943, 'b7a9a2a88de96f625ee74c746ae1429c', NULL, '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>The Hobbit: The Desolation of Smaug</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://screenprism.dev/assets/img/covers/_350x520/hobbit-movie-poster-01.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2013-12-02">December 2, 2013</time></li>\n        <li><strong>Directed By:</strong> Peter Jackson</li>\n        <li><strong>Written By:</strong> J. R. R. Tolkien, Fran Walsh, Philippa Boyens, Peter Jackson, Guillermo del Toro</li>\n        <li><strong>Starring:</strong> <span>Ian McKellen</span>, <span>Martin Freeman</span>, <span>Richard Armitage</span>, <span>Richard Armitage</span>, <span>Benedict Cumberbatch</span>, <span>Evangeline Lilly</span>, <span>Lee Pace</span>, <span>Luke Evans</span>, <span>Ken Stott</span>, <span>James Nesbitt</span>, <span>Orlando Bloom</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla mauris vitae varius tincidunt. Cras auctor egestas tortor, in placerat nisi viverra in. Duis ut magna vitae nisl tempus posuere. Nam luctus felis vehicula viverra volutpat. Maecenas eget nisl malesuada, finibus lectus in, dapibus eros. Sed tristique turpis quis fringilla mattis. Cras eget magna quis mauris tincidunt vestibulum non a leo. Duis et dolor vestibulum, commodo nisl et, tincidunt risus. Nullam sodales molestie massa sed interdum.</p>\n\n<p>Etiam quis sapien tempus, rhoncus massa eu, placerat dui. Vivamus cursus odio nisl. Duis feugiat augue urna, ac rutrum mi bibendum ut. Vestibulum sollicitudin hendrerit sapien, id blandit lectus posuere vitae. Nulla semper lacinia lorem, at lobortis dolor. Curabitur nec vulputate felis, et tincidunt justo. Etiam magna nibh, consectetur vel magna at, tempus sagittis massa. Quisque non ipsum elit. Curabitur ultricies massa pellentesque lectus pulvinar, vel hendrerit justo feugiat. Phasellus eleifend malesuada mauris. Mauris feugiat venenatis condimentum. Integer sagittis malesuada neque, at luctus nunc commodo nec. Ut tincidunt sed turpis at iaculis. Nullam vehicula ligula nec rhoncus luctus. Morbi pulvinar ex sit amet felis aliquam sodales. Suspendisse consequat purus odio, vitae laoreet nibh blandit at.</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        <p>There are no Q &amp; A''s at this time. If you have a question, please send it to us using the form at the bottom of this page.</p>\n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        \n          <ul>\n            <li>\n              <a href="http://screenprism.dev/insights/article/testing-article-7">\n                <h5>Testing Article 7</h5>\n                <p>Etiam vehicula rutrum nulla condimentum bibendum. Donec scelerisque in leo vel hendrerit. Sed eu odio justo. Etiam vitae mattis urna.</p>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://screenprism.dev/insights/article/the-hobbit-the-desolation-of-smaug">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n          <p>There are no links available at this time. Please check back soon.</p>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        <form>\n          <textarea></textarea>\n          <input type="submit" value="Submit" />\n        </form>\n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related Films</h4>\n      <ul>\n        <li>\n          <a href="media-page.php">\n            <figure>\n              <img src="http://screenprism.dev/assets/img/covers/hobbit-movie-poster-01.jpg" />\n            </figure>\n            <div class="details">\n              <h5>The Hobbit: The Desolation of Smaug</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>');

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_morsels_preferences`
--

CREATE TABLE `exp_template_morsels_preferences` (
`preference_id` int(10) unsigned NOT NULL,
  `preference_name` varchar(50) NOT NULL DEFAULT '',
  `preference_value` text,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_morsels_queue`
--

CREATE TABLE `exp_template_morsels_queue` (
`queue_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `queue_hash` varchar(32) NOT NULL DEFAULT '',
  `queue_data` mediumtext,
  `queue_status` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_morsels_refresh_rules`
--

CREATE TABLE `exp_template_morsels_refresh_rules` (
`rule_id` int(10) unsigned NOT NULL,
  `cache_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_dynamic_only` char(1) NOT NULL DEFAULT 'n',
  `channel_id` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_statuses` text,
  `channel_add_only` char(1) NOT NULL DEFAULT 'n',
  `channel_edit_only` char(1) NOT NULL DEFAULT 'n',
  `channel_dynamic_only` char(1) NOT NULL DEFAULT 'n',
  `category_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_morsels_refresh_rules`
--

INSERT INTO `exp_template_morsels_refresh_rules` (`rule_id`, `cache_id`, `template_id`, `template_dynamic_only`, `channel_id`, `channel_statuses`, `channel_add_only`, `channel_edit_only`, `channel_dynamic_only`, `category_group_id`, `member_id`, `site_id`) VALUES
(43, 6, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(53, 5, 0, 'n', 3, 'open', 'n', 'n', 'n', 0, 0, 1),
(58, 9, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(59, 9, 8, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(62, 7, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(63, 7, 6, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(64, 8, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(65, 8, 7, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(66, 11, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(67, 11, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(68, 11, 0, 'n', 4, 'all', 'n', 'n', 'n', 0, 0, 1),
(69, 11, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(70, 11, 8, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(71, 12, 0, 'n', 4, 'all', 'n', 'n', 'n', 0, 0, 1),
(72, 12, 10, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(97, 13, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(98, 13, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(99, 13, 13, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(108, 14, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(109, 14, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(110, 14, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(111, 14, 12, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_no_access`
--

CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_template_routes`
--

CREATE TABLE `exp_template_routes` (
`route_id` int(10) unsigned NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_routes`
--

INSERT INTO `exp_template_routes` (`route_id`, `template_id`, `order`, `route`, `route_parsed`, `route_required`) VALUES
(1, 8, 8, NULL, NULL, 'n'),
(2, 6, 6, NULL, NULL, 'n'),
(3, 7, 7, NULL, NULL, 'n'),
(4, 9, 0, NULL, NULL, 'n'),
(5, 1, 3, NULL, NULL, 'n'),
(6, 11, 5, NULL, NULL, 'n'),
(10, 14, 2, NULL, NULL, 'n'),
(7, 12, 0, 'media/{url_title}', '^media\\/?(?P<e9cmtbr2ai884sw0o084cgc48cs888cs>(((?=\\b([A-Za-z0-9_-]+)\\b)([^\\/]*))))?\\/?$', 'n'),
(8, 10, 4, NULL, NULL, 'n'),
(9, 13, 1, NULL, NULL, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_throttle`
--

CREATE TABLE `exp_throttle` (
`throttle_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_upload_no_access`
--

CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_upload_prefs`
--

CREATE TABLE `exp_upload_prefs` (
`id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_upload_prefs`
--

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`) VALUES
(1, 1, 'Covers', '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/', 'http://screenprism.dev/assets/img/covers/', 'img', '', '', '', '', '', '', '', '', '', '', NULL),
(2, 1, 'Article Image', '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/article/', 'http://screenprism.dev/assets/img/article/', 'img', '', '', '', '', '', '', '', '', '', '', NULL),
(4, 1, 'Uploads', '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/uploads/', 'http://screenprism.dev/assets/img/uploads/', 'img', '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exp_wygwam_configs`
--

CREATE TABLE `exp_wygwam_configs` (
`config_id` int(6) unsigned NOT NULL,
  `config_name` varchar(32) DEFAULT NULL,
  `settings` text
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_wygwam_configs`
--

INSERT INTO `exp_wygwam_configs` (`config_id`, `config_name`, `settings`) VALUES
(1, 'Standard', 'YTo2OntzOjc6InRvb2xiYXIiO2E6MjU6e2k6MDtzOjY6IkZvcm1hdCI7aToxO3M6NDoiQm9sZCI7aToyO3M6NjoiSXRhbGljIjtpOjM7czo5OiJVbmRlcmxpbmUiO2k6NDtzOjQ6IkxpbmsiO2k6NTtzOjY6IlVubGluayI7aTo2O3M6NjoiQW5jaG9yIjtpOjc7czoxMjoiTnVtYmVyZWRMaXN0IjtpOjg7czoxMjoiQnVsbGV0ZWRMaXN0IjtpOjk7czo3OiJPdXRkZW50IjtpOjEwO3M6NjoiSW5kZW50IjtpOjExO3M6MTA6IkJsb2NrcXVvdGUiO2k6MTI7czo1OiJJbWFnZSI7aToxMztzOjU6IlRhYmxlIjtpOjE0O3M6MTQ6Ikhvcml6b250YWxSdWxlIjtpOjE1O3M6MTE6IlNwZWNpYWxDaGFyIjtpOjE2O3M6MTA6Ik1lZGlhRW1iZWQiO2k6MTc7czoxMToiSnVzdGlmeUxlZnQiO2k6MTg7czoxMzoiSnVzdGlmeUNlbnRlciI7aToxOTtzOjEyOiJKdXN0aWZ5UmlnaHQiO2k6MjA7czozOiJDdXQiO2k6MjE7czo0OiJDb3B5IjtpOjIyO3M6NToiUGFzdGUiO2k6MjM7czo5OiJQYXN0ZVRleHQiO2k6MjQ7czoxMzoiUGFzdGVGcm9tV29yZCI7fXM6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxNDoicmVzaXplX2VuYWJsZWQiO3M6MToieSI7czoxMToiY29udGVudHNDc3MiO2E6MDp7fXM6MTA6InVwbG9hZF9kaXIiO3M6MDoiIjtzOjEzOiJyZXN0cmljdF9odG1sIjtzOjE6InkiO30='),
(2, 'Full', 'YTo3OntzOjc6InRvb2xiYXIiO2E6Mjk6e2k6MDtzOjY6IlNvdXJjZSI7aToxO3M6MzoiQ3V0IjtpOjI7czo0OiJDb3B5IjtpOjM7czo1OiJQYXN0ZSI7aTo0O3M6OToiUGFzdGVUZXh0IjtpOjU7czoxMzoiUGFzdGVGcm9tV29yZCI7aTo2O3M6NDoiVW5kbyI7aTo3O3M6NDoiUmVkbyI7aTo4O3M6NToiU2NheXQiO2k6OTtzOjQ6IkJvbGQiO2k6MTA7czo2OiJJdGFsaWMiO2k6MTE7czo2OiJTdHJpa2UiO2k6MTI7czoxMjoiUmVtb3ZlRm9ybWF0IjtpOjEzO3M6MTI6Ik51bWJlcmVkTGlzdCI7aToxNDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6MTU7czo3OiJPdXRkZW50IjtpOjE2O3M6NjoiSW5kZW50IjtpOjE3O3M6MTA6IkJsb2NrcXVvdGUiO2k6MTg7czo0OiJMaW5rIjtpOjE5O3M6NjoiVW5saW5rIjtpOjIwO3M6NjoiQW5jaG9yIjtpOjIxO3M6NToiSW1hZ2UiO2k6MjI7czo1OiJUYWJsZSI7aToyMztzOjE0OiJIb3Jpem9udGFsUnVsZSI7aToyNDtzOjExOiJTcGVjaWFsQ2hhciI7aToyNTtzOjg6IlJlYWRNb3JlIjtpOjI2O3M6NjoiU3R5bGVzIjtpOjI3O3M6NjoiRm9ybWF0IjtpOjI4O3M6ODoiTWF4aW1pemUiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTQ6InJlc2l6ZV9lbmFibGVkIjtzOjE6InkiO3M6MTE6ImNvbnRlbnRzQ3NzIjthOjA6e31zOjk6InBhcnNlX2NzcyI7YjowO3M6MTM6InJlc3RyaWN0X2h0bWwiO3M6MToieSI7czoxMDoidXBsb2FkX2RpciI7czowOiIiO30='),
(3, 'Simple', 'YTo2OntzOjc6InRvb2xiYXIiO2E6OTp7aTowO3M6NDoiQm9sZCI7aToxO3M6NjoiSXRhbGljIjtpOjI7czo5OiJVbmRlcmxpbmUiO2k6MztzOjEyOiJOdW1iZXJlZExpc3QiO2k6NDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6NTtzOjQ6IkxpbmsiO2k6NjtzOjY6IlVubGluayI7aTo3O3M6NjoiQW5jaG9yIjtpOjg7czoxMjoiUmVtb3ZlRm9ybWF0Ijt9czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjE0OiJyZXNpemVfZW5hYmxlZCI7czoxOiJ5IjtzOjExOiJjb250ZW50c0NzcyI7YTowOnt9czoxMDoidXBsb2FkX2RpciI7czowOiIiO3M6MTM6InJlc3RyaWN0X2h0bWwiO3M6MToieSI7fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `exp_zoo_flexible_admin_menus`
--

CREATE TABLE `exp_zoo_flexible_admin_menus` (
`id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT NULL,
  `group_id` int(4) DEFAULT NULL,
  `nav` text,
  `autopopulate` tinyint(1) DEFAULT NULL,
  `hide_sidebar` tinyint(1) DEFAULT NULL,
  `startpage` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exp_accessories`
--
ALTER TABLE `exp_accessories`
 ADD PRIMARY KEY (`accessory_id`);

--
-- Indexes for table `exp_actions`
--
ALTER TABLE `exp_actions`
 ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `exp_ajw_datagrab`
--
ALTER TABLE `exp_ajw_datagrab`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp_assets_files`
--
ALTER TABLE `exp_assets_files`
 ADD PRIMARY KEY (`file_id`), ADD UNIQUE KEY `unq_folder_id__file_name` (`folder_id`,`file_name`);

--
-- Indexes for table `exp_assets_folders`
--
ALTER TABLE `exp_assets_folders`
 ADD PRIMARY KEY (`folder_id`), ADD UNIQUE KEY `unq_source_type__source_id__filedir_id__parent_id__folder_name` (`source_type`,`source_id`,`filedir_id`,`parent_id`,`folder_name`), ADD UNIQUE KEY `unq_source_type__source_id__filedir_id__full_path` (`source_type`,`source_id`,`filedir_id`,`full_path`);

--
-- Indexes for table `exp_assets_index_data`
--
ALTER TABLE `exp_assets_index_data`
 ADD UNIQUE KEY `unq__session_id__source_type__source_id__offset` (`session_id`,`source_type`,`source_id`,`offset`);

--
-- Indexes for table `exp_assets_rackspace_access`
--
ALTER TABLE `exp_assets_rackspace_access`
 ADD PRIMARY KEY (`connection_key`);

--
-- Indexes for table `exp_assets_selections`
--
ALTER TABLE `exp_assets_selections`
 ADD KEY `file_id` (`file_id`), ADD KEY `entry_id` (`entry_id`), ADD KEY `field_id` (`field_id`), ADD KEY `col_id` (`col_id`), ADD KEY `row_id` (`row_id`), ADD KEY `var_id` (`var_id`);

--
-- Indexes for table `exp_assets_sources`
--
ALTER TABLE `exp_assets_sources`
 ADD PRIMARY KEY (`source_id`);

--
-- Indexes for table `exp_captcha`
--
ALTER TABLE `exp_captcha`
 ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

--
-- Indexes for table `exp_categories`
--
ALTER TABLE `exp_categories`
 ADD PRIMARY KEY (`cat_id`), ADD KEY `group_id` (`group_id`), ADD KEY `cat_name` (`cat_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_category_fields`
--
ALTER TABLE `exp_category_fields`
 ADD PRIMARY KEY (`field_id`), ADD KEY `site_id` (`site_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `exp_category_field_data`
--
ALTER TABLE `exp_category_field_data`
 ADD PRIMARY KEY (`cat_id`), ADD KEY `site_id` (`site_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `exp_category_groups`
--
ALTER TABLE `exp_category_groups`
 ADD PRIMARY KEY (`group_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_category_posts`
--
ALTER TABLE `exp_category_posts`
 ADD PRIMARY KEY (`entry_id`,`cat_id`);

--
-- Indexes for table `exp_channels`
--
ALTER TABLE `exp_channels`
 ADD PRIMARY KEY (`channel_id`), ADD KEY `cat_group` (`cat_group`), ADD KEY `status_group` (`status_group`), ADD KEY `field_group` (`field_group`), ADD KEY `channel_name` (`channel_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_channel_data`
--
ALTER TABLE `exp_channel_data`
 ADD PRIMARY KEY (`entry_id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_channel_entries_autosave`
--
ALTER TABLE `exp_channel_entries_autosave`
 ADD PRIMARY KEY (`entry_id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `author_id` (`author_id`), ADD KEY `url_title` (`url_title`), ADD KEY `status` (`status`), ADD KEY `entry_date` (`entry_date`), ADD KEY `expiration_date` (`expiration_date`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_channel_fields`
--
ALTER TABLE `exp_channel_fields`
 ADD PRIMARY KEY (`field_id`), ADD KEY `group_id` (`group_id`), ADD KEY `field_type` (`field_type`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_channel_form_settings`
--
ALTER TABLE `exp_channel_form_settings`
 ADD PRIMARY KEY (`channel_form_settings_id`), ADD KEY `site_id` (`site_id`), ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `exp_channel_member_groups`
--
ALTER TABLE `exp_channel_member_groups`
 ADD PRIMARY KEY (`group_id`,`channel_id`);

--
-- Indexes for table `exp_channel_titles`
--
ALTER TABLE `exp_channel_titles`
 ADD PRIMARY KEY (`entry_id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `author_id` (`author_id`), ADD KEY `url_title` (`url_title`), ADD KEY `status` (`status`), ADD KEY `entry_date` (`entry_date`), ADD KEY `expiration_date` (`expiration_date`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_content_types`
--
ALTER TABLE `exp_content_types`
 ADD PRIMARY KEY (`content_type_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `exp_cp_log`
--
ALTER TABLE `exp_cp_log`
 ADD PRIMARY KEY (`id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_cp_search_index`
--
ALTER TABLE `exp_cp_search_index`
 ADD PRIMARY KEY (`search_id`), ADD FULLTEXT KEY `keywords` (`keywords`);

--
-- Indexes for table `exp_developer_log`
--
ALTER TABLE `exp_developer_log`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `exp_email_cache`
--
ALTER TABLE `exp_email_cache`
 ADD PRIMARY KEY (`cache_id`);

--
-- Indexes for table `exp_email_cache_mg`
--
ALTER TABLE `exp_email_cache_mg`
 ADD PRIMARY KEY (`cache_id`,`group_id`);

--
-- Indexes for table `exp_email_cache_ml`
--
ALTER TABLE `exp_email_cache_ml`
 ADD PRIMARY KEY (`cache_id`,`list_id`);

--
-- Indexes for table `exp_email_console_cache`
--
ALTER TABLE `exp_email_console_cache`
 ADD PRIMARY KEY (`cache_id`);

--
-- Indexes for table `exp_email_tracker`
--
ALTER TABLE `exp_email_tracker`
 ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `exp_entry_versioning`
--
ALTER TABLE `exp_entry_versioning`
 ADD PRIMARY KEY (`version_id`), ADD KEY `entry_id` (`entry_id`);

--
-- Indexes for table `exp_extensions`
--
ALTER TABLE `exp_extensions`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `exp_fieldtypes`
--
ALTER TABLE `exp_fieldtypes`
 ADD PRIMARY KEY (`fieldtype_id`);

--
-- Indexes for table `exp_field_formatting`
--
ALTER TABLE `exp_field_formatting`
 ADD PRIMARY KEY (`formatting_id`);

--
-- Indexes for table `exp_field_groups`
--
ALTER TABLE `exp_field_groups`
 ADD PRIMARY KEY (`group_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_files`
--
ALTER TABLE `exp_files`
 ADD PRIMARY KEY (`file_id`), ADD KEY `upload_location_id` (`upload_location_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_file_categories`
--
ALTER TABLE `exp_file_categories`
 ADD KEY `file_id` (`file_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `exp_file_dimensions`
--
ALTER TABLE `exp_file_dimensions`
 ADD PRIMARY KEY (`id`), ADD KEY `upload_location_id` (`upload_location_id`);

--
-- Indexes for table `exp_file_watermarks`
--
ALTER TABLE `exp_file_watermarks`
 ADD PRIMARY KEY (`wm_id`);

--
-- Indexes for table `exp_freeform_composer_layouts`
--
ALTER TABLE `exp_freeform_composer_layouts`
 ADD PRIMARY KEY (`composer_id`), ADD KEY `preview` (`preview`);

--
-- Indexes for table `exp_freeform_composer_templates`
--
ALTER TABLE `exp_freeform_composer_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `template_name` (`template_name`);

--
-- Indexes for table `exp_freeform_email_logs`
--
ALTER TABLE `exp_freeform_email_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp_freeform_fields`
--
ALTER TABLE `exp_freeform_fields`
 ADD PRIMARY KEY (`field_id`), ADD KEY `field_name` (`field_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_freeform_fieldtypes`
--
ALTER TABLE `exp_freeform_fieldtypes`
 ADD PRIMARY KEY (`fieldtype_id`), ADD KEY `fieldtype_name` (`fieldtype_name`);

--
-- Indexes for table `exp_freeform_file_uploads`
--
ALTER TABLE `exp_freeform_file_uploads`
 ADD PRIMARY KEY (`file_id`), ADD KEY `entry_id` (`entry_id`), ADD KEY `field_id` (`field_id`), ADD KEY `extension` (`extension`);

--
-- Indexes for table `exp_freeform_forms`
--
ALTER TABLE `exp_freeform_forms`
 ADD PRIMARY KEY (`form_id`), ADD KEY `form_name` (`form_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_freeform_form_entries_1`
--
ALTER TABLE `exp_freeform_form_entries_1`
 ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `exp_freeform_multipage_hashes`
--
ALTER TABLE `exp_freeform_multipage_hashes`
 ADD PRIMARY KEY (`hash_id`), ADD KEY `hash` (`hash`), ADD KEY `ip_address` (`ip_address`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_freeform_notification_templates`
--
ALTER TABLE `exp_freeform_notification_templates`
 ADD PRIMARY KEY (`notification_id`), ADD KEY `notification_name` (`notification_name`);

--
-- Indexes for table `exp_freeform_params`
--
ALTER TABLE `exp_freeform_params`
 ADD PRIMARY KEY (`params_id`);

--
-- Indexes for table `exp_freeform_preferences`
--
ALTER TABLE `exp_freeform_preferences`
 ADD PRIMARY KEY (`preference_id`), ADD KEY `preference_name` (`preference_name`);

--
-- Indexes for table `exp_freeform_user_email`
--
ALTER TABLE `exp_freeform_user_email`
 ADD PRIMARY KEY (`email_id`), ADD KEY `ip_address` (`ip_address`);

--
-- Indexes for table `exp_global_variables`
--
ALTER TABLE `exp_global_variables`
 ADD PRIMARY KEY (`variable_id`), ADD KEY `variable_name` (`variable_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_grid_columns`
--
ALTER TABLE `exp_grid_columns`
 ADD PRIMARY KEY (`col_id`), ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `exp_html_buttons`
--
ALTER TABLE `exp_html_buttons`
 ADD PRIMARY KEY (`id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_layout_publish`
--
ALTER TABLE `exp_layout_publish`
 ADD PRIMARY KEY (`layout_id`), ADD KEY `site_id` (`site_id`), ADD KEY `member_group` (`member_group`), ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `exp_low_variables`
--
ALTER TABLE `exp_low_variables`
 ADD PRIMARY KEY (`variable_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `exp_low_variable_groups`
--
ALTER TABLE `exp_low_variable_groups`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `exp_matrix_cols`
--
ALTER TABLE `exp_matrix_cols`
 ADD PRIMARY KEY (`col_id`), ADD KEY `site_id` (`site_id`), ADD KEY `field_id` (`field_id`), ADD KEY `var_id` (`var_id`);

--
-- Indexes for table `exp_matrix_data`
--
ALTER TABLE `exp_matrix_data`
 ADD PRIMARY KEY (`row_id`), ADD KEY `site_id` (`site_id`), ADD KEY `entry_id` (`entry_id`), ADD KEY `field_id` (`field_id`), ADD KEY `var_id` (`var_id`);

--
-- Indexes for table `exp_members`
--
ALTER TABLE `exp_members`
 ADD PRIMARY KEY (`member_id`), ADD KEY `group_id` (`group_id`), ADD KEY `unique_id` (`unique_id`), ADD KEY `password` (`password`);

--
-- Indexes for table `exp_member_bulletin_board`
--
ALTER TABLE `exp_member_bulletin_board`
 ADD PRIMARY KEY (`bulletin_id`), ADD KEY `sender_id` (`sender_id`), ADD KEY `hash` (`hash`);

--
-- Indexes for table `exp_member_data`
--
ALTER TABLE `exp_member_data`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `exp_member_fields`
--
ALTER TABLE `exp_member_fields`
 ADD PRIMARY KEY (`m_field_id`);

--
-- Indexes for table `exp_member_groups`
--
ALTER TABLE `exp_member_groups`
 ADD PRIMARY KEY (`group_id`,`site_id`);

--
-- Indexes for table `exp_member_homepage`
--
ALTER TABLE `exp_member_homepage`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `exp_member_search`
--
ALTER TABLE `exp_member_search`
 ADD PRIMARY KEY (`search_id`), ADD KEY `member_id` (`member_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_message_attachments`
--
ALTER TABLE `exp_message_attachments`
 ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `exp_message_copies`
--
ALTER TABLE `exp_message_copies`
 ADD PRIMARY KEY (`copy_id`), ADD KEY `message_id` (`message_id`), ADD KEY `recipient_id` (`recipient_id`), ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `exp_message_data`
--
ALTER TABLE `exp_message_data`
 ADD PRIMARY KEY (`message_id`), ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `exp_message_folders`
--
ALTER TABLE `exp_message_folders`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `exp_message_listed`
--
ALTER TABLE `exp_message_listed`
 ADD PRIMARY KEY (`listed_id`);

--
-- Indexes for table `exp_modules`
--
ALTER TABLE `exp_modules`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `exp_module_member_groups`
--
ALTER TABLE `exp_module_member_groups`
 ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `exp_online_users`
--
ALTER TABLE `exp_online_users`
 ADD PRIMARY KEY (`online_id`), ADD KEY `date` (`date`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_pages_configuration`
--
ALTER TABLE `exp_pages_configuration`
 ADD PRIMARY KEY (`configuration_id`);

--
-- Indexes for table `exp_password_lockout`
--
ALTER TABLE `exp_password_lockout`
 ADD PRIMARY KEY (`lockout_id`), ADD KEY `login_date` (`login_date`), ADD KEY `ip_address` (`ip_address`), ADD KEY `user_agent` (`user_agent`);

--
-- Indexes for table `exp_playa_relationships`
--
ALTER TABLE `exp_playa_relationships`
 ADD PRIMARY KEY (`rel_id`), ADD KEY `parent_entry_id` (`parent_entry_id`), ADD KEY `parent_field_id` (`parent_field_id`), ADD KEY `parent_col_id` (`parent_col_id`), ADD KEY `parent_row_id` (`parent_row_id`), ADD KEY `parent_var_id` (`parent_var_id`), ADD KEY `child_entry_id` (`child_entry_id`);

--
-- Indexes for table `exp_relationships`
--
ALTER TABLE `exp_relationships`
 ADD PRIMARY KEY (`relationship_id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `child_id` (`child_id`), ADD KEY `field_id` (`field_id`), ADD KEY `grid_row_id` (`grid_row_id`);

--
-- Indexes for table `exp_remember_me`
--
ALTER TABLE `exp_remember_me`
 ADD PRIMARY KEY (`remember_me_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `exp_reset_password`
--
ALTER TABLE `exp_reset_password`
 ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `exp_revision_tracker`
--
ALTER TABLE `exp_revision_tracker`
 ADD PRIMARY KEY (`tracker_id`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `exp_rte_tools`
--
ALTER TABLE `exp_rte_tools`
 ADD PRIMARY KEY (`tool_id`), ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `exp_rte_toolsets`
--
ALTER TABLE `exp_rte_toolsets`
 ADD PRIMARY KEY (`toolset_id`), ADD KEY `member_id` (`member_id`), ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `exp_search`
--
ALTER TABLE `exp_search`
 ADD PRIMARY KEY (`search_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_search_log`
--
ALTER TABLE `exp_search_log`
 ADD PRIMARY KEY (`id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_security_hashes`
--
ALTER TABLE `exp_security_hashes`
 ADD PRIMARY KEY (`hash_id`), ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `exp_seolite_config`
--
ALTER TABLE `exp_seolite_config`
 ADD PRIMARY KEY (`seolite_config_id`);

--
-- Indexes for table `exp_seolite_content`
--
ALTER TABLE `exp_seolite_content`
 ADD PRIMARY KEY (`seolite_content_id`);

--
-- Indexes for table `exp_sessions`
--
ALTER TABLE `exp_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `exp_sites`
--
ALTER TABLE `exp_sites`
 ADD PRIMARY KEY (`site_id`), ADD KEY `site_name` (`site_name`);

--
-- Indexes for table `exp_snippets`
--
ALTER TABLE `exp_snippets`
 ADD PRIMARY KEY (`snippet_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_specialty_templates`
--
ALTER TABLE `exp_specialty_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `template_name` (`template_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_stats`
--
ALTER TABLE `exp_stats`
 ADD PRIMARY KEY (`stat_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_statuses`
--
ALTER TABLE `exp_statuses`
 ADD PRIMARY KEY (`status_id`), ADD KEY `group_id` (`group_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_status_groups`
--
ALTER TABLE `exp_status_groups`
 ADD PRIMARY KEY (`group_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_status_no_access`
--
ALTER TABLE `exp_status_no_access`
 ADD PRIMARY KEY (`status_id`,`member_group`);

--
-- Indexes for table `exp_tag_bad_tags`
--
ALTER TABLE `exp_tag_bad_tags`
 ADD PRIMARY KEY (`tag_id`), ADD KEY `tag_name` (`tag_name`), ADD KEY `site_id` (`site_id`), ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `exp_tag_entries`
--
ALTER TABLE `exp_tag_entries`
 ADD KEY `entry_id` (`entry_id`), ADD KEY `tag_id` (`tag_id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `site_id` (`site_id`), ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `exp_tag_groups`
--
ALTER TABLE `exp_tag_groups`
 ADD PRIMARY KEY (`tag_group_id`);

--
-- Indexes for table `exp_tag_preferences`
--
ALTER TABLE `exp_tag_preferences`
 ADD PRIMARY KEY (`tag_preference_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_tag_subscriptions`
--
ALTER TABLE `exp_tag_subscriptions`
 ADD PRIMARY KEY (`tag_id`,`member_id`,`site_id`), ADD KEY `site_id` (`site_id`), ADD KEY `member_id` (`member_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `exp_tag_tags`
--
ALTER TABLE `exp_tag_tags`
 ADD PRIMARY KEY (`tag_id`), ADD KEY `tag_name` (`tag_name`), ADD KEY `tag_alpha` (`tag_alpha`), ADD KEY `author_id` (`author_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_templates`
--
ALTER TABLE `exp_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `group_id` (`group_id`), ADD KEY `template_name` (`template_name`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_template_groups`
--
ALTER TABLE `exp_template_groups`
 ADD PRIMARY KEY (`group_id`), ADD KEY `site_id` (`site_id`), ADD KEY `group_name_idx` (`group_name`), ADD KEY `group_order_idx` (`group_order`);

--
-- Indexes for table `exp_template_member_groups`
--
ALTER TABLE `exp_template_member_groups`
 ADD PRIMARY KEY (`group_id`,`template_group_id`);

--
-- Indexes for table `exp_template_morsels_cache`
--
ALTER TABLE `exp_template_morsels_cache`
 ADD PRIMARY KEY (`cache_id`), ADD KEY `morsel_name` (`morsel_name`);

--
-- Indexes for table `exp_template_morsels_dynamic_cache`
--
ALTER TABLE `exp_template_morsels_dynamic_cache`
 ADD PRIMARY KEY (`cache_id`), ADD UNIQUE KEY `hash` (`hash`), ADD KEY `parent_id` (`parent_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_template_morsels_preferences`
--
ALTER TABLE `exp_template_morsels_preferences`
 ADD PRIMARY KEY (`preference_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_template_morsels_queue`
--
ALTER TABLE `exp_template_morsels_queue`
 ADD PRIMARY KEY (`queue_id`), ADD KEY `site_id` (`site_id`), ADD KEY `queue_hash` (`queue_hash`), ADD KEY `queue_status` (`queue_status`);

--
-- Indexes for table `exp_template_morsels_refresh_rules`
--
ALTER TABLE `exp_template_morsels_refresh_rules`
 ADD PRIMARY KEY (`rule_id`), ADD KEY `cache_id` (`cache_id`), ADD KEY `template_id` (`template_id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `category_group_id` (`category_group_id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_template_no_access`
--
ALTER TABLE `exp_template_no_access`
 ADD PRIMARY KEY (`template_id`,`member_group`);

--
-- Indexes for table `exp_template_routes`
--
ALTER TABLE `exp_template_routes`
 ADD PRIMARY KEY (`route_id`), ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `exp_throttle`
--
ALTER TABLE `exp_throttle`
 ADD PRIMARY KEY (`throttle_id`), ADD KEY `ip_address` (`ip_address`), ADD KEY `last_activity` (`last_activity`);

--
-- Indexes for table `exp_upload_no_access`
--
ALTER TABLE `exp_upload_no_access`
 ADD PRIMARY KEY (`upload_id`,`member_group`);

--
-- Indexes for table `exp_upload_prefs`
--
ALTER TABLE `exp_upload_prefs`
 ADD PRIMARY KEY (`id`), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `exp_wygwam_configs`
--
ALTER TABLE `exp_wygwam_configs`
 ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `exp_zoo_flexible_admin_menus`
--
ALTER TABLE `exp_zoo_flexible_admin_menus`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exp_accessories`
--
ALTER TABLE `exp_accessories`
MODIFY `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_actions`
--
ALTER TABLE `exp_actions`
MODIFY `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `exp_ajw_datagrab`
--
ALTER TABLE `exp_ajw_datagrab`
MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_assets_files`
--
ALTER TABLE `exp_assets_files`
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `exp_assets_folders`
--
ALTER TABLE `exp_assets_folders`
MODIFY `folder_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_assets_sources`
--
ALTER TABLE `exp_assets_sources`
MODIFY `source_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_captcha`
--
ALTER TABLE `exp_captcha`
MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_categories`
--
ALTER TABLE `exp_categories`
MODIFY `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exp_category_fields`
--
ALTER TABLE `exp_category_fields`
MODIFY `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_category_groups`
--
ALTER TABLE `exp_category_groups`
MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_channels`
--
ALTER TABLE `exp_channels`
MODIFY `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_channel_entries_autosave`
--
ALTER TABLE `exp_channel_entries_autosave`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `exp_channel_fields`
--
ALTER TABLE `exp_channel_fields`
MODIFY `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `exp_channel_form_settings`
--
ALTER TABLE `exp_channel_form_settings`
MODIFY `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_channel_titles`
--
ALTER TABLE `exp_channel_titles`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `exp_content_types`
--
ALTER TABLE `exp_content_types`
MODIFY `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_cp_log`
--
ALTER TABLE `exp_cp_log`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `exp_cp_search_index`
--
ALTER TABLE `exp_cp_search_index`
MODIFY `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_developer_log`
--
ALTER TABLE `exp_developer_log`
MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_email_cache`
--
ALTER TABLE `exp_email_cache`
MODIFY `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_email_console_cache`
--
ALTER TABLE `exp_email_console_cache`
MODIFY `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_email_tracker`
--
ALTER TABLE `exp_email_tracker`
MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_entry_versioning`
--
ALTER TABLE `exp_entry_versioning`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_extensions`
--
ALTER TABLE `exp_extensions`
MODIFY `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `exp_fieldtypes`
--
ALTER TABLE `exp_fieldtypes`
MODIFY `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `exp_field_formatting`
--
ALTER TABLE `exp_field_formatting`
MODIFY `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `exp_field_groups`
--
ALTER TABLE `exp_field_groups`
MODIFY `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_files`
--
ALTER TABLE `exp_files`
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `exp_file_dimensions`
--
ALTER TABLE `exp_file_dimensions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exp_file_watermarks`
--
ALTER TABLE `exp_file_watermarks`
MODIFY `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_composer_layouts`
--
ALTER TABLE `exp_freeform_composer_layouts`
MODIFY `composer_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_composer_templates`
--
ALTER TABLE `exp_freeform_composer_templates`
MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_email_logs`
--
ALTER TABLE `exp_freeform_email_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_fields`
--
ALTER TABLE `exp_freeform_fields`
MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_freeform_fieldtypes`
--
ALTER TABLE `exp_freeform_fieldtypes`
MODIFY `fieldtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_freeform_file_uploads`
--
ALTER TABLE `exp_freeform_file_uploads`
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_forms`
--
ALTER TABLE `exp_freeform_forms`
MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_freeform_form_entries_1`
--
ALTER TABLE `exp_freeform_form_entries_1`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_freeform_multipage_hashes`
--
ALTER TABLE `exp_freeform_multipage_hashes`
MODIFY `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_notification_templates`
--
ALTER TABLE `exp_freeform_notification_templates`
MODIFY `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_params`
--
ALTER TABLE `exp_freeform_params`
MODIFY `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_freeform_preferences`
--
ALTER TABLE `exp_freeform_preferences`
MODIFY `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_freeform_user_email`
--
ALTER TABLE `exp_freeform_user_email`
MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_global_variables`
--
ALTER TABLE `exp_global_variables`
MODIFY `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `exp_grid_columns`
--
ALTER TABLE `exp_grid_columns`
MODIFY `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_html_buttons`
--
ALTER TABLE `exp_html_buttons`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exp_layout_publish`
--
ALTER TABLE `exp_layout_publish`
MODIFY `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `exp_low_variable_groups`
--
ALTER TABLE `exp_low_variable_groups`
MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exp_matrix_cols`
--
ALTER TABLE `exp_matrix_cols`
MODIFY `col_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_matrix_data`
--
ALTER TABLE `exp_matrix_data`
MODIFY `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_members`
--
ALTER TABLE `exp_members`
MODIFY `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_member_bulletin_board`
--
ALTER TABLE `exp_member_bulletin_board`
MODIFY `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_member_fields`
--
ALTER TABLE `exp_member_fields`
MODIFY `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_message_attachments`
--
ALTER TABLE `exp_message_attachments`
MODIFY `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_message_copies`
--
ALTER TABLE `exp_message_copies`
MODIFY `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_message_data`
--
ALTER TABLE `exp_message_data`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_message_listed`
--
ALTER TABLE `exp_message_listed`
MODIFY `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_modules`
--
ALTER TABLE `exp_modules`
MODIFY `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `exp_online_users`
--
ALTER TABLE `exp_online_users`
MODIFY `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `exp_pages_configuration`
--
ALTER TABLE `exp_pages_configuration`
MODIFY `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_password_lockout`
--
ALTER TABLE `exp_password_lockout`
MODIFY `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_playa_relationships`
--
ALTER TABLE `exp_playa_relationships`
MODIFY `rel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `exp_relationships`
--
ALTER TABLE `exp_relationships`
MODIFY `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_reset_password`
--
ALTER TABLE `exp_reset_password`
MODIFY `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_revision_tracker`
--
ALTER TABLE `exp_revision_tracker`
MODIFY `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_rte_tools`
--
ALTER TABLE `exp_rte_tools`
MODIFY `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exp_rte_toolsets`
--
ALTER TABLE `exp_rte_toolsets`
MODIFY `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_search_log`
--
ALTER TABLE `exp_search_log`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_security_hashes`
--
ALTER TABLE `exp_security_hashes`
MODIFY `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exp_seolite_config`
--
ALTER TABLE `exp_seolite_config`
MODIFY `seolite_config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_seolite_content`
--
ALTER TABLE `exp_seolite_content`
MODIFY `seolite_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `exp_sites`
--
ALTER TABLE `exp_sites`
MODIFY `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_snippets`
--
ALTER TABLE `exp_snippets`
MODIFY `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_specialty_templates`
--
ALTER TABLE `exp_specialty_templates`
MODIFY `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `exp_stats`
--
ALTER TABLE `exp_stats`
MODIFY `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_statuses`
--
ALTER TABLE `exp_statuses`
MODIFY `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_status_groups`
--
ALTER TABLE `exp_status_groups`
MODIFY `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_tag_bad_tags`
--
ALTER TABLE `exp_tag_bad_tags`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_tag_groups`
--
ALTER TABLE `exp_tag_groups`
MODIFY `tag_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_tag_preferences`
--
ALTER TABLE `exp_tag_preferences`
MODIFY `tag_preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `exp_tag_tags`
--
ALTER TABLE `exp_tag_tags`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_templates`
--
ALTER TABLE `exp_templates`
MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exp_template_groups`
--
ALTER TABLE `exp_template_groups`
MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exp_template_morsels_cache`
--
ALTER TABLE `exp_template_morsels_cache`
MODIFY `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exp_template_morsels_dynamic_cache`
--
ALTER TABLE `exp_template_morsels_dynamic_cache`
MODIFY `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `exp_template_morsels_preferences`
--
ALTER TABLE `exp_template_morsels_preferences`
MODIFY `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_template_morsels_queue`
--
ALTER TABLE `exp_template_morsels_queue`
MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_template_morsels_refresh_rules`
--
ALTER TABLE `exp_template_morsels_refresh_rules`
MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `exp_template_routes`
--
ALTER TABLE `exp_template_routes`
MODIFY `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exp_throttle`
--
ALTER TABLE `exp_throttle`
MODIFY `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_upload_prefs`
--
ALTER TABLE `exp_upload_prefs`
MODIFY `id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_wygwam_configs`
--
ALTER TABLE `exp_wygwam_configs`
MODIFY `config_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_zoo_flexible_admin_menus`
--
ALTER TABLE `exp_zoo_flexible_admin_menus`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
