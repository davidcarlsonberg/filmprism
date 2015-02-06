-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2015 at 01:57 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_assets_files`
--

INSERT INTO `exp_assets_files` (`file_id`, `folder_id`, `source_type`, `source_id`, `filedir_id`, `file_name`, `title`, `date`, `alt_text`, `caption`, `author`, `desc`, `location`, `keywords`, `date_modified`, `kind`, `width`, `height`, `size`, `search_keywords`) VALUES
(1, 1, 'ee', NULL, 1, 'hobbit-movie-poster-01.jpg', NULL, 1418946137, NULL, NULL, NULL, NULL, NULL, NULL, 1418946137, 'image', 350, 525, 68033, 'hobbit-movie-poster-01.jpg'),
(2, 1, 'ee', NULL, 1, 'hobbit-movie-poster-02.jpg', NULL, 1418946137, NULL, NULL, NULL, NULL, NULL, NULL, 1418946137, 'image', 350, 519, 63515, 'hobbit-movie-poster-02.jpg'),
(3, 1, 'ee', NULL, 1, 'birdman-poster-01.jpg', NULL, 1422158705, NULL, NULL, NULL, NULL, NULL, NULL, 1422158705, 'image', 400, 626, 65198, 'birdman-poster-01.jpg'),
(4, 2, 'ee', NULL, 4, 'birdman-poster-00.jpg', NULL, 1422158379, NULL, NULL, NULL, NULL, NULL, NULL, 1422158379, 'image', 486, 720, 81842, 'birdman-poster-00.jpg'),
(5, 1, 'ee', NULL, 1, 'under-the-skin.jpg', NULL, 1422168777, NULL, NULL, NULL, NULL, NULL, NULL, 1422168777, 'image', 1920, 1080, 1092334, 'under-the-skin.jpg'),
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
(16, 1, 'ee', NULL, 1, 'oitnb-box-01.jpg', NULL, 1422259349, NULL, NULL, NULL, NULL, NULL, NULL, 1422259349, 'image', 350, 520, 87710, 'oitnb-box-01.jpg'),
(17, 1, 'ee', NULL, 1, 'Birdman_poster.jpg', NULL, 1422324928, NULL, NULL, NULL, NULL, NULL, NULL, 1422324928, 'image', 270, 400, 44404, 'Birdman_poster.jpg'),
(18, 3, 'ee', NULL, 2, 'hr_Birdman_16.jpg', NULL, 1422328611, NULL, NULL, NULL, NULL, NULL, NULL, 1422328611, 'image', 1280, 692, 109255, 'hr_Birdman_16.jpg'),
(19, 3, 'ee', NULL, 2, 'birdman_12-620x411.png', NULL, 1422328859, NULL, NULL, NULL, NULL, NULL, NULL, 1422328859, 'image', 620, 411, 445971, 'birdman_12-620x411.png'),
(20, 3, 'ee', NULL, 2, 'birdman.jpg', NULL, 1422331869, NULL, NULL, NULL, NULL, NULL, NULL, 1422331869, 'image', 630, 420, 101741, 'birdman.jpg'),
(21, 3, 'ee', NULL, 2, 'michael-keaton-birdman-movie.jpg', NULL, 1422332631, NULL, NULL, NULL, NULL, NULL, NULL, 1422332631, 'image', 634, 610, 129444, 'michael-keaton-birdman-movie.jpg'),
(22, 3, 'ee', NULL, 2, 'wgirmpbhcvolewmk1cxk.jpg', NULL, 1422332736, NULL, NULL, NULL, NULL, NULL, NULL, 1422332736, 'image', 636, 424, 61690, 'wgirmpbhcvolewmk1cxk.jpg'),
(23, 3, 'ee', NULL, 2, 'birdman_(1).jpg', NULL, 1422332937, NULL, NULL, NULL, NULL, NULL, NULL, 1422332937, 'image', 636, 380, 59067, 'birdman_(1).jpg'),
(24, 3, 'ee', NULL, 2, 'Boyhood_-_Arquette_time.jpg', '"Boyhood" - Patricia Arquette as Olivia Evans', 1422376203, '"Boyhood" - Patricia Arquette as Olivia Evans', 'Headshots of Patricia Arquette over the course of production', 'IFC FIlms', 'Headshots of Patricia Arquette over the course of production', NULL, NULL, 1422376203, 'image', 680, 398, 73668, 'Boyhood_-_Arquette_time.jpg,"Boyhood" - Patricia Arquette as Olivia Evans,"Boyhood" - Patricia Arquette as Olivia Evans,Headshots of Patricia Arquette over the course of production,IFC FIlms,Headshots of Patricia Arquette over the course of production'),
(25, 3, 'ee', NULL, 2, 'Boyhood_-_Linklater_Hawke_on-set.jpg', '"Boyhood" - Richard Linklater directs Ethan Hawke', 1422376203, '"Boyhood" - Richard Linklater directs Ethan Hawke', '"Boyhood" - Richard Linklater directs Ethan Hawke', 'IFC Films', 'Richard Linklater directing Ethan Hawke', NULL, NULL, 1422376203, 'image', 600, 399, 65115, 'Boyhood_-_Linklater_Hawke_on-set.jpg,"Boyhood" - Richard Linklater directs Ethan Hawke,"Boyhood" - Richard Linklater directs Ethan Hawke,"Boyhood" - Richard Linklater directs Ethan Hawke,IFC Films,Richard Linklater directing Ethan Hawke'),
(26, 3, 'ee', NULL, 2, 'Boyhood_-_Coltrane_time.jpeg', '"Boyhood" - Ellar Coltrane as Mason Evans, Jr.', 1422376203, '"Boyhood" - Ellar Coltrane as Mason Evans, Jr.', 'Headshots of Ellar Coltrane over the course of production', 'IFC Films', 'Headshots of Ellar Coltrane over the course of production', NULL, NULL, 1422376203, 'image', 1024, 869, 108462, 'Boyhood_-_Coltrane_time.jpeg,"Boyhood" - Ellar Coltrane as Mason Evans, Jr.,"Boyhood" - Ellar Coltrane as Mason Evans, Jr.,Headshots of Ellar Coltrane over the course of production,IFC Films,Headshots of Ellar Coltrane over the course of production'),
(27, 3, 'ee', NULL, 2, 'Boyhood_-_screencap_-_year_1.jpg', '"Boyhood" - Mason, Age 6', 1422376210, 'Frame still from "Boyhood"', '"Boyhood" - Mason, Age 6', 'IFC Films', 'Mason buries a bird', NULL, NULL, 1422376210, 'image', 1120, 630, 173567, 'Boyhood_-_screencap_-_year_1.jpg,"Boyhood" - Mason, Age 6,Frame still from "Boyhood","Boyhood" - Mason, Age 6,IFC Films,Mason buries a bird'),
(28, 1, 'ee', NULL, 1, 'Boyhood_-_poster.jpg', 'Original "Boyhood" poster', 1422376242, NULL, 'Original "Boyhood" poster', 'IFC Films', 'Original "Boyhood" poster', NULL, 'Boyhood', 1422376242, 'image', 610, 905, 321724, 'Boyhood_-_poster.jpg,Original "Boyhood" poster,Original "Boyhood" poster,IFC Films,Original "Boyhood" poster,Boyhood'),
(29, 1, 'ee', NULL, 1, 'GBH-mainposter.jpg', NULL, 1422379471, NULL, NULL, NULL, NULL, NULL, NULL, 1422379471, 'image', 400, 575, 83735, 'GBH-mainposter.jpg'),
(30, 3, 'ee', NULL, 2, 'GBH-onset2.jpg', NULL, 1422379474, NULL, NULL, NULL, NULL, NULL, NULL, 1422379474, 'image', 726, 396, 270283, 'GBH-onset2.jpg'),
(31, 1, 'ee', NULL, 1, 'GBH-poster1.jpg', NULL, 1422379478, NULL, NULL, NULL, NULL, NULL, NULL, 1422379478, 'image', 960, 1499, 277009, 'GBH-poster1.jpg'),
(32, 3, 'ee', NULL, 2, 'GBH-still1.jpg', NULL, 1422379484, NULL, NULL, NULL, NULL, NULL, NULL, 1422379484, 'image', 2000, 1000, 307293, 'GBH-still1.jpg'),
(33, 3, 'ee', NULL, 2, 'GBH-still2.jpg', NULL, 1422379489, NULL, NULL, NULL, NULL, NULL, NULL, 1422379489, 'image', 2000, 1000, 254350, 'GBH-still2.jpg'),
(34, 3, 'ee', NULL, 2, 'GBH-cast.jpg', NULL, 1422379492, NULL, NULL, NULL, NULL, NULL, NULL, 1422379492, 'image', 4724, 3543, 2368348, 'GBH-cast.jpg'),
(35, 3, 'ee', NULL, 2, 'GBH-still3.jpg', NULL, 1422379498, NULL, NULL, NULL, NULL, NULL, NULL, 1422379498, 'image', 1200, 800, 913514, 'GBH-still3.jpg'),
(36, 3, 'ee', NULL, 2, 'GBH-onset1.jpg', NULL, 1422379537, NULL, NULL, NULL, NULL, NULL, NULL, 1422379537, 'image', 2000, 1000, 335015, 'GBH-onset1.jpg'),
(37, 3, 'ee', NULL, 2, 'BoyApple_final_scene.jpg', NULL, 1422387820, NULL, NULL, NULL, NULL, NULL, NULL, 1422387820, 'image', 620, 386, 167812, 'BoyApple_final_scene.jpg'),
(38, 3, 'ee', NULL, 2, 'imitation_game_dancing_still.jpg', NULL, 1422389630, NULL, NULL, NULL, NULL, NULL, NULL, 1422389630, 'image', 800, 451, 67270, 'imitation_game_dancing_still.jpg'),
(39, 3, 'ee', NULL, 2, 'ig_04297r_lg.jpg', NULL, 1422389631, NULL, NULL, NULL, NULL, NULL, NULL, 1422389631, 'image', 670, 377, 167292, 'ig_04297r_lg.jpg'),
(40, 1, 'ee', NULL, 1, 'The-Imitation-Game-poster-1.jpg', NULL, 1422389634, NULL, NULL, NULL, NULL, NULL, NULL, 1422389634, 'image', 270, 400, 40286, 'The-Imitation-Game-poster-1.jpg'),
(41, 3, 'ee', NULL, 2, 'imitation-game.jpg', NULL, 1422389634, NULL, NULL, NULL, NULL, NULL, NULL, 1422389634, 'image', 544, 800, 341011, 'imitation-game.jpg'),
(42, 3, 'ee', NULL, 2, 'Turing-arrested.jpg', NULL, 1422389637, NULL, NULL, NULL, NULL, NULL, NULL, 1422389637, 'image', 1280, 852, 121440, 'Turing-arrested.jpg'),
(43, 3, 'ee', NULL, 2, 'IG_02611.jpeg', NULL, 1422389643, NULL, NULL, NULL, NULL, NULL, NULL, 1422389643, 'image', 4256, 2832, 1137607, 'IG_02611.jpeg'),
(44, 1, 'ee', NULL, 1, 'A_Most_Violent_Year_Movie_Poster.jpg', NULL, 1422390088, NULL, NULL, NULL, NULL, NULL, NULL, 1422390088, 'image', 486, 720, 48951, 'A_Most_Violent_Year_Movie_Poster.jpg'),
(45, 3, 'ee', NULL, 2, 'a_most_violent_year_2014_movie-1440x900.jpg', NULL, 1422390714, NULL, NULL, NULL, NULL, NULL, NULL, 1422390714, 'image', 1440, 900, 376028, 'a_most_violent_year_2014_movie-1440x900.jpg'),
(46, 3, 'ee', NULL, 2, 'A_Most_Violent_Year_-_Full_Text_poster.jpg', NULL, 1422390928, NULL, NULL, NULL, NULL, NULL, NULL, 1422390928, 'image', 214, 334, 19559, 'A_Most_Violent_Year_-_Full_Text_poster.jpg'),
(47, 1, 'ee', NULL, 1, 'Selma-Poster.jpg', NULL, 1422392330, NULL, NULL, NULL, NULL, NULL, NULL, 1422392330, 'image', 1312, 2048, 192008, 'Selma-Poster.jpg'),
(48, 3, 'ee', NULL, 2, '150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg', NULL, 1422392726, NULL, NULL, NULL, NULL, NULL, NULL, 1422392726, 'image', 590, 421, 132624, '150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg'),
(49, 3, 'ee', NULL, 2, 'Selma-David-Oyelowo-Carmen-Ejogo-.jpg', NULL, 1422392726, NULL, NULL, NULL, NULL, NULL, NULL, 1422392726, 'image', 2000, 1333, 427900, 'Selma-David-Oyelowo-Carmen-Ejogo-.jpg'),
(50, 3, 'ee', NULL, 2, 'selma.jpg', NULL, 1422392728, NULL, NULL, NULL, NULL, NULL, NULL, 1422392728, 'image', 612, 380, 75134, 'selma.jpg'),
(51, 3, 'ee', NULL, 2, 'selma-past-mirror-on-the-present.jpg', NULL, 1422392732, NULL, NULL, NULL, NULL, NULL, NULL, 1422392732, 'image', 670, 377, 170036, 'selma-past-mirror-on-the-present.jpg'),
(52, 3, 'ee', NULL, 2, '04.jpg', NULL, 1422392732, NULL, NULL, NULL, NULL, NULL, NULL, 1422392732, 'image', 1400, 933, 132144, '04.jpg'),
(53, 3, 'ee', NULL, 2, 'still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg', NULL, 1422393549, NULL, NULL, NULL, NULL, NULL, NULL, 1422393549, 'image', 2048, 1365, 351250, 'still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg'),
(54, 3, 'ee', NULL, 2, 'la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg', NULL, 1422395366, NULL, NULL, NULL, NULL, NULL, NULL, 1422395366, 'image', 2000, 1333, 833721, 'la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg'),
(55, 3, 'ee', NULL, 2, 'A_Most_Violent_Year_-_Dinner_Image.jpg', NULL, 1422396119, NULL, NULL, NULL, NULL, NULL, NULL, 1422396119, 'image', 2000, 1125, 471905, 'A_Most_Violent_Year_-_Dinner_Image.jpg'),
(56, 3, 'ee', NULL, 2, 'A_Most_Violent_Year_-_Abel_and_Anna.jpg', NULL, 1422396705, NULL, NULL, NULL, NULL, NULL, NULL, 1422396705, 'image', 1200, 800, 124806, 'A_Most_Violent_Year_-_Abel_and_Anna.jpg'),
(57, 3, 'ee', NULL, 2, 'theory_of_everything_still_a_l.jpg', NULL, 1422405854, NULL, NULL, NULL, NULL, NULL, NULL, 1422405854, 'image', 565, 318, 40476, 'theory_of_everything_still_a_l.jpg'),
(58, 3, 'ee', NULL, 2, 'Theory_of_Everything_WEdding_Kiss_Still.jpg', NULL, 1422405855, NULL, NULL, NULL, NULL, NULL, NULL, 1422405855, 'image', 972, 548, 154472, 'Theory_of_Everything_WEdding_Kiss_Still.jpg'),
(59, 1, 'ee', NULL, 1, 'Theory_of_Everything_Poster.jpg', NULL, 1422405855, NULL, NULL, NULL, NULL, NULL, NULL, 1422405855, 'image', 540, 800, 162981, 'Theory_of_Everything_Poster.jpg'),
(60, 3, 'ee', NULL, 2, 'THEORY-articleLarge.jpg', NULL, 1422405855, NULL, NULL, NULL, NULL, NULL, NULL, 1422405855, 'image', 600, 399, 55718, 'THEORY-articleLarge.jpg'),
(61, 3, 'ee', NULL, 2, 'theoryofeverythingpicz.jpg', NULL, 1422405857, NULL, NULL, NULL, NULL, NULL, NULL, 1422405857, 'image', 1352, 900, 197969, 'theoryofeverythingpicz.jpg'),
(62, 3, 'ee', NULL, 2, 'theory2.png', NULL, 1422405859, NULL, NULL, NULL, NULL, NULL, NULL, 1422405859, 'image', 602, 358, 407135, 'theory2.png'),
(63, 3, 'ee', NULL, 2, 'TTOE_D25_07914_a_h.jpg', NULL, 1422405865, NULL, NULL, NULL, NULL, NULL, NULL, 1422405865, 'image', 972, 548, 81452, 'TTOE_D25_07914_a_h.jpg'),
(64, 3, 'ee', NULL, 2, '2-or-3-things.jpg', NULL, 1422407792, NULL, NULL, NULL, NULL, NULL, NULL, 1422407792, 'image', 853, 366, 84623, '2-or-3-things.jpg'),
(65, 3, 'ee', NULL, 2, 'pierrot.jpg', NULL, 1422408441, NULL, NULL, NULL, NULL, NULL, NULL, 1422408441, 'image', 640, 360, 15250, 'pierrot.jpg'),
(66, 3, 'ee', NULL, 2, 'alice21.jpg', NULL, 1422409175, NULL, NULL, NULL, NULL, NULL, NULL, 1422409175, 'image', 594, 396, 69942, 'alice21.jpg'),
(67, 3, 'ee', NULL, 2, 'still-alice-julianne-moore-kristen-stewart.jpg', NULL, 1422409176, NULL, NULL, NULL, NULL, NULL, NULL, 1422409176, 'image', 640, 426, 55138, 'still-alice-julianne-moore-kristen-stewart.jpg'),
(68, 3, 'ee', NULL, 2, 'still-alice-alec-baldwin-julianne-moore-2.jpg', NULL, 1422409176, NULL, NULL, NULL, NULL, NULL, NULL, 1422409176, 'image', 1100, 686, 193901, 'still-alice-alec-baldwin-julianne-moore-2.jpg'),
(69, 3, 'ee', NULL, 2, 'still-alice.jpeg', NULL, 1422409178, NULL, NULL, NULL, NULL, NULL, NULL, 1422409178, 'image', 680, 478, 35927, 'still-alice.jpeg'),
(70, 1, 'ee', NULL, 1, 'STILL-ALICE-onesheet.jpg', NULL, 1422409180, NULL, NULL, NULL, NULL, NULL, NULL, 1422409180, 'image', 720, 1066, 421112, 'STILL-ALICE-onesheet.jpg'),
(71, 3, 'ee', NULL, 2, 'Wild.jpg', NULL, 1422410369, NULL, NULL, NULL, NULL, NULL, NULL, 1422410369, 'image', 612, 380, 105612, 'Wild.jpg'),
(72, 1, 'ee', NULL, 1, 'wild_xlg.jpg', NULL, 1422410370, NULL, NULL, NULL, NULL, NULL, NULL, 1422410370, 'image', 506, 750, 279768, 'wild_xlg.jpg'),
(73, 3, 'ee', NULL, 2, '9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg', NULL, 1422410374, NULL, NULL, NULL, NULL, NULL, NULL, 1422410374, 'image', 1366, 768, 870139, '9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg'),
(74, 1, 'ee', NULL, 1, 'American-Sniper-Movie-Poster.jpg', NULL, 1422410416, NULL, NULL, NULL, NULL, NULL, NULL, 1422410416, 'image', 800, 1186, 89801, 'American-Sniper-Movie-Poster.jpg'),
(75, 3, 'ee', NULL, 2, 'American_Sniper_Movie_-_sniper_pic.jpg', NULL, 1422411302, NULL, NULL, NULL, NULL, NULL, NULL, 1422411302, 'image', 800, 451, 47317, 'American_Sniper_Movie_-_sniper_pic.jpg'),
(76, 3, 'ee', NULL, 2, '02BUCKLEY2-articleLarge.jpg', NULL, 1422411459, NULL, NULL, NULL, NULL, NULL, NULL, 1422411459, 'image', 600, 400, 85268, '02BUCKLEY2-articleLarge.jpg'),
(77, 3, 'ee', NULL, 2, 'AmericanSniper_trailer.jpg', NULL, 1422411714, NULL, NULL, NULL, NULL, NULL, NULL, 1422411714, 'image', 1280, 716, 265623, 'AmericanSniper_trailer.jpg'),
(78, 1, 'ee', NULL, 1, 'tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg', NULL, 1422411827, NULL, NULL, NULL, NULL, NULL, NULL, 1422411827, 'image', 500, 720, 58478, 'tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg'),
(79, 3, 'ee', NULL, 2, 'whiplash-1.jpg', NULL, 1422411835, NULL, NULL, NULL, NULL, NULL, NULL, 1422411835, 'image', 1280, 720, 136147, 'whiplash-1.jpg'),
(80, 3, 'ee', NULL, 2, 'whiplash-blood.jpg', NULL, 1422411840, NULL, NULL, NULL, NULL, NULL, NULL, 1422411840, 'image', 658, 370, 199273, 'whiplash-blood.jpg'),
(81, 3, 'ee', NULL, 2, 'Whiplash.jpg', NULL, 1422411845, NULL, NULL, NULL, NULL, NULL, NULL, 1422411845, 'image', 600, 254, 197004, 'Whiplash.jpg'),
(82, 3, 'ee', NULL, 2, 'Whiplash1.jpg', NULL, 1422411847, NULL, NULL, NULL, NULL, NULL, NULL, 1422411847, 'image', 1600, 1067, 144617, 'Whiplash1.jpg'),
(83, 3, 'ee', NULL, 2, '111.jpg', NULL, 1422411860, NULL, NULL, NULL, NULL, NULL, NULL, 1422411860, 'image', 3600, 2400, 2988313, '111.jpg'),
(84, 3, 'ee', NULL, 2, 'whiplash_milesteller_dig_in_magazine.jpg', NULL, 1422411869, NULL, NULL, NULL, NULL, NULL, NULL, 1422411869, 'image', 3600, 2400, 2747742, 'whiplash_milesteller_dig_in_magazine.jpg'),
(85, 3, 'ee', NULL, 2, 'American-Sniper-1(1).jpg', NULL, 1422411904, NULL, NULL, NULL, NULL, NULL, NULL, 1422411904, 'image', 600, 300, 14687, 'American-Sniper-1(1).jpg'),
(86, 3, 'ee', NULL, 2, 'Clint+Eastwood+Bradley+Cooper+American+Sniper+UaFNY4WtKkxl.jpg', NULL, 1422412255, NULL, NULL, NULL, NULL, NULL, NULL, 1422412255, 'image', 466, 594, 74178, 'Clint+Eastwood+Bradley+Cooper+American+Sniper+UaFNY4WtKkxl.jpg'),
(87, 3, 'ee', NULL, 2, 'Clint_Eastwood_39092.jpg', NULL, 1422412561, NULL, NULL, NULL, NULL, NULL, NULL, 1422412561, 'image', 600, 300, 87533, 'Clint_Eastwood_39092.jpg'),
(88, 3, 'ee', NULL, 2, 'article-2627658-1DD108CA00000578-433_640x911.jpg', NULL, 1422413508, NULL, NULL, NULL, NULL, NULL, NULL, 1422413508, 'image', 640, 911, 130487, 'article-2627658-1DD108CA00000578-433_640x911.jpg'),
(89, 3, 'ee', NULL, 2, 'MDFeatureimage-sniperclint.jpg', NULL, 1422413555, NULL, NULL, NULL, NULL, NULL, NULL, 1422413555, 'image', 770, 514, 336232, 'MDFeatureimage-sniperclint.jpg'),
(90, 3, 'ee', NULL, 2, 'A-Most-Violent-Year-1.jpg', NULL, 1422414025, NULL, NULL, NULL, NULL, NULL, NULL, 1422414025, 'image', 2000, 1333, 691782, 'A-Most-Violent-Year-1.jpg'),
(91, 3, 'ee', NULL, 2, '20150124_inq_svrpix24z-a.JPG', NULL, 1422414107, NULL, NULL, NULL, NULL, NULL, NULL, 1422414107, 'image', 599, 440, 42521, '20150124_inq_svrpix24z-a.JPG'),
(92, 3, 'ee', NULL, 2, 'film-twodays-570.jpg', NULL, 1422414108, NULL, NULL, NULL, NULL, NULL, NULL, 1422414108, 'image', 570, 400, 99079, 'film-twodays-570.jpg'),
(93, 1, 'ee', NULL, 1, 'large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg', NULL, 1422414108, NULL, NULL, NULL, NULL, NULL, NULL, 1422414108, 'image', 400, 600, 53022, 'large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg'),
(94, 3, 'ee', NULL, 2, 'two-days-one-night-picture-5.jpg', NULL, 1422414109, NULL, NULL, NULL, NULL, NULL, NULL, 1422414109, 'image', 680, 478, 67172, 'two-days-one-night-picture-5.jpg'),
(95, 3, 'ee', NULL, 2, 'Z1FTWO23F.jpg', NULL, 1422414294, NULL, NULL, NULL, NULL, NULL, NULL, 1422414294, 'image', 600, 450, 73471, 'Z1FTWO23F.jpg'),
(96, 3, 'ee', NULL, 2, 'bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg', NULL, 1422414688, NULL, NULL, NULL, NULL, NULL, NULL, 1422414688, 'image', 982, 1222, 230827, 'bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg'),
(97, 3, 'ee', NULL, 2, '05CROSSCUTS1-master675.jpg', NULL, 1422415176, NULL, NULL, NULL, NULL, NULL, NULL, 1422415176, 'image', 675, 449, 68626, '05CROSSCUTS1-master675.jpg'),
(98, 1, 'ee', NULL, 1, 'Big_Eyes_Movie_Poster.jpg', NULL, 1422415220, NULL, NULL, NULL, NULL, NULL, NULL, 1422415220, 'image', 180, 267, 25019, 'Big_Eyes_Movie_Poster.jpg'),
(99, 3, 'ee', NULL, 2, 'Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg', NULL, 1422415686, NULL, NULL, NULL, NULL, NULL, NULL, 1422415686, 'image', 619, 349, 56599, 'Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg'),
(100, 3, 'ee', NULL, 2, '1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG', NULL, 1422416187, NULL, NULL, NULL, NULL, NULL, NULL, 1422416187, 'image', 534, 401, 31366, '1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG'),
(101, 3, 'ee', NULL, 2, 'Big_eyes_-_painting.jpeg', NULL, 1422416655, NULL, NULL, NULL, NULL, NULL, NULL, 1422416655, 'image', 680, 478, 90585, 'Big_eyes_-_painting.jpeg'),
(102, 3, 'ee', NULL, 2, 'Big_Eyes_-_Burton_and_Screenwriters.jpg', NULL, 1422416956, NULL, NULL, NULL, NULL, NULL, NULL, 1422416956, 'image', 594, 395, 174662, 'Big_Eyes_-_Burton_and_Screenwriters.jpg'),
(103, 3, 'ee', NULL, 2, 'Walter_Stanley_Keane.jpg', NULL, 1422417121, NULL, NULL, NULL, NULL, NULL, NULL, 1422417121, 'image', 285, 349, 20635, 'Walter_Stanley_Keane.jpg'),
(104, 3, 'ee', NULL, 2, 'Walter_and_Margaret_Keane.jpg', NULL, 1422417211, NULL, NULL, NULL, NULL, NULL, NULL, 1422417211, 'image', 634, 447, 94676, 'Walter_and_Margaret_Keane.jpg'),
(105, 3, 'ee', NULL, 2, 'A-Most-Violent-Year-4.jpg', NULL, 1422417402, NULL, NULL, NULL, NULL, NULL, NULL, 1422417402, 'image', 1500, 844, 1186557, 'A-Most-Violent-Year-4.jpg'),
(106, 3, 'ee', NULL, 2, 'timburton-bigeyes-painting-tsr.jpg', NULL, 1422417543, NULL, NULL, NULL, NULL, NULL, NULL, 1422417543, 'image', 350, 168, 31707, 'timburton-bigeyes-painting-tsr.jpg'),
(107, 3, 'ee', NULL, 2, 'big-eyes-oxygen-promo-movie-trailer-large-6.jpg', NULL, 1422417707, NULL, NULL, NULL, NULL, NULL, NULL, 1422417707, 'image', 1000, 562, 48260, 'big-eyes-oxygen-promo-movie-trailer-large-6.jpg'),
(108, 3, 'ee', NULL, 2, 'mr-turner.jpeg', NULL, 1422477616, NULL, NULL, NULL, NULL, NULL, NULL, 1422477616, 'image', 2800, 1866, 1012092, 'mr-turner.jpeg'),
(109, 3, 'ee', NULL, 2, 'mr-turner.jpg', NULL, 1422477643, NULL, NULL, NULL, NULL, NULL, NULL, 1422477643, 'image', 1600, 875, 818048, 'mr-turner.jpg'),
(110, 3, 'ee', NULL, 2, 'beaf9acf-41d6-431f-a557-525f54b2774c.jpg', NULL, 1422478030, NULL, NULL, NULL, NULL, NULL, NULL, 1422478030, 'image', 2201, 1080, 1030421, 'beaf9acf-41d6-431f-a557-525f54b2774c.jpg'),
(111, 3, 'ee', NULL, 2, '89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg', NULL, 1422478039, NULL, NULL, NULL, NULL, NULL, NULL, 1422478039, 'image', 3000, 1659, 884378, '89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg'),
(112, 1, 'ee', NULL, 1, 'bigtmp_31367.jpg', NULL, 1422478187, NULL, NULL, NULL, NULL, NULL, NULL, 1422478187, 'image', 1000, 1318, 120974, 'bigtmp_31367.jpg'),
(113, 3, 'ee', NULL, 2, 'Nightcrawler_3.jpg', NULL, 1422481442, NULL, NULL, NULL, NULL, NULL, NULL, 1422481442, 'image', 1200, 731, 107689, 'Nightcrawler_3.jpg'),
(114, 3, 'ee', NULL, 2, 'Jake-Gyllenhaal-plays-an--014.jpg', NULL, 1422481455, NULL, NULL, NULL, NULL, NULL, NULL, 1422481455, 'image', 1920, 1152, 894354, 'Jake-Gyllenhaal-plays-an--014.jpg'),
(115, 3, 'ee', NULL, 2, 'nightcrawler-jake-gyllenhaal.jpg', NULL, 1422481465, NULL, NULL, NULL, NULL, NULL, NULL, 1422481465, 'image', 1920, 1180, 1462028, 'nightcrawler-jake-gyllenhaal.jpg'),
(116, 3, 'ee', NULL, 2, 'nightcrawler-jake-gyllenhaal2.jpg', NULL, 1422481473, NULL, NULL, NULL, NULL, NULL, NULL, 1422481473, 'image', 1920, 1280, 1826172, 'nightcrawler-jake-gyllenhaal2.jpg'),
(118, 1, 'ee', NULL, 1, '5454e16ae86e9.jpg', NULL, 1422481612, NULL, NULL, NULL, NULL, NULL, NULL, 1422481612, 'image', 540, 800, 77110, '5454e16ae86e9.jpg'),
(119, 1, 'ee', NULL, 1, '11181015_800.jpg', NULL, 1422489136, NULL, NULL, NULL, NULL, NULL, NULL, 1422489136, 'image', 758, 1200, 78574, '11181015_800.jpg'),
(120, 3, 'ee', NULL, 2, 'r0_185_4274_2589_w1200_h678_fmax.jpg', NULL, 1422490049, NULL, NULL, NULL, NULL, NULL, NULL, 1422490049, 'image', 1200, 675, 65000, 'r0_185_4274_2589_w1200_h678_fmax.jpg'),
(121, 3, 'ee', NULL, 2, '2432_FP_183C_1_B021_0801821_V1.jpg', NULL, 1422490057, NULL, NULL, NULL, NULL, NULL, NULL, 1422490057, 'image', 2880, 1198, 252662, '2432_FP_183C_1_B021_0801821_V1.jpg'),
(122, 3, 'ee', NULL, 2, '1405106378_unbroken-movie-zoom.jpg', NULL, 1422490059, NULL, NULL, NULL, NULL, NULL, NULL, 1422490059, 'image', 3131, 1600, 393437, '1405106378_unbroken-movie-zoom.jpg'),
(123, 3, 'ee', NULL, 2, 'unbrokenbanner.jpg', NULL, 1422490071, NULL, NULL, NULL, NULL, NULL, NULL, 1422490071, 'image', 1720, 968, 218220, 'unbrokenbanner.jpg'),
(124, 1, 'ee', NULL, 1, 'citizenfour-poster.jpeg', NULL, 1422508525, NULL, NULL, NULL, NULL, NULL, NULL, 1422508525, 'image', 640, 940, 79055, 'citizenfour-poster.jpeg'),
(125, 3, 'ee', NULL, 2, '141020_r25652-1200.jpg', NULL, 1422508701, NULL, NULL, NULL, NULL, NULL, NULL, 1422508701, 'image', 1200, 669, 63948, '141020_r25652-1200.jpg'),
(126, 3, 'ee', NULL, 2, 'Citizenfour_article_story_large.jpeg', NULL, 1422508702, NULL, NULL, NULL, NULL, NULL, NULL, 1422508702, 'image', 1012, 675, 99552, 'Citizenfour_article_story_large.jpeg'),
(127, 3, 'ee', NULL, 2, '1412526024572.cached.jpg', NULL, 1422509198, NULL, NULL, NULL, NULL, NULL, NULL, 1422509198, 'image', 2000, 1333, 187115, '1412526024572.cached.jpg'),
(130, 1, 'ee', NULL, 1, 'Txtd-Dom-Rated-Tsr-1sht-VICE.jpg', NULL, 1422509407, NULL, NULL, NULL, NULL, NULL, NULL, 1422509407, 'image', 729, 1080, 1585341, 'Txtd-Dom-Rated-Tsr-1sht-VICE.jpg'),
(129, 3, 'ee', NULL, 2, 'inherent_vice-1.jpg', NULL, 1422509200, NULL, NULL, NULL, NULL, NULL, NULL, 1422509200, 'image', 2000, 1334, 420516, 'inherent_vice-1.jpg'),
(131, 3, 'ee', NULL, 2, 'o-INHERENT-VICE-facebook.jpg', NULL, 1422509427, NULL, NULL, NULL, NULL, NULL, NULL, 1422509427, 'image', 2000, 1000, 166037, 'o-INHERENT-VICE-facebook.jpg'),
(132, 1, 'ee', NULL, 1, 'Boyhood_poster.jpg', NULL, 1422566318, NULL, NULL, NULL, NULL, NULL, NULL, 1422566318, 'image', 400, 400, 64649, 'Boyhood_poster.jpg'),
(133, 1, 'ee', NULL, 1, 'foxcatcher_xlg.jpg', NULL, 1422758156, NULL, NULL, NULL, NULL, NULL, NULL, 1422758156, 'image', 1125, 1500, 293636, 'foxcatcher_xlg.jpg'),
(134, 1, 'ee', NULL, 1, 'goodbye_to_language_1.jpg', NULL, 1422758862, NULL, NULL, NULL, NULL, NULL, NULL, 1422758862, 'image', 1181, 1604, 489174, 'goodbye_to_language_1.jpg'),
(135, 1, 'ee', NULL, 1, 'under_the_skin_us_poster.jpg', NULL, 1422759160, NULL, NULL, NULL, NULL, NULL, NULL, 1422759160, 'image', 1382, 2048, 426077, 'under_the_skin_us_poster.jpg'),
(136, 1, 'ee', NULL, 1, 'MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg', NULL, 1422760164, NULL, NULL, NULL, NULL, NULL, NULL, 1422760164, 'image', 489, 720, 36388, 'MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg'),
(137, 1, 'ee', NULL, 1, 'MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg', NULL, 1422760709, NULL, NULL, NULL, NULL, NULL, NULL, 1422760709, 'image', 214, 317, 19991, 'MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg'),
(138, 1, 'ee', NULL, 1, 'interstellar3.jpg', NULL, 1422761789, NULL, NULL, NULL, NULL, NULL, NULL, 1422761789, 'image', 550, 859, 646461, 'interstellar3.jpg'),
(139, 1, 'ee', NULL, 1, '159386941_bbdd65.jpg', NULL, 1422762753, NULL, NULL, NULL, NULL, NULL, NULL, 1422762753, 'image', 491, 700, 316265, '159386941_bbdd65.jpg'),
(140, 3, 'ee', NULL, 2, '6a00d8341bf7f753ef01bb07b10d55970d.jpg', NULL, 1422769282, NULL, NULL, NULL, NULL, NULL, NULL, 1422769282, 'image', 1920, 1080, 70979, '6a00d8341bf7f753ef01bb07b10d55970d.jpg'),
(141, 3, 'ee', NULL, 2, '673927401147773986.jpg', NULL, 1422769282, NULL, NULL, NULL, NULL, NULL, NULL, 1422769282, 'image', 1400, 932, 240022, '673927401147773986.jpg'),
(142, 3, 'ee', NULL, 2, 'Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg', NULL, 1422769286, NULL, NULL, NULL, NULL, NULL, NULL, 1422769286, 'image', 2190, 930, 145046, 'Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg'),
(143, 3, 'ee', NULL, 2, 'emily_blunt_in_into_the_woods_2014.jpg', NULL, 1422769286, NULL, NULL, NULL, NULL, NULL, NULL, 1422769286, 'image', 2560, 1440, 433808, 'emily_blunt_in_into_the_woods_2014.jpg'),
(144, 3, 'ee', NULL, 2, 'gallery25.jpg', NULL, 1422769291, NULL, NULL, NULL, NULL, NULL, NULL, 1422769291, 'image', 1400, 788, 140403, 'gallery25.jpg'),
(145, 3, 'ee', NULL, 2, 'foxcatcher-channing-tatum-steve-carell.jpg', NULL, 1422769300, NULL, NULL, NULL, NULL, NULL, NULL, 1422769300, 'image', 1280, 853, 276364, 'foxcatcher-channing-tatum-steve-carell.jpg'),
(146, 3, 'ee', NULL, 2, 'gone_girl_review_1.0.jpeg', NULL, 1422769299, NULL, NULL, NULL, NULL, NULL, NULL, 1422769299, 'image', 2827, 2061, 723713, 'gone_girl_review_1.0.jpeg'),
(147, 3, 'ee', NULL, 2, 'gone-girl.jpg', NULL, 1422769305, NULL, NULL, NULL, NULL, NULL, NULL, 1422769305, 'image', 1600, 680, 67727, 'gone-girl.jpg'),
(148, 3, 'ee', NULL, 2, 'GoodbyetoLanguage.jpg', NULL, 1422769309, NULL, NULL, NULL, NULL, NULL, NULL, 1422769309, 'image', 1296, 730, 154794, 'GoodbyetoLanguage.jpg'),
(149, 3, 'ee', NULL, 2, 'inherentvice-movie-review.jpg', NULL, 1422769316, NULL, NULL, NULL, NULL, NULL, NULL, 1422769316, 'image', 2000, 1000, 263792, 'inherentvice-movie-review.jpg'),
(150, 3, 'ee', NULL, 2, 'gone-girl-df-01826cc_rgb.jpg', NULL, 1422769321, NULL, NULL, NULL, NULL, NULL, NULL, 1422769321, 'image', 2838, 1892, 1473667, 'gone-girl-df-01826cc_rgb.jpg'),
(151, 3, 'ee', NULL, 2, 'interstellar_a.jpg', NULL, 1422769325, NULL, NULL, NULL, NULL, NULL, NULL, 1422769325, 'image', 1296, 730, 462800, 'interstellar_a.jpg'),
(152, 3, 'ee', NULL, 2, 'Into-the-Woods-3.jpg', NULL, 1422769329, NULL, NULL, NULL, NULL, NULL, NULL, 1422769329, 'image', 1500, 1001, 362754, 'Into-the-Woods-3.jpg'),
(153, 3, 'ee', NULL, 2, 'maxresdefault.jpg', NULL, 1422769334, NULL, NULL, NULL, NULL, NULL, NULL, 1422769334, 'image', 1920, 1080, 118618, 'maxresdefault.jpg'),
(154, 3, 'ee', NULL, 2, 'o-INTERSTELLAR-TRAILER-facebook.jpg', NULL, 1422769337, NULL, NULL, NULL, NULL, NULL, NULL, 1422769337, 'image', 2000, 1000, 43935, 'o-INTERSTELLAR-TRAILER-facebook.jpg'),
(155, 3, 'ee', NULL, 2, 'Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg', NULL, 1422769338, NULL, NULL, NULL, NULL, NULL, NULL, 1422769338, 'image', 2880, 1800, 755831, 'Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg'),
(156, 3, 'ee', NULL, 2, 'only-lovers-left-alive-2013-L-mZnGID.jpeg', NULL, 1422769340, NULL, NULL, NULL, NULL, NULL, NULL, 1422769340, 'image', 1280, 688, 42740, 'only-lovers-left-alive-2013-L-mZnGID.jpeg'),
(157, 3, 'ee', NULL, 2, 'onlylovers1.jpg', NULL, 1422769348, NULL, NULL, NULL, NULL, NULL, NULL, 1422769348, 'image', 1280, 840, 403114, 'onlylovers1.jpg'),
(158, 3, 'ee', NULL, 2, 'SteveCarellFoxCatcher.jpg', NULL, 1422769348, NULL, NULL, NULL, NULL, NULL, NULL, 1422769348, 'image', 1200, 800, 346739, 'SteveCarellFoxCatcher.jpg'),
(159, 3, 'ee', NULL, 2, 'Under-the-Skin-feat-Scarlett-Johansson.jpg', NULL, 1422769350, NULL, NULL, NULL, NULL, NULL, NULL, 1422769350, 'image', 1536, 830, 59901, 'Under-the-Skin-feat-Scarlett-Johansson.jpg'),
(160, 3, 'ee', NULL, 2, 'FoxcatcherFINAL2.jpg', NULL, 1422769347, NULL, NULL, NULL, NULL, NULL, NULL, 1422769347, 'image', 5760, 3048, 4795084, 'FoxcatcherFINAL2.jpg'),
(161, 1, 'ee', NULL, 1, 'Ida_plakat.jpg', NULL, 1422809502, NULL, NULL, NULL, NULL, NULL, NULL, 1422809502, 'image', 1707, 2500, 877685, 'Ida_plakat.jpg'),
(162, 2, 'ee', NULL, 4, 'Goodbye_to_Language_-_Girl_at_Water_Spout.jpg', NULL, 1423168575, NULL, NULL, NULL, NULL, NULL, NULL, 1423168575, 'image', 800, 449, 100464, 'Goodbye_to_Language_-_Girl_at_Water_Spout.jpg');

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
(17, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(37, 35, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(26, 26, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, 34, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(30, 33, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(27, 27, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(28, 20, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(33, 32, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, 31, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(29, 30, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 15, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(1, 16, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(14, 17, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(15, 18, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, 19, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, 21, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(20, 22, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(21, 23, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(22, 24, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(23, 25, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(24, 28, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(25, 29, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(40, 36, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(44, 37, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(43, 38, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(41, 39, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(42, 40, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(39, 41, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(38, 42, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(47, 43, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, 44, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(50, 45, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(52, 46, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(48, 47, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(53, 48, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(105, 49, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(90, 50, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(59, 51, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(65, 58, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(57, 53, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(63, 54, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(61, 55, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(60, 56, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(64, 57, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(70, 59, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(69, 60, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(68, 61, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(74, 62, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(72, 63, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(75, 64, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(71, 65, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(76, 66, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(73, 67, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(77, 68, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(85, 69, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(78, 70, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(89, 71, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(87, 72, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(81, 73, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(80, 74, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(79, 75, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(83, 76, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(82, 77, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(93, 78, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(96, 79, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(97, 80, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(95, 81, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(98, 82, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(91, 83, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(94, 84, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(92, 85, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(99, 86, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(100, 87, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(107, 88, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(106, 89, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(104, 90, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(112, 91, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(109, 92, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(108, 93, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(111, 94, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(110, 95, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(118, 96, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(114, 97, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(115, 98, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(119, 99, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(120, 100, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(123, 101, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(124, 102, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(126, 103, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(125, 104, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(130, 105, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, 106, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(129, 107, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(131, 108, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(133, 111, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(134, 112, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(135, 113, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(136, 114, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(137, 115, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(138, 116, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(139, 117, 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(148, 137, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(157, 136, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(156, 135, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(141, 134, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(140, 133, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(151, 132, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(143, 130, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(154, 131, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(155, 129, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(152, 128, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(150, 127, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(147, 125, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(146, 126, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(160, 124, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(145, 123, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(144, 122, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(158, 121, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(142, 120, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(153, 119, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(159, 118, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(149, 109, 9, NULL, NULL, NULL, NULL, NULL, 0, 0),
(161, 138, 1, NULL, NULL, NULL, NULL, NULL, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_captcha`
--

INSERT INTO `exp_captcha` (`captcha_id`, `date`, `ip_address`, `word`) VALUES
(1, 1422601045, '173.3.172.44', 'looking88'),
(2, 1422601387, '173.3.172.44', 'used56'),
(3, 1422601616, '173.3.172.44', 'sort39'),
(4, 1422601667, '173.3.172.44', 'miss36'),
(5, 1422601770, '173.3.172.44', 'somewhat67'),
(6, 1422601783, '173.3.172.44', 'type35'),
(7, 1422601790, '173.3.172.44', 'whether89'),
(8, 1422601925, '173.3.172.44', 'learned25'),
(9, 1422601955, '173.3.172.44', 'water92'),
(10, 1422601959, '173.3.172.44', 'stock78'),
(11, 1422601972, '173.3.172.44', 'else37'),
(12, 1422602096, '173.3.172.44', 'section37'),
(13, 1422602106, '173.3.172.44', 'problem21'),
(14, 1422602109, '173.3.172.44', 'same67'),
(15, 1422602115, '173.3.172.44', 'inside57'),
(16, 1422602117, '173.3.172.44', 'set81'),
(17, 1422631533, '174.226.195.81', 'room53'),
(18, 1422636781, '12.130.116.27', 'between49'),
(19, 1422762807, '66.87.117.59', 'type34'),
(20, 1422856554, '99.102.104.159', 'progress17'),
(21, 1422856586, '99.102.104.159', 'price26'),
(22, 1422905225, '64.94.31.206', 'analysis38'),
(23, 1422905321, '64.94.31.206', 'hair32'),
(24, 1422933672, '108.14.78.139', 'keep78'),
(25, 1422933702, '108.14.78.139', 'common84'),
(26, 1422986859, '99.102.104.159', 'side72'),
(27, 1422986865, '99.102.104.159', 'while16'),
(28, 1422988166, '66.87.116.5', 'federal79'),
(29, 1423006929, '108.14.78.139', 'soon35'),
(30, 1423076955, '69.115.217.69', 'days13'),
(31, 1423077012, '69.115.217.69', 'much53'),
(32, 1423077023, '69.115.217.69', 'position93'),
(33, 1423077183, '69.115.217.69', 'couple86'),
(34, 1423097881, '66.87.117.144', 'needed54'),
(35, 1423177514, '66.87.116.127', 'type65'),
(36, 1423180189, '66.87.116.249', 'once78');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_categories`
--

INSERT INTO `exp_categories` (`cat_id`, `site_id`, `group_id`, `parent_id`, `cat_name`, `cat_url_title`, `cat_description`, `cat_image`, `cat_order`) VALUES
(1, 1, 1, 0, 'Comedy', 'comedy', '', '', 1),
(2, 1, 1, 0, 'Drama', 'drama', '', '', 4),
(3, 1, 1, 0, 'Horror', 'horror', '', '', 7),
(4, 1, 1, 0, 'Romantic', 'romantic', '', '', 9),
(5, 1, 2, 0, 'Q & A', 'q-and-a', '', '', 2),
(6, 1, 2, 0, 'Article', 'article', '', '', 1),
(7, 1, 1, 0, 'Crime', 'crime', '', '', 2),
(8, 1, 1, 0, 'World Cinema', 'world-cinema', '', '', 13),
(9, 1, 1, 0, 'Science Fiction', 'science-fiction', '', '', 10),
(10, 1, 1, 0, 'Fantasy', 'fantasy', '', '', 6),
(11, 1, 1, 0, 'Musical', 'musical', '', '', 8),
(12, 1, 1, 0, 'Experimental', 'experimental', '', '', 5),
(13, 1, 1, 0, 'Documentary', 'documentary', '', '', 3),
(14, 1, 1, 0, 'Western', 'western', '', '', 12),
(15, 1, 1, 0, 'War', 'war', '', '', 11);

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
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1);

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
(1, 1, 'Genre', 'a', 2, 'all', '5', '5'),
(2, 1, 'Article Type', 'a', 2, 'all', '5', '5');

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
(6, 1),
(15, 2),
(17, 2),
(17, 3),
(18, 1),
(19, 1),
(19, 2),
(19, 7),
(20, 2),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 1),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 2),
(37, 7),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 2),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 2),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 2),
(60, 5),
(61, 5),
(62, 15),
(63, 2),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 2),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 2),
(78, 8),
(79, 5),
(80, 5),
(81, 5),
(82, 1),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(88, 5),
(89, 5),
(90, 5),
(91, 2),
(91, 8),
(92, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 7),
(97, 5),
(98, 5),
(99, 15),
(100, 5),
(101, 5),
(102, 13),
(103, 5),
(104, 5),
(105, 7),
(106, 5),
(107, 5),
(108, 5),
(109, 5),
(111, 7),
(112, 12),
(113, 9),
(114, 7),
(115, 11),
(116, 9),
(117, 1),
(117, 3),
(118, 5),
(119, 5),
(120, 5),
(121, 5),
(122, 5),
(123, 5),
(124, 5),
(125, 5),
(126, 5),
(127, 5),
(128, 5),
(129, 5),
(130, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(138, 2),
(138, 8);

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
(1, 1, 'film', 'Film', 'http://screenprism.dev/index.php', '', 'en', 28, 0, 1420002000, 0, '1', 1, 'open', 1, 5, '', 'y', 'y', NULL, 'all', 'y', 'n', 'n', '', '', 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, '', 'y', '', 'n', 10, '', '', 0),
(2, 1, 'television', 'Television', 'http://screenprism.dev/index.php', '', 'en', 3, 0, 1373515200, 0, '1', 1, 'open', 1, 5, '', 'y', 'y', NULL, 'all', 'y', 'n', 'n', '', '', 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, '', 'y', '', 'n', 10, '', '', 0),
(3, 1, 'articles', 'Articles', 'http://screenprism.dev/index.php', '', 'en', 92, 0, 1422766980, 0, '2', 1, 'open', 2, 6, '', 'y', 'y', NULL, 'all', 'y', 'n', 'n', '', '', 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, '', 'y', '', 'n', 10, '', '', 0),
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
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` text,
  `field_ft_17` tinytext,
  `field_id_18` text,
  `field_ft_18` tinytext,
  `field_id_19` text,
  `field_ft_19` tinytext,
  `field_id_20` text,
  `field_ft_20` tinytext,
  `field_id_21` text,
  `field_ft_21` tinytext,
  `field_id_22` text,
  `field_ft_22` tinytext,
  `field_id_23` text,
  `field_ft_23` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_data`
--

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(1, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(2, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(3, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(4, 1, 4, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue mattis libero at pretium. Cras mi purus, cursus at sodales sed, auctor eu enim. Praesent vel condimentum nisi. Proin at tellus a orci lacinia condimentum. Suspendisse bibendum odio at malesuada tincidunt. Fusce rutrum dictum dolor sit amet luctus. Vivamus consectetur aliquet sapien, ut vestibulum libero dignissim vel. Proin sollicitudin risus in ullamcorper aliquet. Sed magna mauris, sodales cursus vestibulum ut, vulputate quis metus. Proin non imperdiet libero. Suspendisse mauris neque, lacinia eget mauris ut, volutpat porttitor risus. Morbi libero diam, commodo a risus eu, tempor pharetra sapien. Nullam iaculis mauris nec gravida tristique. Integer faucibus consectetur erat, non mattis mauris sollicitudin sit amet.</p>\n\n<p>Curabitur urna erat, finibus id ligula eu, semper volutpat mi. Fusce molestie mauris est, at egestas ante vestibulum eu. Suspendisse sollicitudin at urna ut convallis. Maecenas rhoncus placerat augue, viverra auctor augue aliquet eu. Vivamus ligula metus, semper eget lacus eu, venenatis varius elit. Praesent ut nunc in enim imperdiet sagittis. Aliquam erat volutpat. Curabitur dictum, augue eget interdum dapibus, leo velit cursus massa, gravida facilisis libero enim fermentum nisi. Nullam facilisis semper lacus at rutrum. Nullam maximus consequat est mattis sollicitudin. Fusce molestie non arcu non hendrerit.</p>\n\n<p>Aliquam malesuada arcu at mi efficitur, sit amet iaculis mi malesuada. Mauris est lacus, aliquet eleifend neque sed, pulvinar pellentesque mauris. Donec felis urna, vestibulum quis neque ac, tempus eleifend risus. Fusce odio dolor, imperdiet eu auctor in, faucibus eu arcu. Suspendisse quis gravida ligula. Sed viverra tellus sed viverra maximus. Quisque eu leo in libero commodo lacinia. Nam id dui fermentum, fermentum nibh iaculis, mollis ligula. Donec vel cursus turpis, in placerat tortor. In hac habitasse platea dictumst. Cras non sapien lorem. In dolor turpis, condimentum non nunc ut, dignissim tempus arcu. Cras auctor fringilla elit, quis volutpat leo. Pellentesque sed semper velit. Praesent nec mollis libero.</p>', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(6, 1, 1, 'Birdman_poster.jpg', 'none', 'Alejandro González Iñárritu', 'none', '1', 'none', 'Michael Keaton\nEmma Stone\nZach Galifianakis\nEdward Norton\nNaomi Watts\nAmy Ryan\nAndrea Riseborough', 'xhtml', '<p>Actor Riggan Thomson (Michael Keaton) --&nbsp;most famous for portraying an iconic superhero "Birdman" over twenty years ago --&nbsp;struggles to mount a Broadway play. &nbsp;Thomson&#39;s association with the Birdman character&nbsp;has overtaken his life and his acting career. &nbsp;Now past middle age, Riggan is trying to establish himself as a true artist by writing, directing, starring in and co-producing a Broadway play with his best friend Jake (Zack Galifianakis).&nbsp;Thomson is staking his reputation and his entire life savings on the project and will do anything to make the play&nbsp;a success.&nbsp;In the days leading up to opening night, he battles his ego and attempts to recover his family, his career, and himself.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Alexander Dinelaris, Alejandro González Iñárritu, Armando Bo, Nicolás Giacobone', 'none', '', NULL, 'Academy Awards\nAlejandro González Iñárritu\nComedy\nDrama\nEdward Norton\nEmma Stone\nInarritu\nMexican cinema\nMichael Keaton\nmovies about Broadway\nOscars\nsuper-hero\nZach Galifianakis', 'xhtml', 'Alejandro González Iñárritu, John Lesher, Arnon Milchan, James W. Skotchdopole', 'none', 'Fox Searchlight Pictures', 'none', '$18 million', 'none', '', 'none', 'Oscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Leading Role - Michael Keaton (2014)\nOscar Nominated Best Performance by an Actor in a Supporting Role - Edward Norton (2014)\nOscar Nominated Best Performance by an Actress in a Supporting Role - Emma Stone (2014)\nOscar Nominated Best Achievement in Directing - Alejandro González Iñárritu (2014)\nOscar Nominated Best Writing, Screenplay Written Directly for the Screen - Alejandro González Iñárritu, Nicolás Giacobone,  Alexander Dinelaris,  Armando Bo  (2014)\nOscar Nominated Best Achievement in Cinematography - Emmanuel Lubezki (2014)\nOscar Nominated Best Achievement in Sound Mixing (2014)\nOscar Nominated Best Achievement in Sound Editing (2014)\nGolden Globe Best Performance by an Actor in a Motion Picture Comedy or Musical - Michael Keaton (2014)\nGolden Globe Best Screenplay for Motion Picture - Alejandro González Iñárritu, Nicolás Giacobone, Alexander Dinelaris, and Armando Bo (2014)\nSAG Award for Outstanding Performance by a Cast in a Motion Picture (2014)\nAFI Award for Movie of the Year (2014)', 'xhtml', '94%', 'none', '89%', 'none', 'http://www.birdmanthemovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/uJfLoE6hanc" frameborder="0" allowfullscreen></iframe>', 'none'),
(21, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Michael Keaton plays the central character in <em>Birdman</em>, an actor who became a household name playing a superhero named Birdman. This mirrors Michael Keaton&rsquo;s own career, when Batman made him one of the most visible stars in Hollywood. While Keaton was already a respected actor and went on to other notable performances, the Batman films by far remain the most popular works of his career based on film grosses and ticket sales alone. Because of this, Keaton&rsquo;s casting in <em>Birdman</em> was considered&nbsp;a coup, and it&rsquo;s all the more impressive since the film was never written with Keaton in mind.</p>', 'none', 'The role wasn''t written with Keaton in mind, but his past career definitely helped the film.', 'none', 'Alejandro González Iñárritu\nBirdman\nComedy\nMexican cinema\nMichael Keaton\nmovies about Broadway\nOscars\nsuper-hero', 'xhtml', 'birdman-image.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(22, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Yes, <em>Birdman </em>was purposely&nbsp;made to&nbsp;look like it was shot in one continuous take without any cuts, just like&nbsp;Alfred Hitchcock&rsquo;s <em>Rope</em> and Alexander Sokurov&rsquo;s <em>Russian Ark</em> (which really was filmed in one continuous take).</p>\n\n<p>What makes <em>Birdman</em>&nbsp;different from the others&nbsp;is the way it masks&nbsp;its cuts: by digitally &ldquo;stitching&rdquo; the end of one take to the beginning of another. <em>Childen of Men</em>, which was also shot by cinematographer Emmanuel Lubezki, actually did the same thing in some of its longer setpieces, most notably a car chase involving an ambush.&nbsp;This time, the technique was stretched out so that it encompassed the length of an entire film.</p>', 'none', 'They took some tricks from "Children of Men" and stretched them even further.', 'none', 'Academy Awards\nAlejandro González Iñárritu\nAlexander Sokurov\nAlfred Hitchcock\nBirdman\nCinematography\nEmmanuel Lubezki\nMichael Keaton\nRope\nRussian Ark', 'xhtml', 'birdman.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(28, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>One of the distinctions between documentaries and traditional narrative films is that the latter is self-contained world while the former consists of what the filmmaker was able to capture out of a much larger reality. <em>Boyhood</em>&nbsp;in a way&nbsp;aspires towards documentary form because Linklater consciously opens it up to reality, particularly the effect of time on all the actors in real life, whether it&#39;s aging or what they go through in their own personal lives. This is normally a terrifying thing for a narrative filmmaker to do, you&#39;re virtually ceding your film to forces you can never control.</p>\n\n<p>Given the risks and practical realities inherent in the project, much of the film had to be written as it went along. Though key elements were already decided at the start of the project, the actual narrative of each installment was often written in between the film&rsquo;s periodic shoots. Often times, this meant looking back at all the footage shot up to that point and scripting the next pages as a response.</p>\n\n<p>The structural possibilities of the film were far more apparent during the editing. As described by&nbsp;Eric Kohn in <em>IndieWire</em>, the film often relies &ldquo;on the changes in its characters&#39; physical appearances to connote the advancing years&hellip;In one early scene, we watch Mason&rsquo;s mom flirting with a new character, her college professor, and in the next, they&rsquo;re returning from their honeymoon.&rdquo; Most transitions aren&rsquo;t so clever, as they &ldquo;mostly track the passage of time though the pop-cultural ephemera cropping up in the margins,&nbsp;and even more crucially by the length of Mason&rsquo;s ever-evolving hair. Still, some transitions can knock the wind out of you: When we see Mason shrug his shirt off at 12, his pear-shaped body still ringed with baby fat, it&rsquo;s startling to see the next scene, where mere months later, he&rsquo;s a foot taller and whippet-thin.&rdquo;</p>\n\n<p>Physical aging may be the most immediate result of the film&#39;s long production, but&nbsp;the actors&rsquo; evolving personal&nbsp;lives&nbsp;did have a direct influence&nbsp;on the film as well. Linklater told Coltrane that even though the film was not going to be a memoir of his life, it would reflect certain things he was going through. For example, Linklater always knew that at some point, Mason&rsquo;s story would involve his first serious relationship, but he did not want to introduce that concept into the film until Coltrane had that experience in real life. As Coltrane got older, he would even become more observant of his own social interactions with other people, knowing that it could provide some inspiration in shaping the material for the next part of the film.</p>\n\n<p>One thing that Linklater noted was how the culture did not change. At the start, he understood that certain elements of the film could seem very dated by the end of production, but while cultural events like the&nbsp;<u>Harry Potter</u>&nbsp;books&nbsp;and the 2008 election did get used in the film, for the most part, culture did not change. Compared to other 12 year stretches from the &lsquo;60s into the &lsquo;90s, when it came to fashion the 12 year of span of <em>Boyhood</em> seemed relatively inert, whether it was clothing and hair or the look of automobiles.</p>', 'none', '"Boyhood" in a way aspires towards documentary form because Linklater consciously opens it up to reality, particularly the effect of time on all the actors in real life, whether it''s aging or what they go through in their own personal lives.', 'none', 'Richard Linklater\nTime', 'xhtml', 'Boyhood_-_Arquette_time.jpg', 'none', '[20] [boyhood] Boyhood', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(26, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The narrative is a very intimate, small-scale family drama, but the film itself feels epic in scale due to its structure, moving across 12 years in real life while centering on a protagonist who&rsquo;s growing and changing through childhood and adolescence. This is virtually unprecedented in the history of cinema &ndash; long-term projects encompassing a similar time frame as <em>Boyhood</em> were only found in documentaries (such as Michael Apted&rsquo;s <em>Up</em> series, which has been revisiting its subjects every seven years since 1964), and even then they were exceptionally rare.</p>\n\n<p><em>Boyhood</em>&rsquo;s achievement is more remarkable because financially and logistically, it was a much greater risk. Linklater said,&nbsp;&ldquo;It&rsquo;s the strangest proposition to ask someone to help finance something for twelve years in our industry.&nbsp;[Jonathan Sehring at IFC] doesn&rsquo;t make a lot of films, and as years went on, I&rsquo;d run into him and he&rsquo;d say &lsquo;Well, we have one film in production.&rsquo; Every year, I just had a board meeting. Everyone asks what the hell this is on the books. He had to lie, every year.&rdquo;</p>\n\n<p>It&rsquo;s worth noting that Fran&ccedil;ois Truffaut made four features and one short over 20 years based around the semi-autobiographical character Antoine Doinel (played by Jean-Pierre L&eacute;aud), but each of those works were self-contained. Logistically, the series was produced like a series of sequels rather than one continuing project. This is similar to Linklater&rsquo;s own <em>Before Sunrise</em>, <em>Before Sunset</em> and <em>Before Midnight</em> films, which were done in nine-year intervals but were always produced as individual sequels instead of one ongoing project. Michael Winterbottom&rsquo;s <em>Everyday</em>, about a man&rsquo;s five-year imprisonment, was actually filmed over five years, shooting a few weeks at a time, but besides being logistically simpler, it was also started years after <em>Boyhood</em> had already begun production.</p>', 'none', 'The film was filmed across 12 years while centering on a character who’s steadily growing and changing through childhood and adolescence. This is virtually unprecedented in the history of cinema.', 'none', 'Richard Linklater\nTime', 'xhtml', 'Boyhood_-_Coltrane_time.jpeg', 'none', '[20] [boyhood] Boyhood', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(27, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Linklater&rsquo;s films have been notable for exploring&nbsp;the passage of time, whether reflecting on&nbsp;a vanishing&nbsp;era (<em>Dazed and Confused</em>, <em>The Newton Boys</em>) or in the case of <em>Before Sunrise</em>, <em>Before Sunset</em> and <em>Before Midnight</em>, following two lives (played by the same actors) in nine-year intervals. <em>Boyhood</em> is arguably his most ambitious and focused work in this mode, and in many ways, it feels like a logical progression from his past body of work.</p>\n\n<p>In terms of style, many have noted that the film seems to avoid easy signposts like birthdays, weddings or funerals. When landmark life events do factor into the film, they&rsquo;re only addressed after they&rsquo;ve past or when they figure in the background, similar to how Yasujiro Ozu handles such material in his own films. All of this is typical of Linklater&rsquo;s unassuming approach to storytelling, which is usually more focused on spending time with his characters and observing how they interact. As Linklater describes it, there are no plot contrivances, &ldquo;<em>Boyhood</em> would be all these little things that get cut out of other movies and that don&rsquo;t have a place in a traditional plot but that have a lot room in our lives.&rdquo;</p>\n\n<p>Remarkably, even the central character, Mason, shares many similarities with the type of characters that usually lead Linklater&rsquo;s films. From the start, Linklater knew the character was at the mercy of the actor&rsquo;s own growth in real life - he had no idea what a six-year-old Coltrane would become in his teenage years. However, as noted by <em>Sight &amp; Sound</em> magazine, Mason became &ldquo;the type of curious, selectively garrulous, gently nonconformist dreamer essayed by Wiley Wiggins in <em>Dazed and Confused</em> (1993) and <em>Waking Life</em> (2001).&rdquo;</p>', 'none', 'Linklater’s films have been notable for exploring the passage of time. "Boyhood" is arguably his most ambitious and focused work in this mode, and in many ways, it feels like the apotheosis of his body of work.', 'none', 'Boyhood\nRichard Linklater\nTime', 'xhtml', 'Boyhood_-_screencap_-_year_1.jpg', 'none', '[20] [boyhood] Boyhood', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(15, 1, 1, 'hobbit-movie-poster-02.jpg', 'none', 'Peter Jackson', 'none', '1', 'none', 'Martin Freeman\nIan McKellen\nRichard Armitage\nAidan Turner\nOrlando Bloom\nEvangeline Lilly\nJohn Bell\nDean O''Gorman\nLee Pace\nBenedict Cumberbatch\nLuke Evans\nCate Blanchett\nHugo Weaving\nChristopher Lee\nBilly Connolly\nIan Holm\nJames Nesbitt', 'xhtml', '<p>The Hobbit: The Battle of the Five Armies&nbsp;brings to an epic conclusion the adventures of Bilbo Baggins, Thorin Oakenshield and the Company of Dwarves. Having reclaimed their homeland from the Dragon Smaug, the Company has unwittingly unleashed a deadly force into the world. Enraged, Smaug rains his fiery wrath down upon the defenseless men, women and children of Lake-town.</p>\n\n<p>Obsessed above all else with his reclaimed treasure, Thorin sacrifices friendship and honor to hoard it as Bilbo&#39;s frantic attempts to make him see reason drive the Hobbit towards a desperate and dangerous choice. But there are even greater dangers ahead. Unseen by any but the Wizard Gandalf, the great enemy Sauron has sent forth legions of Orcs in a stealth attack upon the Lonely Mountain.</p>\n\n<p>As darkness converges on their escalating conflict, the races of Dwarves, Elves and Men must decide unite or be destroyed. Bilbo finds himself fighting for his life and the lives of his friends in the epic Battle of the Five Armies, as the future of Middle-earth hangs in the balance.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'J.R.R. Tolkien, Peter Jackson, Fran Walsh', 'none', '', NULL, 'Ian McKellen\nMartin Freeman\nOrlando Bloom\nPeter Jackson\nThe Hobbit', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(16, 1, 1, 'hobbit-movie-poster-01.jpg', 'none', 'Peter Jackson', 'none', '', 'none', 'Ian McKellen\nMartin Freeman\nRichard Armitage\nRichard Armitage\nBenedict Cumberbatch\nEvangeline Lilly\nLee Pace\nLuke Evans\nKen Stott\nJames Nesbitt\nOrlando Bloom', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla mauris vitae varius tincidunt. Cras auctor egestas tortor, in placerat nisi viverra in. Duis ut magna vitae nisl tempus posuere. Nam luctus felis vehicula viverra volutpat. Maecenas eget nisl malesuada, finibus lectus in, dapibus eros. Sed tristique turpis quis fringilla mattis. Cras eget magna quis mauris tincidunt vestibulum non a leo. Duis et dolor vestibulum, commodo nisl et, tincidunt risus. Nullam sodales molestie massa sed interdum.</p>\n\n<p>Etiam quis sapien tempus, rhoncus massa eu, placerat dui. Vivamus cursus odio nisl. Duis feugiat augue urna, ac rutrum mi bibendum ut. Vestibulum sollicitudin hendrerit sapien, id blandit lectus posuere vitae. Nulla semper lacinia lorem, at lobortis dolor. Curabitur nec vulputate felis, et tincidunt justo. Etiam magna nibh, consectetur vel magna at, tempus sagittis massa. Quisque non ipsum elit. Curabitur ultricies massa pellentesque lectus pulvinar, vel hendrerit justo feugiat. Phasellus eleifend malesuada mauris. Mauris feugiat venenatis condimentum. Integer sagittis malesuada neque, at luctus nunc commodo nec. Ut tincidunt sed turpis at iaculis. Nullam vehicula ligula nec rhoncus luctus. Morbi pulvinar ex sit amet felis aliquam sodales. Suspendisse consequat purus odio, vitae laoreet nibh blandit at.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'J. R. R. Tolkien, Fran Walsh, Philippa Boyens, Peter Jackson, Guillermo del Toro', 'none', '', NULL, 'Ian McKellen\nMartin Freeman\nOrlando Bloom\nPeter Jackson\nThe Hobbit', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(17, 1, 2, 'american-horror-story-box.jpg', 'none', 'Ryan Murphy, Brad Falchuk', 'none', '', 'none', 'Connie Britton\nDylan McDermott\nEvan Peters\nTaissa Farmiga\nDenis O''Hare\nJessica Lange\nZachary Quinto\nJoseph Fiennes\nSarah Paulson\nLily Rabe\nLizzie Brocheré\nJames Cromwell\nFrances Conroy\nEmma Roberts\nKathy Bates\nMichael Chiklis\nFinn Wittrock\nAngela Bassett', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Brad Falchuk, Ryan Murphy, Jennifer Salt, Jessica Sharzer, Tim Minear, James Wong, Douglas Petrie, John J. Gray, Crystal Liu', 'none', '', NULL, 'Drama\nFX\nHorror\nThriller', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(18, 1, 2, 'seinfeld-box-01.jpg', 'none', 'Art Wolff, Tom Cherones, Andy Ackerman, David Steinberg', 'none', '', 'none', 'Jerry Seinfeld\nJulia Louis-Dreyfus\nMichael Richards\nJason Alexander', 'xhtml', '<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Larry David, Jerry Seinfeld', 'none', '', NULL, 'Comedy\nSitcom', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(19, 1, 2, 'oitnb-box-01.jpg', 'none', 'Jenji Kohan', 'none', '', 'none', 'Taylor Schilling\nLaura Prepon\nMichael J. Harney\nMichelle Hurst\nKate Mulgrew\nJason Biggs\nUzo Aduba\nDanielle Brooks\nNatasha Lyonne\nTaryn Manning\nSelenis Leyva\nAdrienne C. Moore\nDascha Polanco\nNick Sandow\nYael Stone\nSamira Wiley', 'xhtml', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jenji Kohan', 'none', '', NULL, 'Comedy\nNetflix', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(20, 1, 1, 'Boyhood_-_poster.jpg', 'none', 'Richard Linklater', 'none', '1', 'none', 'Ellar Coltrane\nPatricia Arquette\nEthan Hawke\nLorelei Linklater\nBonnie Cross\nElijah Smith\nLibby Villari\nSteven Chester Prince\nEllar Salmon\nMarco Perella', 'xhtml', '<p>Filmed over 12 years with the same cast, Richard Linklater&#39;s <em>Boyhood</em> is a groundbreaking story of growing up as seen through the eyes of a child named Mason (Ellar Coltrane), who literally grows up on screen before our eyes. Starring Ethan Hawke and Patricia Arquette as Mason&#39;s parents and newcomer Lorelei Linklater as his sister Samantha, <em>Boyhood</em>&nbsp;charts the rocky terrain of childhood like no other film has before and is both a nostalgic time capsule of the recent past and an ode to growing up and parenting.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Richard Linklater', 'none', '', NULL, 'Boyhood\nEthan Hawke\nIndependent film\nPatricia Arquette\nRichard Linklater\nTexas\nTime', 'xhtml', 'Richard Linklater, Cathleen Sutherland, Jonathan Sehring, John Sloss', 'none', 'IFC Films', 'none', '$2.4 million', 'none', '$43.3 (worldwide)', 'none', 'Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture (2014)\nGolden Globe for Best Motion Picture - Drama (2014)\nGolden Globe for Best Director - Motion Picture (Richard Linklater) (2014)\nGolden Globe for Best Performance by an Actress in a Supporting Role (Patricia Arquette) (2014)\nGolden Globe Nomination for Best Performance by an Actor in a Supporting Role (Ethan Hawke) (2014)\nGolden Globe Nomination for Best Screenplay (Richard Linklater) (2014) \nNominated BAFTA for Best Film (2014)\nNominated BAFTA for Best Supporting Actor (Ethan Hawke) (2014)\nNominated BAFTA for Best Supporting Actress (Patricia Arquette) (2014)\nNominated BAFTA David Lean Award for Direction (Richard Linklater) (2014)\n2014 New York Film Critics Circle Awards Winner for Best Picture\n2014 New York Film Critics Circle Awards Winner for Best Director (Richard Linklater)\n2014 New York Film Critics Circle Awards Winner for Best Supporting Actress (Patricia Arquette)\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Supporting Role - Ethan Hawke (2014)\nOscar Nominated Best Performance by an Actress in a Supporting Role - Patricia Arquette (2014)\nOscar Nominated Best Achievement in Directing - Richard Linklater (2014)\nOscar Nominated Best Writing, Screenplay Written Directly for the Screen - Richard Linklater (2014)\nOscar Nominated Best Achievement in Film Editing (2014)\nAFI Award for Movie of the Year (2014)', 'xhtml', '98%', 'none', '96%', 'none', 'http://boyhoodmovie.tumblr.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Y0oX0xiwOv8" frameborder="0" allowfullscreen></iframe>', 'none'),
(23, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film&rsquo;s detractors argue that filming&nbsp;<em>Birdman&nbsp;</em>to look like one continous take is&nbsp;unnecessary, with some going so far as to dismiss it&nbsp;as virtuosic cinematography in the service of a mediocre story. One should consider how the film would play out had it been conventionally cut and filmed from one setup to another. The film often plays out in real-time (with occasional jumps in time), and immersing the audience in one unbroken take definitely reinforces this. Unbroken takes often have a sustained sense of tension that isn&rsquo;t relieved by a cut, and if they involve a free moving camera, they can have a built-in momentum and feel very dynamic. The film arguably gains all of this from its aesthetic. As to whether the aesthetic is appropriate to its story, the film deals with a theatrical stage production, so there is a parallel there. Unbroken takes often bring a film closer to live theater since performances would have to be executed in one sustained attempt, just as they would in a stage production, without the benefit of being pieced together by editing. In that sense, the style can seem organic to the film&#39;s material.</p>', 'none', 'Unbroken takes often bring a film closer to live theater...', 'none', 'Academy Awards\nAlejandro González Iñárritu\nBirdman\nCinematography\nEmmanuel Lubezki\nmovies about Broadway\nMovies about theater', 'xhtml', 'michael-keaton-birdman-movie.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(24, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film does seem to indulge in a bit of whimsical &ldquo;magical realism&rdquo; (where fantasy elements seem to be a natural part of what&rsquo;s otherwise a realist setting). Often times, these supernatural moments appear to manifest in Keaton&rsquo;s mind, not in reality, but there are moments like the end where they could very well be happening. Rather than take things too literally, a better question would be, why do these supernatural moments even appear? There&rsquo;s been much debate over this, but most believe it&rsquo;s metaphorical, equating artistic endeavors with magical accomplishments.</p>', 'none', 'The film does seem to indulge in a bit of whimsical “magical realism.”', 'none', 'Birdman\nMagical realism', 'xhtml', 'wgirmpbhcvolewmk1cxk.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(25, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Many critics believe Birdman is critiquing the current dominance of comic book films in Hollywood, but the film seems to acknowledge a whole lot of contradictions within its characters. The premise revolves around an actor who&rsquo;s hoping to regain respectability through a new play. As mentioned, he&rsquo;s best known for playing a comic book character, which is viewed as broad entertainment by everyone within the film, and the play is allegedly a work filled with great artistic aspirations. At one point, the play casts a popular and critically respected stage actor Mike Shiner (Edward Norton) who seems to reflect everything an actor aspires to be. But all of these elements are called into question. Shiner is a bit unstable, especially when he consumes alcohol and even when he&rsquo;s performing. Though we only see small portions of the play, a few stranger parts look intentionally dubious, particularly for a play based on Raymond Carver&rsquo;s work.</p>\n\n<p>Critic Glenn Kenny writes that &ldquo;while its incidental observations on fame and craft and superhero movies all land in various sweet spots throughout, I perceive Birdman&rsquo;s theme as not so much about the arts as such but more the extent to which the human need/desire for love is linked to vanity, and whether the two can ever be wholly distinguished and/or untwined from each other.&rdquo; Thomson&rsquo;s reasons for putting on this production are constantly defined by how he wants to be appreciated by the public and what he believes he&rsquo;s capable of becoming. It&rsquo;s notable that he&rsquo;s employed his daughter as his assistant on the production, someone who clearly has a strained relationship with him but has taken on a position that requires her to remain close. It&rsquo;s basically an attempt to repair their relationship while exposing her to an endeavor that Thomson probably hopes will define him for her (and define him for everyone else). The same dynamic is more overt in Thomson&rsquo;s conversations with his ex-wife, who visits him periodically in the dressing room. Even Shiner&rsquo;s relationship with his co-star and girlfriend, Lesley (Naomi Watts) humorously plays his ego up against his desire to satiate her - not only is he thrilled to be able to get an erection for the first time in six months, he&rsquo;s ecstatic that it&rsquo;s happening in the middle of a performance, right when his character is caught in bed with a married woman.</p>', 'none', 'Thomson’s reasons for putting on this production are constantly defined by how he wants to be appreciated by the public.', 'none', 'Birdman\nmovies about Broadway', 'xhtml', 'birdman_(1).jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(29, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>According to Linklater, he was very aware of the changing technological landscape during the course of making this film, but he insisted that they shoot the film in 35mm until the very end. &ldquo;I wanted it to look the same way. I knew it&rsquo;d look a lot different if we jumped into the digital, hi-def formats.&rdquo;</p>', 'none', 'Linklater insisted that they shoot the film in 35mm until the very end.', 'none', 'Cinematography\nRichard Linklater', 'xhtml', 'Boyhood_-_Linklater_Hawke_on-set.jpg', 'none', '[20] [boyhood] Boyhood', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none'),
(30, 1, 1, 'GBH-mainposter.jpg', 'none', 'Wes Anderson', 'none', '1', 'none', 'Ralph Fiennes\nF. Murray Abraham\nEdward Norton\nMathieu Amalric\nSaoirse Ronan\nAdrien Brody\nWillem Dafoe', 'xhtml', '<p><em>The Grand Budapest Hotel</em>&nbsp;recounts the adventures of Gustave H,<br />\na legendary concierge at a famous European hotel between the wars,<br />\nand Zero Moustafa, the lobby boy who becomes his most trusted friend.</p>\n\n<p>The story involves the theft and recovery of a priceless Renaissance painting<br />\nand the battle for an enormous family fortune -- all against the back-drop of<br />\na suddenly and dramatically changing Continent.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Wes Anderson, Hugo Guinness', 'none', '', NULL, 'Edward Norton\nFormalist cinema\nHistorical fantasy\nIndependent film\nRalph Fiennes\nWes Anderson', 'xhtml', 'Wes Anderson, Scott Rudin, Steven Rales, Jeremy Dawson', 'none', 'Fox Searchlight Pictures', 'none', '$30 million', 'none', '$174.6 million', 'none', 'Oscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Achievement in Directing - Wes Anderson (2014)\nOscar Nominated Best Writing, Screenplay Written Directly for the Screen - Wes Anderson, Hugo Guinness (2014)\nOscar Nominated Best Achievement in Film Editing (2014)\nOscar Nominated Best Achievement in Production Design (2014)\nOscar Nominated Best Achievement in Costume Design (2014)\nOscar Nominated Best Achievement in Original Music (2014)\nOscar Nominated Best Achievement in Cinematography - Robert Yeoman (2014)\nOscar Nominated Best Achievement in Best Make-Up and Hair Styling (2014)\nGolden Globe Best Picture, Musical or Comedy (2014)\nGolden Globe Nomination for Best Actor, Musical or Comedy - Ralph Fiennes (2014)\nGolden Globe Nomination for Best Director - Wes Anderson (2014)\nGolden Globe Nomination for Best Screenplay - Wes Anderson (2014)\n2014 National Society of Film Critics Winner for Best Screenplay\n2014 New York Film Critics Circle Awards Winner for Best Screenplay', 'xhtml', '92%', 'none', '88%', 'none', 'http://www.grandbudapesthotel.com/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/1Fg5iWmQjwk" frameborder="0" allowfullscreen></iframe>', 'none'),
(31, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film is dense with historical references to Eastern Europe. It&rsquo;s been noted that the concierge keys that decorate a monument to the author seems inspired by the padlocks on Prague&#39;s Charles Bridge (in addition to the occupation of the character, M. Gustav). Different eras of the Grand Budapest Hotel seem to reflect the respective geopolitical realities of those eras in actual history, whether it&rsquo;s the Cold War of the 1960s or a 1930s setting colored by both world wars flanking either side of the decade. Though the fascist characters are never addressed as Nazis, there&rsquo;s no mistaking who they&rsquo;re supposed to represent. (Such representations recall Hollywood films like Alfred Hitchcock&rsquo;s <em>Foreign Correspondent</em>, made after the start of World War II but before America&rsquo;s own entry into that global conflict &ndash; the antagonists were Nazi Germans in all but name as their nationalities were often unidentified.)</p>', 'none', 'Different eras of the Grand Budapest Hotel seem to reflect the respective geopolitical realities of those eras in actual history, whether it’s the Cold War of the 1960s or a 1930s setting colored by both world wars flanking either side of the decade.', 'none', 'The Cold War\nWes Anderson\nWorld War I\nWorld War II', 'xhtml', 'GBH-cast.jpg', 'none', '[30] [the-grand-budapest-hotel] The Grand Budapest Hotel', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(32, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>An ardent fan of the acclaimed Austrian writer&rsquo;s books, Wes Anderson said, &ldquo;I started thinking that I&rsquo;d like to do some sort of Zweig-esque thing, and I was reading other things at the same time that were getting into equally dark moments in Europe. I just thought it might work to mix these together, and then came the idea of a hotel concierge&hellip;I just wanted to be totally free with it &ndash;we&rsquo;re in a made-up country, we&rsquo;re mixing wars together, we&rsquo;re mixing up nationalities and everything. So I just felt like we&rsquo;ll make our story, and whatever I&rsquo;m reading or thinking about is gonna go in there, with the [historical and cultural context] that everybody already knows.&rdquo;</p>\n\n<p>Zweig was an exile, like Zero Moustafa (played, as a young man, by Tony Revolori and, later in life, by F. Murray Abraham). Of his writings, the film seems particular reminiscent of &ldquo;The World of Yesterday,&rdquo; which was written when Zweig was fleeing from the new Nazi regime. It strikes a similar nostalgic tone, covering what was lost in Vienna after the end of World War I and the subsequent rise of the Nazis.</p>', 'none', 'Zweig was an exile, like Zero Moustafa. Of his writings, the film seems particular reminiscent of “The World of Yesterday,” which was written when Zweig was fleeing from the new Nazi regime.', 'none', 'Adaptations\nWes Anderson\nWorld War II', 'xhtml', 'GBH-still2.jpg', 'none', '[30] [the-grand-budapest-hotel] The Grand Budapest Hotel', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(36, 1, 1, 'The-Imitation-Game-poster-1.jpg', 'none', 'Morten Tyldum', 'none', '1', 'none', 'Benedict Cumberbatch\nKeira Knightley\nMatthew Goode\nMark Strong\nCharles Dance\nAllen Leech\nMatthew Beard\nRory Kinnear', 'xhtml', '<p>British mathematician and logician Alan Turing helps crack the German Enigma Code during World War II.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Graham Moore based on ''Alan Turing: The Enigma'' by Andrew Hodges', 'none', '', NULL, 'Benedict Cumberbatch\nBiopics\nBritish cinema\nFilm adaptations\nGay cinema\nHistorical drama\nKeira Knightley\nWorld War II', 'xhtml', 'Nora Grossman, Ido Ostrowsky, Teddy Schwarzman', 'none', 'StudioCanal, The Weinstein Company', 'none', '$15 million', 'none', '', 'none', 'AFI Award for Movie of the Year (2014)\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Leading Role - Benedict Cumberbatch (2014)\nOscar Nominated Best Performance by an Actress in a Leading Role - Keira Knightley (2014)\nOscar Nominated Best Achievement in Directing - Morten Tyldum (2014)\nOscar Nominated Best Writing, Screenplay Based on Material Previously Produced or Published - Graham Moore (2014)\nOscar Nominated Best Achievement in Film Editing (2014)\nOscar Nominated Best Achievement in Production Design (2014)\nOscar Nominated Best Achievement in Music Written for Motion Pictures, Original Score - Alexandre Desplat (2014)\nGolden Globe Nomination for Best Motion Picture - Drama (2014)\nGolden Globe Nomination for Best Performance by an Actor in a Motion Picture Drama - Benedict Cumberbatch (2014)\nGolden Globe Nomination for Best Performance by an Actress in a Supporting Role - Keira Knightley (2014)\nGolden Globe Nomination for Best Screenplay - Graham Moore (2014)\nGolden Globe Nomination for Best Original Score - Alexandre Desplat (2014)', 'xhtml', '90%', 'none', '72%', 'none', 'http://theimitationgamemovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/S5CjKEFb-sM" frameborder="0" allowfullscreen></iframe>', 'none'),
(33, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>As with many of Wes Anderson&rsquo;s films, <em>The Grand Budapest Hotel</em> is meticulously and densely designed, particualrly the hotel itself. For wide shots of the hotel, the production design team created a handmade, nine foot tall miniature model, similar to what was done in <em>The Life Aquatic With Steve Zissou</em> and especially the animated <em>Fantastic Mr. Fox</em>. CG was more or less ruled out in this case, as well as the others, because Anderson didn&rsquo;t want the artificiality associated with the current prevailing approach to visual effects: &ldquo;The particular brand of artificiality that I like to use is an old-fashioned one.&rdquo;</p>\n\n<p>With the backgrounds for the film, Anderson also depended less on real photographic elements and leaned heavily on the type of landscape paintings associated with 19th century artist Caspar David Friedrich. Artist Michael Lenz was originally given the task of recreating Friedrich&rsquo;s style in a painting hung on the wall in the hotel&rsquo;s dining room, and the look of that painting made its way into the background. This visual idea was incorporated into the film by filming the miniature model of the hotel in front of a green screen and keying in the background painting.</p>', 'none', '“The particular brand of artificiality that I like to use is an old-fashioned one.”', 'none', 'Production design\nWes Anderson', 'xhtml', 'GBH-onset2.jpg', 'none', '[30] [the-grand-budapest-hotel] The Grand Budapest Hotel', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(34, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>According to cinematographer Robert Yeoman, the film was heavily inspired by Hollywood films of the 1930&rsquo;s, particularly those directed by Ernst Lubitsch. As such, they initially considered shooting the entire film in Academy ratio (1.37:1), which was the standard aspect ratio for films of that era. &ldquo;Then there was the sort of traditional thing of, &lsquo;Well are we going to do some of it black and white? What&rsquo;s our way going to be in approaching the separation of these time periods?&rsquo; And I thought the best would be if I could use these&hellip;technoscope anamorphic lenses that are really old and strange. If you look at a freeze frame of some these types of shots, the edges are so blurry. I think they did spaghetti westerns with these lenses. So I thought we&rsquo;d use them, to make these different parts like different movies. But then I also thought that we&rsquo;re used to seeing things letterboxed at this point, and that it would work anyway. And I&rsquo;ve just always loved this Academy [square format] shape. It reminds me of old movies. Our movie is in color, with Ralph Fiennes, but [the look] is similar to how I see Humphrey Bogart.&rdquo;</p>', 'none', 'The film was heavily inspired by Hollywood films of the 1930’s, particularly those directed by Ernst Lubitsch.', 'none', 'Aspect ratio\nCinematography\nWes Anderson', 'xhtml', 'grand-budapest-image.jpg', 'none', '[30] [the-grand-budapest-hotel] The Grand Budapest Hotel', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(35, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Painted for the film by artist Michael Taylor, it is stylistically attributed in the film to the artist Johannes Van Hoytl the Younger. In his analysis of this fictitious &ldquo;masterpiece,&rdquo; Jonathan Jones of the Guardian says it has &ldquo;much in common with other masters of the Renaissance in northern Europe&hellip;the boy&#39;s extravagantly crooked fingers resembles drawings by German artist Albrecht D&uuml;rer &ndash; in particular a self-portrait sketch in New York&#39;s Metropolitan Museum of Art, in which he displays almost precisely the same hand gesture&hellip;An enigmatic message behind a curtain is reminiscent of similarly portentous objects in such Renaissance masterpieces as Hans Holbein the Younger&#39;s portrait of the merchant Georg Giese surrounded with the stuff of trade, or the emblems of greed and vanity with which Quentin Metsys accuses the couple in his picture <em>The Moneylender and His Wife</em>. The moral emblem at the heart of Van Hoytl the Younger&#39;s painting is of course the oldest of all Judaeo-Christian symbolic objects: the apple with which the serpent tempted Eve.</p>\n\n<p>&ldquo;So this portrait is a study in temptation, and as such it is inflected with a sensuality typical of mannerist art. In 16th-century Europe, artists bored by the classical rules of the Renaissance portrayed the human figure in a more &lsquo;mannered&rsquo; way, stretching out limbs and necks, distorting poses. This youth&#39;s long fingers are typically mannerist. So much about him &ndash; his short hair, finely clad form, those hints of depravity &ndash; echoes the mannerist genius Bronzino. It&#39;s not hard to work out how such a painting found its way into an art collection in central Europe. The eccentric Habsburg Emperor Rudolph II, who filled his palace in Prague with curiosities, lured many Dutch and Flemish mannerists to his mad court. The Habsburgs were the greatest art patrons of the Renaissance, and the heritage they left behind is rich in masterpieces of <em>Boy with Apple</em>&#39;s ilk. This is exactly the kind of painting you can expect to see in Vienna&#39;s Kunsthistorisches Museum, the Sz&eacute;pm&#369;v&eacute;szeti M&uacute;zeum in Budapest or the picture gallery of Prague Castle. <em>Boy with Apple</em> really is priceless, as an art history in-joke. The punchline, however, comes when the film&#39;s villain realises it is missing. In its place hangs a watercolour of lesbian lovers by real-life Austrian genius Egon Schiele. In his rage at losing a completely fictional work of 16th-century art, the character smashes this modern treasure over a chair.&rdquo;</p>', 'none', '"Boy with Apple" really is priceless, as an art history in-joke.', 'none', 'In-jokes\nProduction design\nWes Anderson', 'xhtml', 'BoyApple_final_scene.jpg', 'none', '[30] [the-grand-budapest-hotel] The Grand Budapest Hotel', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(40, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>It&rsquo;s worth noting that such criticisms aren&rsquo;t unusual with gay films, particularly mainstream films. (For example,&nbsp;<em>Philadelphia</em>&nbsp;saw the same criticism regarding its lead character and his partner.) Some times context has to be considered, especially in historical settings where homosexual behavior was rarely seen in the open and was often repressed.&nbsp;</p>\n\n<p>With Turing, some pointed out that he was not exactly shy about his homosexuality, and the film has been criticized for avoiding any sort of physical intimacy between him and another man.&nbsp;Christian Caryl of The New York Review of Books was particularly critical of the film&#39;s reluctance to even show a kiss, "something he did frequently, and with gusto."&nbsp;Moore defended the film&rsquo;s depiction, arguing that it wasn&rsquo;t necessary, and that depicting such intimacy would&rsquo;ve been superfluous, like &ldquo;adding a sex scene for a man and a woman simply because they were heterosexual.&rdquo;</p>', 'none', 'The film has been criticized for avoiding any sort of physical intimacy between Turing and another man.', 'none', 'Alan Turing\nHomosexuality', 'xhtml', 'Turing-arrested.jpg', 'none', '[36] [the-imitation-game] The Imitation Game', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(37, 1, 1, 'A_Most_Violent_Year_Movie_Poster.jpg', 'none', 'J. C. Chandor', 'none', '1', 'none', 'Oscar Isaac\nJessica Chastain\nDavid Oyelowo\nAlessandro Nivola\nAlbert Brooks\nCatalina Sandino Moreno', 'xhtml', '<p>Set in New York City during the winter of 1981, statistically one of the most violent years in the city&#39;s history, an immigrant and his family try to expand their business and capitalize on opportunities as the rampant violence, decay, and corruption of the day drag them in and threaten to destroy all they have built.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'J. C. Chandor', 'none', '', NULL, 'Albert Brooks\nAlessandro Nivola\nAnna Germ\ncorruption\nCrime\nDavid Oyelowo\nDrama\nimmigrants\nJ.C. Chandor\nJessica Chastain\nNeal Dodson\nNew York City\nOscar Isaac\nThe 80s\nviolence', 'xhtml', 'J. C. Chandor, Neal Dodson, Anna Gerb', 'none', 'A24 Films', 'none', '$20 million', 'none', '', 'none', 'Golden Globe Nomination for Best Supporting Actress - Jessica Chastain (2014)', 'xhtml', '90%', 'none', '81', 'none', 'amostviolentyear.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/kQ_45pjd_tM" frameborder="0" allowfullscreen></iframe>', 'none'),
(38, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Alan Turing has long been considered the father of computer science (an eventual legacy that&rsquo;s explicitly referenced in the film&rsquo;s dialogue), so he has always held a lofty reputation within the technology industry and companies like Apple and Google. What wasn&rsquo;t known until decades after the fact (and long after his death) was that Turing created a machine that was able to crack Nazi Germany&rsquo;s Enigma Code. This accomplishment was instrumental in winning the war, and it was kept top secret so that the Allies could continue breaking Germany&rsquo;s coded communications through the war, acting only on crucial intelligence so as not to alert the Germans. Even after the war, it would remain classified information for decades.</p>', 'none', 'Turing created a machine that was able to crack Nazi Germany’s Enigma Code.', 'none', 'Alan Turing\nArtificial intelligence\nWorld War II', 'xhtml', 'IG_02611.jpeg', 'none', '[36] [the-imitation-game] The Imitation Game', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(39, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Until the late 1960s, homosexuality was treated as criminal behavior in the UK, and when authorities found out that Turing was homosexual, he was given a choice: prison or chemical castration. He chose the latter, a painful and damaging process. &nbsp;It&rsquo;s believed that he was driven to suicide shortly after electing to endure chemical castration. Turing&rsquo;s mother claimed his death was accidental, due to his frequent handling of cyanide for his experiments, as seen early in the film, but suicide has been given as the official cause of death, and many of his close friends believed it was both likely and unsurprising.</p>', 'none', 'Until the late 1960s, homosexuality was treated as criminal behavior in the UK.', 'none', 'Alan Turing\nHomosexuality', 'xhtml', 'imitation-game.jpg', 'none', '[36] [the-imitation-game] The Imitation Game', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(41, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>One should be careful in evaluating a film based on how much of it is fabricated. There is no general guideline to follow as the impact of straying from the historical record varies on a case-by-case basis.</p>\n\n<p>[SPOILERS]</p>\n\n<p>In real life, Turing exposed his homosexuality when he himself reported a petty theft to the police. He tried to cover up the relationship he was having with the possible culprit, Arnold Murray, but to no avail as the police pursued him anyway with regard to the homophobic law of gross indecency. Turing ultimately submitted a five-page statement admitting to his affair with Murray, and this was used as evidence to convict him.</p>\n\n<p>Joan Clarke (Keira Knightley) had already met Turing at Cambridge, where she earned a double first in mathematics, and was already working at Bletchley Park before they were re-introduced. She was doing clerical work, but she was eventually selected to work with Turing&rsquo;s group due to her expertise in mathematics.</p>\n\n<p>John Cairncross was indeed helping the Soviets, but he did not work with Turing at all, he was part of another group in Bletchley Park, and contact between the two would have been very limited. Alex von Tunzelmann of <em>The Guardian</em> even takes issue with this subplot as Turing is shown covering up for Cairncross after he blackmails him with knowledge of his homosexuality. &ldquo;This is wholly imaginary and deeply offensive &ndash; for concealing a spy would have been an extremely serious matter. Were the makers of <em>The Imitation Game</em> intending to accuse Alan Turing, one of Britain&rsquo;s greatest war heroes, of cowardice and treason?"</p>\n\n<p>Turing knew that his childhood friend, Christopher Morcom, was very ill for quite some time, so his death was not a dramatic shock, as depicted in the film.</p>\n\n<p>He did not name his code-breaking machine after Christopher either, it was actually called the Bombe. The digital computer he later created was called the Universal Turing Machine.</p>\n\n<p>The flurry of dramatic turns that occurred right after Turing&rsquo;s machine decoded its first day of messages did not happen.</p>\n\n<p>The most extensive dramatization involves Turing&rsquo;s success with decoding Enigma. After Turing finishes building his machine, it doesn&rsquo;t actually crack Enigma until Turing experiences an epiphany spurred on by an anecdote between two of his colleagues. He realizes that the machine could succeed in breaking Enigma if it was given a few words that were already decoded, information the British already had thanks to a routine phrase that concluded every German transmission that began the day. In reality, the concept of using at least one decoded character as a starting point is a basic tenet of code-breaking, and it is highly unlikely that Turing would even design a machine without realizing this concept first. Graham Moore admitted to fabricating this part of the film, arguing that they wanted a plot reversal that was simpler and easy to understand. The actual historical record was considered too dry and complex to work as dramatic material.</p>\n\n<p>Detective Robert Nock is actually a fictional character, he does not exist in real life. (For that matter, much of Turing&rsquo;s confession to Nock would seem unlikely given the confidential nature of Turing&rsquo;s work.)</p>\n\n<p>It&rsquo;s also worth noting that in real life, Turing did not send a letter to Churchill on his own - it was actually co-signed with his colleagues who shared in his frustration. Furthermore, while Turing was put in charge for a short time, Hugh Alexander would eventually take the lead when it became apparent that he was more suitable than Turing in handling the bureaucracy.</p>', 'none', 'A substantial portion of the film is actually fiction.', 'none', 'Alan Turing\nWorld War II', 'xhtml', 'ig_04297r_lg.jpg', 'none', '[36] [the-imitation-game] The Imitation Game', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(42, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film&rsquo;s title relates to some of Turing&rsquo;s most important work, but it&rsquo;s at best peripheral to the film&rsquo;s plot. &nbsp;One could interpret the title as a metaphor for Turing&#39;s inability to truly understand and relate well to others. &nbsp;Perplexed by the tangled web of social interactions, intimations and subtext, Turing discusses his difficulty with human interactions. &nbsp;However, some commentators critique the film&#39;s title, believing that it does not&nbsp;work well as a&nbsp;metaphor&nbsp;in describing Turing&rsquo;s relations to others - <strong>WHY?</strong>. It&rsquo;s worth noting that an earlier film on Britain&rsquo;s WWII code-breaking efforts was also called <em>Enigma</em>, the title of <em>The Imitation Game</em>&rsquo;s source book, and the producers did not want audiences to confuse their film with the previous one.</p>\n\n<p>The term &ldquo;imitation game&rdquo; comes from a paper Turing wrote in 1960 called "Computing Machinery and Intelligence,&rdquo; where he asks "Are there imaginable digital computers which would do well in the imitation game?" Turing then goes on to describe a game that is really a test to determine if computers can actually think.</p>\n\n<p>Turing describes it as a simple party game involving three players. Player A is a man, player B is a woman and player C (who plays the role of the interrogator) is of either sex. Player C is unable to see either player A or player B, and can communicate with them only through written notes. By asking questions of player A and player B, player C tries to determine which of the two is the man and which is the woman. Player A&#39;s role is to trick the interrogator into making the wrong decision, while player B attempts to assist the interrogator in making the right one.</p>\n\n<p>Turing then argues that the game can prove the presence of (artificial) intelligence if a computer could take the role of Player A and make player C guess wrongly just as many times when an actual human being is sitting in for Player A.</p>', 'none', 'The film’s title does relate to some of Turing’s most important work, but it’s at best peripheral to the film’s plot.', 'none', 'Alan Turing\nArtificial intelligence', 'xhtml', 'imitation_game_dancing_still.jpg', 'none', '[36] [the-imitation-game] The Imitation Game', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(43, 1, 1, 'Selma-Poster.jpg', 'none', 'Ava DuVernay', 'none', '1', 'none', 'David Oyelowo\nCarmen Ejogo\nLorraine Toussaint\nCommon\nOmar Dorsey\nAndre Holland\nColman Domingo\nWendell Pierce\nTessa Thompson\nKeith Stanfield\nStephan James\nAlessandro Nivola\nCuba Gooding, Jr.\nTom Wilkinson\nOprah Winfrey\nGiovanni Ribisi\nTim Roth', 'xhtml', '<p>In 1965, Dr. Martin Luther King, Jr. (David Oyelowo) leads a dangerous campaign to secure equal voting rights in the face of violent opposition. The march from Selma to Montgomery culminates in President Johnson (Tom Wilkinson) signing the Voting Rights Act of 1965, one of the most significant victories for the civil rights movement.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Ava DuVernay, Paul Webb', 'none', '', NULL, 'African-American cinema\nAva DuVernay\nCivil rights\nHistorical drama\nIndependent film\nPeriod pieces\nSocial change', 'xhtml', 'Brad Pitt, Dede Gardner, Jeremy Kleiner, Christian Colson, Oprah Winfrey', 'none', 'Paramount Vantage', 'none', '', 'none', '', 'none', 'AFI Award for Movie of the Year (2014)\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Achievement in Music Written for Motion Pictures, Original Song - Common and John Legend for "Glory" (2014)\nGolden Globe Best Original Song - Common and John Legend for "Glory" (2014)\nGolden Globe Nomination for Best Motion Picture - Drama (2014)\nGolden Globe Nomination for Best Director - Ava DuVernay (2014)\nGolden Globe Nomination for Best Performance by an Actor in a Motion Picture Drama - David Oyelowo (2014)', 'xhtml', '', 'none', '', 'none', 'http://www.selmamovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/-qwOE0z8wh8" frameborder="0" allowfullscreen></iframe>', 'none'),
(44, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p><em>Selma</em> was supposed to be an awards season favorite, especially given its widespread acclaim in the mainstream press, so it was a surprise when it was nominated for only two awards: Best Picture and Best Song. Many had believed that the lead actor, David Oyelowo, and the director, Ava DuVernay, were strong contenders for Best Actor and Best Director, and that the film was a likely nominee for other categories such as Best Screenplay and Best Cinematography. Some commented that it seemed especially odd that the film would be honored with so few nominations when it was nominated for the top prize of Best Picture. A debate over the recognition of minority and female filmmakers had already been growing in Hollywood when <em>Selma</em> was released, and the film&rsquo;s seeming lack of recognition at the Academy Awards has led to rampant speculation and criticism in the media. Some have called this a reflection of an ongoing prejudice in the film industry while others have faulted the Academy&rsquo;s critical judgment and taste. Still others claimed it was the result of a late Oscar campaign that missed several important guild awards, which may have slowed some of the film&rsquo;s potential momentum.</p>', 'none', '"Selma" was supposed to be an awards season favorite, so it was a surprise when it was nominated for only two awards.', 'none', 'Awards season\nOscar\nSelma', 'xhtml', 'selma-image-01.jpg', 'none', '[43] [selma] Selma', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(45, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>One should be careful in evaluating a film based on how much of it is fabricated. There is no general guideline to follow as the impact of straying from the historical record varies on a case-by-case basis.</p>\n\n<p>Much of the film has been hailed for its accuracy. The film&rsquo;s historic march actually passed by DuVernay&rsquo;s father&rsquo;s farm in his hometown in Lowndes County, which she often visited with her family. DuVernay said she drew on her lifelong memories for the film&rsquo;s depiction of that region.</p>\n\n<p>Dr. Martin Luther King, Jr&rsquo;s estate actually has legal ownership of his speeches, and the film was unable to license any of them due to its limited budget. Director Ava DuVernay had to write new speeches that did not infringe on any copyright. Many have praised her efforts, noting that her speeches make fewer religious references than King but shore up the connection between his work and the current state of race relations while maintaining his tone and general vernacular.</p>\n\n<p>The film&rsquo;s most significant departure from the historical record is the depiction of Lyndon B. Johnson, which is detailed elsewhere.</p>', 'none', 'DuVernay said she drew on her lifelong memories for the film’s depiction of Lowndes County.', 'none', 'Civil Rights\nPolitics\nSelma', 'xhtml', 'selma.jpg', 'none', '[43] [selma] Selma', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(46, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>After the film completed principal photography, 18-year-old African-American Michael Brown was shot and killed by police officer Darren Wilson in Ferguson, Missouri, sparking a heated nationwide debate over race relations that extended beyond the relationship between law enforcement and minorities. <em>Selma</em> was still in post-production when a grand jury declined to indict Wilson for Brown&rsquo;s killing, and DuVernay would watch live news coverage of protesters clashing with police officers during his breaks from editing the film.</p>\n\n<p>Around that time, <em>IndieWire</em> interviewed DuVernay about her support for the Black Friday boycott campaign called Blackout. When asked if there was a parallel between the film&rsquo;s story and the racial climate in Ferguson, Missouri (following the grand jury decision in the Michael Brown shooting), DuVernay felt there was no argument. &ldquo;An unarmed black citizen is assaulted with unreasonable force and fatal gunfire by a non-black person who is sworn to serve and protect them. A small town that is already fractured by unequal representation in local government and law enforcement begins to crack under the pressure. People of color, the oppressed, take to the street to make their voices heard. The powers-that-be seek to extinguish those voices with brute militarized force and disregard for constitutional rights. That was Selma 1965. That&#39;s Ferguson right now." DuVernay would reiterate that sentiment to <em>The Wrap</em>, telling them &ldquo;Ferguson is a mirror of the past. And Selma is a mirror of now. We are in a sad, distorted continuum. It&rsquo;s time to really look in that mirror.&rsquo;&rsquo;</p>', 'none', '“Ferguson is a mirror of the past. And Selma is a mirror of now.’’\n', 'none', 'Civil Rights\nPolitics\nSelma', 'xhtml', '04.jpg', 'none', '[43] [selma] Selma', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(47, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>In the film, Johnson is seen taking very reluctant action on civil rights, opposing King&rsquo;s march for political reasons and going as far as authorizing the FBI to go after King in an attempt to curtail to his efforts in an election year.</p>\n\n<p>The harshest and most vocal critics have been former Johnson aide Joseph Califano, who wrote a scathing rebuke in <em>The Washington Post</em>, and to a lesser degree the director of the Lyndon Baines Johnson Library and Museum, who wrote another critical piece in <em>Politico</em>, criticizing the film for &ldquo;bastardiz[ing] one of the most hallowed chapters in the civil rights movement.&rdquo; Both critics have been singled out for their association with Johnson, particularly Califano who contends that Johnson was much more involved than most historians believe to be.</p>\n\n<p>Still, historians much more removed from Johnson have been critical on this particular issue, even as many of them have gone on to praise the rest of the film.</p>\n\n<p>Gary May, a professor at the University of Delaware and the author of <u>Bending Toward Justice: The Voting Rights Act and the Transformation of American Democracy</u>, told <em>The New York Times</em> that &ldquo;on balance, the film is a positive force,&rdquo; but said that the scenes depicting Johnson had &ldquo;a problem with the tone.&rdquo;</p>\n\n<p>Diane McWhorter (<u>Carry Me Home: Birmingham, Alabama: The Climactic Battle of the Civil Rights Revolution</u>) said that &ldquo;everybody has to take license in movies like this, and it can be hard for nit-pickers like me to suspend nit-picking. But with the portrayal of L.B.J., I kept thinking, &lsquo;Not only is this not true, it&rsquo;s the opposite of the truth.&rsquo;&rdquo;</p>\n\n<p>In terms of specifics, the strongest dispute has been the movie&rsquo;s depiction of Johnson&rsquo;s involvement in the F.B.I.&rsquo;s surveillance of Dr. King&rsquo;s personal life. David J. Garrow, the author of <u>Bearing the Cross: Martin Luther King, Jr., and the Southern Christian Leadership Conference</u>, said that &ldquo;if the movie suggests L.B.J. had anything to do with the tape, that&rsquo;s truly vile and a real historical crime against L.B.J.&rdquo; Johnson&#39;s involvement&nbsp;is mostly implied by the way the film cuts together certain scenes in the film while making no mention that the surveillance on King had originated under the previous administration. As a result, some argued that this implication, while unfair, was possibly unintentional.</p>\n\n<p>Another dispute centers around Johnson&rsquo;s hesitance to push for the voting rights bill soon after the Civil Rights Act was passed. While Johnson was indeed reluctant, his attorney general Nicholas Katzenbach was already drafting the bill under his orders. By the time the Selma marches came around, Katzenbach was quietly negotiating behind closed doors to get the votes needed in Congress to pass the bill.</p>\n\n<p>Julian E. Zelizer, the author of <u>The Fierce Urgency of Now: Lyndon Johnson, Congress and the Battle for the Great Society</u>, believed that omitting this altogether from the film&rsquo;s story created a misleading portrayal of Johnson, arguing in the New York Times that &ldquo;the real story wasn&rsquo;t about a president who didn&rsquo;t want voting rights, it was about a president who couldn&rsquo;t get them through. And it was the civil rights movement that made that possible.&rdquo; In the film&rsquo;s defense, Amy Davidson of <em>The New Yorker</em> points to a White House recording that shows Johnson telling King &ldquo;that he wants his &lsquo;people&rsquo; to lobby &lsquo;those committee members that come from urban areas that are friendly to you&rsquo; in support of Medicare and Johnson&rsquo;s education and poverty bills. Those were the priorities; they needed to get through without any filibuster. After those bills are passed, Johnson says, &lsquo;then we&rsquo;ve got to come up with the qualification of voters.&rsquo; It was the protesters&rsquo; attempts to cross the Edmund Pettus bridge that changed Johnson&rsquo;s timetable&hellip;.There is no question that Johnson was deeply, viscerally committed to civil rights...It is also the case that the White House waited several days after Bloody Sunday before making an official statement about the violence, and that it did not, in that interim, respond to urgent requests for federal protection, including sit-ins at Administration offices. Sending in federal marshals or troops, at that point, might have been politically risky; it might have played into the hands of segregationists. One way or another, by the time either of those things happened, another man, a minister from Boston, was dead, and Johnson had set his staff scrambling to write a draft of a speech, and to assemble a voting-rights bill that he&rsquo;d send to Congress sooner than he had planned.&rdquo;</p>\n\n<p>Davidson also argues that other contextual omissions would have portrayed Johnson in a negative light. For example, referring to Taylor Branch&rsquo;s <u>At Canaan&rsquo;s Edge: America in the King Years</u>, Davidson points out that when the first violent march in Alabama was in the news, Johnson was far more focused on the Vietnam War, planning a secret bombing campaign with Secretary of Defense Robert McNamara. In the entire film, no mention of Vietnam is ever made in relation to Johnson.</p>\n\n<p>When this debate gained traction in the mainstream press, there was an argument over whether or not the discrepancies would be used to sabotage the film&rsquo;s chances at the Academy Awards. A heavy favorite during the awards season, the film was nominated for the top prize of Best Picture, but except for Best Song it was not nominated for any others despite strong expectations in other major categories.</p>', 'none', 'The strongest dispute has been the movie’s depiction of Johnson’s involvement in the F.B.I.’s surveillance of Dr. King’s personal life.', 'none', 'Civil Rights\nLyndon B. Johnson\nPolitics\nSelma', 'xhtml', '150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg', 'none', '[43] [selma] Selma', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(48, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The Student Nonviolent Coordinating Committee (SNCC; often pronounced "snick") formed in April 1960 out of a Shaw University student meeting organized by Ella Baker. It grew into a large organization noted for its involvement in sit-ins, freedom rides, voter registration drives and other Civil Rights activities like the 1963 March on Washington.</p>', 'none', 'The Student Nonviolent Coordinating Committee formed in April 1960 out of a Shaw University student meeting.', 'none', 'Civil Rights\nSelma', 'xhtml', 'still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg', 'none', '[43] [selma] Selma', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(49, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>New York City in 1981 was significantly more dangerous than it is today. &nbsp;Mob violence was spilling out into the streets, rape,&nbsp;robbery and other street crimes ran&nbsp;rampant. According to New York City crime statistics, there were 2,166 murders that year compared to 648 in 2013. John Lennon had been shot in the street a year earlier and the NYPD Police Commissioner Robert McGuire&#39;s stated that increasing street crime was a primary issue of concern. &nbsp;Gang violence had become so prevalent in parts of&nbsp;Brooklyn that one&nbsp;area in Williamsburg&nbsp;was&nbsp;nicknamed Brooklyn&#39;s "killing fields" for the number of teenagers senselessly killed there.</p>\n\n<p>Mob violence also reached a peak in New York City and was staking a prominent foothold in&nbsp;Queens and Brooklyn. &nbsp;FBI agent Joseph Pistone -- otherwise known as "Donnie Brasco" -- was wrapping up his six years of undercover work with the Bonanno crime family. Newspaper headlines broadcasted&nbsp;gangster shootouts in bars and corpses of well known gangsters found in basements. The city&#39;s crime rate dropped 5.1% the following year. &nbsp;A trash strike credited to the mob spanned more than two weeks and made the New York streets even grimmer.</p>\n\n<p>Such is the backdrop for&nbsp;<em>A Most Violent Year.</em></p>\n\n<p><em><img alt="" src="{assets_54:{filedir_2}la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg}" style="height:667px; width:1000px" /></em></p>', 'none', 'New York City in 1981 was significantly more dangerous than it is today.', 'none', 'A Most Violent Year\nJ.C. Chandor\nJessica Chastain\nviolence', 'xhtml', 'A-Most-Violent-Year-4.jpg', 'none', '[37] [a-most-violent-year] A Most Violent Year', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(50, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>J.C. Chandor, the writer and director of&nbsp;<em>A Most Violent Year</em>, explains that he set the film in 1981 New York because of the period&#39;s significance to New York history. &nbsp;During this time, the murder rate in New York was very high. &nbsp;Violent crimes, rape and robbery all hit 15-year highs in 1981. &nbsp;Chandor noted in an interview with The Huffington Post,&nbsp;"The film is playing off a lot of traditional themes in a gangster film, but it also plays against that in a lot of ways."</p>\n\n<p>"There was something fascinating to me about the changes that have taken place in New York City in really a relatively short period of time," Chandor said in an&nbsp;interview with the Huffington Post. "I was looking for crime statistics. I realized all the budget cuts and horrible things that happened to New York during the 1970s actually peaked in 1981. The cool thing about 1981 is that it&#39;s also a real transition year: Ronald Reagan took office, Ed Koch was re-elected as New York City mayor, it was the first couple of years of rap exploding."</p>\n\n<p>However, the film&#39;s two main characters, Abel and Anna Morales (Oscar Isaac and Jessica Chastain), a pair of&nbsp;upwardly mobile 30-somethings&nbsp;do not&nbsp;seem particularly&nbsp;interested in those pivotal cultural events. Chandor stated about Abel and Anna,&nbsp;"They&#39;re&nbsp;doing everything they can to isolate themselves from the difficulty of the period...The city slowly fights back, and creeps into their life."</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="" src="{assets_56:{filedir_2}A_Most_Violent_Year_-_Abel_and_Anna.jpg}" style="height:800px; width:1200px" /></p>', 'none', 'J.C. Chandor explains that he set the film in 1981 New York because of the period''s significance to New York history.', 'none', 'A Most Violent Year\ncrime\ndrama\nJ.C. Chan\nJessica Chastain\nNew York\nOscar Isaac\nthe 80s', 'xhtml', 'A-Most-Violent-Year-1.jpg', 'none', '[37] [a-most-violent-year] A Most Violent Year', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(59, 1, 1, 'STILL-ALICE-onesheet.jpg', 'none', 'Richard Glatzer, Wash Westmoreland', 'none', '1', 'none', 'Julianne Moore\nAlec Baldwin\nKristen Stewart\nHunter Parrish\nKate Bosworth', 'xhtml', '<p>Alice Howland (Julianne Moore), a successful Columbia University linguistics professor happily married with three grown children, struggles to maintain her mind after being diagnosed with early onset Alzheimer&rsquo;s.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Richard Glatzer, Wash Westmoreland', 'none', '', NULL, 'Alzheimers\nDrama\nFilms about diseases\nJulianne Moore', 'xhtml', 'James Brown, Pamela Koffler, Lex Lutzus', 'none', 'Sony Pictures Classics', 'none', '$4 million', 'none', 'Est. $1,815,508 (domestic total)', 'none', 'Oscar Nominated Best Performance by an Actress in a Leading Role - Julianne Moore (2014)\nGolden Globe Best Performance by an Actress, Drama - Julianne Moore (2014)\nSAG Award for Outstanding Performance by a Female Actor in a Leading Role - Julianne Moore (2014)', 'xhtml', '', 'none', '', 'none', 'http://sonyclassics.com/stillalice/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/X_bN96H_kXU" frameborder="0" allowfullscreen></iframe>', 'none'),
(51, 1, 1, 'Theory_of_Everything_Poster.jpg', 'none', 'James Marsh', 'none', '1', 'none', 'Eddie Redmayne\nFelicity Jones\nCharlie Cox\nEmily Watson\nSimon McBurney\nDavid Thewlis', 'xhtml', '<p>Once a healthy, active young man, Stephen Hawking (Eddie Redmayne) received an earth-shattering diagnosis at 21 years of age. With his wife Jane (Felicity Jones) fighting tirelessly by his side, Stephen embarks on his most ambitious scientific work, studying the very thing he now has precious little of - time. Together, they defy impossible odds, breaking new ground in medicine and science, and achieving more than they could ever have dreamed.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Anthony McCarten', 'none', '', NULL, 'Biopics\nBritish cinema\nFilm adaptations\nScience films\nStephen Hawking', 'xhtml', 'Tim Bevan, Eric Fellner, Lisa Bruce, Anthony McCarten', 'none', 'Universal Pictures (UK), Focus Features (US)', 'none', '$10.3 million', 'none', '$15 million', 'none', 'SAG Award for Outstanding Performance by a Male Actor in a Leading Role - Eddie Redmayne (2014)\nGolden Globe Best Performance by an Actor in a Motion Picture Drama - Eddie Redmayne (2014)\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Leading Role - Eddie Redmayne (2014)\nOscar Nominated Best Performance by an Actress in a Leading Role - Felicity Jones (2014)\nOscar Nominated Best Writing, Screenplay Based on Material Previously Produced or Published - Anthony McCarten (2014)\nOscar Nominated Best Achievement in Music Written for Motion Pictures, Original Score - Jóhann Jóhannsson (2014)', 'xhtml', '80%', 'none', '72%', 'none', 'http://www.focusfeatures.com/the_theory_of_everything', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Salz7uGp72c" frameborder="0" allowfullscreen></iframe>', 'none'),
(58, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Many of Jean-Luc Godard&#39;s celebrated films from&nbsp;the &#39;60s used not only the same font and&nbsp;color scheme, the same exact&nbsp;editing (with specific letters appearing before others) was seen in Godard&#39;s 1965 film,&nbsp;<em>Pierrot le Fou</em>.</p>', 'none', 'It''s an homage to Jean-Luc Godard.', 'none', 'Birdman\nCredits\nJean-Luc Godard', 'xhtml', 'pierrot.jpg', 'none', '[6] [birdman] Birdman', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(53, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Redmayne spent four months preparing for the role. First, he thoroughly researched Hawking himself, studying videos and documentaries about him and reading his books. The latter proved challenging as Redmayne did not have a background in physics, but he felt it was important to understand Hawking&rsquo;s work. Redmayne ultimately had a physics teacher at Imperial College London explain much of Hawkings writings to him in layman&rsquo;s terms. Then to mimic Hawking&rsquo;s movements, he worked extensively with a choreographer, Alexandra Reynolds. This work depended on his visits to a neurology clinic in London, where he was able to interview patients in different stages of ALS. This was important as he had to depict Hawking in different stages of the disease as well, a task that was especially challenging since the film wasn&rsquo;t going to be shot chronologically. According to Redmayne, he wound up carrying around a sheet of paper summarizing all of his research as a guide for his performance. Finally, Redmayne met with Hawking days before shooting, which helped him fine tune his performance even more. For example, Redmayne discovered that right before Hawking relied on his voice machine to communicate, his voice had become very slurred. Redmayne also observed that Hawking had &ldquo;one of the most expressive faces...The irony I found was that everything you&rsquo;ve been taught about film acting is to reduce. The weird thing here is you are doing the absolute opposite. Your face is in these huge extreme positions and expressions.&rdquo;</p>\n\n<p>In depicting Hawking&rsquo;s later years, when he became thinner and smaller, the make-up artist actually used prosthetic ears to create that illusion. According to writer/producer Anthony McCarten, &ldquo;you make the ears bigger and the whole body seems smaller.&rdquo;</p>\n\n<p>When Hawking viewed an early cut of the film, he was so pleased with Redmayne&rsquo;s performance that he gave the filmmakers permission to use his own distinctive computerized voice in the film rather than the re-creation they used and wound up discarding. According to McCarten, much time and money had been spent re-creating Hawking&rsquo;s computerized voice, but they were never able to replicate it accurately.</p>', 'none', 'Redmayne carried around a sheet of paper summarizing all of his research as a guide for his performance.', 'none', 'Eddie Redmayne\nRole preparation\nStephen Hawking', 'xhtml', 'theory_of_everything_still_a_l.jpg', 'none', '[51] [the-theory-of-everything] The Theory of Everything', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(61, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>ALS&rsquo; effects is physical, not cognitive like Alzheimer&rsquo;s, but there were still certain parallels with the material. As Moore described it, &ldquo;The idea of having to continue with your life to try to remain in touch with what is essentially yourself &mdash; your desires, and the kind of life that you want to lead while dealing with the disease... that&#39;s very much what Rich and Wash are going through, as a couple.&rdquo; Glatzer, who never missed a day of shooting, handled the physical challenge of directing by communicating through an iPad.</p>', 'none', '"[This film is] very much what Rich and Wash are going through, as a couple."', 'none', 'Julianne Moore\nTerminal diseases', 'xhtml', 'still-alice-alec-baldwin-julianne-moore-2.jpg', 'none', '[59] [still-alice] Still Alice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(54, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>In the film, Jane tries to teach Stephen how to use an E-trans Board (a perspex sheet of colors and grouped letters) following his tracheotomy. The idea is for the disabled individual to look at a&nbsp;particular letter on the board, and the person holding it would then piece together the words the other&nbsp;one is trying to spell.&nbsp;The board is meant to be a tool for communication, but according to Felicity Jones, she used it as motivation for her character, Jane. Before the tracheotomy, the last real connection she had with Stephen was his voice, and now she has lost it. Jones saw the board as a physical manifestation of the wall that has permanently come between them following this loss, and the fact that it&rsquo;s a device meant to restore communication makes the experience all the more crueler.</p>', 'none', 'In the film, Jane tries to teach Stephen how to use an E-trans Board.', 'none', 'Felicity Jones\nStephen Hawking', 'xhtml', 'TTOE_D25_07914_a_h.jpg', 'none', '[51] [the-theory-of-everything] The Theory of Everything', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(55, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>[SPOILERS]</p>\n\n<p>With regards to Stephen and Jane&rsquo;s story, the film sets up their story to move much more quickly and look more like a Hollywood romance that becomes unmoored by the diagnosis of Stephen&rsquo;s degenerative neuron disease. For example, their first encounters were spread out over much more time - it took a long while before they were actually dating regularly. They did go to the May ball in Cambridge, but the film embellishes it with a climax involving a dramatic kiss on a bridge.</p>\n\n<p>The most significant change involved the chronology of their courtship, which ends up creating a very different context for their relationship. In real life, Stephen already knew he had ALS before he started dating Jane, and she was well aware of his condition too (having heard from others). But again, in the film Stephen isn&rsquo;t diagnosed with ALS until well after they&rsquo;ve begun dating. The sudden revelation not only creates a lot of drama, but it arguably spurs the characters to further commit to one another, as Jane soon tells Stephen that she&rsquo;s in love with him. In other words, a simple change in chronology creates arguably an entirely different dynamic in their relationship.</p>\n\n<p>Another chronology change has a much smaller impact. At the end of the film, Stephen and Jane are shown reconciled after their break-up when Stephen is made a Companion of Honour. In real life, he received the commendation much earlier, before he and Jane even parted ways, but regardless, the main point of the scene is to close the film on a peaceful note, and it&rsquo;s worth noting that to this day both Stephen and Jane remain cordial friends.</p>\n\n<p>The end of their marriage has been softened substantially. When it&rsquo;s clear that it&rsquo;s finally over, it&rsquo;s almost an expected and mutual decision. The moment is fairly quiet and sad with a lot of crying. In Jane&rsquo;s book, it comes off much more drawn out and painful, climaxing with screaming, intense anger. The turning point was a vacation in France where, according to Jane&rsquo;s memoir, &ldquo;flames of vituperation, hatred, desire for revenge leapt at me from all sides, scorching me to the quick with accusations.&rdquo; Stephen did leave Jane for Elaine, as seen in the film, but according to Jane&rsquo;s memoir, Stephen then &ldquo;sought to control&rdquo; Jane, even though they were no longer cohabiting. Jane wrote that she felt like Stephen had come to view her as &ldquo;simply a piece of property.&rdquo;</p>\n\n<p>The film also omits many details regarding Stephen&rsquo;s relationship with Elaine. Much of the suspicion and negative feelings towards her from Jane, family members and Stephen&rsquo;s colleagues have been left out of the film, and Stephen&rsquo;s eventual divorce from Elaine was preceded by high-profile rumors that he was being abused. None of this is really to the detriment of the film as it&rsquo;s primarily focused on Stephen&rsquo;s relationship with Jane.</p>', 'none', 'The most significant changes involve the chronology of their relationship.', 'none', 'Felicity Jones\nStephen Hawking', 'xhtml', 'theoryofeverythingpicz.jpg', 'none', '[51] [the-theory-of-everything] The Theory of Everything', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(56, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p><em>The New York Times&#39;</em> science writer Dennis Overbye praised Eddie Redmayne&rsquo;s portrayal of Hawking, but he also rebuked the film &ldquo;for its drive-by muddling of Dr. Hawking&rsquo;s scientific work, leaving viewers in the dark about exactly why he is so famous. Instead of showing how he undermined traditional notions of space and time, it panders to religious sensibilities about what his work does or does not say about the existence of God, which in fact is very little.&rdquo;</p>\n\n<p>Overbye was especially critical about how the character of Hawking comes up with his most famous theory, the prediction of black body radiation released by black holes due to quantum effects near the event horizon. (This theoretical black body radiation is widely referred to as &ldquo;Hawking radiation.&rdquo;) The film shows him &ldquo;staring at glowing coals in the fireplace and has a vision of black holes fizzing and leaking heat. The next thing we know he is telling an audience in an Oxford lecture hall that black holes, contrary to legend and previous theory, are not forever, but will leak particles, shrink and eventually explode.&rdquo; In reality, Hawking wasn&rsquo;t struck by a single moment of inspiration. In fact, the idea was first put forward in 1972 by Jacob Bekenstein, a research student at Princeton. Stephen Hawking is widely credited with building on it in putting forth his own theory in 1974. (Errol Morris&#39; documentary adaption of Hawking&#39;s&nbsp;<u>A Brief History of Time</u>&nbsp;actually covers this in succinct detail.)&nbsp;Overbye argued that the filmmakers &ldquo;cheated themselves out of what was arguably the most dramatic moment in [Hawking]&rsquo;s scientific career,&rdquo; and he lamented that by omitting key figures like Dr. Bekenstein and Dr. Alexei Starobinsky, who were crucial in developing the theory, &ldquo;the movie reinforces the stereotype of the lone genius already ingrained by the media and the Nobel Prizes.&rdquo;</p>', 'none', 'Hawking didn''t conceive of his revolutionary theories out of solitary epiphanies.', 'none', 'Films about science\nStephen Hawking', 'xhtml', 'THEORY-articleLarge.jpg', 'none', '[51] [the-theory-of-everything] The Theory of Everything', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(57, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Neither. Stephen Hawking was never inspired by a coffee cup (at least not visually), and the shot appears to quote another one in Jean-Luc Godard&rsquo;s 1967 film, <em>2 or 3 Things I Know About Her</em>, which prominently features a heralded&nbsp;close-up of a coffee cup that consciously draws a correlation to the universe.</p>\n\n<p>It&rsquo;s worth noting that the film&rsquo;s point-of-view shot of the glowing coals seen from Stephen&rsquo;s perspective is very reminiscent of another famous shot in the same Godard film, where we see the glowing embers of a burning cigarette in extreme close-up.</p>', 'none', 'Credit belongs to Jean-Luc Godard.', 'none', 'Jean-Luc Godard\nStephen Hawking', 'xhtml', '2-or-3-things.jpg', 'none', '[51] [the-theory-of-everything] The Theory of Everything', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(60, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Julianne Moore researched the film for about four months, first by watching as many documentaries and interviews as she could dealing with Alzheimer&rsquo;s. She then met with the head of the national Alzheimer&#39;s Association, Elizabeth Gelfand Stearns, as well as three other women via Skype to discuss all of their experiences with Alzheimer&rsquo;s. (All of them, like her character, had been diagnosed with early onset of Alzheimer&rsquo;s.) Next, she met with Dr. Mary Sano, head of Alzheimer&rsquo;s research at Mount Sinai, as well as other researchers and clinicians, and took all the standard cognitive tests given to diagnose to Alzheimer&rsquo;s. She then met with members of a support group at the New York Alzheimer&#39;s Association, and finally with people in the late stages of Alzheimer&rsquo;s at a long-term care facility.</p>\n\n<p>According to Moore, she told the filmmakers, &ldquo;I didn&#39;t want to represent anything onscreen that I hadn&#39;t actually witnessed...If I didn&#39;t understand something, I&#39;d ask somebody. When I spoke to the women in the support groups, I&#39;d say, &lsquo;Well, what does this feel like? What does it feel like to be lost? What does it feel like to not understand whether a door opens in or out? Or not know what a handle is called? Who helps you? What are your mnemonic devices?&rsquo;&rdquo;</p>', 'none', 'Moore told the filmmakers, “I didn''t want to represent anything onscreen that I hadn''t actually witnessed."', 'none', 'Julianne Moore\nRole preparation\nTerminal diseases', 'xhtml', 'still-alice.jpeg', 'none', '[59] [still-alice] Still Alice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(62, 1, 1, 'American-Sniper-Movie-Poster.jpg', 'none', 'Clint Eastwood', 'none', '', 'none', 'Bradley Cooper\nSienna Miller\nLuke Grimes\nJake McDorman\nKyle Gallner\nCory Hardict\nSam Jaeger\nMax Charles', 'xhtml', '<p>U.S. Navy SEAL Chris Kyle is sent to Iraq with only one mission: to protect his brothers-in-arms. His pinpoint accuracy saves countless lives on the battlefield and, as stories of his courageous exploits spread, he earns the nickname &ldquo;Legend.&rdquo; However, his reputation is also growing behind enemy lines, putting a price on his head and making him a prime target of insurgents. He is also facing a different kind of battle on the home front: striving to be a good husband and father from halfway around the world. Despite the danger, as well as the toll on his family at home, Chris serves through four harrowing tours of duty in Iraq, personifying the SEAL creed to &ldquo;leave no man behind.&rdquo; But upon returning to his wife, Taya Renae Kyle (Sienna Miller), and kids, Chris finds that it is the war he can&#39;t leave behind.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Chris Kyle (Story by) and Jason Hall (Screenplay)', 'none', '', NULL, 'American Sniper\nBradley Cooper\nClint Eastwood\nDrama\nNavy Seal\nSienna Miller\nWar', 'xhtml', 'Clint Eastwood, Robert Lorenz, Andrew Lazar, Bradley Cooper, Peter Morgan, based on the autobiography by Chris Kyle, Scott McEwen and Jim DeFelice', 'none', 'Warner Bros. Pictures', 'none', '$60 million', 'none', '$321.6 million', 'none', 'BFCA Critics'' Choice Award for Best Actor in an Action Movie - Bradley Cooper (2015)\nAFI Movies of the Year (2014)\nNational Board of Review: Top Ten Films (2015)\nDenver Film Critics Society Awards for Best Actor - Bradley Cooper (2014)\nDenver Film Critics Society Awards for Best Picture (2014)\nIowa Film Critics Award for Best Movie Yet to Open in Iowa (2014)\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Leading Role - Bradley Cooper (2014)\nOscar Nominated Best Writing, Screenplay Based on Material Previously Produced or Published - Jason Hall (2014)\nOscar Nominated Best Achievement in Film Editing (2014)\nOscar Nominated Best Achievement in Sound Mixing (2014)\nOscar Nominated Best Achievement in Sound Editing (2014)', 'xhtml', '72%', 'none', '72%', 'none', 'http://www.americansnipermovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/99k3u9ay1gs" frameborder="0" allowfullscreen></iframe>', 'none'),
(63, 1, 1, 'wild_xlg.jpg', 'none', 'Jean-Marc Vallée', 'none', '1', 'none', 'Reese Witherspoon\nLaura Dern\nThomas Sadoski', 'xhtml', '<p>After years of reckless behavior, a heroin addiction and the destruction of her marriage, Cheryl Strayed (Reese Witherspoon) makes a rash decision. Haunted by memories of her mother Bobbi (Laura Dern) and with absolutely no experience, she sets out to hike more than a thousand miles on the Pacific Crest Trail all on her own.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Nick Hornby based on the autobiography ''Wild: From Lost to Found on the Pacific Crest Trail'' by Cheryl Strayed', 'none', '', NULL, 'Feminist cinema\nFilm adaptations\nLaura Dern\nReese Witherspoon', 'xhtml', 'Bruna Papandrea, Bill Pohland, Reese Witherspoon', 'none', 'Fox Searchlight Pictures', 'none', '', 'none', '', 'none', 'Oscar Nominated Best Performance by an Actress in a Leading Role - Reese Witherspoon (2014)\nOscar Nominated Best Performance by an Actress in a Supporting Role - Laura Dern (2014)\nGolden Globe Nomination for Best Performance by an Actress in a Motion Picture Drama - Reese Witherspoon (2014)', 'xhtml', '', 'none', '', 'none', 'http://www.foxsearchlight.com/wild/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/xOPl8gKdmYE" frameborder="0" allowfullscreen></iframe>', 'none'),
(64, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Bradley Cooper&rsquo;s interest in developing the project was to do a character study on Chris Kyle, specifically how his life in combat placed an immense train on his family life. Given the subject matter (a war that is still polarizing to the American public) and Eastwood&rsquo;s political activities, many news outlets have put the political subtext under a microscope.</p>\n\n<p>Eastwood&rsquo;s films tend to be ambiguous when they deal with politics. His films may be marketed in a manner that&nbsp;portrays them as one-dimensional. &nbsp;However,&nbsp;Eastwood&#39;s&nbsp;films&nbsp;often flow like a running commentary on a given subject matter, presenting one idea that will be sincerely supported in one instance and then seriously questioned in the next.</p>\n\n<p>American Sniper follows this&nbsp;approach. Kyle&rsquo;s autobiography approaches the subject of war in a more black and white manner. &nbsp;The book portrays&nbsp;clear distinctions of what the author&nbsp;believed to be good and&nbsp;evil, and except for some of the book&rsquo;s more controversial statements, much of this is seen in his character throughout the movie. By contrast, certain moments in the film&nbsp;that initially come off as didactic are quickly matched by a strong counterpoint, clear deviations from the book. &nbsp;For example, in Eastwood&rsquo;s film, Kyle consistently argues that he has no doubt of the good he&rsquo;s accomplishing in Iraq. Yet, Kyle also consistently shows feelings of doubt, and these moments are never articulated with dialogue. &nbsp;They&rsquo;re made known visually. He&rsquo;s also clearly traumatized and torn by two instances where he has to make a choice on whether or not to shoot an Iraqi child. This deviates from&nbsp;Kyle&rsquo;s autobiography&nbsp;where he describes his enemies as savages who are despicably evil and says his only regret is that he didn&rsquo;t kill more.</p>\n\n<p>There also has been debate over the idea of making a film where the protagonist is a sniper. &nbsp;This debate is inherently&nbsp;political. Some believe the film celebrates&nbsp;a professional killer and that it&rsquo;s an uncomfortable reflection of the country&rsquo;s gun culture. This argument usually accompanies a belief that the film has an unambiguous political agenda supporting the military engagement in Iraq. However, others point out that Kyle sacrificed a lot to serve in the military, that he was ultimately asked to perform a difficult task that he executed&nbsp;with great efficiency, a task his character in the film never seemed entirely comfortable with (despite his verbal insistence that he had no regrets).</p>', 'none', 'Bradley Cooper’s interest in developing the project was to do a character study on Chris Kyle.', 'none', 'American Sniper\nBradley Cooper\nClint Eastwood\nSienna Miller\nWar', 'xhtml', 'American_Sniper_Movie_-_sniper_pic.jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(65, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Witherspoon actually read the manuscript for Cheryl Strayed&rsquo;s book before it was even published. From the start, she was interested in portraying Strayed and financed the project&rsquo;s development through her own production company. According to Witherspoon, &ldquo;I related to the loss and grief. I&rsquo;ve been divorced. I&rsquo;ve been a single mom. I&rsquo;ve had to say goodbye to people that I loved in my life. The way Cheryl synthesized those emotions made it feel like my story and everyone&rsquo;s story. We are all on a solitary journey.&rdquo;</p>', 'none', 'Witherspoon read the manuscript for Cheryl Strayed’s book before it was even published.', 'none', 'Film development\nReese Witherspoon', 'xhtml', 'Wild.jpg', 'none', '[63] [wild] Wild', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(66, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Physically, it was very difficult, and it had to look difficult to convincingly portray Strayed&rsquo;s long hike. Before deciding to take that journey in real life, Strayed had never gone backpacking before, so during the entire shoot, Witherspoon actually wore whatever weight was necessary to wear her down.</p>', 'none', 'Witherspoon actually wore whatever weight was necessary to wear her down.', 'none', 'Reese Witherspoon\nRole preparation', 'xhtml', '02BUCKLEY2-articleLarge.jpg', 'none', '[63] [wild] Wild', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(67, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>In terms of material, the book has been condensed. It&rsquo;s worth noting that feature-length films often pare away material as novels typically hold enough raw material to fill more than one film of average feature-length. In this case, Cheryl&rsquo;s older sister and her stepfather were left out of the film, as well as many of the interesting encounters described in the book (partly because there were so many of them). Certain elements also were given little screen time compared to how many pages were dedicated to them in the book, most notably Cheryl&rsquo;s relationship with the drug addict Joe. However, it&rsquo;s worth noting that the film does retain the structure of the original book, which moved back and forth between Cheryl&rsquo;s history and her hike.</p>', 'none', 'The film retains the structure of the book, moving back and forth between Cheryl’s history and her hike.', 'none', 'Adaptations\nReese Witherspoon', 'xhtml', '9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg', 'none', '[63] [wild] Wild', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(68, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The question of whether <em>American Sniper</em>&nbsp;unfairly portrays Iraqis is one of the most&nbsp;controversial debates over the film. &nbsp;This issue&nbsp;often comes down to politics. Many argue that the film&rsquo;s portrayal of Iraqis in general is fairly one-dimensional, usually depicting them as straight villains with very few exceptions.</p>\n\n<p>Others advocate&nbsp;that representing Iraqis as one-dimensional&nbsp;accurately reflects&nbsp;Kyle&rsquo;s book, where he shows a fairly black-and-white perspective of&nbsp;his time in Iraq. &nbsp;In the&nbsp;film and perhaps in real life, Kyle&rsquo;s interactions with Iraqis are more or less limited to dangerous combat situations, and it&rsquo;s difficult to imagine Kyle having anything other than hostile encounters in those situations, especially given his role as a military sniper.</p>', 'none', 'The question is one of the most controversial debates over the film.', 'none', 'American Sniper\nBradley Cooper\nClint Eastwood\nSienna Miller\nwar', 'xhtml', 'AmericanSniper_trailer.jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(69, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Bradley Cooper put himself through a strict diet and an intense workout regimen&nbsp;which increased his weight by about 40 pounds. He also trained with Navy SEALs who worked with Kyle, including Kevin "Dauber" Lacz, Kyle&#39;s sniper partner during his last two tours. (Lacz would also play himself in the film and serve as a technical adviser.)</p>', 'none', 'He put himself through a strict diet and an intense workout regimen.', 'none', 'American Sniper\nClint Eastwood\nRole preparation\nSienna Miller\nwar', 'xhtml', 'American-Sniper-1(1).jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(70, 1, 1, 'tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg', 'none', 'Damien Chazelle', 'none', '1', 'none', 'Miles Teller\nJ.K. Simmons\nPaul Reiser', 'xhtml', '<p>Andrew Neiman is a 19-year-old jazz drummer, dreaming of greatness but unsure if his dream will ever come true. Haunted by the failed writing career of his father, Andrew is determined to rise to the top of the country&#39;s most elite music conservatory. One night, Terence Fletcher, a conductor equally known for his talent for teaching as he is for the terrifying method of his instruction, discovers Andrew practicing the drums. Even though Fletcher says very little to him that night, he ignites in Andrew a passion to achieve his goal. To Andrew&#39;s surprise, the next day, Fletcher requests that he be transferred into his band. This single act changes the young man&#39;s life forever.</p>\n\n<p>At first, Andrew is an "alternate," confined to turning the pages of the "core" drummer. But at the band&#39;s next competition, in an act of either serendipity or sabotage, the core drummer&#39;s sheet music is misplaced. Having committed the music to memory, Andrew gets the opportunity to play. Though the act further alienates him from his fellow musicians, the band nonetheless wins the competition, and he seems poised to become Fletcher&#39;s new "favorite son."</p>\n\n<p>Emboldened by this acceptance, Andrew summons the courage to ask out Nicole, the counter girl at his local theater for whom he&#39;d nursed a silent and unrequited crush. But on that date, Andrew&#39;s musical preoccupations threaten to derail even his most genuine romantic overtures.</p>\n\n<p>Andrew&#39;s maniacal effort to achieve perfection is further fueled by Fletcher&#39;s psychological brinksmanship. Andrew&#39;s family can barely recognize the stone-faced obsessive sitting at their dinner table. Andrew even elicits a sharp word from his otherwise mild-mannered father.</p>\n\n<p>The nearer to perfection Andrew gets, the narrower his circle of intimates becomes until he is left only with Fletcher &ndash; and even that relationship is jeopardized by the ferocity of Andrew&#39;s ambitions.</p>\n\n<p>A journey that can be seen alternately as a descent into madness or an ascent to greatness comes to a crescendo on the biggest platform for Andrew&#39;s talents &ndash; the unforgiving stage of Carnegie Hall.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Damien Chazelle', 'none', '', NULL, 'Best Supporting Actor\nDamien Chazelle\nIndependent film\nJ.K. Simmons\nMiles Teller\nSundance', 'xhtml', 'David Lancaster, Michel Litvak, Helen Estabrook, Jason Blum', 'none', 'Sony Pictures Classics', 'none', '$3.3 million', 'none', '', 'none', '2014 Golden Globe Winner for Best Supporting Actor\nOscar Nominated Best Motion Picture of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Supporting Role - J.K. Simmons (2014)\nOscar Nominated Best Writing, Screenplay Based on Material Previously Produced or Published - Damien Chazelle (2014)\nOscar Nominated Best Film Editing - Tom Cross (2014)\nOscar Nominated Best Sound Mixing - Craig Mann, Ben Wilkins and Thomas Curley (2014)\nAFI Award for Movie of the Year (2014)', 'xhtml', '95%', 'none', '88%', 'none', 'http://sonyclassics.com/whiplash/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/oAhvG3wIE_g" frameborder="0" allowfullscreen></iframe>', 'none'),
(71, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p><em>American Sniper</em>&nbsp;is&nbsp;the second film that Clint Eastwood has&nbsp;shot in digital (using an Alexa camera).&nbsp; Compared to film, digital requires&nbsp;much&nbsp;less time to reload&nbsp;the camera. Eastwood was reportedly pleased by this as he believed it helped preserve the rhythm of the scenes as they were shot. Eastwood is&nbsp;known for a very quick production schedule and shooting few takes. Eastwood believes that this&nbsp;approach keeps&nbsp;actors fresh rather than wearing&nbsp;them down.</p>', 'none', 'It is only the second film that Clint Eastwood has shot in digital.', 'none', 'American Sniper\nBradley Cooper\nClint Eastwood\nSienna Miller\nwar', 'xhtml', 'MDFeatureimage-sniperclint.jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(72, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Clint Eastwood worked with his longtime film editors Joel Cox and Gary Roach. &nbsp;As they prepared for the shoot, Eastwood&nbsp;reportedly told them that the film probably would be made in the editing room, which is a sharp contrast to his usual working methods. Unlike most of Clint Eastwood&#39;s&nbsp;past films, <em>American Sniper</em>&nbsp;jumps around&nbsp;through numerous times and locations. &nbsp;As a result, Eastwood and his editors invested signficantly more&nbsp;work into the film&rsquo;s structure than they&nbsp;typically do in post-production. By the time Eastwood and his team&nbsp;were polishing the&nbsp;film, a number of scenes (mainly war scenes) were reportedly dropped.</p>', 'none', 'Clint Eastwood worked with his longtime film editors Joel Cox and Gary Roach.', 'none', 'American Sniper\nBradley Cooper\nClint Eastwood\nEditing\nSienna Miller\nwar', 'xhtml', 'Clint_Eastwood_39092.jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(74, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Shooting the musical sequences in the film required a lot of planning and storyboarding, as matching different takes of the music would require a lot of precision.</p>\n\n<p>The best example of this is seen in the climactic drum solo. They shot one master take of the solo, and then they filmed a lot of fragments meant to represent that same performance. According to Chazelle, he storyboarded the entire sequence and made an animatic (a series of still images edited in sequence with a rough soundtrack), which then served as his guide. With that in hand, he was able to shoot specific measures of the score to the music.</p>', 'none', 'A lot of planning and storyboarding.', 'none', 'Editing\nWhiplash', 'xhtml', 'whiplash-blood.jpg', 'none', '[70] [whiplash] Whiplash', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(75, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film has actually been heavily criticized for its portrayal of jazz performance. Most of these arguments center around the film&rsquo;s repeated use of a famous anecdote regarding two legendary jazz players, alto saxophonist Charlie Parker and drummer Jo Jones. In real life, Parker (then 16) was playing on stage with a band that included Jones. According to bassist Gene Ramey (as told to Stanley Crouch in his biography on Parker, <u>Kansas City Lightning</u>), &ldquo;when they got to the end of the thirty-two-bar chorus, [Parker] was in the second bar on that next chorus. Somehow or other he got ahead of himself or something. He had the right meter. He was with the groove all right, but he was probably anxious to make it.&rdquo; Parker was pretty green then, and what happened is that&nbsp;he basically flubbed the execution of his double-time improvisation.&nbsp;This prompted Jones to toss a cymbal at Parker&rsquo;s feet, replicating the comical&nbsp;"gong" you might see when a performer is signaled to get off the stage. In other words, it was a joke, a&nbsp;humiliating&nbsp;dig at Parker&#39;s mistake.</p>\n\n<p>The film exaggerates this story, claiming that Jones threw the cymbal right at Parker&rsquo;s head. In other words, the story has been distorted, making it seem as if Jones&#39; joke was a violent, abusive punishment.</p>\n\n<p>More importantly, the film alleges that the incident motivated Parker to practice endlessly, emerging a year later as the greatest jazz artist in history, an idea that has been universally dismissed as ludicrous and dubious given documented and anecdotal evidence on how Parker developed his innovations. For example, not only did Parker have a strong interest in music theory, he also studied alongside his peers and drew inspiration directly from listening to other artists as well, particularly Lester Young. These were intellectual achievements, not the result of extreme physical effort. And yet there&#39;s very little, if any, examples of the jazz musicians in the film ever discussing their ideas on the music or, more importantly, collectively enjoying their performances together in private. Jazz itself is shown as&nbsp;little more than a competitive ambition, with little appreciation for the actual music itself -&nbsp;a very dubious representation by most accounts.&nbsp;Jonathan Rosenbaum went as far as to&nbsp;call&nbsp;it &ldquo;a competitive sports film, not a jazz film at all, where the meaning and art of jazz - including risks, mistakes, and free spirits - are either absent or downgraded.&rdquo;</p>', 'none', 'The film has been criticized for how it changes a famous anecdote about two legendary jazz players, Charlie Parker and Jo Jones.', 'none', 'Jazz', 'xhtml', 'whiplash-1.jpg', 'none', '[70] [whiplash] Whiplash', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(73, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Both actors actually had music backgrounds. Teller started playing the piano when he was six. When he was older, he took up guitar and drums, and he continued playing the drums when he was attending NYU. Since Teller was already well-versed with the drums, much of his time was spent practicing the music.</p>\n\n<p>According to Simmons, he was initially told by Chazelle that there would be a technical adviser on set that would help Simmons with any of the musical aspects of his character. The production was even considering used a body double to handle some of the conducting by Simmons&rsquo; character. To Chazelle&rsquo;s surprise, Simmons told him that he had an undergraduate degree in music from the University of Montana where he studied voice, composition and conducting. Still, much of his background was in classical music, so to prepare for the role, Simmons spent an enormous amount of time researching jazz, not just listening to relevant recordings but also reading through the scores and growing the same familiarity with them that his character would have. Once they started filming, almost all of the playing was done live on-set.</p>\n\n<p>It&rsquo;s worth noting that Simmons doesn&rsquo;t share his character&rsquo;s views on teaching. At a press conference promoting the film, he stated &ldquo;I completely agree with feeling the need for or the benefits of being pushed and of being directed on a project and collaborating. But, that kind of manipulation and abuse has no place in life.&rdquo;</p>', 'none', 'Both actors actually had music backgrounds.', 'none', 'Damien Chazelle\nJ.K. Simmons\nMiles Teller\nRole preparation', 'xhtml', 'Whiplash.jpg', 'none', '[70] [whiplash] Whiplash', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(76, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>If the film wants to use jazz purely as a setting or a metaphor for its ideas, then one could argue that accuracy in those details is secondary to what the film is trying to say. But for some of its detractors, how it misrepresents jazz is a reflection of why they have a difficult time going along with the film&rsquo;s ideas as well. The most damning criticism comes from Glenn Kenny, who writes, &ldquo;It&#39;s not that the movie gets jazz wrong&mdash;although it does&mdash;it&rsquo;s that it gets LIFE ON THE PLANET EARTH wrong.&rdquo;</p>', 'none', 'One could argue that accuracy in those details is secondary to what the film is trying to say.', 'none', '', 'xhtml', '111.jpg', 'none', '[70] [whiplash] Whiplash', 'none', '', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(77, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The song "Whiplash" symbolizes the tortuous, mind-bending roller coasters that Andrew endures under Fletcher&rsquo;s tutelage - vacillating between the abyss of self-destruction and the unadulterated high that is achieved through spectacular performance.</p>\n\n<p>During a surprise in-class band session, a notorious conductor Terence Fletcher secretly auditions the band students, including Andrew, to find a new drum alternate. &nbsp;Andrew succeeds in winning Fletcher&rsquo;s attention. &nbsp;Although Fletcher initially seems courteous and friendly, Fletcher&rsquo;s true colors eventually reveal him to be a master manipulator who abuses and harrasses his students. &nbsp;While practicing the Hank Levy song &ldquo;Whiplash,&rdquo; Fletcher angrily targets Andrew, throwing a chair at him for failing to follow tempo. &nbsp;Fletcher publicly berates and slaps Andrew in front of the class, who silently observe the confrontation. &nbsp;Driven by Fletcher&rsquo;s psychological mind games and tortuous demands for perfection, Andrew becomes even more determined to prove himself to Fletcher and gain his approval. &nbsp;Andrew&rsquo;s emotions and position as a musician rise and fall with the similar rapid acceleration-deceleration force of a metaphorical whiplash. &nbsp;</p>\n\n<p>The song &ldquo;Whiplash&rdquo; is a complicated 1973 jazz piece from composer Hank Levy.&nbsp;The film&rsquo;s director Chazelle recalls &ldquo;Whiplash&rdquo; as &ldquo;the first song the band was playing my first day of practice, and I remembered seeing the chart and not being able to make heads or tails of it.&rdquo;&nbsp;Levy&rsquo;s song has a tricky time signature that makes the song sound as if it&rsquo;s 4/4 time, but it&rsquo;s in 7/8 and then 14/8.&nbsp;"It&rsquo;s just a weird kind of piece and I remember that feeling of being scared of that song, so it seemed apropos,&rdquo; Chazelle said.</p>', 'none', 'It originates with the song “Whiplash" by jazz composer Hank Levy.', 'none', 'Jazz\nMusic references\nWhiplash', 'xhtml', 'Whiplash1.jpg', 'none', '[70] [whiplash] Whiplash', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(78, 1, 1, 'large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg', 'none', 'Jean-Pierre & Luc Dardenne', 'none', '1', 'none', 'Marion Cotillard\nFabrizio Rongione', 'xhtml', '<p>Sandra (Marion Cotillard) has just returned to work after recovering from a serious bout with depression. Realizing that the company can operate with one fewer employee, management tells Sandra she is to be let go. After learning that her co-workers will vote to decide her fate on Monday morning, Sandra races against time over the course of the weekend, often with the help of her husband, to convince each of her fellow employees to sacrifice their much-needed bonuses so she can keep her job. With each encounter, Sandra is brought into a different world with unexpected results.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jean-Pierre & Luc Dardenne', 'none', '', NULL, 'Cinema vérité\nJean-Pierre & Luc Dardennes\nMarion Cotillard\nNeorealism\nRealist cinema\nSocialist cinema', 'xhtml', 'Jean-Pierre & Luc Dardenne, Denis Freyd', 'none', 'Cinéart, IFC Films', 'none', '€7 million', 'none', '', 'none', 'Oscar Nominated Best Performance by an Actress in a Leading Role - Marion Cotillard (2014)\nBAFTA Nominated Best Film Not in the English Language (2014)', 'xhtml', '', 'none', '', 'none', 'http://www.ifcfilms.com/films/two-days-one-night', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/0ppwJIRqFE0" frameborder="0" allowfullscreen></iframe>', 'none'),
(79, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>There does not appear to be a deep metaphorical meaning for using a fake baby. &nbsp;According to the filmmakers, they originally had two real life babies, but the first one was sick with a fever and the parents of the second never showed up on set with their baby. &nbsp;Rather&nbsp;than re-arrange their shooting schedule (often a costly decision to a production), Eastwood asked the prop department to fix the problem. Given Eastwood&rsquo;s reputation of consistently shooting fast, efficiently and on-time (a virtue he picked up from directors he worked with in the past), it&rsquo;s not a surprise that Eastwood would prefer to keep a production moving rather than delay it over a detail that&rsquo;s never the focal point of any particular shot.</p>\n\n<p>The prop&nbsp;is typically obscured. It&nbsp;wasn&rsquo;t until the film&rsquo;s wide release that the use of the prop&nbsp;got any attention when it was widely reported in the mainstream press.</p>', 'none', 'They originally had two real life babies.', 'none', 'American Sniper\nBradley Cooper\nClint Eastwood\nSienna Miller\nwar', 'xhtml', 'bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg', 'none', '[62] [american-sniper] American Sniper', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(80, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The Belgium-born Dardenne brothers are two of the most celebrated filmmakers of the &lsquo;90s and &lsquo;00s. Beginning with <em>La Promesse</em> in 1996 and continuing through such masterpieces as <em>Rosetta</em>, <em>L&rsquo;Enfant</em> and <em>The Kid With a Bike</em>, they have built one of the most respected bodies of work in modern cinema, directing realist films known for their complex and profound explorations of moral and social issues. Their films often take place near Seraing, a small-to-medium-sized town on the outskirts of Liege, and typically cast local actors and non-professionals.</p>\n\n<p>Their previous film, <em>The Kid With a Bike</em>, was the first time they cast a box office star that was new to their work (C&eacute;cile de France, who is very popular in France), but <em>Two Days, One Night </em>is the first time they&rsquo;ve ever made a film with an internationally renowned star like Cotillard.</p>', 'none', 'The Belgium-born Dardenne brothers are two of the most celebrated filmmakers of the last 20 years.', 'none', 'Dardenne\nNeo-realism\nWorld Cinema', 'xhtml', '05CROSSCUTS1-master675.jpg', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(81, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Cotillard&rsquo;s character was someone the Dardenne brothers had been thinking about for a full decade, before the financial crisis hit. They really began to develop the film a few years after the financial meltdown occurred, when the long-term social and economic impact was much more visible. That was when they decided to make a film where the fate of Cotillard&rsquo;s character is dependant on her colleagues&rsquo; willingness to endure a collective sacrifice. Though the filmmakers actually contrived the premise for the film, it was soon reported that months after the film&rsquo;s Cannes premiere, three companies in Belgium and France had subjected their employees to a choice similar to the one seen in the film.</p>', 'none', 'The Dardenne brothers had been thinking about the film for a full decade, but they really began to develop it a few years after the financial meltdown.', 'none', 'Dardenne\nMarion Cotillard', 'xhtml', 'Z1FTWO23F.jpg', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(82, 1, 1, 'Big_Eyes_Movie_Poster.jpg', 'none', 'Tim Burton', 'none', '', 'none', 'Amy Adams, Christoph Waltz, Danny Huston, Krysten Ritter, Jason Schwartzman, Terence Stamp', 'xhtml', '<p>Big Eyes is based on the true story of Walter Keane (Christoph Waltz), who catapulted into fame as one of the most successful painters of the 1950s and early 1960s. &nbsp;Walter Keane earned staggering notoriety by revolutionizing the commercialization and accessibility of popular art with his enigmatic paintings of waifs with big eyes. The truth would eventually be discovered though: Keane&#39;s art was actually not created by him at all, but by his wife, Margaret (Amy Adams). The Keanes, it seemed, had been living a lie that had grown to gigantic proportions. Big Eyes centers on Margaret&#39;s awakening as an artist, the phenomenal success of her paintings, and her tumultuous relationship with her husband, who was catapulted to international fame while taking credit for her work.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Scott Alexander, Larry Karaszewski', 'none', '', NULL, 'Amy Adams\nBig Eyes\nCamp\nChristoph Waltz\nDanny Huston\nFilms about art\nKitsch\nKrysten Ritter\nTim Burton', 'xhtml', 'Tim Burton, Scott Alexander, Larry Karaszewski, Lynette Howell', 'none', 'The Weinstein Company', 'none', '$10 million', 'none', '', 'none', 'Golden Globe Best Performance by an Actress in a Motion Picture Comedy or Musical - Amy Adams (2014)\nGolden Globe Nomination for Best Performance by an Actor in a Motion Picture Comedy or Musical - Christoph Waltz (2014)\nGolden Globe Nomination for Best Song - Lana Del Rey and Daniel Heath for "Big Eyes" (2014)', 'xhtml', '80%', 'none', '61%', 'none', 'bigeyesfilm.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/izUU6Nt5wOc" frameborder="0" allowfullscreen></iframe>', 'none'),
(83, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The Dardennes cast Cotillard because they were familiar with her work and felt that she was capable of a great performance characterized by the fragility they were looking for in her role. However, they also took care in undermining the glamorous image she was known for throughout the world. During the month of rehearsals, they would try out new costumes and hairstyles, looking for the simplest and plainest yet natural look possible to make her seem like any other ordinary person.</p>', 'none', 'The Dardennes felt Cotillard was capable of a great performance characterized by the fragility they were looking for in her role.', 'none', 'Dardenne\nMarion Cotillard\nRole preparation', 'xhtml', '20150124_inq_svrpix24z-a.JPG', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(84, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The Dardennes are known for shooting extensive takes for their films, and this film was no exception. Part of the reason for so many takes was the Dardennes&rsquo; preference for filming scenes as long, uninterrupted takes, meaning takes as long as seven minutes had to be executed without mistakes in order to be usable. One particular scene, when Cotillard&rsquo;s character goes from the bathroom to the bedroom and falls, had 82 takes, reportedly the most of any scene shot for the film.</p>', 'none', 'Takes as long as seven minutes had to be executed without mistakes in order to be usable.', 'none', 'Dardenne\nMarion Cotillard', 'xhtml', 'two-days-one-night-picture-5.jpg', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(85, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The Dardennes are known for extensive rehearsals, and this film was no exception, rehearsing for a full month on location before shooting began. This allowed Cotillard to not only become very comfortable with the entire cast (most of whom are supposed to portray individuals her character has known closely for a fairly long time), but it gave the cast time and freedom to experiment with their performances.</p>\n\n<p>In preparing for her own role, Cotillard also took time to come up with an elaborate backstory for her character. Though it&rsquo;s never fully detailed in the script or film, she mapped her character&rsquo;s entire left even before we see her. Cotillard told the Atlantic, &ldquo;I needed some material because there are some scenes where she&#39;ll just burst into tears out of nowhere. This is not something that&#39;s easy to do, and you really need to think about something. Because I never use anything related to my personal life, I need to build the character&#39;s background for that.&rdquo; As a result, Cotillard came up with her own reasons for why her character was depressed and fleshed out all the details on how her emotional struggles have strained her relationships with her family and her friends. However, Cotillard discovered that after a certain number of takes, the backstory wouldn&rsquo;t be effective anymore as motivation anymore, a major concern given the emotional demands of her character, so she would have to come up with new ideas or new stories that would carry her on for the remaining takes.</p>', 'none', 'The Dardennes are known for extensive rehearsals, and this film was no exception.', 'none', 'Dardenne\nMarion Cotillard\nRole preparation', 'xhtml', 'film-twodays-570.jpg', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(86, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Beginning with <em>La Promesse</em>, when they crystallized the realist style of their films (a style that doesn&rsquo;t characterize any of their earliest works, which were far more conventional), the Dardennes have generally shot their scripts in chronological order. Luc Dardenne &nbsp;told the A.V. Club that &ldquo;we cannot imagine any other way to work. We are enriched by it, we are nourished by it, and we find new ways and new perspectives to follow&mdash;the next step, the next natural scene in the chronology of the movie. Actors we&rsquo;ve worked with come back and always say it feels more natural. Why? Because it gives time to mature within the film.&rdquo;</p>\n\n<p>This method of working is notable in <em>Two Days, One Night</em> because the film does leave and return to several locations throughout the narrative. For cost and logistical reasons, film productions usually shoot all scenes from the same location at roughly the same time - doing so saves time as it cuts down on set-up time and/or time reserved in a space as well as transportation and moving of equipment. Since that wasn&rsquo;t the case with <em>Two Days, One Night</em>, the costs were greater. Jean-Pierre Dardenne told the A.V. Club they often had to &ldquo;leave the set dressing as it is. We take the lights, but we leave the scenario as it is until we come back. Filming this way allows us to really have a better sense&mdash;to feel things better, to feel the decoration, to feel the story, to feel the characters.&rdquo;</p>', 'none', '"We cannot imagine any other way to work."', 'none', 'Dardenne', 'xhtml', 'Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg', 'none', '[78] [two-days-one-night-deux-jours-une-nuit] Two Days, One Night (Deux jours, une nuit)', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(87, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Walter and Margaret Keane were struggling artists when they met in Berkeley, California in 1953. Walter was recently divorced and Margaret&rsquo;s marriage was unraveling. The two eventually married in 1955, but&nbsp;it wasn&rsquo;t until 1957 when their work was shown at an outdoor art show in Washington Square Park in New York. The paintings that got the most attention - focusing on small girls with enormous eyes - became unusually popular throughout the late 1950s and early 1960s. Walter Keane claimed credit for the paintings and went to great lengths to promote them, becoming one of the most financially successful contemporary artists in America.</p>\n\n<p>Walter and Margaret separated in 1964, and six years later, Margaret publicly revealed that she was the real artist behind those paintings. Walter denied Margaret&#39;s public revelation, forcing Margaret to sue Walter over the artist&#39;s rights to the paintings.&nbsp;Margaret eventually won&nbsp;her case by swifly drafting a sketch of a girl with big eyes, proving that she, and not Walter,&nbsp;was the true artist of the paintings. &nbsp;For the next three decades until his death in 2000, Walter Keane insisted that he was the real artist even though he never provided any evidence of his painting.</p>\n\n<p>Decades later, screenwriters Scott Alexander and Larry Karaszewski came up with the idea for Big Eyes when they stumbled upon an entry on the Keanes in The Encyclopedia of Bad Taste. &nbsp;</p>', 'none', 'Walter and Margaret Keane were struggling artists when they met in Berkeley, California in 1953.', 'none', 'Amy Adams\nBig Eyes\nChristoph Waltz\nKrysten Ritter\nTim Burton', 'xhtml', '1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG', 'none', '[82] [big-eyes] Big Eyes', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(88, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film opens with Andy Warhol&rsquo;s take on the paintings: "It has to be good. If it were bad, so many people wouldn&#39;t like it.&rdquo; However, as seen in the film, there were detractors like the critics for the New York Times who were indeed merciless about their distaste for the paintings. For example, Walter did indeed select &ldquo;Tomorrow Forever&rdquo; to be displayed at the New York World&rsquo;s Fair, and fair organizers did indeed refuse to show it after John Canaday of the New York Times dismissed it in print as &ldquo;the very definition of tasteless hack work.&rdquo;</p>\n\n<p>Decades later, the paintings would be described by Walter Keane&rsquo;s biographer, journalist Adam Parfrey, as "saccharine kitsch madness," and by New York Times reporter Katherine Bishop as "maudlin popular art."</p>\n\n<p>Regardless, even after their general popularity abated in the mid-&rsquo;60s, they were still sought after decades later. Before he was offered Big Eyes, director Tim Burton had already owned a collection of those paintings, and alternative rocker Matthew Sweet (best known for the acclaimed 1991 power pop album, Girlfriend) is an avid collector who wound up serving as a consultant for the film.</p>\n\n<p>In 1992 Margaret opened the Keane Eyes Gallery, and when asked about the response, she said that "People either hate my paintings or they love them. There does not seem to be much middle ground."</p>', 'none', '"People either hate my paintings or they love them. There does not seem to be much middle ground."', 'none', 'Amy Adams\nBig Eyes\nChristoph Waltz\nKrysten Ritter\nTim Burton', 'xhtml', 'big-eyes-oxygen-promo-movie-trailer-large-6.jpg', 'none', '[82] [big-eyes] Big Eyes', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(89, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p><em>Big Eyes</em>&nbsp;reunites Burton with screenwriters Scott Alexander and Larry Karaszewski, who wrote Ed Wood on spec. Both films deal with subjects from the same era that have become cult figures of kitsch.</p>\n\n<p>Both writers began development for <em>Big Eyes</em> around 2003, when they first met Margaret Keane and convinced her to give them authorization to make the film. (Unlike past their past biopics, permission was necessary in order to utilize Keane&rsquo;s artwork.) They originally planned to direct the film themselves, but every attempt to start production was met with an insurmountable obstacle. Financing often fell through, especially after the financial collapse of 2008, and Reese Witherspoon had to drop out of the project after becoming pregnant.</p>\n\n<p>After a decade of preparation, which they supported out of their own pockets, they finally approach Tim Burton to direct the film, after he expressed interest in producing. Like <em>Ed Wood</em>, it would become a period piece produced on a very low budget, and just as Burton filmed Alexander and Karaszewski&rsquo;s draft of <em>Ed Wood</em> virtually in its entirety, he would do the same for <em>Big Eyes</em>.</p>', 'none', '"Big Eyes" reunites Burton with screenwriters Scott Alexander and Larry Karaszewski, who wrote Ed Wood on spec.', 'none', 'Amy Adams\nBig Eyes\nChristoph Waltz\nLarry Karaszewski\nMargaret Keane\nScott Alexander\nTim Burton\nWalter Keane', 'xhtml', 'timburton-bigeyes-painting-tsr.jpg', 'none', '[82] [big-eyes] Big Eyes', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(90, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>When Scott Alexander and Larry Karaszewski were developing the film, it was always their intention to show the story from Margaret Keane&rsquo;s point-of-view. This was partly why they were able to get Margaret&rsquo;s authorization for the film, but it was also a perspective that has received surprisingly little exposure. Both writers note that many people still believe Walter is the actual artist behind the paintings simply because Margaret&rsquo;s revelation came at a time when the paintings were no longer popular with the general public.</p>\n\n<p>Few people would describe the film&rsquo;s depiction of Walter restrained, but both writers as well as Margaret note that Walter&rsquo;s real life behavior was even more outrageous. When referring to the original court transcripts of Margaret&rsquo;s case against Walter, they note that Walter consistently tested the boundaries of the court&rsquo;s patience, calling in strange character witnesses and nearly getting muzzled himself due to his outlandish behavior. (At one point Walter even called in Wayne Newton as a witness. After the trial was over, Newton flew back to Hawaii at his own expense to personally apologize to Margaret Keane.) Many of these details were left out of the film because it was felt that it would&rsquo;ve been too over-the-top, even though those details were actually factual.</p>\n\n<p>The film suggests that Walter Keane arguably pioneered commercial reproduction in contemporary art. Alexander says that Walter Keane &ldquo;wasn&rsquo;t selling that many expensive paintings, so he figured out how to make them cheap, so cheap that they were basically posters that could be sold anywhere.&rdquo; This is seen in the film when Walter sees numerous people taking his gallery&rsquo;s free posters rather than buying the actual paintings, which were more than most people could afford. Even after charging the posters for a dime, the demand was insatiable, inspiring Walter to find other cheap ways of replicating the artwork to sell them to the masses.</p>\n\n<p>Karaszewski argues that Walter also &ldquo;invented the mass-marketing of art. He was the guy who, because he wasn&rsquo;t accepted in art circles, did that end run...He realized that art critics didn&rsquo;t matter&mdash;celebrities did. You don&rsquo;t need the Times when you have Joan Crawford going on The Tonight Show, saying, &lsquo;I met the most fabulous painter the other day.&rsquo;&rdquo; As seen in the film, Walter Keane took every opportunity he could to present celebrities with a Keane painting, mainly as a marketing device that would also be publicized by the local gossip column Dick Nolan.</p>\n\n<p>Karaszewski and Alexander also suggest that his brilliance at marketing has never been recognized simply because it was completely overshadowed by his fraudulent behavior.</p>', 'none', 'Karaszewski and Alexander suggest that his brilliance at marketing has never been recognized simply because it was completely overshadowed by his fraudulent behavior.', 'none', 'Amy Adams\nart\nBig Eyes\nChristoph Waltz\nKrysten Ritter\nMargaret Keane\nWalter Keane', 'xhtml', 'Walter_and_Margaret_Keane.jpg', 'none', '[82] [big-eyes] Big Eyes', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(91, 1, 1, 'bigtmp_31367.jpg', 'none', 'Mike Leigh', 'none', '1', 'none', 'Timothy Spall\nDorothy Atkinson\nPaul Jesson\nMarion Bailey\nRuth Sheen\nLesley Manville\nMartin Savage', 'xhtml', '<p><em>Mr. Turner</em> explores the last quarter century of the life of the great if eccentric British painter J.M.W. Turner.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Mike Leigh', 'none', '', NULL, 'Biopics\nBritish cinema\nFilms about art\nMike Leigh\nPeriod pieces\nTimothy Spall', 'xhtml', 'Danielle Brandon, Helen Grearson, Georgina Lowe, Norman Merry', 'none', 'Entertainment One, Sony Pictures Classics', 'none', '', 'none', '', 'none', 'Oscar Nominated Best Achievement in Cinematography - Dick Pope (2014)\nOscar Nominated Best Achievement in Production Design (2014)\nOscar Nominated Best Achievement in Costume Design (2014)\nOscar Nominated Best Achievement in Music Written for Motion Pictures, Original Score (2014)\nCannes Film Festival Best Actor - Timothy Spall (2014)\nCannes Film Festival Vulcain Prize for the Technical Artist - Dick Pope (2014)', 'xhtml', '', 'none', '', 'none', 'http://sonyclassics.com/mrturner/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/jWjKggucxIU" frameborder="0" allowfullscreen></iframe>', 'none'),
(94, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Pope says, &ldquo;When I did the post, I had copies of the paintings in the DI suite. We lit them with normal lighting. I was able to reference them against the paintings on the screen and make sure I wasn&#39;t going off on a tangent when in fact it was important that the paintings be true to the way they had been painted. I didn&#39;t want them to be really warm or really cold. I wanted them to be true to what they were.&rdquo;</p>', 'none', '"When I did the post, I had copies of the paintings in the DI suite."', 'none', 'Cinematography\nDick Pope\nMike Leigh', 'xhtml', '89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg', 'none', '[91] [mr.-turner] Mr. Turner', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(95, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Leigh&rsquo;s films are famous for the amount of work involved in developing the characters, and <em>Mr. Turner</em> is no exception. Leigh first told Spall about his idea for the project in 2007. From the very start, it seemed like Leigh wanted Spall to play Turner, but it wouldn&#39;t come up again until three years later when Leigh told Spall that he was trying to prep&nbsp;<em>Mr. Turner</em>&nbsp;for 2013. Financing hadn&#39;t been secured yet, but Leigh told&nbsp;Spall that if he was still interested, he should&nbsp;start&nbsp;learning how to paint.</p>\n\n<p>For the next two and a half years, Spall worked with&nbsp;teacher and&nbsp;artist Tim Wright at his Clerkenwell studio, learning everything he could for the role. They concentrated on oil painting, but Spall&#39;s education would also cover acrylic and water colors as well as&nbsp;speed drawing and&nbsp;life drawing. Special attention was also paid to Turner&#39;s methods and how they evolved over the years.</p>\n\n<p>During this time, Spall read two authoritative biographies on Turner as well as a half-dozen supplemental books, after which rehearsals began, lasting for six months.&nbsp;Rehearsals in general are considered a luxury&nbsp;in commercial filmmaking, and holding them for six months is especially rare.&nbsp;(It was even longer than the shoot itself, which lasted&nbsp;for four months.)</p>', 'none', 'After painting a full-size copy of Turner''s "Snow Storm – Steam-Boat off a Harbour’s Mouth," Spall had it framed on his wall. "I look at it now and think, ''How the f*** did I do that?''"', 'none', 'Mike Leigh\nRole preparation', 'xhtml', 'beaf9acf-41d6-431f-a557-525f54b2774c.jpg', 'none', '[91] [mr.-turner] Mr. Turner', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(92, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>J.M.W. Turner is one of the most celebrated painters in history. He&rsquo;s been credibly hailed as the greatest landscape painter as well as Britain&rsquo;s greatest painter. According to director Mike Leigh, "the look of the film comes out of a sense of us trying to interpret, visually, his paintings, but also the spirit of the two periods in which the film takes place, Georgian and Victorian."</p>\n\n<p>Cinematographer Dick Pope described his approach as&nbsp;"more invoking the spirit of what Turner was looking at, or what he was seeing. What inspired him to take the journey to Margate in the first place, which was and still is famous for its light and wonderful sunrises. What drove him drove us.&rdquo; Pope also stresses that &ldquo;the other thing is where we put the camera, because that&#39;s what&#39;s more important in one of Mike&#39;s films, more than anything else, is where do you see it from? A lot of the vantage points in the film are from Turner looking at what he is observing."</p>', 'none', '"[We were] invoking the spirit of what Turner was looking at, or what he was seeing."', 'none', 'Dick Pope\nMike Leigh', 'xhtml', 'mr-turner.jpg', 'none', '[91] [mr.-turner] Mr. Turner', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(93, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>According to Dick Pope, &ldquo;about six months before we started filming (May - August, 2013), I was shooting a film called <em>Angelica</em> [in New York]...I was very much thinking of [<em>Mr. Turner</em>], and in a way I used it as a rehearsal room for what what I went for on <em>Turner</em>, because it was a period film set in early Victorian London. So there wasn&#39;t such a difference in time span with <em>Turner</em>, perhaps 40 years or so. I tried lots of different things. It was naughty of me, really, but it benefitted the film. I took what I learned in terms of candlelight, lantern light, light in general, and with that camera [an Arri Alexa] I went through the paces on the film.&rdquo;</p>\n\n<p>Pope also did extensive research at the Tate Britain and other art galleries, including the Maritime Museum in Greenwich which displays all of Turner&rsquo;s maritime work. (During the film, Turner mentions bequeathing his work to the National Gallery in London. While much of his work is on display there, a large number of his paintings can be found all around the world in other galleries and collections.) The Tate was especially informative as they had the actual palette of the colors used by Turner. From this palette, Pope noticed that Turner liked to add teal to the shadows of his paintings as they were never completely black. The highlights would often have a bit of chrome yellow. Not only did this inform the film&rsquo;s aesthetic, but it&rsquo;s even mentioned in the film when Turner&rsquo;s father buys his son his pigments.</p>\n\n<p>Pope also was bolder than usual shooting in low light. Again, his experience on Angelica helped him understand how much light he really needed when using the Alexa. He found that the camera was able to handle very low light levels with very little grain and pixelation, encouraging him to shoot a number of scenes with just candle light, most notably the gathering at Petworth House with Turner and Lord Egremont.</p>\n\n<p>Much of the film was actually filmed as is, with very careful planning. Pope mentions that they were fortunate enough to have had clear, sunny weather on almost every day, allowing them to shoot often with available light. A lot of careful planning also ensured that they were able to shoot in particular areas where the best available light at that time of day would be present.</p>\n\n<p>Even more stunning is how much of the outdoor scenery was left untouched. According to Pope, &ldquo;in the house that Mrs. Booth lives in, the windows&mdash; a lot of people come up to me and say, &lsquo;That&#39;s CG out the window, right?&#39; I say, &lsquo;like hell it is!&#39; It never is on one of Mike&#39;s films. The house that Mrs. Booth had behind her when she was in that room or when she was eating supper was the view out the window at the right time of day."</p>\n\n<p>Many shots in the film perfectly re-create Turner&rsquo;s actual paintings, and these shots were aided by the fact that they were shot in virtually the same exact locations that were depicted in the respective paintings. This was true for the shot depicting the Fighting Temeraire (arguably Turner&rsquo;s most famous work) - the river, sky and sunlight were photographed as is.&nbsp;The only CGI effect came from the moving Temeraire itself.</p>', 'none', '"A lot of people come up to me and say, ‘That''s CG out the window, right?'' I say, ‘like hell it is!''"', 'none', 'Cinematography\nDick Pope\nMike Leigh', 'xhtml', 'mr-turner.jpeg', 'none', '[91] [mr.-turner] Mr. Turner', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(96, 1, 1, '5454e16ae86e9.jpg', 'none', 'Dan Gilroy', 'none', '1', 'none', 'Jake Gyllenhaal\nRene Russo\nRiz Ahmed\nBill Paxton', 'xhtml', '<p>Lou Bloom (Jake Gyllenhaal), a driven and intense young man desperate for work, discovers the high-speed world of L.A. crime journalism. Finding a group of freelance camera crews who film crashes, fires, murder and other mayhem, Lou muscles into the cut-throat, dangerous realm of nightcrawling -- where each police siren wail equals a possible windfall and victims are converted into dollars and cents. Aided by Nina (Rene Russo), a veteran of the blood-sport that is local TV news, Lou blurs the line between observer and participant to become the star of his own story.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Dan Gilroy', 'none', '', NULL, 'Jake Gyllenhaal\nMedia satire\nNeo-noir', 'xhtml', 'Jennifer Fox, Jake Gyllenhaal, Tony Gilroy, David Lancaster, Michel Litvak', 'none', 'Open Road Films (US), Entertainment One (UK)', 'none', '$8.5 million', 'none', '$35.1 million', 'none', 'AFI Award for Movie of the Year (2014)\nGolden Globe Best Performance by an Actor in a Motion Picture Drama - Jake Gyllenhaal (2014)\nOscar Nominated Best Writing, Screenplay Written Directly for the Screen - Dan Gilroy (2014)', 'xhtml', '95%', 'none', '76%', 'none', '', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/uqWqG_vOzYw" frameborder="0" allowfullscreen></iframe>', 'none'),
(97, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The filmmakers consciously created a film that was stylistically and dramatically over-the-top, but the basic ideas driving the story aren&rsquo;t that removed from reality. &nbsp;The film creators were inspired by the horrific&nbsp;&ldquo;caught-on-tape&rdquo; moments that often propel the local nightly broadcast news.</p>\n\n<p>While broadcast news has had a shrinking presence due to the rise of online news sites, a 2012 Pew poll found that nearly half of all Americans (that&rsquo;s roughly a hundred million Americans) still regularly watch broadcast news. In other words, it&rsquo;s still considered a very substantial and profitable business in the media world.</p>\n\n<p>And &ldquo;business&rdquo;&nbsp;is the key word. &nbsp;Television journalism is a business, and business dictates most of the editorial decisions in the film.&nbsp;When Warren Olney was interviewed by <em>The Los Angeles Times</em>, he recalled that in the same vein as the news station in <em>Nightcrawler</em>, advertising departments at Olney&rsquo;s news station &ldquo;would say our audience survey shows that viewers would like stories about X, Y and Z...The subjects were being dictated by the sales department rather than rising up from the news department.&rdquo;</p>\n\n<p>In terms of what drives viewership, violent and graphic footage are definitely valued. <em>The L.A. Times</em> also reported that a recent study shows that Los Angeles above most other markets prefers crime at the top of its news (and always &ldquo;breaking&rdquo;). &nbsp;(See 2010 USC Annenberg study by the Norman Lear Center)</p>', 'none', 'A recent study shows that Los Angeles above most other markets prefers crime at the top of its news (and always “breaking”).', 'none', 'Media\nNeo-noir', 'xhtml', 'Jake-Gyllenhaal-plays-an--014.jpg', 'none', '[96] [nightcrawler] Nightcrawler', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(98, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Jake Gyllenhaal plays Lou Bloom, a hungry freelancer who hopes to make it big by capturing horrific and violent events on film and selling the footage to a local TV station.</p>\n\n<p>Like many actors of his generation, Gyllenhaal was inspired by the intense preparation Robert DeNiro would put into his own performances. For example, he wanted his character, who lived and worked mainly at night, to resemble another nocturnal creature. &ldquo;I wanted him to look like a coyote...And in order to do that, I had to look hungry and be hungry.&rdquo; So Gyllenhaal lost 30 pounds by putting himself on a diet of kale salads and regularly running 10 mile loops. &nbsp;</p>\n\n<p>Gyllenhaal describes the character of Lou as &ldquo;part of a generation of people who are looking for jobs in a world where jobs are redefining themselves.&rdquo; &nbsp;Gyllenhaal explains, &ldquo;He&rsquo;s a thief, a sort of petty thief at the beginning at the movie. He runs across this accident scene and he sees these stringers, these guys who film accidents and crimes and stuff for the local news, and he finds his calling in an instant.&rdquo;</p>\n\n<p>In preparation for the role, Gyllenhaal and the director also spent time night-crawling with real-life news cameraman (or &ldquo;news stringer&rdquo;), Howard Raishbrook, who had been leading the same life as Gyllenhaal&rsquo;s character for about 15 years in Los Angeles. (Raishbrook would also serve as a technical advisor on the film.)</p>', 'none', '“I wanted him to look like a coyote...And in order to do that, I had to look hungry and be hungry.”', 'none', 'Method acting\nRole preparation', 'xhtml', 'nightcrawler-jake-gyllenhaal.jpg', 'none', '[96] [nightcrawler] Nightcrawler', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(99, 1, 1, '11181015_800.jpg', 'none', 'Angelina Jolie', 'none', '1', 'none', 'Jack O''Connell\nDomhnall Gleeson\nMiyavi\nGarrett Hedlund\nFinn Wittrock', 'xhtml', '<p>A chronicle of the life of Louis Zamperini, an Olympic runner who was taken prisoner by Japanese forces during World War II.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Joel Coen, Ethan Coen, Richard LaGravenese, William Nicholson', 'none', '', NULL, 'Angelina Jolie\nHistorical drama\nPeriod pieces\nWorld War II', 'xhtml', 'Matthew Baer, Angelina Jolie, Erwin Stoff, Clayton Townsend', 'none', 'Universal Pictures', 'none', '$65 million', 'none', '', 'none', 'AFI Award for Movie of the Year (2014)', 'xhtml', '', 'none', '', 'none', 'http://www.unbrokenfilm.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/kk1M_HwmFMM" frameborder="0" allowfullscreen></iframe>', 'none'),
(101, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>For starters, Deakins used a digital camera system, which made things easier because of the amount of effects shots that would be done for the film. Deakins writes that he &ldquo;used the Alexa because, when all the aspects of shooting a film are considered, I believe it to be the best system right now. I used the Alexa&#39;s internal NDs but no other filtration.</p>\n\n<p>&ldquo;I prefer shooting with a single camera simply because I don&#39;t like shooting generic &#39;coverage&#39;. I believe in constructing a shot that has a purpose within a scene rather than leaving it to the editor to cut something out of coverage! Of course, there are occasions when I see that using a second camera is the best way to capture a performance that is unscripted or that is simply intense but, for the most part, I see it as more efficient to concentrate on one angle at a time. It is an obvious truth that a second camera will compromise the shot that can be made by the first camera. A third camera will only compromise all three angles, both in terms of lighting and in terms of composition and lens choice. Yes, I like to operate myself and I also like to work with as small a crew as possible. For that reason I don&#39;t shoot projects where I know there will be a regular use of multiple cameras. But I genuinely believe that the intimacy of working with a small crew will allow for both better performances in general as well as more personal imagery. Besides all of this, I can&#39;t honestly think of a film that I really admire which hasn&#39;t been shot with a single camera.&rdquo;</p>\n\n<p>In an interview with <em>The Hollywood Reporter</em>, Deakins mentioned that &ldquo;one of [Angelina Jolie]&rsquo;s chief references was Sidney Lumet&#39;s film <em>The Hill</em>...It wasn&#39;t like we were going to copy it, but there was something about the framing, the immediacy of the classic simplicity of the framing &mdash; getting right to the point without frivolous camera moves and fancy lighting.&rdquo;</p>\n\n<p>In terms of specific scenes, Deakins also drew a lot of inspiration from William Brown&rsquo;s photos of Welsh coal miners, resulting in the monochromatic look of the scenes at the Naoetsu prison camp.</p>\n\n<p>For the plane scene in the beginning, when we see some striking shafts of light coming through the plane&rsquo;s bullet holes, Deakins used a normal fogger, as well as &ldquo;T12 Fresnel lamps to create the sunlight effect inside the B24. The lamps were on cranes with remote control units and about 20 feet from the fuselage.&rdquo;</p>\n\n<p>The night scene where the characters are stuck in a life raft was shot &ldquo;on a interior stage tank and it was lit using a large overhead grid cloth into which I was bouncing 4K HMI Par lamps. The image was exposed as you see it, though printed down a little in the final timing. The shark was computer generated as were some of the water reflections. To get a soft light on the actors faces it was all but impossible to get the right balance with natural reflections on the water surface.&rdquo;</p>', 'none', '“I prefer shooting with a single camera simply because I don''t like shooting generic ''coverage.''"', 'none', 'Cinematography', 'xhtml', 'unbrokenbanner.jpg', 'none', '[99] [unbroken] Unbroken', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(100, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film is actually quite faithful to real life details. The most significant change came in showing how Zamperini became a track star. The film shows him hiding under the bleachers by the track, looking up the skirts of his female classmates. He&rsquo;s then found out, prompting him to run, winding up on the track with other runners, and then catching the attention of his older brother Pete, who notices his speed. Soon after, he becomes a key member of the track team.</p>\n\n<p>In reality, before there was ever any real evidence that he could be a decent, much less extraordinary, runner, some freshman girls talked him into joining the track team, which turned out disastrous when he finished his first race in last place. (It was after this race that he went hiding underneath the bleachers out of complete embarrassment.) Pete then took it upon himself to train his little brother in order to bring him up to par. With time, Zamperini became less reluctant to run and grew to enjoy it as he got better and faster.</p>\n\n<p>It&rsquo;s worth noting that the Coen brothers gave the film a high-profile rewrite, and some note that the change seems par for the course for their comedic sensibility.</p>', 'none', '"Unbroken" gives Zamperini''s start as a track star a comical rewrite.', 'none', 'Joel & Ethan Coen\nWorld War II', 'xhtml', 'r0_185_4274_2589_w1200_h678_fmax.jpg', 'none', '[99] [unbroken] Unbroken', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(102, 1, 1, 'citizenfour-poster.jpeg', 'none', 'Laura Poitras', 'none', '1', 'none', 'Edward Snowden\nGlenn Greenwald\nWilliam Binney\nJacob Appelbaum\nEwen MacAskill', 'xhtml', '<p>In January 2013, filmmaker Laura Poitras was in the process of constructing a film about abuses of national security in post-9/11 America when she started receiving encrypted e-mails from someone identifying himself as &ldquo;citizen four,&rdquo; who was ready to blow the whistle on the massive covert surveillance programs run by the NSA and other intelligence agencies. In June 2013, she and reporter Glenn Greenwald flew to Hong Kong for the first of many meetings with the man who turned out to be Edward Snowden. She brought her camera with her.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '-', 'none', '', NULL, 'Cinema vérité\nDirect cinema\nJournalism\nPolitical thriller', 'xhtml', 'Laura Poitras, Mathilde Bonnefoy, Dirk Wilutzky', 'none', 'Radius-TWC', 'none', '$2.5 million', 'none', '', 'none', '2014 National Society of Film Critics Award for Best Non-Fiction Film\n2014 New York Film Critics Circle Award for Best Non-Fiction Film\n2014 Gotham Independent Film Award for Best Documentary\nOscar Nominated Best Documentary Feature (2014)\nDGA Nomination for Outstanding Directorial Achievement in Documentary (2014)\nCinema Eye Honor for Outstanding Achievement in Nonfiction Feature Filmmaking (2014)\nCinema Eye Honor for Outstanding Achievement in Direction (2014)\nCinema Eye Honor for Outstanding Achievement in Editing (2014)\nCinema Eye Honor for Outstanding Achievement in Production (2014)', 'xhtml', '', 'none', '', 'none', 'https://citizenfourfilm.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/GiU2zinfotI" frameborder="0" allowfullscreen></iframe>', 'none'),
(103, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Most generally believe that <em>Citizenfour</em> is a journalistically sound film. Laura Poitras is a cinema verite filmmaker, and though cinema verite is often cited for the handheld camera work commonly associated with it (a common technical necessity, but not an aesthetic requirement), a better definition of cinema verite focuses on the filmmaker&rsquo;s relation with its subject.</p>\n\n<p><em>Citizenfour</em> overtly deals with the classic cinema verite challenge of creating a minimally subjective picture&nbsp;when the filmmaker was clearly asked by the subject to create the film for a specific purpose. Although Snowden&rsquo;s information leak was arguably done for the greater public good, he did have personal reasons for asking Poitras to film him, and there were clearly reasons why she was approached over any other filmmaker, all of which stem from her own political activities and beliefs. This alone has placed the film under greater scrutiny even though the film is continuously upfront about these issues.</p>\n\n<p>While social documentaries have typically aspired for the attention afforded to serious journalism, they&rsquo;ve rarely been held to the same accountability as a reporters would be in the newsroom - what would be career-ending errors and ethical lapses at a&nbsp;newspaper could be forgivable, even ignored, in a documentary film. However, due to Greenwald&rsquo;s involvement, Poitras was especially mindful about how she was making this film as it would have been far more damning for <em>Citizenfour</em> to drift away from objectivity as Greenwald himself would be on the line, if not Poitras.</p>', 'none', '"Citizenfour" overtly deals with the classic cinema verite challenge of creating a minimally subjective portrait of a subject when the filmmaker was clearly asked by the subject to create the film.', 'none', 'Cinema verite\nJournalism\nPolitics', 'xhtml', 'Citizenfour_article_story_large.jpeg', 'none', '[102] [citizenfour] Citizenfour', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(104, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The core of the film details Greenwald and Poitras&rsquo; time with Snowden. After Snowden takes his leave of them, the film covers the rest of his story in less detail, and some argue that the reduced coverage creates some significant omissions that would have shaped the way audiences viewed his earlier statements.</p>\n\n<p>For example, Snowden told the <em>South China Morning Post</em> in an interview that the NSA had been regularly hacking into hundreds of computers in Hong Kong and China. Some argue that Snowden&rsquo;s revelation was tantamount to treason, and that the film betrayed too much bias by omitting this from its story.</p>\n\n<p>The irony of Russia granting Snowden asylum is fairly blatant without explanation, but what the film doesn&rsquo;t show is Snowden&rsquo;s press conference after he was granted asylum - he thanks Russia, Venezuela, Bolivia, Nicaragua and Ecuador &ldquo;for being the first to stand against human rights violations carried out by the powerful,&rdquo; a quizzical statement given everything Snowden had argued against throughout the film.</p>\n\n<p>Many also argue that long after Snowden&rsquo;s leak, there has been no concrete evidence of an American citizen harmed by domestic surveillance without committing any criminal activity. However, others believe that such arguments aren&rsquo;t definitive as intelligence agencies have had a long history of doing just that prior to the internet. (Months after <em>Citizenfour</em> was released, <em>Selma</em> would dramatize J. Edgar Hoover&rsquo;s surveillance of Martin Luther King, Jr. and how this information was, in real life, used by his agency to &ldquo;destabilize&rdquo; King&rsquo;s domestic life.) For that reason alone, the potential for harm is valid especially if policies and administrations can change.</p>\n\n<p>Others point out that Snowden stole many documents that had nothing to do with domestic surveillance. This may have been the result of a broader acquisition of data rather than a selective one, but much of what Snowden retrieved from the NSA documented overseas intelligence gathering that was not considered to be questionable.</p>\n\n<p>Fred Kaplan, author of <u>The Insurgents: David Petraeus and the Plot to Change the American Way of War</u>, criticized Snowden&rsquo;s argument that the mass amount of metadata acquired by the NSA has never stopped a single terrorist attack on the U.S. &ldquo;His source for that claim was the December 2013 report by President Obama&rsquo;s commission on NSA reform, whose members were given full access to the agency&rsquo;s personnel and documents. True, the report concluded that information gathered from metadata collection (under Section 215 of the Patriot Act) &lsquo;was not essential to preventing attacks and could readily have been obtained in a timely manner&rsquo; using other methods. However, the report also noted that information gathered from foreign intercepts (under Section 702) &lsquo;contributed in some degree&rsquo; to halting 53 terrorist attacks. &lsquo;We are persuaded,&rsquo; the report went on, &lsquo;that section 702 does in fact play an important role in the nation&rsquo;s effort to prevent terrorist attacks across the globe.&rsquo; The claim about Section 702 would be moot if Snowden had leaked documents only about domestic surveillance, but he leaked documents about foreign surveillance too.&rdquo;</p>', 'none', 'After Snowden takes his leave of Poitras and Greenwald, the film covers the rest of his story in less detail.', 'none', 'Cinema verite\nPolitics', 'xhtml', '141020_r25652-1200.jpg', 'none', '[102] [citizenfour] Citizenfour', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(105, 1, 1, 'Txtd-Dom-Rated-Tsr-1sht-VICE.jpg', 'none', 'Paul Thomas Anderson', 'none', '1', 'none', 'Joaquin Phoenix\nJosh Brolin\nOwen Wilson\nKatherine Waterston\nReese Witherspoon\nBenicio del Toro\nJena Malone\nMaya Rudolph\nMartin Short', 'xhtml', '<p>When private eye Doc Sportello&rsquo;s ex-old lady suddenly out of nowhere shows up with a story about her current billionaire land developer boyfriend whom she just happens to be in love with, and a plot by his wife and her boyfriend to kidnap that billionaire and throw him in a loony bin...well, easy for her to say. It&rsquo;s the tail end of the psychedelic `60s and paranoia is running the day and Doc knows that &ldquo;love&rdquo; is another of those words going around at the moment, like &ldquo;trip&rdquo; or &ldquo;groovy,&rdquo; that&rsquo;s being way too overused&mdash;except this one usually leads to trouble.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Paul Thomas Anderson, based on the novel by Thomas Pynchon', 'none', '', NULL, '1970s\nAlternative cinema\nFilm adaptations\nIndependent film\nJoaquin Phoenix\nNew Hollywood\nPaul Thomas Anderson\nStoner films', 'xhtml', 'Paul Thomas Anderson, Daniel Lupi, JoAnne Sellar', 'none', 'Warner Bros.', 'none', '$30 million', 'none', '', 'none', 'Golden Globe Nomination for Best Performance by an Actor in a Motion Picture Comedy or Musical - Joaquin Phoenix (2014)\nOscar Nominated Best Writing, Screenplay Based on Material Previously Produced or Published - Paul Thomas Anderson (2014)\nOscar Nominated Best Achievement in Costume Design (2014)', 'xhtml', '', 'none', '', 'none', 'http://inherentvicemovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/wZfs22E7JmI" frameborder="0" allowfullscreen></iframe>', 'none'),
(106, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>As many have noted, the film has a period appropriate look, resembling a film that could&rsquo;ve been shot in 1970, just like the film&rsquo;s setting. In an interview with Filmmaker Magazine, Anderson said &ldquo;I was using a lot of lenses I had used on the 35mm portions of <em>The Master</em>. One lens that we used is a lens from 1910 or 1911 that we put a modern housing on. It&rsquo;s from an old Path&eacute; camera that we first used on <em>Magnolia</em>...We had a set of lenses that we used on <em>The Master</em> that I was familiar with that I thought would work really well, because I had gotten to know them &ndash; I know the imperfections, that one lens is a little cooler or one drops off a little here or one is softer.</p>\n\n<p>&ldquo;[Cinematographer] Robert [Elswit] and I talked about making the film feel like a faded postcard; you want it to look like a movie from 1970, but you don&rsquo;t want it to feel like a pastiche. I had a bunch of film in my garage that was improperly stored &ndash; it was 10 or 15 years old &ndash; and we shot some tests with it, and one of two things would always happen. Either it inspired us, because the blacks were very milky and the colors were a bit faded in a great way, or it was damaged beyond repair and you got no exposure at all. We wanted to use it but you couldn&rsquo;t really depend on it at the risk of not getting anything, so we would use it here and there and a couple of the shots made it into the movie. More importantly, it served as a kind of inspiration for us to say, &lsquo;This looks great, how can we use our modern film stocks and lenses to try to replicate that kind of look?&rsquo;&rdquo;</p>', 'none', 'The film has a period appropriate look, resembling a film that could’ve been shot in 1970.', 'none', 'Cinematography\nPaul Thomas Anderson', 'xhtml', 'inherent-vice-01.jpg', 'none', '[105] [inherent-vice] Inherent Vice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(107, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>In an interview with IndieWire, Anderson said, &ldquo;You can&#39;t make a movie like this and assume everyone&#39;s read the book. You have to sort of operate thinking no one has read the book and forget about that. Throw it out the window. So does this piece of background action function in a way that can support itself? I think that it can. It functions as a weird, bizarre throwaway in the background that danger is coming, that there is danger all around this character. Whether it&#39;s explained or not, it kind of has a great, absurdist background feeling to it. Early enough in the movie, that hopefully contributes to paranoia &mdash; that nothing is what it seems. Anything can crawl out of the bushes at any moment. We had endless discussions about that on set and in the editing room about how to navigate that stuff, for sure. &ldquo;The book was always there on the set, and we were digging around, looking for what he meant, what he was after. At the same time, the moment that you put any kind of reverence down for the material and treat it with a little bit more disregard from time to time, it could become really liberating. That&#39;s the book and this is the movie &mdash; we&#39;ve got another job to do. So it was this combination of deep respect and wanting to get it right mixed with, &lsquo;Well, we&#39;re on the road and we&#39;ve got a job to do. How do we do it right?&rsquo;&rdquo;</p>', 'none', '“You can''t make a movie like this and assume everyone''s read the book."', 'none', 'Adaptations\nNeo-noir\nPaul Thomas Anderson\nThomas Pynchon', 'xhtml', 'inherent_vice-1.jpg', 'none', '[105] [inherent-vice] Inherent Vice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(108, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Many of those films have little in common, outside of being unique examples of film noir that take place around Los Angeles, but they have elements reflected in <em>Inherent Vice</em>. Anderson said the success of <em>The Big Sleep</em> despite its confusing plot allowed him to be comfortable with directing a narrative that could be equally confounding as well. However, it&rsquo;s worth noting that the narrative in <em>Inherent Vice</em> is far more diffuse and languid.</p>\n\n<p>The cynical attitude of the film occasionally recalls <em>Chinatown</em>, particularly in the way land ownership figures in the plot. Much of the time, it seems more reflective of the post-Watergate mood of <em>Night Moves</em>, often described as burn-out from the failed promise of &lsquo;60s idealism.</p>\n\n<p>Cheech &amp; Chong&rsquo;s marijuana farces from the &lsquo;70s were actually an enormous influence on the film, with Anderson singling out <em>Cheech &amp; Chong&#39;s Up in Smoke</em>&nbsp;as an inspiration. Many critics have also drawn comparisons to<em> The Big Lebowski</em>&rsquo;s shaggy dog narrative, particularly with the film narration that was Anderson&rsquo;s own creation, but many more argue that <em>Inherent Vice</em> found most of its inspiration in another drug-hazed film, <em>The Long Goodbye</em>, which shares the same setting of early &lsquo;70s Los Angeles.</p>', 'none', 'Many critics have drawn comparisons to "The Big Lebowski"’s shaggy dog narrative, but many more argue that it found most of its inspiration in another drug-hazed film, "The Long Goodbye."', 'none', 'Cheech\nChinatown\nChong\nInherent Vice\nLos Angeles\nNeo-noir\nPaul Thomas Anderson\nThe Big Lebowski\nThe Long Goodbye', 'xhtml', 'o-INHERENT-VICE-facebook.jpg', 'none', '[105] [inherent-vice] Inherent Vice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(109, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Cheech &amp; Chong,&nbsp;Anderson&rsquo;s admitted inspirations behind this adaptation, are exemplary of the comedy subgenre known as stoner films. Basically, these are movies that deal with marijuana, either in the comic (and generally positive) depiction of their use or the common use of marijuana among private audiences viewing the film.</p>\n\n<p>Virtually every critic, regardless of their opinion of the&nbsp;film itself, has described it as such - one would be hard-pressed not to find a review that didn&rsquo;t use the term &ldquo;druggy,&rdquo; &ldquo;hazy,&rdquo; &ldquo;baked,&rdquo; &ldquo;half-baked,&rdquo; &ldquo;buzzed,&rdquo; &ldquo;groovy&rdquo; or &ldquo;headtrip&rdquo; at least once.</p>\n\n<p>So what to make of a stoner film? Are they recreational novelties, credible art films, or if both, where does the balance lie?</p>\n\n<p>Jim Hoberman&rsquo;s &ldquo;The Cineaste&rsquo;s Guide to Watching Movies While Stoned,&rdquo; a humorous and sincere take on watching movies under the influence of marijuana, emphasizes the experience. &ldquo;To watch a movie truly stoned was not simply to enjoy more vivid color and oceanic sound; it was to experience a state of acute defamiliarization mixed with heightened idiocy. Time stood still and reverberated like a tuning fork or the BOOIIING! of a cartoon character hit by a falling safe. Everything was a non sequitur; it was impossible to distinguish between intentional and unintentional humor. Infuse your mind with sufficient cannabis and <em>Gidget Goes Hawaiian</em> turns into <em>Last Year at Marienbad</em>, while <em>Last Year at Marienbad</em>&mdash;which I first saw with a brain full of fumes in a Berkeley classroom&mdash;becomes a stone goof. Marijuana made a movie more immersive, even as it guaranteed that in the absence of a second joint, the sensory bombardment of the first forty minutes were bound to be the most fun&mdash;before the pot wore off and the narrative brought you down.&rdquo; More succinctly, &ldquo;filtered through a haze of grass, that which was simple is now complex, while that which was complex becomes unintelligible, and who really cares?&rdquo; This is arguably an accurate description of <em>Inherent Vice</em>, a film where the simple appears complex, and that which is complex appears more likely unintelligible, and whether or not it makes any sense seems to be of little concern to its biggest admirers. In other words, you could argue&nbsp;this is a stoner&nbsp;film that mimics the experience as best as a film can without any actual indulgence on the part of the audience.</p>', 'none', 'Cheech & Chong were Anderson’s admitted inspirations behind this adaptation.', 'none', 'Cheech\nChong\nInherent Vice\nStoner', 'xhtml', 'inherentvice-movie-review.jpg', 'none', '[105] [inherent-vice] Inherent Vice', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(116, 1, 1, 'interstellar3.jpg', 'none', 'Christopher Nolan', 'none', '1', 'none', 'Matthew McConaughey\nAnne Hathaway\nJessica Chastain\nMichael Caine\nBill Irwin\nEllen Burstyn', 'xhtml', '<p>With our time on Earth coming to an end, a team of explorers undertakes the most important mission in human history; traveling beyond this galaxy to discover whether mankind has a future among the stars. &nbsp;</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jonathan Nolan, Christopher Nolan', 'none', '', NULL, 'Anne Hathaway\nChristopher Nolan\nEpics\nJessica Chastain\nMatthew McConaughey\nMichael Caine\nScience fiction', 'xhtml', 'Emma Thomas, Christopher Nolan, Lynda Obst', 'none', 'Paramount Pictures, Warner Bros. Pictures', 'none', '$165 million', 'none', '$545.9 million', 'none', 'AFI Award for Movie of the Year (2014)\nOscar Nominated Best Achievement in Production Design (2014)\nOscar Nominated Best Achievement in Music Written for Motion Pictures, Original Score - Hans Zimmer (2014)\nOscar Nominated Best Achievement in Sound Mixing (2014)\nOscar Nominated Best Achievement in Sound Editing (2014)\nOscar Nominated Best Achievement in Visual Effects (2014)\nGolden Globe Nomination for Best Original Score - Hans Zimmer (2014)', 'xhtml', '73%', 'none', '74%', 'none', 'https://interstellar.withgoogle.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/zSWdZVtXT7E" frameborder="0" allowfullscreen></iframe>', 'none'),
(119, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Glazer wanted to experiment and incorporate some documentary-like details into the film, ideas that felt appropriate for a picture exploring an alien perspective of normal everyday night life in Glasgow. Wearing a dark wig, red lipstick and a fake fur coat, Johansson had to walk or drive around the streets of Glasgow and talk to real-life bystanders. These scenes were completely unscripted and filmed secretly. According to Johansson, &ldquo;I would have Jonathan and the crew in the back of it, filming in this bizarre candid camera situation, and Jonathan would talk to me through an earpiece, giving me instructions. Occasionally he would say, &#39;this guy looks good, stop and talk to him&#39;. I would be like, &#39;No, are you kidding me? No I won&#39;t because if he gets into the van I think you&#39;ll find we have a reverse predatory situation on our hands. Or I&#39;d say, &#39;are you crazy? That man is drunk!&#39; And I&#39;d keep driving." According to casting director Kahleen Crawford, &ldquo;Some of the guys who didn&rsquo;t know they were being filmed in advance, who were coming up to the van because Scarlett was attracting their attention, somebody would chase after them afterwards and explain and ask &lsquo;could you just sign this, is that alright?&rsquo; We got some other permissions retrospectively about four months ago. We went around some of the shops in Glasgow that were featured in a montage when Scarlett falls down, where the people were on screen long enough to want to pop in and speak to them, but they were delighted. The guy in the chip stop, the girl in the bakers, they were like &lsquo;no problem, that&rsquo;s fine!&rsquo;&rdquo;</p>', 'none', 'Glazer wanted to experiment and incorporate some documentary-like details into the film.', 'none', 'Cinema verite\nScience Fiction', 'xhtml', 'maxresdefault.jpg', 'none', '[113] [under-the-skin] Under the Skin', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(114, 1, 1, 'MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg', 'none', 'David Fincher', 'none', '1', 'none', 'Ben Affleck\nRosamund Pike\nNeil Patrick Harris\nTyler Perry\nCarrie Coon\nKim Dickens', 'xhtml', '<p>On the occasion of his fifth wedding anniversary, Nick Dunne (Ben Affleck) reports that his beautiful wife, Amy (Rosamund Pike), has gone missing. Under pressure from the police and a growing media frenzy, Nick&#39;s portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark question: Did Nick Dunne kill his wife?</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Gillian Flynn, based on the novel by Gillian Flynn', 'none', '', NULL, 'Dark comedy\nDavid Fincher\nFilm adaptations\nMedia satire\nNeo-noir\nSatire', 'xhtml', 'Leslie Dixon, Bruna Papandrea, Reese Witherspoon, Ceánn Chaffin', 'none', '20th Century Fox', 'none', '$61 million', 'none', '$334.7 million', 'none', 'Oscar Nominated Best Performance by an Actress in a Leading Role - Rosamund Pike (2014)\nGolden Globe Nomination for Best Performance by an Actress in a Motion Picture Drama - Rosamund Pike (2014)\nGolden Globe Nomination for Best Director - David Fincher (2014)\nGolden Globe Nomination for Best Screenplay - Gillian Flynn (2014)\nGolden Globe Nomination for Best Original Score - Trent Reznor and Atticus Ross (2014)', 'xhtml', '88%', 'none', '79%', 'none', 'http://www.gonegirlmovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/2-_-1nJf8Vg" frameborder="0" allowfullscreen></iframe>', 'none'),
(113, 1, 1, 'under_the_skin_us_poster.jpg', 'none', 'Jonathan Glazer', 'none', '1', 'none', 'Scarlett Johansson', 'xhtml', '<p>A woman of unknown origin (Scarlett Johansson) combs the streets of Glasgow in search of male hitchhikers and&nbsp;luring them&nbsp;into an otherworldly lair.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Walter Campbell, Jonathan Glazer based on Michel Faber''s book', 'none', '', NULL, 'British cinema\nCinema vérité\nFeminist cinema\nIndependent film\nJonathan Glazer\nScarlett Johansson\nScience fiction', 'xhtml', 'James Wilson', 'none', 'StudioCanal and A24 Films', 'none', '$13.3 million', 'none', '$4,739,085', 'none', '', 'xhtml', '86%', 'none', '78%', 'none', 'http://undertheskinmovie.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7S1yhSp5jaI" frameborder="0" allowfullscreen></iframe>', 'none'),
(115, 1, 1, 'MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg', 'none', 'Rob Marshall', 'none', '1', 'none', 'Meryl Streep\nEmily Blunt\nJames Corden\nAnna Kendrick\nChris Pine\nTracey Ullman\nChristine Baranski\nJohnny Depp', 'xhtml', '<p><em>Into the Woods</em> is a modern twist on the beloved Brothers Grimm fairy tales, intertwining the plots of a few choice stories and exploring the consequences of the characters&rsquo; wishes and quests. This humorous and heartfelt musical follows the classic tales of Cinderella (Anna Kendrick), Little Red Riding Hood (Lilla Crawford), Jack and the Beanstalk (Daniel Huttlestone), and Rapunzel (MacKenzie Mauzy)&mdash;all tied together by an original story involving a baker and his wife (James Corden &amp; Emily Blunt), their wish to begin a family and their interaction with the witch (Meryl Streep) who has put a curse on them.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'James Lapine based on his book', 'none', '', NULL, 'Anna Kendrick\nDisney\nEmily Blunt\nFantasy\nMeryl Streep\nMusicals\nStephen Sondheim', 'xhtml', 'Rob Marshall, John DeLuca, Marc Platt, Callum McDougall', 'none', 'Walt Disney Studios', 'none', '$40 million', 'none', '', 'none', 'AFI Award for Movie of the Year (2014)\nOscar Nominated Best Performance by an Actress in a Supporting Role - Meryl Streep (2014)\nOscar Nominated Best Achievement in Production Design (2014)\nOscar Nominated Best Achievement in Costume Design (2014)\nGolden Globe Nomination for Best Actress, Musical or Comedy - Emily Blunt (2014)\nGolden Globe Nomination for Best Performance by an Actress in a Supporting Role (Meryl Streep) (2014)\nGolden Globe Nomination for Best Picture, Musical or Comedy (2014)', 'xhtml', '', 'none', '', 'none', 'http://movies.disney.com/into-the-woods/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/2Byk9Is3TjY" frameborder="0" allowfullscreen></iframe>', 'none'),
(111, 1, 1, 'foxcatcher_xlg.jpg', 'none', 'Bennett Miller', 'none', '1', 'none', 'Steve Carell\nChanning Tatum\nMark Ruffalo', 'xhtml', '<p><em>Foxcatcher</em> tells the gripping, true story of Olympic Wrestling Champion brothers Mark Schultz (Channing Tatum) and Dave Schultz (Mark Ruffalo) and their relationship with the eccentric John du Pont (Steve Carell) that led to murder.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'E. Max Frye, Dan Futterman', 'none', '', NULL, 'Bennett Miller\nBiopics\nChanning Tatum\nJournalism\nMark Ruffalo\nSports movies\nSteve Carrell', 'xhtml', 'Anthony Bregman, Megan Ellison, Jon Kilik, Bennett Miller', 'none', 'Sony Pictures Classics', 'none', '$2.1 million', 'none', '', 'none', 'AFI Award for Movie of the Year (2014)\nOscar Nominated Best Performance by an Actor in a Leading Role - Steve Carell (2014)\nOscar Nominated Best Performance by an Actor in a Supporting Role - Mark Ruffalo (2014)\nOscar Nominated Best Achievement in Directing - Bennett Miller (2014)\nOscar Nominated Best Writing, Screenplay Written Directly for the Screen - E. Max Frye, Dan Futterman (2014)\nOscar Nominated Best Achievement in Best Make-Up and Hair Styling (2014)\nGolden Globe Nomination for Best Picture, Drama (2014)\nGolden Globe Nomination for Best Actor, Drama - Steve Carell (2014)\nGolden Globe Nomination for Best Supporting Actor - Mark Ruffalo (2014)', 'xhtml', '86%', 'none', '83%', 'none', 'http://sonyclassics.com/foxcatcher/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Jhkj1TVITf8" frameborder="0" allowfullscreen></iframe>', 'none'),
(112, 1, 1, 'goodbye_to_language_1.jpg', 'none', 'Jean-Luc Godard', 'none', '1', 'none', 'Héloise Godet\nKamel Abdeli\nRichard Chevallier\nZoé Bruneau', 'xhtml', '<p><em>Goodbye to Language 3D</em>&nbsp;is a sensorially immersive experience that uses 3D technology to mind-expanding effect.</p>\n\n<p>The idea is simple: A married woman and a single man meet. They love, they argue, fists fly. A dog strays between town and country. The seasons pass. The man and woman meet again. The dog finds itself between them. The other is in one, the one is in the other and they are three. The former husband shatters everything. A second film begins: the same as the first, and yet not. From the human race we pass to metaphor. This ends in barking and a baby&#39;s cries. In the meantime, we will have seen people talking of the demise of the dollar, of truth in mathematics and of the death of a robin.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jean-Luc Godard', 'none', '', NULL, '3D movies\nAvant-garde\nExperimental film\nFilm essays\nFrench New Wave\nJean-Luc Godard', 'xhtml', 'Alain Sarde, Brahim Chioua, Vincent Maraval', 'none', 'Wild Bunch', 'none', 'N/A', 'none', '$320,000', 'none', 'Best Picture of 2014 by the National Society of Film Critics\n2014 Cannes Film Festival Jury Prize Winner', 'xhtml', '86%', 'none', '75%', 'none', 'http://goodbyetolanguage3d.com', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/vWEj_AYXzjY" frameborder="0" allowfullscreen></iframe>', 'none'),
(117, 1, 1, '159386941_bbdd65.jpg', 'none', 'Jim Jarmusch', 'none', '1', 'none', 'Tom Hiddleston\nTilda Swinton\nMia Wasikowska\nJohn Hurt\nJeffrey Wright\nAnton Yelchin', 'xhtml', '<p>Set against the romantic desolation of Detroit and Tangier, an underground musician, deeply depressed by the direction of human activities, reunites with his resilient and enigmatic lover. Their love story has already endured several centuries at least, but their debauched idyll is soon disrupted by her wild and uncontrollable younger sister. Can these wise but fragile outsiders continue to survive as the modern world collapses around them?</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Jim Jarmusch', 'none', '', NULL, 'Independent film\nJim Jarmusch\nTilda Swinton\nTom Hiddleston\nVampires', 'xhtml', 'Jeremy Thomas, Reinhard Brundig', 'none', 'Soda Pictures, Pandora Film Verleih, Sony Picture Classics', 'none', '$7 million', 'none', '$7 million', 'none', '', 'xhtml', '85%', 'none', '77%', 'none', 'http://www.sonyclassics.com/onlyloversleftalive/', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ycOKvWrwYFo" frameborder="0" allowfullscreen></iframe>', 'none'),
(120, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>According to casting director Kahleen Crawford, Glazer never wanted to use prosthetics for Pearson&rsquo;s role. &ldquo;It was important to him for that person to be as real as everyone else. We contacted the charity Changing Faces, to let them know what we were doing and let them know about the integrity of the project, and they agreed very generously to give us a bit of their time in circulating information about it. So we made contact with a small pool of people, and then a smaller group of people who were even remotely interested in being on camera. There was a lot of people who were just like, &lsquo;I&rsquo;ve got a job, thank you, goodbye.&rsquo; Adam and a couple of other people who we spoke with had been on camera before, and Adam works in television production so he&rsquo;d was totally relaxed about it. He&rsquo;d been on a show called <em>Beauty and the Beast</em>. So we met with him and we spoke with him at length about the scenes. We spent some time with Adam talking to him about the scene and what the character might talk about with Scarlett&rsquo;s character - how might she lure him, what would grab his attention and that sort of thing. And he gave us some very honest answers and a lot of that is in the film.&rdquo;</p>', 'none', 'Glazer never wanted to use prosthetics for Pearson’s role.', 'none', 'Casting\nScience Fiction', 'xhtml', 'Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg', 'none', '[113] [under-the-skin] Under the Skin', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(118, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>By stripping the film of any clear background, we focus more on the details we do see, which in this case involve a female protagonist, her exclusively male targets, and her different, uncomfortable behavior around other women. The result is the film is interpreted in a way that brings up the elements that interest the director the most rather than becoming a straight translation of the novel&rsquo;s text.</p>\n\n<p>The original book was about &ldquo;an extraterrestrial sent to Earth by a rich corporation on her planet to pick up unwary hitchhikers. She drugs them and delivers them to her compatriots, who mutilate and fatten her victims so that they can be turned into meat.&rdquo; However, most of these details are obscured or removed altogether &ndash; the book&rsquo;s themes of sexual identity are left intact.</p>', 'none', 'By stripping the film of any clear background, we focus more on the details we do see: a female protagonist, her exclusively male targets, and her uncomfortable behavior around other women.', 'none', 'Gender studies\nScience Fiction', 'xhtml', 'Under-the-Skin-feat-Scarlett-Johansson.jpg', 'none', '[113] [under-the-skin] Under the Skin', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(121, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>John du Pont was known as a wealthy eccentric who was the heir to the du Pont family fortune. (The du Ponts founded one of the most successful companies in American history, a chemical company still known as DuPont.) Du Pont hired Olympic wrestling stars Mark and Dave Schultz (both brothers) to run a wrestling training camp set up on du Pont&rsquo;s Philadelphia estate Foxcatcher Farm. &nbsp;Du Pont later shot and killed Dave purportedly as a result of du Pont&rsquo;s untreated mental illness. &nbsp;In the months leading up to Dave&rsquo;s murder, du Pont had reportedly exhibited increasingly odd behavior such as declaring himself the red-robed &ldquo;Dalai Lama of the United States&rdquo; and demanding that all of the treadmills be removed from the training facilities because they were time machines. &nbsp;Du Pont was sentenced to prison where he eventually died at the age of 72.</p>', 'none', 'John du Pont was known as a wealthy eccentric who was the heir to the du Pont family fortune.', 'none', 'Bennett Miller\nFilms about sports\nTrue crime', 'xhtml', 'SteveCarellFoxCatcher.jpg', 'none', '[111] [foxcatcher] Foxcatcher', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(122, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Much of <em>Foxcatcher</em> is fairly accurate, but there are some notable discrepancies. The film leaves out any mention of du Pont&rsquo;s eventual diagnosis as a paranoid schizophrenic. In real life, this was later offered as the reason for du Pont killing Dave. Curiously, the film suggests that du Pont&rsquo;s mother was the cause of his insecure behavior even though some believe she was not an influence in any way.</p>\n\n<p>Du Pont&rsquo;s schizophrenia also manifested itself in real life when Dave was coaching in Foxcatcher. Mark recalls Dave and others describing such incidents as du Pont removing treadmills from the training center because their clocks were somehow transporting him back through time. Despite his long history of paranoid delusions and disturbing, erratic behavior (often times casually dismissed as innocuous eccentricity or the result of cocaine or alcohol), none of these incidents are explored in the film.</p>\n\n<p>The film also downplays Mark&rsquo;s initial resistance towards du Pont when he was offered the job. In real life, Mark believed du Pont did not know enough about wrestling and was even repelled by his personal hygiene.</p>\n\n<p>While there was sibling rivalry that strained Mark&rsquo;s relationship with Dave, the film does add some fictional details to play up their rivalry. Dave never took over as coach at Foxcatcher while Mark was there, he was hired only after Mark was fired by du Pont.</p>', 'none', 'The film leaves out any mention of du Pont’s eventual diagnosis as a paranoid schizophrenic.', 'none', 'Bennett Miller\nFilms about sports\nPsychological disorders', 'xhtml', 'gallery25.jpg', 'none', '[111] [foxcatcher] Foxcatcher', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(123, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>It&#39;s been argued that the film portrays a strong sexual tension between Mark and du Pont, and these&nbsp;homo-erotic undertones have been disputed in light of Mark&rsquo;s real-life concerns over du Pont&rsquo;s inappropriate sexual behavior. There is little actual evidence that du Pont was gay. &nbsp;In his book, Mark recalls du Pont making inappropriate contact using a so-called wrestling move where he grabbed his opponent&rsquo;s scrotum (which was actually inspired by a similar move Mark made out of desperation at the end of a past wrestling match). Du Pont first tried this on Mark, much to his disapproval, then tried it successfully on another wrestler who later told Mark what had happened. It&rsquo;s worth noting that du Pont was reportedly sued in 1988 by a Villanova wrestler for making inappropriate &ldquo;sexual advances,&rdquo; but it was settled out of court and the record was sealed.</p>\n\n<p>Mark has publicly criticized the film for its alleged subtext, writing that &ldquo;the personalities and relationships between the characters in the film are primarily fiction and somewhat insulting. Leaving&nbsp;the audience with a feeling that somehow there could have been a sexual relationship between duPont and I is a sickening and insulting lie. I told Bennett Miller to cut that scene [in the gallery] out and he said it was to give the audience the feeling that duPont was encroaching on your privacy and personal space. I wasn&#39;t explicit so I didn&#39;t have a problem with it. Then after reading 3 or 4 reviews interpreting it sexually, and jeopardizing my legacy, they need to have a press conference to clear the air, or I will.&rdquo;</p>\n\n<p>After making some extensive, heated criticisms on social media, Schultz later posted the following statement:</p>\n\n<p>&ldquo;My reaction on social media was triggered, not by the movie, but by an interview I saw with Bennett Miller whereon a sexual relationship between myself and my Brother&rsquo;s murderer was insinuated by a reporter and allowed to breathe. I have no issue whatsoever with the choice of anyone&#39;s sexual orientation. When it comes to my own, however, I will speak up as that is my personal life choice.</p>\n\n<p>&ldquo;Regarding my comments about Bennett and the movie, I believe that I have supported and trusted him with my life story and image. I also feel I have supported his interpretation of my story, although there were several points we&#39;ve disagreed on regarding the portrayal of my character. All in all, I feel like I&#39;ve helped in the films process by coaching Channing, consulting for 8 years, and adding my voice to what I did and didn&rsquo;t want as an associate producer.</p>\n\n<p>&ldquo;The particular scene in question during the interview was one of many that I objected to having in the film. It was fictional and inaccurate in its portrayal of my character and relationship with Dupont. I originally demanded he remove it, but at Bennett&rsquo;s behest I ended up supporting it because I trusted he would clarify it&rsquo;s ambiguity and overtones in future interviews and I&#39;ve been learning to understand the artistic and creative process which is his expertise.</p>\n\n<p>&ldquo;What I could not tolerate was a false interpretation of that scene during Bennett&#39;s interview concerning a sexual relationship between myself and the man who murdered my brother and caused so much anguish in my life. I hope everyone can understand how this would hurt. During the interview, there was an opportunity for Bennett to clarify this, to speak on my behalf and to defend my position. Given that I was not there to answer the question directly and that Bennett did not, I truly felt that I had no other choice. It was a hasty, emotionally charged reaction.</p>\n\n<p>&ldquo;I did not intend any of the current media storm or public perception around the movie or the issue. I apologize for my methodology, especially to those who I have worked with to make the project a success. I hope this will help in resolving any undue conflict these actions have created.&rdquo;</p>', 'none', '"I could not tolerate a false interpretation of that scene concerning a sexual relationship between myself and the man who murdered my brother and caused so much anguish in my life."', 'none', 'Bennett Miller\nFilms about sports\nHomosexuality', 'xhtml', 'foxcatcher-channing-tatum-steve-carell.jpg', 'none', '[111] [foxcatcher] Foxcatcher', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(124, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Rather than explore du Pont&rsquo;s real life mental illness, the film ties much of the story more to heritage, namely familial heritage. There are two families here: the Du Ponts, one of the most prestigious and wealthiest families in America, and the Schultzes (specifically Mark and Dave). The former is an upper class family with a long legacy tied to industry, while the latter came from working class immigrants&nbsp;and is&nbsp;struggling with money. The symbolism is evident -&nbsp;portraits of the Founding Fathers&nbsp;adorning&nbsp;the walls of the du Pont estate&nbsp;seemingly overlook&nbsp;the &ldquo;blue collared&rdquo; wrestlers from Eastern European immigrant families.</p>\n\n<p>The reputations of both families also reflect the way American culture has changed, with the increasing popularity of athletes and social celebrities over the more traditional staid notoriety of&nbsp;wealthy industrial magnate families like the du Ponts.&nbsp;Indeed, the Schultzes&nbsp;are known for more recent athletic accomplishments&nbsp;compared to&nbsp;the du Pont family&rsquo;s older&nbsp;economic and scientific achievements.</p>\n\n<p>Throughout the film, these characters continually think about their legacy and their own roles within a greater context beyond their own personal lives. Their views as well as what they hope to obtain are consistently shaped by their social background and their class status. This is especially noticeable with du Pont, who seems very self-conscious about his family name. It&nbsp;shapes his own sense of self-worth and what he&rsquo;s destined to become.</p>', 'none', 'Rather than explore du Pont’s real life mental illness, the film ties much of the story more to heritage, namely familial heritage.', 'none', 'Bennett Miller\nFilms about sports\nSocial class', 'xhtml', 'FoxcatcherFINAL2.jpg', 'none', '[111] [foxcatcher] Foxcatcher', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(125, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Very faithful, David Fincher agreed to work with the book&rsquo;s original author, Gillian Flynn, after reading her initial draft. Flynn remained with the film for the entire process, a rarity in Hollywood where book authors typically write no more than a first draft and an endless line of screenwriters take over for the duration of the project. (This is somewhat characteristic of Fincher, though, as he&rsquo;s known for his close collaboration with his screenwriters. For example, Aaron Sorkin was the sole writer of <em>The Social Network</em> and present throughout the entire project, even &ldquo;directing&rdquo; the final shot of the production at Fincher&rsquo;s request in a show of professional courtesy.)</p>\n\n<p>[SPOILERS]</p>\n\n<p>While the film remained faithful to the book, a substantial material had to be taken out. This is typical with novels (especially those as long as <u>Gone Girl</u>) since they&rsquo;re typically too dense for a complete translation into a feature film of conventional length. Most of the material dealing with the characters&rsquo; parents were dropped, including flashbacks of Nick&rsquo;s mother and Desi&rsquo;s mother. Even the ending was streamlined, with some notable details dropped as well (Nick&rsquo;s book, Amy&rsquo;s anti-freeze tainted vomit). The one significant addition was the talk show interview, which shored up the film&rsquo;s critique of the media and its relation to society.</p>', 'none', 'David Fincher agreed to work with the book’s original author, Gillian Flynn, after reading her initial draft.', 'none', 'Adaptations\nDavid Fincher\nGillian Flynn\nNeo-noir', 'xhtml', 'gone-girl.jpg', 'none', '[114] [gone-girl] Gone Girl', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(126, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film in general is misanthropic, but much of what it does is gender-specific. There are elements aimed specifically at women, just as there are elements aimed specifically at men. (Amusingly, Fincher himself says that test audience sympathies were typically divided along gender lines.) If anything keeps the film from leaning more towards one particular direction, it&rsquo;s that much of what the film has to say is built around traditional marriage (albeit in a modern context) - anything it observes about one gender has some connection to the opposite gender as the actions of one is in response or influenced by the other person.</p>', 'none', 'The film in general is misanthropic.', 'none', 'David Fincher\nGender studies\nNeo-noir', 'xhtml', 'gone_girl_review_1.0.jpeg', 'none', '[114] [gone-girl] Gone Girl', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(127, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>While the film does remain faithful, it&rsquo;s notable that one aspect of Flynn&rsquo;s novel gets special emphasis: the media. The most significant change made in the film is that it more or less ends with a television interview, a detail that was not in the book. It&rsquo;s here that Nick &ldquo;confronts&rdquo; the media once more after being persecuted for the entire film, and it&rsquo;s here that Amy reveals to the world that she is pregnant.</p>\n\n<p>Whatever the film has to say about marriage, it seems especially important to Fincher that it all plays out in public view, whether it&rsquo;s in print, cable news or social media on the internet. The public scrutiny is built into the plot - Nick&rsquo;s possible involvement in the potential murder of his wife - but it&rsquo;s notable that much of the attention concerns Nick and Amy&rsquo;s appearance as husband and wife and how they play those roles to societal expectations compared to their own.</p>\n\n<p>Stories about marriage often deal with public perceptions, but <em>Gone Girl</em> feels particularly modern because it&rsquo;s so rooted in contemporary media. The role it has in civilian life has become more pervasive and more intrusive than ever before, especially now that it&rsquo;s shaped by social media. (Public opinions are immediately gauged through platforms like Twitter, and these same platforms are even used by Amy to spread misinformation.) With cable news turning more towards commentary (witness Ellen Abbott which seems based off of Nancy Grace among others) and social media giving everyone a soapbox to transmit their views to the world, contemporary media has become even more critical towards people.&nbsp;This isn&rsquo;t too far from the world David Fincher created for his Netflix adaptation of <em>House of Cards</em> - the media has the same presence in the Midwest, prying into Nick and Amy as they would into the activities on Capitol Hill.</p>', 'none', 'While the film does remain faithful, it’s notable that one aspect of Flynn’s novel gets special emphasis: the media.', 'none', 'David Fincher\nMedia\nNeo-noir', 'xhtml', 'gone-girl-df-01826cc_rgb.jpg', 'none', '[114] [gone-girl] Gone Girl', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(128, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film has notable changes from the musical, some of which dealt with concerns of an adult nature, but others were made for different reasons. Many of these changes remain controversial.</p>\n\n<p>In Sondheim&rsquo;s original musical, the action is narrated by the Mysterious Man, who turns out to be the Baker&rsquo;s father, a key figure that casts a shadow over the entire story. In both the musical and film, the witch catches the Baker&rsquo;s father stealing from her garden. She punishes him by claiming his unborn daughter (who becomes Rapunzel) and curses his entire family. This sinks the Baker&rsquo;s father into deep depression, prompting him to leave home. But in the film, he only reappears briefly as a ghost, while the idea of the Mysterious Man is dropped altogether - the narration is retained, but it&rsquo;s been stripped of its resonance.</p>\n\n<p>As Alyssa Rosenberg of the Washington Post wrote, &ldquo;the Mysterious Man&rsquo;s narration of the action, and the subtle help he provides the baker and his wife along the way, is meant to be penance for the hole he left in his son&rsquo;s life...In the tremendous song &lsquo;No More,&rsquo; the Mysterious Man pays off as much of his debt to his son as he can by convincing the Baker not abandon his own son. &lsquo;Trouble is, son, the farther you run, / The more you&rsquo;ll feel undefined. / For what you have left undone, and more, / What you&rsquo;ve left behind,&rsquo; the Mysterious Man tells the Baker, warning him that running away and giving himself up to the grief he feels over his wife&rsquo;s betrayal and death will only produce more regrets...&lsquo;No More&rsquo; ends with the Baker&rsquo;s lament that the happy ending he was promised seems awfully distant. But his belief that the happy ending exists at all is the very notion that <em>Into the Woods</em> is designed to disabuse us of. It&rsquo;s not just that the giants, wolves, witches and princes keep coming. It&rsquo;s that once the conditions for your happy ending arrive, you have to keep working. And no matter how much effort you make, sometimes your happy ending gets smashed by the careless placement of a giantess&rsquo; foot or ruined through your own reckless action. The Mysterious Man, who&rsquo;s lived with this knowledge for longer than any of the other characters in the show, is the real hero of <em>Into the Woods</em>.&rdquo;</p>\n\n<p>Other changes:</p>\n\n<p>The sexual undertones between the Wolf and Little Red Riding Hood were toned down due to Disney&rsquo;s concerns of pedophilia.</p>\n\n<p>The film removes a subplot where the two princes have affairs with Snow White and Sleeping Beauty.</p>\n\n<p>Jack&#39;s mother&rsquo;s death is far less violent.</p>\n\n<p>Cinderella&#39;s father was cut, as it&rsquo;s explained that he&rsquo;s already dead.</p>\n\n<p>Rapunzel no longer dies. According to director Rob Marhsall, "Rapunzel&#39;s end is still pretty dark, it&#39;s just a different kind of dark, and it&#39;s just as harrowing, and just as sad."</p>\n\n<p>&ldquo;Ever After&rdquo; is now an instrumental.</p>', 'none', 'Many of the film''s changes remain controversial.', 'none', 'Disney\nMusicals\nStephen Sondheim', 'xhtml', 'Into-the-Woods-3.jpg', 'none', '[115] [into-the-woods] Into the Woods', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(129, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The film went through some controversy prior to shooting, when Sondheim seemed to divulge all of the changes Disney was planning to make to his musical. (Most of these changes did not come to pass, partly because the film was still in development, when ideas were still evolving.) At one public appearance, someone asked Sondheim&nbsp;about teaching his musical in school and how to instruct students about the potential changes made to the film adaptation. Sondheim said, &ldquo;you have to explain to them that censorship is part of our puritanical ethics, and it&rsquo;s something that they&rsquo;re going to have to deal with. There has to be a point at which you don&#39;t compromise anymore, but that may mean that you won&rsquo;t get anyone to sell your painting or perform your musical. You have to deal with reality."</p>', 'none', '"You have to deal with reality."', 'none', 'Disney\nMusicals\nStephen Sondheim', 'xhtml', 'Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg', 'none', '[115] [into-the-woods] Into the Woods', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(130, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Sondheim originally said that that Prince would not have an affair with the Baker&rsquo;s wife, and that the song &ldquo;Any Moment&rdquo; would be cut. Both of these changes were not made. Sondheim also said that he wrote two new songs for the film, including one specifically for Meryl Streep, but both of these songs were ultimately cut from the film as well.</p>', 'none', 'Sondheim originally said that that Prince would not have an affair with the Baker’s wife, and that the song “Any Moment” would be cut.', 'none', 'Disney\nInto the Woods\nRob Marshall\nStephen Sondheim', 'xhtml', 'emily_blunt_in_into_the_woods_2014.jpg', 'none', '[115] [into-the-woods] Into the Woods', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(131, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Christopher Nolan is perhaps the only filmmaker in the world now who can get a Hollywood studio to finance a personal, large scale feature for hundreds of millions of dollars. Stanley Kubrick had a similar luxury, though <em>2001</em> is possibly the only feature he made that would&rsquo;ve approached <em>Inception</em> and <em>Interstellar</em> in terms of cost. Just as <em>2001</em> was known for its groundbreaking photography and special effects, so is <em>Interstellar</em>, and both films recruited physicists as consultants. (NASA consulted on <em>2001</em>, and Kip Thorne was heavily involved with <em>Interstellar</em>.) Both films are clearly works of great artistic ambition, but it should be clear that they are also very different works. While they are both science fiction films involving space travel, <em>2001</em> is far more experimental, particularly in the closing section of the film, and it&rsquo;s been noted that <em>Interstellar</em>&lsquo;s narrative approach is far more conventional, and its tone is much more sentimental.</p>', 'none', 'Both films are clearly works of great artistic ambition.', 'none', 'Christopher Nolan\nInterstellar\nScience Fiction', 'xhtml', 'o-INTERSTELLAR-TRAILER-facebook.jpg', 'none', '[116] [interstellar] Interstellar', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(132, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Much of the film is actually based on the work of Kip Thorne, a renowned physicist and one of the world&#39;s leading experts on the astrophysical implications of Einstein&#39;s general theory of relativity. He and film producer Lynda Obst came up with the idea of a film about &ldquo;the most exotic events in the universe suddenly becoming accessible to humans." Thorne co-wrote a treatment that Steven Spielberg was to direct for Paramount Pictures. Eventually this project was taken up by Christopher Nolan (and his brother and screenwriting collaborator, Jonathan), and Thorne wound up serving as a consultant.&nbsp;Thorne tried to bring&nbsp;a measure of accuracy to what&rsquo;s otherwise a fiction film that draws heavily on scientific theory. For example, Thorne said he worked extensively on the film&rsquo;s depiction of wormholes and the black hole. &ldquo;[Nolan and I would discuss] how to go about it, and then I worked out the equations that would enable tracing of light rays as they traveled through a wormhole or around a black hole&mdash;so what you see is based on Einstein&#39;s general relativity equations."</p>', 'none', 'Much of the film is actually based on the work of Kip Thorne.', 'none', 'Christopher Nolan\nScience Fiction', 'xhtml', 'interstellar_a.jpg', 'none', '[116] [interstellar] Interstellar', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(133, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>[SPOILERS]</p>\n\n<p>At the end of the film, it&rsquo;s revealed that future descendants of humans built the &ldquo;Tesseract&rdquo; to save humanity. With the ability to manipulate space and time, they built the Tesseract and placed it in the past where their ancestors would find it.</p>\n\n<p>However, many wonder how human descendants can even exist in the future when Cooper hasn&rsquo;t actually saved humanity yet? (As some have described it, it&rsquo;s like a chicken sending an egg back in time, where the egg then becomes the same chicken.) There would seem to be a logical misstep, a fairly common paradox in science fiction films like <em>Back to the Future</em> and <em>The Terminator</em>.</p>\n\n<p>If there is a logical justification for it, it would be the way time functions within something like a Tesseract. It would not exist in linear fashion, like orderly points on a dotted line, but rather all points would overlap and all of time could exist simultaneously. All of this is completely theoretical and there has been extensive debate over this concept, but it&rsquo;s possibly the best explanation for how the ending could play out.</p>', 'none', 'Spoilers ahead.', 'none', 'Christopher Nolan\nScience Fiction', 'xhtml', '6a00d8341bf7f753ef01bb07b10d55970d.jpg', 'none', '[116] [interstellar] Interstellar', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(134, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>The most notable result of making a film about vampires is that it gives us characters who, due to their longevity, are able to appreciate, bear witness and even lament the changes in world culture over the course of many centuries.</p>\n\n<p>Vampires could also be seen as&nbsp;metaphorical representations of underground culture, the Romantic tradition&nbsp;and the geopolitical uncertainties of the coming century. Ben Sachs of <em>The Chicago Reader</em> even calls the term "zombies&rdquo; (Adam&#39;s derisive term for the living)&nbsp;an evocation of &ldquo;the predatory nature of capitalism, wanton destruction&nbsp;and cultural amnesia&hellip;Neither vampires nor zombies are really alive, and the film&#39;s canny references to widespread ecological devastation hint at the possibility that all humanity might join their ranks in the next century.&rdquo;</p>', 'none', 'It gives us characters who, due to their longevity, are able to appreciate, bear witness and even lament the changes in world culture over the course of many centuries.', 'none', 'Independent film\nJim Jarmusch\nTilda Swinton\nTom Hiddleston\nVampires', 'xhtml', '673927401147773986.jpg', 'none', '[117] [only-lovers-left-alive] Only Lovers Left Alive', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(135, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Jarmusch has stated that &ldquo;Detroit is a city I really deeply love...When I was a child it was almost mythological, the Paris of the Midwest. And now what&rsquo;s happening with Detroit is very tragic and sad. I was drawn to it, visually and historically, for its musical culture, industrial culture, and post-industrial visual feeling.&rdquo; According to second unit DP Christos Moisides "It wasn&#39;t the ruin porn, it was more the haunting beauty that&#39;s so cinematic. It may not be pristine beauty, but there&#39;s a lot of amazing history.&rdquo; First AD Greg Brautigan added that "[Jarmusch] wanted to keep it natural and very stark.&rdquo;</p>\n\n<p>Partly shot on-location in Detroit, a 135-year-old Victorian house in Detroit was used for Adam&rsquo;s home. According to location manager Chris-Teena Constas, "one of the main and most important locations was Adam&#39;s house&hellip;They really wanted to stay true and authentic to Detroit and the architecture."</p>', 'none', '“Detroit is a city I really deeply love...When I was a child it was almost mythological, the Paris of the Midwest."', 'none', 'Detroit\nindependent film\nJim Jarmusch\nVampires', 'xhtml', 'only-lovers-left-alive-2013-L-mZnGID.jpeg', 'none', '[117] [only-lovers-left-alive] Only Lovers Left Alive', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`) VALUES
(136, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p>Jim Jarmusch, the writer and director of Only Lovers Left Alive (<em>OLLA</em>),&nbsp;said he <a href="http://www.spin.com/articles/josef-van-wissem-jim-jarmusch-only-lovers-left-alive-interview/">drew much inspiration for the film&#39;s score</a>&nbsp;from Josef van Wissem&rsquo;s lute music. Like Jarmusch&#39;s other films, the music is crucial to the film&#39;s story. &nbsp;Van Wissem&#39;s approach, explained Jarmusch,&nbsp;has a kind of minimalism to it that is very strong and not intended to show off technique, but to employ the technique for result. This minimalist quality is&nbsp;aligned with vampire&nbsp;Adam&#39;s character and&nbsp;his approach to music. Although Adam is&nbsp;capable of virtuosity, he has partially abandoned it. &nbsp;When the film begins, Adam is living in modern-day Detroit in a dilapidated classic Victorian house. &nbsp;He&nbsp;has eschewed&nbsp;traditional classical music and instead only&nbsp;plays&nbsp;avant-rock drone music.</p>\n\n<p>The film score&nbsp;also drew inspiration from both Jarmusch&#39;s and Wissem&#39;s approach to their own&nbsp;lives&nbsp;and&nbsp;interests. &nbsp;Jarmusch explains&nbsp;"[W]e love old things, new things, we don&#39;t have a hierarchy, whether it&#39;s William Byrd or My Bloody Valentine. &nbsp;And that&#39;s very important for the film and for Adam and Eve and for how I wanted them to be perceived as not having a sense of hierarchical culture. In other words, they&#39;ll listen to Charlie Feathers rockabilly but they&#39;ll talk about Franz Schubert or he&#39;ll play Paganini or she&#39;ll read classical literature and modern things as well. It was a kind of key to everything. Jozef&#39;s playing was both an inspirational element of the film, and an essential element for construction of the film as well.&rdquo;</p>\n\n<p>Van Wissem himself said that the instrumentation they used and the score that they were composing had to have a timeless quality that complemented the near-immortality of the film&rsquo;s vampires. &ldquo;You dream about space and ultimately timelessness, and I think that goes well with the story and what it became.&rdquo;</p>', 'none', 'Jarmusch said he drew much inspiration from Josef van Wissem’s lute music.', 'none', 'independent film\nJim Jarmusch\nTilda Swinton\nTom Hiddleston\nVampires', 'xhtml', 'onlylovers1.jpg', 'none', '[117] [only-lovers-left-alive] Only Lovers Left Alive', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(137, 1, 3, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '<p><em>Goodbye to Language&nbsp;</em>(or&nbsp;<em>Adieu au Langage</em>) is a 2014 French-Swish 3D experimental narrative essay film written and directed by film legend Jean-Luc Godard.</p>\n\n<p>Even with&nbsp;his most accessible films, Jean-Luc Godard challenges not only&nbsp;the audience but modern conventions of filmmaking.&nbsp;Many of his earliest innovations&nbsp;from the 1960s&nbsp;have become commonplace in film and&nbsp;media - techniques&nbsp;such as jump cuts (almost like a record skipping through time), character asides or breaking the fourth wall (think: Kevin Spacey in <em>House of Cards</em>).&nbsp; Once revolutionary in form, these techniques are now very familier,&nbsp;even to those who have never even seen his films.</p>\n\n<p>Godard hasn&#39;t made a widely-distributed, commercial work in years, but his experimental work continues to garner praise and&nbsp;<em>Goodbye to Language 3D&nbsp;</em>is possibly one of his most acclaimed films. Though its use of 3D is surprising and unprecendented,&nbsp;many of its admirers concede that the film is&nbsp;very difficult to understand. &nbsp;Compare:&nbsp;James Joyce&#39;s <em>Ulysses</em>, which&nbsp;can be difficult&nbsp;to understand.</p>\n\n<p>Celebrated film scholar,&nbsp;David Bordwell, shared his thoughts in a recent <a href="http://www.npr.org/2014/10/29/359658248/at-83-filmmaker-jean-luc-godard-makes-the-leap-to-3-d">interview with&nbsp;NPR</a>. &nbsp;Bordwell explained, "I think what [Godard is]&nbsp;talking about &mdash; and this is one of the reasons the dog Roxy is very prominent in the film &mdash; is that he&#39;s trying to get people to look at the world in a kind of an unspoiled way.&nbsp;There are hints throughout the film that animal consciousness is kind of closer to the world than we are, that language sets up a barrier or filter or screen between us and what&#39;s really there. And although the film is full of language, talk, printed text and so on, nevertheless I think there&#39;s a sense he wants the viewer to scrape away a lot of the ordinary conceptions we have about how we communicate and look at the world afresh."&nbsp;</p>\n\n<p><img alt="" src="{assets_162:{filedir_4}Goodbye_to_Language_-_Girl_at_Water_Spout.jpg}" style="height:449px; width:800px" /></p>', 'none', 'Godard''s experimental feature has elicited a wide range of awe and confusion.', 'none', '3D movies\nAvant-garde\nExperimental film\nFilm essays\nFrench New Wave\nJean-Luc Godard', 'xhtml', 'GoodbyetoLanguage.jpg', 'none', '[112] [goodbye-to-language] Goodbye to Language 3D', 'none', 'Screen Prism', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 'none'),
(138, 1, 1, 'Ida_plakat.jpg', 'none', 'Paweł Pawlikowski', 'none', '1', 'none', 'Agata Kulesza\nAgata Trzebuchowska\nDawid Ogrodnik', 'xhtml', '<p>From acclaimed director Pawel Pawlikowski comes&nbsp;<em>Ida</em>, a moving and intimate drama about a young novitiate nun in 1960s Poland who, on the verge of taking her vows, makes a shocking discovery&nbsp;about her past.</p>\n\n<p>18-year old Anna (stunning newcomer Agata Trzebuchowska), a sheltered orphan raised in a convent, is preparing to become a nun when the Mother Superior insists she first visit her sole living relative. Na&iuml;ve, innocent Anna soon finds herself in the presence of her aunt Wanda (Agata Kulesza), a worldly and cynical Communist Party insider, who shocks her with the declaration that her real name is Ida and her Jewish parents were murdered during the Nazi occupation. This revelation triggers a heart-wrenching journey into the countryside, to the family house and into the secrets of the repressed past, evoking the haunting legacy of the Holocaust and the realities of postwar Communism.</p>\n\n<p>In this beautifully directed film, Pawlikowski returns to his native Poland for the first time in his career to confront some of the more contentious issues in the history of his birthplace. Powerfully written and eloquently shot,&nbsp;Ida&nbsp;a masterly evocation of a time, a dilemma, and a defining historical moment;&nbsp;Ida&nbsp;is also personal, intimate, and human. The weight of history is everywhere, but the scale falls within the scope of a young woman learning about the secrets of her own past. This intersection of the personal with momentous historic events makes for what is surely one of the most powerful and affecting films of the year.</p>', 'none', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'Rebecca Lenkiewicz, Paweł Pawlikowski', 'none', '', NULL, 'Holocaust\nPaweł Pawlikowski\nPolish cinema\nStalinism', 'xhtml', 'Eric Abraham, Piotr Dzieciol, Ewa Puszczynska', 'none', 'Soloban', 'none', '£1 million', 'none', '$3.7 million', 'none', 'Oscar Nominated Best Foreign Language Film of the Year (2014)\nGolden Globe Awards 2015 - Best Foreign Language Film Nominee\nCésar Awards 2015 - Best Foreign Language Film Nominee\nLos Angeles Film Critics Awards 2014: Best Foreign Language Film, Best Supporting Actress (Agata Kulesza)\nNew York Film Critics Circle 2014: Best Foreign Language Film\nOscar Nominated Best Achievement in Cinematography - Lukasz Zal and Ryszard Lenczewski (2014)', 'xhtml', '96%', 'none', '90%', 'none', 'http://www.musicboxfilms.com/ida-movies-98.php', 'none', '<iframe width="560" height="315" src="https://www.youtube.com/embed/_JIXxo8qUn0" frameborder="0" allowfullscreen></iframe>', 'none');

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
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

INSERT INTO `exp_channel_entries_autosave` (`entry_id`, `original_entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`, `entry_data`) VALUES
(195, 0, 1, 3, 6, NULL, '72.226.65.163', 'Test Page', 'test-page', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1423172460, '2015', '02', '05', 0, 0, 20150205214236, 0, 0, 'a:31:{s:8:"entry_id";i:195;s:10:"channel_id";s:1:"3";s:7:"site_id";s:1:"1";s:11:"field_id_11";s:11:"Matt Minoff";s:10:"field_id_6";s:0:"";s:10:"field_id_7";s:0:"";s:10:"field_id_8";s:0:"";s:10:"field_id_9";a:1:{i:0;s:0:"";}s:11:"field_id_10";a:1:{s:10:"selections";a:1:{i:0;s:0:"";}}s:10:"field_id_1";s:0:"";s:10:"field_id_2";s:0:"";s:10:"field_id_3";s:0:"";s:10:"field_id_4";s:0:"";s:10:"field_id_5";s:0:"";s:11:"field_id_12";s:0:"";s:11:"field_id_13";s:0:"";s:11:"field_id_14";s:0:"";s:11:"field_id_15";s:0:"";s:11:"field_id_16";s:0:"";s:11:"field_id_17";s:0:"";s:11:"field_id_18";s:0:"";s:11:"field_id_19";s:0:"";s:11:"field_id_20";s:0:"";s:11:"field_id_21";s:0:"";s:11:"field_id_22";s:0:"";s:17:"original_entry_id";i:0;s:16:"pages__pages_uri";s:0:"";s:24:"pages__pages_template_id";s:2:"13";s:24:"seo_lite__seo_lite_title";s:0:"";s:27:"seo_lite__seo_lite_keywords";s:0:"";s:30:"seo_lite__seo_lite_description";s:0:"";}');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_fields`
--

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`) VALUES
(1, 1, 1, 'media_cover', 'Cover Image', '', 'assets', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToxIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToieSI7czo5OiJzaG93X2NvbHMiO2E6MTp7aTowO3M6NDoibmFtZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(2, 1, 1, 'media_director', 'Directed By', '', 'text', '', '0', 0, 0, 2, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 2, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(3, 1, 1, 'media_external', 'Around the Web', '', 'matrix', '', '0', 0, 0, 2, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YTozOntzOjg6Im1pbl9yb3dzIjtzOjE6IjAiO3M6ODoibWF4X3Jvd3MiO3M6MDoiIjtzOjc6ImNvbF9pZHMiO2E6NDp7aTowO3M6MToiMSI7aToxO3M6MToiNCI7aToyO3M6MToiMiI7aTozO3M6MToiMyI7fX0='),
(4, 1, 1, 'media_starring', 'Starring', '', 'fieldpack_list', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'xhtml', 'n', 4, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(5, 1, 1, 'media_summary', 'Summary', '', 'wygwam', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'none', 'n', 5, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(6, 1, 2, 'article_body', 'Body', '', 'wygwam', '', '0', 0, 0, 6, 128, 'y', 'ltr', 'y', 'n', 'none', 'n', 2, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(7, 1, 2, 'article_summary', 'Summary', 'Optional. If no summary is provided, an excerpt will be taken from the article body.', 'textarea', '', '0', 0, 0, 3, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(8, 1, 2, 'article_tags', 'Tags', '', 'tag', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'xhtml', 'n', 4, 'any', 'YToxMDp7czo4OiJhbGxfb3BlbiI7czoyOiJubyI7czoxMjoic3VnZ2VzdF9mcm9tIjtzOjU6Imdyb3VwIjtzOjk6InRhZ19ncm91cCI7czoxOiIyIjtzOjEzOiJ0b3BfdGFnX2xpbWl0IjtzOjE6IjUiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(9, 1, 2, 'article_image', 'Featured Image', '', 'assets', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToyIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToieSI7czo5OiJzaG93X2NvbHMiO2E6MTp7aTowO3M6NDoibmFtZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(10, 1, 2, 'article_related_media', 'Related Media', '', 'playa', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YToxMzp7czo1OiJtdWx0aSI7czoxOiJuIjtzOjc6ImV4cGlyZWQiO3M6MToibiI7czo2OiJmdXR1cmUiO3M6MToieSI7czo4OiJlZGl0YWJsZSI7czoxOiJuIjtzOjg6ImNoYW5uZWxzIjthOjI6e2k6MDtzOjE6IjEiO2k6MTtzOjE6IjIiO31zOjc6Im9yZGVyYnkiO3M6NToidGl0bGUiO3M6NDoic29ydCI7czozOiJBU0MiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(11, 1, 2, 'article_author', 'Author', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 1, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(12, 1, 1, 'media_writer', 'Written By', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 3, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(13, 1, 3, 'page_body', 'Body', '', 'wygwam', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(14, 1, 1, 'media_tags', 'Tags', '', 'tag', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'xhtml', 'n', 7, 'any', 'YToxMDp7czo4OiJhbGxfb3BlbiI7czoyOiJubyI7czoxMjoic3VnZ2VzdF9mcm9tIjtzOjU6Imdyb3VwIjtzOjk6InRhZ19ncm91cCI7czoxOiIzIjtzOjEzOiJ0b3BfdGFnX2xpbWl0IjtzOjE6IjUiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
(15, 1, 1, 'media_producer', 'Produced By', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 8, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(16, 1, 1, 'media_distributor', 'Distributed By', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'y', 'n', 'none', 'n', 9, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(17, 1, 1, 'media_budget', 'Budget', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 10, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(18, 1, 1, 'media_boxoffice', 'Box Office', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 11, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(19, 1, 1, 'media_awards', 'Awards & Nominations', '', 'fieldpack_list', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'y', 'n', 'xhtml', 'n', 12, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(20, 1, 1, 'media_rottentomatoes', 'Rotten Tomatoes Score', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 13, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(21, 1, 1, 'media_metacritic', 'Metacritic Score', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 14, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(22, 1, 1, 'media_website', 'Official Website', '', 'text', '', '0', 0, 0, 6, 0, 'n', 'ltr', 'n', 'n', 'none', 'n', 15, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(23, 1, 1, 'media_video', 'Video Embed Code', 'Copy and paste the full embed code from YouTube or Vimeo.', 'textarea', '', '0', 0, 0, 3, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 16, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');

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
(5, 3),
(5, 4);

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
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_channel_titles`
--

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`) VALUES
(1, 1, 4, 1, NULL, '::1', 'Submit a Question', 'ask', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114600, '2015', '01', '24', 0, 0, 20150126053218, 0, 0),
(2, 1, 4, 1, NULL, '::1', 'About Us', 'about-us', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114660, '2015', '01', '24', 0, 0, 20150126052915, 0, 0),
(3, 1, 4, 1, NULL, '::1', 'Terms & Conditions', 'terms-and-conditions', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114780, '2015', '01', '24', 0, 0, 20150126052813, 0, 0),
(4, 1, 4, 1, NULL, '::1', 'Privacy Policy', 'privacy-policy', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422114780, '2015', '01', '24', 0, 0, 20150126052846, 0, 0),
(33, 1, 3, 5, NULL, '108.14.78.139', 'What’s so unique about the art direction in "The Grand Budapest Hotel"', 'whats-so-unique-about-the-art-direction', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422387480, '2015', '01', '27', 0, 0, 20150206001031, 0, 0),
(6, 1, 1, 1, NULL, '108.14.78.139', 'Birdman', 'birdman', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1413518400, '2014', '10', '17', 0, 0, 20150205223655, 0, 0),
(27, 1, 3, 5, NULL, '108.14.78.139', 'Has Linklater ever made anything that anticipated "Boyhood"''s innovations', 'has-linklater-ever-made-anything-that-anticipated-this-kind-of-work', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422327780, '2015', '01', '26', 0, 0, 20150206001400, 0, 0),
(32, 1, 3, 5, NULL, '108.14.78.139', 'What exact influence did Stefan Zweig have on "The Grand Budapest Hotel"', 'what-exact-influence-did-stefan-zweig-have-on-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422387360, '2015', '01', '27', 0, 0, 20150206001046, 0, 0),
(26, 1, 3, 5, NULL, '108.14.78.139', 'What is so groundbreaking about "Boyhood"', 'what-is-so-groundbreaking-about-boyhood', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422376980, '2015', '01', '27', 0, 0, 20150206001202, 0, 0),
(31, 1, 3, 5, NULL, '108.14.78.139', 'How did "The Grand Budapest Hotel" draw on history', 'how-did-the-film-draw-on-history', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422387240, '2015', '01', '27', 0, 0, 20150206001114, 0, 0),
(30, 1, 1, 5, NULL, '108.14.78.139', 'The Grand Budapest Hotel', 'the-grand-budapest-hotel', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1394212740, '2014', '03', '07', 0, 0, 20150205223136, 0, 0),
(15, 1, 1, 1, NULL, '::1', 'The Hobbit: The Battle of the Five Armies', 'the-hobbit-the-battle-of-the-five-armies', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1418792400, '2014', '12', '17', 0, 0, 20150126173053, 0, 0),
(16, 1, 1, 1, NULL, '108.14.78.139', 'The Hobbit: The Desolation of Smaug', 'the-hobbit-the-desolation-of-smaug', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1385960400, '2013', '12', '02', 0, 0, 20150205222913, 0, 0),
(17, 1, 2, 1, NULL, '::1', 'American Horror Story', 'american-horror-story', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1317787200, '2011', '10', '05', 0, 0, 20150126173751, 0, 0),
(18, 1, 2, 1, NULL, '::1', 'Seinfeld', 'seinfeld', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 615614400, '1989', '07', '05', 0, 0, 20150126173816, 0, 0),
(19, 1, 2, 1, NULL, '::1', 'Orange is the New Black', 'orange-is-the-new-black', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1373515200, '2013', '07', '11', 0, 0, 20150126173655, 0, 0),
(20, 1, 1, 5, NULL, '108.14.78.139', 'Boyhood', 'boyhood', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1405124520, '2014', '07', '11', 0, 0, 20150205223540, 0, 0),
(21, 1, 3, 2, NULL, '108.14.78.139', 'What does "Birdman" have to do with Michael Keaton’s past role as Batman', 'what-does-birdman-have-to-do-with-michael-keatons-past-role-as-batman', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422327600, '2015', '01', '26', 0, 0, 20150206001411, 0, 0),
(22, 1, 3, 2, NULL, '108.14.78.139', 'Is it true that the film was made to look like one continuous take without any cuts', 'is-it-true-that-the-film-was-made-to-look-like-one-continuous-take-without', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422331620, '2015', '01', '26', 0, 0, 20150206001340, 0, 0),
(23, 1, 3, 2, NULL, '108.14.78.139', 'Was it necessary for "Birdman" to be filmed to look like one continuous take', 'was-it-necessary-for-birdman-to-be-filmed-to-look-like-one-continuous-take', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422331860, '2015', '01', '26', 0, 0, 20150206001318, 0, 0),
(24, 1, 3, 2, NULL, '108.14.78.139', 'Does Riggan Thomson (Michael Keaton) actually have super powers', 'does-riggan-thomson-michael-keaton-actually-have-super-powers', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422332640, '2015', '01', '26', 0, 0, 20150206001303, 0, 0),
(25, 1, 3, 2, NULL, '108.14.78.139', 'What''s "Birdman" really about? Is it critiquing the dominance of comic book films in Hollywood', 'whats-birdman-really-about-is-it-critiquing-the-dominance-of-comic-book-fil', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422332760, '2015', '01', '26', 0, 0, 20150206001246, 0, 0),
(28, 1, 3, 5, NULL, '108.14.78.139', 'How did Linklater work with the passing of time in "Boyhood"', 'how-did-linklater-work-with-the-passing-of-time', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422378180, '2015', '01', '27', 0, 0, 20150206001148, 0, 0),
(29, 1, 3, 5, NULL, '108.14.78.139', 'Did the rapid technological changes within the industry impact the way "Boyhood" was made', 'did-the-rapid-technological-changes-within-the-industry-impact-the-way-the', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422378900, '2015', '01', '27', 0, 0, 20150206001132, 0, 0),
(34, 1, 3, 5, NULL, '108.14.78.139', 'Why were there different aspect ratios in "The Grand Budapest Hotel"', 'why-were-there-different-aspect-ratios', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422387540, '2015', '01', '27', 0, 0, 20150206001013, 0, 0),
(35, 1, 3, 5, NULL, '108.14.78.139', 'Where did they come up with the painting at the heart of "The Grand Budapest Hotel"', 'where-did-they-come-up-with-the-painting-at-the-heart-of-the-story', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422387660, '2015', '01', '27', 0, 0, 20150206000952, 0, 0),
(36, 1, 1, 5, NULL, '108.14.78.139', 'The Imitation Game', 'the-imitation-game', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1417205220, '2014', '11', '28', 0, 0, 20150205224443, 0, 0),
(37, 1, 1, 2, NULL, '108.14.78.139', 'A Most Violent Year', 'a-most-violent-year', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1420002000, '2014', '12', '31', 0, 0, 20150205225752, 0, 0),
(38, 1, 3, 5, NULL, '108.14.78.139', 'Why is Alan Turing considered the “father” of computers, and how did he help win World War II', 'why-is-alan-turing-considered-the-father-of-computers-and-how-did-he-help-w', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422390720, '2015', '01', '27', 0, 0, 20150206000837, 0, 0),
(39, 1, 3, 5, NULL, '108.14.78.139', 'How did Alan Turing become an important figure for gay rights', 'how-did-alan-turing-become-an-important-figure-for-gay-rights', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422390840, '2015', '01', '27', 0, 0, 20150206000816, 0, 0),
(40, 1, 3, 5, NULL, '108.14.78.139', 'Why has "The Imitation Game"''s depiction of Alan Turing’s homosexuality been criticized', 'why-has-the-films-depiction-of-alan-turings-homosexuality-been-criticized', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422390900, '2015', '01', '27', 0, 0, 20150206000804, 0, 0),
(41, 1, 3, 5, NULL, '108.14.78.139', 'Is "The Imitation Game" more fiction than fact', 'is-the-imitation-game-more-fiction-than-fact', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422391440, '2015', '01', '27', 0, 0, 20150206000744, 0, 0),
(42, 1, 3, 5, NULL, '108.14.78.139', 'What is the significance of the film''s title? What is "the imitation game"', 'what-is-the-imitation-game', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422391740, '2015', '01', '27', 0, 0, 20150206000732, 0, 0),
(43, 1, 1, 5, NULL, '108.14.78.139', 'Selma', 'selma', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419541020, '2014', '12', '25', 0, 0, 20150205224930, 0, 0),
(44, 1, 3, 5, NULL, '108.14.78.139', 'Why are "Selma"''s two Oscar nominations (or lack thereof) so controversial', 'why-are-the-films-two-oscar-nominations-or-lack-thereof-so-controversial', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422392520, '2015', '01', '27', 0, 0, 20150206000644, 0, 0),
(45, 1, 3, 5, NULL, '108.14.78.139', 'What aspects of the march are covered in "Selma"? How accurate is it', 'what-aspects-of-the-march-are-covered-in-this-film-how-accurate-is-it', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422392760, '2015', '01', '27', 0, 0, 20150206000625, 0, 0),
(46, 1, 3, 5, NULL, '108.14.78.139', 'Does "Selma" make any sort of contemporary commentary on political or social issues today', 'does-the-film-make-any-sort-of-contemporary-commentary-on-political-or-soci', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422392880, '2015', '01', '27', 0, 0, 20150206000558, 0, 0),
(47, 1, 3, 5, NULL, '108.14.78.139', 'What is the controversy about "Selma"''s depiction of Lyndon B. Johnson', 'what-about-its-depiction-of-lyndon-b.-johnson-what-is-the-controversy', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422393000, '2015', '01', '27', 0, 0, 20150206000610, 0, 0),
(48, 1, 3, 5, NULL, '108.14.78.139', 'What is “Snick,” the organization that John Lewis and James Forman are a part of', 'what-is-snick-the-organization-that-john-lewis-and-james-forman-are-a-part', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422393240, '2015', '01', '27', 0, 0, 20150206000521, 0, 0),
(49, 1, 3, 2, NULL, '108.14.78.139', 'Why was the violence in 1981 so significant', 'why-was-the-violence-in-1981-so-significant-why-was-it-so-bad', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422390600, '2015', '01', '27', 0, 0, 20150206000853, 0, 0),
(50, 1, 3, 2, NULL, '108.14.78.139', 'Why set "A Most Violent Year" during one of New York City''s most violent years', 'why-set-the-film-during-one-of-new-york-citys-most-violent-years-is-it-a-so', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422395460, '2015', '01', '27', 0, 0, 20150206000503, 0, 0),
(51, 1, 1, 5, NULL, '108.14.78.139', 'The Theory of Everything', 'the-theory-of-everything', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1416616740, '2014', '11', '21', 0, 0, 20150205224414, 0, 0),
(58, 1, 3, 5, NULL, '108.14.78.139', 'The style for the opening credits of "Birdman" look familiar. Where have I seen it before', 'the-opening-credits-for-birdman-look-familiar.-where-have-i-seen-it-before', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422408420, '2015', '01', '27', 0, 0, 20150206000128, 0, 0),
(53, 1, 3, 5, NULL, '108.14.78.139', 'How did Eddie Redmayne prepare for the role of Stephen Hawking', 'how-did-eddie-redmayne-prepare-for-the-role-of-stephen-hawking1', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422406920, '2015', '01', '27', 0, 0, 20150206000350, 0, 0),
(54, 1, 3, 5, NULL, '108.14.78.139', 'What’s so special about that plastic colored board with the colors and letters', 'whats-so-special-about-that-plastic-colored-board-with-the-colors-and-lette', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422407160, '2015', '01', '27', 0, 0, 20150206000319, 0, 0),
(55, 1, 3, 5, NULL, '108.14.78.139', 'How accurate is "The Theory of Everything"''s depiction of their courtship and marriage', 'how-accurate-is-the-films-depiction-of-their-courtship-and-marriage', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422407280, '2015', '01', '27', 0, 0, 20150206000302, 0, 0),
(56, 1, 3, 5, NULL, '108.14.78.139', 'How accurate is "The Theory of Everything"''s depiction of Hawking’s scientific accomplishments', 'how-accurate-is-the-films-depiction-of-hawkings-scientific-accomplishments', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422407400, '2015', '01', '27', 0, 0, 20150206000221, 0, 0),
(57, 1, 3, 5, NULL, '108.14.78.139', 'Did Hawking really find inspiration in a cup of coffee cup or was that an original creative idea', 'did-hawking-really-find-inspiration-in-a-cup-of-coffee-cup-or-was-that-an-o', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422407760, '2015', '01', '27', 0, 0, 20150206000154, 0, 0),
(59, 1, 1, 5, NULL, '108.14.78.139', 'Still Alice', 'still-alice', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419557100, '2014', '12', '25', 0, 0, 20150205225427, 0, 0),
(60, 1, 3, 5, NULL, '108.14.78.139', 'How did Julianne Moore prepare for "Still Alice"', 'how-did-julianne-moore-prepare-for-this-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422409860, '2015', '01', '27', 0, 0, 20150206000054, 0, 0),
(61, 1, 3, 5, NULL, '108.14.78.139', 'How did Richard Glatzer’s ALS impact or influence "Still Alice"', 'how-did-richard-glatzers-als-impact-or-influence-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422409980, '2015', '01', '27', 0, 0, 20150206000024, 0, 0),
(62, 1, 1, 2, NULL, '108.14.78.139', 'American Sniper', 'american-sniper', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1415682000, '2014', '11', '11', 0, 0, 20150205224139, 0, 0),
(63, 1, 1, 5, NULL, '108.14.78.139', 'Wild', 'wild', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1417831140, '2014', '12', '05', 0, 0, 20150205224534, 0, 0),
(64, 1, 3, 2, NULL, '108.14.78.139', 'Does "American Sniper" have a political agenda', 'does-american-sniper-have-a-political-agenda', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422410460, '2015', '01', '27', 0, 0, 20150205235901, 0, 0),
(65, 1, 3, 5, NULL, '108.14.78.139', 'How did Reese Witherspoon get involved in "Wild"', 'how-did-reese-witherspoon-get-involved-in-this-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411240, '2015', '01', '27', 0, 0, 20150205235828, 0, 0),
(66, 1, 3, 5, NULL, '108.14.78.139', 'What were the challenges of making an outdoor film like "Wild"', 'what-were-the-challenges-of-making-an-outdoor-film-like-this', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411420, '2015', '01', '27', 0, 0, 20150205235716, 0, 0),
(67, 1, 3, 5, NULL, '108.14.78.139', 'Did "Wild" make any changes from the book/real-life story', 'did-the-film-make-any-changes-from-the-book-real-life-story', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411480, '2015', '01', '27', 0, 0, 20150205235656, 0, 0),
(68, 1, 3, 2, NULL, '108.14.78.139', 'Does "American Sniper" give an unfairly negative portrayal of Iraqis', 'does-american-sniper-give-an-unfairly-negative-portrayal-of-iraqis', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411300, '2015', '01', '27', 0, 0, 20150205235800, 0, 0),
(69, 1, 3, 2, NULL, '108.14.78.139', 'How did Bradley Cooper prepare for the role in "American Sniper"', 'how-did-bradley-cooper-prepare-for-the-role-in-american-sniper', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411720, '2015', '01', '27', 0, 0, 20150205235634, 0, 0),
(70, 1, 1, 5, NULL, '108.14.78.139', 'Whiplash', 'whiplash', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1389925500, '2014', '01', '16', 0, 0, 20150205223044, 0, 0),
(71, 1, 3, 2, NULL, '108.14.78.139', 'How did using a digital camera impact the way Eastwood shot "American Sniper"', 'how-did-using-a-digital-camera-impact-the-way-eastwood-shot-american-sniper', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422411900, '2015', '01', '27', 0, 0, 20150205235607, 0, 0),
(72, 1, 3, 2, NULL, '108.14.78.139', 'How did editing play a bigger role in "American Sniper"', 'how-did-editing-play-a-bigger-role-in-american-sniper', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422412260, '2015', '01', '27', 0, 0, 20150205235533, 0, 0),
(73, 1, 3, 5, NULL, '108.14.78.139', 'How did J.K. Simmons and Miles Teller prepare for "Whiplash"', 'how-did-j.k.-simmons-and-miles-teller-prepare-for-their-roles', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422413100, '2015', '01', '27', 0, 0, 20150205235302, 0, 0),
(74, 1, 3, 5, NULL, '108.14.78.139', 'How did they film the climactic drum solo in "Whiplash"', 'how-did-they-film-the-climactic-drum-solo', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422413160, '2015', '01', '27', 0, 0, 20150205235223, 0, 0),
(75, 1, 3, 5, NULL, '108.14.78.139', 'How accurate is "Whiplash"''s portrayal of jazz', 'how-accurate-is-the-films-portrayal-of-jazz', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422413280, '2015', '01', '27', 0, 0, 20150205235150, 0, 0),
(76, 1, 3, 5, NULL, '99.102.104.159', 'Does it matter if "Whiplash" is wrong about jazz', 'does-it-matter-if-the-film-is-wrong-about-jazz', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422413400, '2015', '01', '27', 0, 0, 20150201060755, 0, 0),
(77, 1, 3, 5, NULL, '108.14.78.139', 'What is the significance behind the film’s title "Whiplash"', 'what-is-the-significance-behind-the-films-title-whiplash', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422413460, '2015', '01', '27', 0, 0, 20150205235351, 0, 0),
(78, 1, 1, 5, NULL, '108.14.78.139', 'Two Days, One Night (Deux jours, une nuit)', 'two-days-one-night-deux-jours-une-nuit', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419476820, '2014', '12', '24', 0, 0, 20150205224742, 0, 0),
(79, 1, 3, 2, NULL, '108.14.78.139', 'Why did they use a fake baby in "American Sniper"', 'why-did-they-use-a-fake-baby-in-american-sniper', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422414240, '2015', '01', '27', 0, 0, 20150205235328, 0, 0),
(80, 1, 3, 5, NULL, '108.14.78.139', 'Who are Jean-Pierre and Luc Dardenne', 'who-are-jean-pierre-and-luc-dardenne', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415020, '2015', '01', '27', 0, 0, 20150205235030, 0, 0),
(81, 1, 3, 5, NULL, '108.14.78.139', 'Was "Two Days, One Night" a response to the current problems facing much of the global economy', 'was-the-film-a-response-to-the-current-problems-facing-much-of-the-global-e', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415200, '2015', '01', '27', 0, 0, 20150205234934, 0, 0),
(82, 1, 1, 2, NULL, '108.14.78.139', 'Big Eyes', 'big-eyes', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419483600, '2014', '12', '25', 0, 0, 20150205224841, 0, 0),
(83, 1, 3, 5, NULL, '108.14.78.139', 'How was working with an international star in "Two Days, One Night" different for the Dardennes', 'how-was-working-with-an-international-star-different-from-working-with-thei', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415320, '2015', '01', '27', 0, 0, 20150205234858, 0, 0),
(84, 1, 3, 5, NULL, '108.14.78.139', 'Did the Dardennes shoot many takes for "Two Days, One Night"', 'do-the-dardennes-shoot-many-takes-for-their-scenes', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415440, '2015', '01', '27', 0, 0, 20150205234716, 0, 0),
(85, 1, 3, 5, NULL, '108.14.78.139', 'How did Cotillard prepare for "Two Days, One Night"', 'how-did-cotillard-prepare-for-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415500, '2015', '01', '27', 0, 0, 20150205234653, 0, 0),
(86, 1, 3, 5, NULL, '108.14.78.139', 'Why do the Dardennes shoot their films (including "Two Days, One Night") sequentially', 'why-do-the-dardennes-shoot-their-films-including-two-days-one-night-sequent', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415560, '2015', '01', '27', 0, 0, 20150205234622, 0, 0),
(87, 1, 3, 2, NULL, '108.14.78.139', 'Who are the "painters" behind those popular paintings with “Big Eyes”', 'who-are-the-painters-behind-those-popular-paintings-with-big-eyes', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422415620, '2015', '01', '27', 0, 0, 20150205234536, 0, 0),
(88, 1, 3, 2, NULL, '108.14.78.139', 'How were the "big eye" paintings really received by the critics?', 'how-were-the-big-eye-paintings-really-received-by-the-critics', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422416220, '2015', '01', '27', 0, 0, 20150205234508, 0, 0),
(89, 1, 3, 2, NULL, '108.14.78.139', 'How does "Big Eyes" compare to Burton’s previous film “Ed Wood”', 'how-does-big-eyes-compare-to-burtons-previous-film-ed-wood', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422416640, '2015', '01', '27', 0, 0, 20150205234420, 0, 0),
(90, 1, 3, 2, NULL, '108.14.78.139', 'What does "Big Eyes" say about Walter Keane? Is it even accurate', 'what-does-big-eyes-say-about-walter-keane-is-it-even-accurate', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422417000, '2015', '01', '27', 0, 0, 20150205234320, 0, 0),
(91, 1, 1, 5, NULL, '108.14.78.139', 'Mr. Turner', 'mr.-turner', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419019740, '2014', '12', '19', 0, 0, 20150205224733, 0, 0),
(92, 1, 3, 5, NULL, '108.14.78.139', 'Who is J.M.W. Turner and how does his work as a painter factor into the aesthetics of this film', 'who-is-j.m.w.-turner-and-how-does-his-work-as-a-painter-factor-into-the-aes', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422478620, '2015', '01', '28', 0, 0, 20150205234151, 0, 0),
(93, 1, 3, 5, NULL, '108.14.78.139', 'How did Dick Pope film "Mr. Turner"', 'how-did-dick-pope-film-mr.-turner', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422478800, '2015', '01', '28', 0, 0, 20150205234126, 0, 0),
(94, 1, 3, 5, NULL, '108.14.78.139', 'How did they get the colors of the paintings to display properly in "Mr. Turner"', 'how-did-they-get-the-colors-of-the-paintings-to-display-properly-in-the-fil', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422478920, '2015', '01', '28', 0, 0, 20150205234051, 0, 0),
(95, 1, 3, 5, NULL, '108.14.78.139', 'What were the challenges of portraying J.M.W. Turner', 'what-were-the-challenges-of-portraying-j.m.w.-turner', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422478980, '2015', '01', '28', 0, 0, 20150205234012, 0, 0),
(96, 1, 1, 5, NULL, '108.14.78.139', 'Nightcrawler', 'nightcrawler', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1414787820, '2014', '10', '31', 0, 0, 20150205223826, 0, 0),
(97, 1, 3, 5, NULL, '108.14.78.139', 'How accurate is "Nightcrawler"''s portrayal of the media and nightcrawling', 'how-accurate-is-the-films-portrayal-of-the-media-and-nightcrawling', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422482580, '2015', '01', '28', 0, 0, 20150205232802, 0, 0),
(98, 1, 3, 5, NULL, '108.14.78.139', 'How did Jake Gyllenhaal prepare himself for "Nightcrawler"', 'how-did-jake-gyllenhaal-prepare-himself-for-this-role', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422482640, '2015', '01', '28', 0, 0, 20150205232650, 0, 0),
(99, 1, 1, 5, NULL, '108.14.78.139', 'Unbroken', 'unbroken', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419545340, '2014', '12', '25', 0, 0, 20150205225029, 0, 0),
(100, 1, 3, 5, NULL, '108.14.78.139', 'How much of "Unbroken" is true-to-life', 'how-much-of-the-film-is-true-to-life', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422490380, '2015', '01', '28', 0, 0, 20150205232625, 0, 0),
(101, 1, 3, 5, NULL, '108.14.78.139', 'What was the general aesthetic and procedure used by Roger Deakins in shooting "Unbroken"', 'what-was-the-general-aesthetic-and-procedure-used-by-roger-deakins-in-shoot', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422490500, '2015', '01', '28', 0, 0, 20150205232600, 0, 0),
(102, 1, 1, 5, NULL, '108.14.78.139', 'Citizenfour', 'citizenfour', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1414125240, '2014', '10', '24', 0, 0, 20150205223746, 0, 0),
(103, 1, 3, 5, NULL, '108.14.78.139', 'Is "Citizenfour" an advocacy piece or a serious work of journalism', 'is-the-film-an-advocacy-piece-or-a-serious-work-of-journalism', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422508560, '2015', '01', '29', 0, 0, 20150205232536, 0, 0),
(104, 1, 3, 5, NULL, '108.14.78.139', 'Are there any important details left out of "Citizenfour"', 'are-there-any-important-details-left-out-of-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422508740, '2015', '01', '29', 0, 0, 20150205232515, 0, 0),
(105, 1, 1, 5, NULL, '108.14.78.139', 'Inherent Vice', 'inherent-vice', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1418362200, '2014', '12', '12', 0, 0, 20150205224623, 0, 0),
(106, 1, 3, 5, NULL, '108.14.78.139', 'How did "Inherent Vice" achieve its unique look', 'how-did-the-film-achieve-its-unique-look', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422510180, '2015', '01', '29', 0, 0, 20150205232453, 0, 0),
(107, 1, 3, 5, NULL, '108.14.78.139', 'What were the challenges of translating Pynchon’s ''Inherent Vice'' to the screen', 'what-were-the-challenges-of-translating-pynchons-material-to-the-screen', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422510300, '2015', '01', '29', 0, 0, 20150205232429, 0, 0),
(108, 1, 3, 5, NULL, '108.14.78.139', 'What were the biggest influences on "Inherent Vice"', 'how-were-the-big-lebowski-the-big-sleep-night-moves-the-long-goodbye-et-al', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422510360, '2015', '01', '29', 0, 0, 20150205232355, 0, 0),
(109, 1, 3, 5, NULL, '108.14.78.139', 'Is "Inherent Vice" a stoner film? Or better yet, what is a stoner film', 'is-this-a-stoner-film-or-better-yet-what-is-a-stoner-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422510540, '2015', '01', '29', 0, 0, 20150205232317, 0, 0),
(111, 1, 1, 5, NULL, '108.14.78.139', 'Foxcatcher', 'foxcatcher', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1416011400, '2014', '11', '14', 0, 0, 20150205230256, 0, 0),
(112, 1, 1, 5, NULL, '108.14.78.139', 'Goodbye to Language 3D', 'goodbye-to-language', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1401323760, '2014', '05', '28', 0, 0, 20150205223455, 0, 0),
(113, 1, 1, 5, NULL, '108.14.78.139', 'Under the Skin', 'under-the-skin', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1396659000, '2014', '04', '04', 0, 0, 20150205223224, 0, 0),
(114, 1, 1, 5, NULL, '108.14.78.139', 'Gone Girl', 'gone-girl', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1412384520, '2014', '10', '03', 0, 0, 20150205223624, 0, 0),
(115, 1, 1, 5, NULL, '108.14.78.139', 'Into the Woods', 'into-the-woods', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1419560280, '2014', '12', '25', 0, 0, 20150205230441, 0, 0),
(116, 1, 1, 5, NULL, '108.14.78.139', 'Interstellar', 'interstellar', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1415241240, '2014', '11', '05', 0, 0, 20150205223858, 0, 0),
(117, 1, 1, 5, NULL, '108.14.78.139', 'Only Lovers Left Alive', 'only-lovers-left-alive', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1397267520, '2014', '04', '11', 0, 0, 20150205223255, 0, 0),
(118, 1, 3, 5, NULL, '108.14.78.139', 'Why is "Under the Skin" so vague about the lead character’s origins', 'why-is-the-film-so-vague-about-the-lead-characters-origins', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764100, '2015', '01', '31', 0, 0, 20150205232304, 0, 0),
(119, 1, 3, 5, NULL, '108.14.78.139', 'Did the driving sequences in "Under the Skin" actually involve real, unknowing people', 'did-the-driving-sequences-actually-involve-real-unknowing-people', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764160, '2015', '01', '31', 0, 0, 20150205232237, 0, 0),
(120, 1, 3, 5, NULL, '108.14.78.139', 'How did "Under the Skin" find Adam Pearson, the character with facial deformities', 'how-did-they-find-adam-pearson-the-character-with-facial-deformities', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764220, '2015', '01', '31', 0, 0, 20150205232148, 0, 0),
(121, 1, 3, 5, NULL, '108.14.78.139', 'Who is John du Pont', 'who-is-john-du-pont', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764280, '2015', '01', '31', 0, 0, 20150205232010, 0, 0),
(122, 1, 3, 5, NULL, '108.14.78.139', 'How much of "Foxcatcher" is accurate', 'how-much-of-this-film-is-accurate', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764340, '2015', '01', '31', 0, 0, 20150205231938, 0, 0),
(123, 1, 3, 5, NULL, '108.14.78.139', 'Did Mark Schultz and John du Pont have a gay relationship', 'did-mark-schultz-and-john-du-pont-have-a-gay-relationship', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764400, '2015', '01', '31', 0, 0, 20150205231855, 0, 0),
(124, 1, 3, 5, NULL, '108.14.78.139', 'What does "Foxcatcher" have to say about social class in America', 'what-does-the-film-have-to-say-about-social-class-in-america', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764580, '2015', '01', '31', 0, 0, 20150205231822, 0, 0),
(125, 1, 3, 5, NULL, '108.14.78.139', 'How faithful is "Gone Girl" to the book', 'how-faithful-is-the-film-to-the-book', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764880, '2015', '01', '31', 0, 0, 20150205231653, 0, 0),
(126, 1, 3, 5, NULL, '108.14.78.139', 'Is "Gone Girl" really misogynist? Or is it really misandristic', 'is-this-film-really-misogynist-or-is-it-really-misandristic', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764880, '2015', '01', '31', 0, 0, 20150205231720, 0, 0),
(127, 1, 3, 5, NULL, '108.14.78.139', 'What does "Gone Girl" say about media? How does that tie-in with its themes on marriage', 'what-does-this-film-say-about-media-how-does-that-tie-in-with-its-themes-on', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422764940, '2015', '01', '31', 0, 0, 20150205231621, 0, 0),
(128, 1, 3, 5, NULL, '108.14.78.139', 'Is it true that Disney watered down "Into the Woods"', 'is-it-true-that-disney-watered-down-the-musical', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765000, '2015', '01', '31', 0, 0, 20150205231548, 0, 0),
(129, 1, 3, 5, NULL, '108.14.78.139', 'Why would Stephen Sondheim allow Disney to change "Into the Woods"', 'why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765120, '2015', '01', '31', 0, 0, 20150205231526, 0, 0),
(130, 1, 3, 5, NULL, '108.14.78.139', 'Which reported changes were not made to "Into the Woods"', 'which-reported-changes-were-not-made-to-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765180, '2015', '01', '31', 0, 0, 20150205231412, 0, 0),
(131, 1, 3, 5, NULL, '108.14.78.139', 'Why does the hype over "Interstellar" draw comparisons to "2001: A Space Odyssey"', 'why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765180, '2015', '01', '31', 0, 0, 20150205231456, 0, 0),
(132, 1, 3, 5, NULL, '108.14.78.139', 'What did physicists actually do for "Interstellar"', 'what-did-physicists-actually-do-for-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765300, '2015', '01', '31', 0, 0, 20150205232050, 0, 0),
(133, 1, 3, 5, NULL, '108.14.78.139', 'There are complaints that "Interstellar" makes no logical sense. How so', 'there-are-complaints-that-the-film-makes-no-logical-sense.-how-so', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765360, '2015', '01', '31', 0, 0, 20150205232030, 0, 0),
(134, 1, 3, 5, NULL, '108.14.78.139', 'What does "Only Lovers Left Alive" do with the genre of vampire films', 'what-does-this-film-do-with-the-genre-of-vampire-films', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765420, '2015', '01', '31', 0, 0, 20150205231306, 0, 0),
(135, 1, 3, 5, NULL, '108.14.78.139', 'How was Detroit used in "Only Lovers Left Alive"', 'how-was-detroit-used-in-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765480, '2015', '01', '31', 0, 0, 20150205231244, 0, 0),
(136, 1, 3, 5, NULL, '108.14.78.139', 'How was the original score conceived for "Only Lovers Left Alive"', 'how-was-the-original-score-conceived-for-the-film', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422765480, '2015', '01', '31', 0, 0, 20150205231231, 0, 0),
(137, 1, 3, 5, NULL, '108.14.78.139', 'What is "Goodbye to Language" actually about', 'what-is-goodbye-to-language-actually-about', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1422766980, '2015', '02', '01', 0, 0, 20150205203644, 0, 0),
(138, 1, 1, 5, NULL, '108.14.78.139', 'Ida', 'ida', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1378911000, '2013', '09', '11', 0, 0, 20150205222743, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

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
(24, 1, 1, 'kentonquatman@gmail.com', '::1', 1422233102, 'Logged in'),
(25, 1, 1, 'kentonquatman@gmail.com', '::1', 1422264675, 'Logged out'),
(26, 1, 1, 'kentonquatman@gmail.com', '::1', 1422267161, 'Logged in'),
(27, 1, 1, 'kentonquatman@gmail.com', '::1', 1422289664, 'Logged in'),
(28, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422299946, 'Logged in'),
(29, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422301000, 'Member profile created:&nbsp;&nbsp;debra'),
(30, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422301064, 'Member profile created:&nbsp;&nbsp;mitch'),
(31, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302104, 'Logged out'),
(32, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302215, 'Logged in'),
(33, 1, 2, 'debra', '174.141.160.130', 1422302219, 'Logged in'),
(34, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302290, 'Member profile created:&nbsp;&nbsp;testuser'),
(35, 1, 2, 'debra', '174.141.160.130', 1422302302, 'Logged out'),
(36, 1, 2, 'debra', '174.141.160.130', 1422302307, 'Logged in'),
(37, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302363, 'Logged in'),
(38, 1, 2, 'debra', '174.141.160.130', 1422302453, 'Logged out'),
(39, 1, 2, 'debra', '174.141.160.130', 1422302453, 'Logged out'),
(40, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302660, 'Logged in'),
(41, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302748, 'Member profile created:&nbsp;&nbsp;mitch'),
(42, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302789, 'Logged out'),
(43, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422302812, 'Logged in'),
(44, 1, 4, 'testuser', '173.3.172.44', 1422302820, 'Logged in'),
(45, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422303010, 'Member Group Updated:&nbsp;&nbsp;Authors'),
(46, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422303211, 'Logged in'),
(47, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422303412, 'Logged in'),
(48, 1, 5, 'mitch', '74.73.20.219', 1422303589, 'Logged in'),
(49, 1, 2, 'debra', '174.141.160.130', 1422303615, 'Logged in'),
(50, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422305470, 'Member Group Updated:&nbsp;&nbsp;Authors'),
(51, 1, 5, 'mitch', '74.73.20.219', 1422307712, 'Logged in'),
(52, 1, 2, 'debra', '174.141.160.130', 1422312171, 'Logged in'),
(53, 1, 5, 'mitch', '74.73.20.219', 1422321754, 'Logged in'),
(54, 1, 5, 'mitch', '74.73.20.219', 1422321846, 'Logged in'),
(55, 1, 2, 'debra', '174.141.160.130', 1422324909, 'Logged in'),
(56, 1, 5, 'mitch', '74.73.20.219', 1422326148, 'Logged in'),
(57, 1, 2, 'debra', '174.141.160.130', 1422329338, 'Logged in'),
(58, 1, 2, 'debra', '174.141.160.130', 1422329729, 'Logged in'),
(59, 1, 2, 'debra', '174.141.160.130', 1422331619, 'Logged in'),
(60, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422347837, 'Logged in'),
(61, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422350811, 'Logged out'),
(62, 1, 5, 'mitch', '74.73.20.219', 1422375577, 'Logged in'),
(63, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422383631, 'Logged in'),
(64, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422383838, 'Member profile created:&nbsp;&nbsp;matt'),
(65, 1, 1, 'kentonquatman@gmail.com', '173.3.172.44', 1422383927, 'Username was changed to:&nbsp;&nbsp;kenton'),
(66, 1, 1, 'kenton', '173.3.172.44', 1422384646, 'Member Group Updated:&nbsp;&nbsp;Authors'),
(67, 1, 5, 'mitch', '74.73.20.219', 1422386236, 'Logged in'),
(68, 1, 2, 'debra', '174.141.160.130', 1422389998, 'Logged in'),
(69, 1, 2, 'debra', '174.141.160.130', 1422394890, 'Logged in'),
(70, 1, 2, 'debra', '174.141.160.130', 1422397153, 'Logged in'),
(71, 1, 5, 'mitch', '74.73.20.219', 1422404247, 'Logged in'),
(72, 1, 2, 'debra', '174.141.160.130', 1422409893, 'Logged in'),
(73, 1, 5, 'mitch', '74.73.20.219', 1422412431, 'Logged in'),
(74, 1, 2, 'debra', '174.141.160.130', 1422413457, 'Logged in'),
(75, 1, 5, 'mitch', '74.73.20.219', 1422473548, 'Logged in'),
(76, 1, 5, 'mitch', '74.73.20.219', 1422475721, 'Logged in'),
(77, 1, 5, 'mitch', '74.73.20.219', 1422488900, 'Logged in'),
(78, 1, 5, 'mitch', '74.73.20.219', 1422507158, 'Logged in'),
(79, 1, 5, 'mitch', '74.73.20.219', 1422545396, 'Logged in'),
(80, 1, 2, 'debra', '24.238.118.131', 1422565876, 'Logged in'),
(81, 1, 5, 'mitch', '74.73.20.219', 1422586439, 'Logged in'),
(82, 1, 1, 'kenton', '173.3.172.44', 1422594911, 'Logged in'),
(83, 1, 1, 'kenton', '173.3.172.44', 1422603324, 'Logged in'),
(84, 1, 5, 'mitch', '99.102.104.159', 1422713151, 'Logged in'),
(85, 1, 6, 'matt', '107.77.76.108', 1422720477, 'Logged in'),
(86, 1, 5, 'mitch', '99.102.104.159', 1422750432, 'Logged in'),
(87, 1, 5, 'mitch', '99.102.104.159', 1422756414, 'Logged in'),
(88, 1, 5, 'mitch', '99.102.104.159', 1422763572, 'Logged in'),
(89, 1, 5, 'mitch', '99.102.104.159', 1422766973, 'Logged in'),
(90, 1, 5, 'mitch', '99.102.104.159', 1422767773, 'Logged in'),
(91, 1, 5, 'mitch', '99.102.104.159', 1422768302, 'Logged in'),
(92, 1, 5, 'mitch', '99.102.104.159', 1422768497, 'Logged in'),
(93, 1, 5, 'mitch', '99.102.104.159', 1422805328, 'Logged in'),
(94, 1, 5, 'mitch', '99.102.104.159', 1422809406, 'Logged in'),
(95, 1, 2, 'debra', '108.14.78.139', 1422900013, 'Logged in'),
(96, 1, 2, 'debra', '108.14.78.139', 1422904704, 'Logged in'),
(97, 1, 5, 'mitch', '99.102.104.159', 1422911344, 'Logged in'),
(98, 1, 5, 'mitch', '99.102.104.159', 1422920871, 'Logged in'),
(99, 1, 5, 'mitch', '99.102.104.159', 1422925612, 'Logged in'),
(100, 1, 5, 'mitch', '99.102.104.159', 1422935569, 'Logged in'),
(101, 1, 5, 'mitch', '99.102.104.159', 1423005789, 'Logged in'),
(102, 1, 2, 'debra', '108.14.78.139', 1423160608, 'Logged in'),
(103, 1, 5, 'mitch', '108.14.78.139', 1423165940, 'Logged in'),
(104, 1, 5, 'mitch', '108.14.78.139', 1423171717, 'Logged in'),
(105, 1, 2, 'debra', '108.14.78.139', 1423171777, 'Logged in'),
(106, 1, 2, 'debra', '108.14.78.139', 1423171777, 'Logged in'),
(107, 1, 6, 'matt', '72.226.65.163', 1423172403, 'Logged in'),
(108, 1, 6, 'matt', '72.226.65.163', 1423173553, 'Logged in'),
(109, 1, 1, 'kenton', '173.3.172.44', 1423174259, 'Logged in'),
(110, 1, 1, 'kenton', '173.3.172.44', 1423174319, 'Member profile created:&nbsp;&nbsp;testuser'),
(111, 1, 7, 'testuser', '173.3.172.44', 1423174342, 'Logged in'),
(112, 1, 7, 'testuser', '173.3.172.44', 1423177104, 'Logged out'),
(113, 1, 5, 'mitch', '108.14.78.139', 1423179466, 'Logged in'),
(114, 1, 5, 'mitch', '108.14.78.139', 1423179477, 'Logged in'),
(115, 1, 5, 'mitch', '108.14.78.139', 1423179488, 'Logged in'),
(116, 1, 1, 'kenton', '173.3.172.44', 1423179598, 'Logged out'),
(117, 1, 5, 'mitch', '108.14.78.139', 1423179659, 'Logged in'),
(118, 1, 5, 'mitch', '108.14.78.139', 1423179691, 'Logged in'),
(119, 1, 5, 'mitch', '108.14.78.139', 1423179759, 'Logged in'),
(120, 1, 5, 'mitch', '108.14.78.139', 1423179867, 'Logged in'),
(121, 1, 5, 'mitch', '108.14.78.139', 1423179915, 'Logged in'),
(122, 1, 5, 'mitch', '108.14.78.139', 1423179943, 'Logged in'),
(123, 1, 5, 'mitch', '108.14.78.139', 1423179989, 'Logged in'),
(124, 1, 5, 'mitch', '108.14.78.139', 1423180018, 'Logged in'),
(125, 1, 5, 'mitch', '108.14.78.139', 1423180152, 'Logged in'),
(126, 1, 5, 'mitch', '108.14.78.139', 1423180182, 'Logged in'),
(127, 1, 5, 'mitch', '108.14.78.139', 1423180290, 'Logged in'),
(128, 1, 5, 'mitch', '108.14.78.139', 1423180318, 'Logged in'),
(129, 1, 5, 'mitch', '108.14.78.139', 1423180349, 'Logged in'),
(130, 1, 1, 'kenton', '::1', 1423205322, 'Logged in');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_developer_log`
--

INSERT INTO `exp_developer_log` (`log_id`, `timestamp`, `viewed`, `description`, `function`, `line`, `file`, `deprecated_since`, `use_instead`, `template_id`, `template_name`, `template_group`, `addon_module`, `addon_method`, `snippets`, `hash`) VALUES
(1, 1422107326, 'n', NULL, 'add_to_head()', 123, 'system/expressionengine/third_party/zoo_flexible_admin/mcp.zoo_flexible_admin.php', '2.8', 'CP::add_to_foot() for scripts', 0, NULL, NULL, NULL, NULL, NULL, '507d1de1b40c4617454248ad8f2e002f'),
(2, 1422115762, 'n', NULL, 'set_cookie()', 140, 'system/expressionengine/third_party/mountee/libraries/EE_Cocoa.php', '2.8', 'EE_Input::set_cookie()', 0, NULL, NULL, NULL, NULL, NULL, '7c337d621944ab3586bb5f6d9d3d56ea'),
(3, 1422115762, 'n', NULL, 'set_cookie()', 764, 'system/expressionengine/libraries/Functions.php', '2.8', 'EE_Input::delete_cookie()', 0, NULL, NULL, NULL, NULL, NULL, 'fe7f51992a03148e3c5d898db4cf6112'),
(4, 1422302848, 'n', NULL, 'restore_xid()', 128, 'system/expressionengine/third_party/zoo_flexible_admin/mod.zoo_flexible_admin.php', '2.8', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'cbede2d40eaab763c69d5e15ea3b8c69'),
(5, 1422302849, 'n', NULL, 'restore_xid()', 140, 'system/expressionengine/third_party/zoo_flexible_admin/mod.zoo_flexible_admin.php', '2.8', NULL, 0, NULL, NULL, NULL, NULL, NULL, '8dda087b6af0277e20a052af2e9c2a9e');

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
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

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
(52, 13, 'xhtml'),
(53, 14, 'none'),
(54, 14, 'br'),
(55, 14, 'markdown'),
(56, 14, 'xhtml'),
(57, 15, 'none'),
(58, 15, 'br'),
(59, 15, 'markdown'),
(60, 15, 'xhtml'),
(61, 16, 'none'),
(62, 16, 'br'),
(63, 16, 'markdown'),
(64, 16, 'xhtml'),
(65, 17, 'none'),
(66, 17, 'br'),
(67, 17, 'markdown'),
(68, 17, 'xhtml'),
(69, 18, 'none'),
(70, 18, 'br'),
(71, 18, 'markdown'),
(72, 18, 'xhtml'),
(73, 19, 'none'),
(74, 19, 'br'),
(75, 19, 'markdown'),
(76, 19, 'xhtml'),
(77, 20, 'none'),
(78, 20, 'br'),
(79, 20, 'markdown'),
(80, 20, 'xhtml'),
(81, 21, 'none'),
(82, 21, 'br'),
(83, 21, 'markdown'),
(84, 21, 'xhtml'),
(85, 22, 'none'),
(86, 22, 'br'),
(87, 22, 'markdown'),
(88, 22, 'xhtml'),
(89, 23, 'none'),
(90, 23, 'br'),
(91, 23, 'markdown'),
(92, 23, 'xhtml');

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
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_files`
--

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`) VALUES
(1, 1, 'hobbit-movie-poster-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/hobbit-movie-poster-01.jpg', 'image/jpeg', 'hobbit-movie-poster-01.jpg', 68033, NULL, NULL, NULL, 1, 1418946137, 1, 1418946137, '525 350'),
(2, 1, 'hobbit-movie-poster-02.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/hobbit-movie-poster-02.jpg', 'image/jpeg', 'hobbit-movie-poster-02.jpg', 63515, NULL, NULL, NULL, 1, 1418946137, 1, 1418946137, '519 350'),
(3, 1, 'birdman-poster-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/birdman-poster-01.jpg', 'image/jpeg', 'birdman-poster-01.jpg', 65198, NULL, NULL, NULL, 1, 1422158705, 1, 1422158705, '626 400'),
(4, 1, 'birdman-poster-00.jpg', 4, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/uploads/birdman-poster-00.jpg', 'image/jpeg', 'birdman-poster-00.jpg', 81842, NULL, NULL, NULL, 1, 1422158379, 1, 1422158379, '720 486'),
(5, 1, 'under-the-skin.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/under-the-skin.jpg', 'image/jpeg', 'under-the-skin.jpg', 1092334, NULL, NULL, NULL, 1, 1422168777, 1, 1422168777, '1080 1920'),
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
(16, 1, 'oitnb-box-01.jpg', 1, '/Users/kentonquatman/Sites/filmprism.dev/development/html/assets/img/covers/oitnb-box-01.jpg', 'image/jpeg', 'oitnb-box-01.jpg', 87710, NULL, NULL, NULL, 1, 1422259349, 1, 1422259349, '520 350'),
(17, 1, 'Birdman_poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Birdman_poster.jpg', 'image/jpeg', 'Birdman_poster.jpg', 44404, NULL, NULL, NULL, 2, 1422324942, 2, 1422324942, '400 270'),
(18, 1, 'hr_Birdman_16.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/hr_Birdman_16.jpg', 'image/jpeg', 'hr_Birdman_16.jpg', 109255, NULL, NULL, NULL, 2, 1422328625, 2, 1422328625, '692 1280'),
(19, 1, 'birdman_12-620x411.png', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/birdman_12-620x411.png', 'image/png', 'birdman_12-620x411.png', 445971, NULL, NULL, NULL, 2, 1422328873, 2, 1422328873, '411 620'),
(20, 1, 'birdman.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/birdman.jpg', 'image/jpeg', 'birdman.jpg', 101741, NULL, NULL, NULL, 2, 1422331884, 2, 1422331884, '420 630'),
(21, 1, 'michael-keaton-birdman-movie.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/michael-keaton-birdman-movie.jpg', 'image/jpeg', 'michael-keaton-birdman-movie.jpg', 129444, NULL, NULL, NULL, 2, 1422332646, 2, 1422332646, '610 634'),
(22, 1, 'wgirmpbhcvolewmk1cxk.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/wgirmpbhcvolewmk1cxk.jpg', 'image/jpeg', 'wgirmpbhcvolewmk1cxk.jpg', 61690, NULL, NULL, NULL, 2, 1422332751, 2, 1422332751, '424 636'),
(23, 1, 'birdman_(1).jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/birdman_(1).jpg', 'image/jpeg', 'birdman_(1).jpg', 59067, NULL, NULL, NULL, 2, 1422332951, 2, 1422332951, '380 636'),
(24, 1, 'Boyhood_-_Arquette_time.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Boyhood_-_Arquette_time.jpg', 'image/jpeg', 'Boyhood_-_Arquette_time.jpg', 73668, NULL, NULL, NULL, 5, 1422376217, 5, 1422376217, '398 680'),
(25, 1, 'Boyhood_-_Linklater_Hawke_on-set.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Boyhood_-_Linklater_Hawke_on-set.jpg', 'image/jpeg', 'Boyhood_-_Linklater_Hawke_on-set.jpg', 65115, NULL, NULL, NULL, 5, 1422376217, 5, 1422376217, '399 600'),
(26, 1, 'Boyhood_-_Coltrane_time.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Boyhood_-_Coltrane_time.jpeg', 'image/jpeg', 'Boyhood_-_Coltrane_time.jpeg', 108462, NULL, NULL, NULL, 5, 1422376218, 5, 1422376218, '869 1024'),
(27, 1, 'Boyhood_-_screencap_-_year_1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Boyhood_-_screencap_-_year_1.jpg', 'image/jpeg', 'Boyhood_-_screencap_-_year_1.jpg', 173567, NULL, NULL, NULL, 5, 1422376225, 5, 1422376225, '630 1120'),
(28, 1, 'Boyhood_-_poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Boyhood_-_poster.jpg', 'image/jpeg', 'Boyhood_-_poster.jpg', 321724, NULL, NULL, NULL, 5, 1422376256, 5, 1422376256, '905 610'),
(29, 1, 'GBH-mainposter.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/GBH-mainposter.jpg', 'image/jpeg', 'GBH-mainposter.jpg', 83735, NULL, NULL, NULL, 5, 1422379485, 5, 1422379485, '575 400'),
(30, 1, 'GBH-onset2.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-onset2.jpg', 'image/jpeg', 'GBH-onset2.jpg', 270283, NULL, NULL, NULL, 5, 1422379489, 5, 1422379489, '396 726'),
(31, 1, 'GBH-poster1.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/GBH-poster1.jpg', 'image/jpeg', 'GBH-poster1.jpg', 277009, NULL, NULL, NULL, 5, 1422379492, 5, 1422379492, '1499 960'),
(32, 1, 'GBH-still1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-still1.jpg', 'image/jpeg', 'GBH-still1.jpg', 307293, NULL, NULL, NULL, 5, 1422379499, 5, 1422379499, '1000 2000'),
(33, 1, 'GBH-still2.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-still2.jpg', 'image/jpeg', 'GBH-still2.jpg', 254350, NULL, NULL, NULL, 5, 1422379503, 5, 1422379503, '1000 2000'),
(34, 1, 'GBH-cast.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-cast.jpg', 'image/jpeg', 'GBH-cast.jpg', 2368348, NULL, NULL, NULL, 5, 1422379507, 5, 1422379507, '3543 4724'),
(35, 1, 'GBH-still3.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-still3.jpg', 'image/jpeg', 'GBH-still3.jpg', 913514, NULL, NULL, NULL, 5, 1422379512, 5, 1422379512, '800 1200'),
(36, 1, 'GBH-onset1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GBH-onset1.jpg', 'image/jpeg', 'GBH-onset1.jpg', 335015, NULL, NULL, NULL, 5, 1422379551, 5, 1422379551, '1000 2000'),
(37, 1, 'BoyApple_final_scene.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/BoyApple_final_scene.jpg', 'image/jpeg', 'BoyApple_final_scene.jpg', 167812, NULL, NULL, NULL, 5, 1422387835, 5, 1422387835, '386 620'),
(38, 1, 'imitation_game_dancing_still.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/imitation_game_dancing_still.jpg', 'image/jpeg', 'imitation_game_dancing_still.jpg', 67270, NULL, NULL, NULL, 5, 1422389645, 5, 1422389645, '451 800'),
(39, 1, 'ig_04297r_lg.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/ig_04297r_lg.jpg', 'image/jpeg', 'ig_04297r_lg.jpg', 167292, NULL, NULL, NULL, 5, 1422389646, 5, 1422389646, '377 670'),
(40, 1, 'The-Imitation-Game-poster-1.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/The-Imitation-Game-poster-1.jpg', 'image/jpeg', 'The-Imitation-Game-poster-1.jpg', 40286, NULL, NULL, NULL, 5, 1422389649, 5, 1422389649, '400 270'),
(41, 1, 'imitation-game.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/imitation-game.jpg', 'image/jpeg', 'imitation-game.jpg', 341011, NULL, NULL, NULL, 5, 1422389648, 5, 1422389648, '800 544'),
(42, 1, 'Turing-arrested.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Turing-arrested.jpg', 'image/jpeg', 'Turing-arrested.jpg', 121440, NULL, NULL, NULL, 5, 1422389652, 5, 1422389652, '852 1280'),
(43, 1, 'IG_02611.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/IG_02611.jpeg', 'image/jpeg', 'IG_02611.jpeg', 1137607, NULL, NULL, NULL, 5, 1422389657, 5, 1422389657, '2832 4256'),
(44, 1, 'A_Most_Violent_Year_Movie_Poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/A_Most_Violent_Year_Movie_Poster.jpg', 'image/jpeg', 'A_Most_Violent_Year_Movie_Poster.jpg', 48951, NULL, NULL, NULL, 2, 1422390103, 2, 1422390103, '720 486'),
(45, 1, 'a_most_violent_year_2014_movie-1440x900.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/a_most_violent_year_2014_movie-1440x900.jpg', 'image/jpeg', 'a_most_violent_year_2014_movie-1440x900.jpg', 376028, NULL, NULL, NULL, 2, 1422390729, 2, 1422390729, '900 1440'),
(46, 1, 'A_Most_Violent_Year_-_Full_Text_poster.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/A_Most_Violent_Year_-_Full_Text_poster.jpg', 'image/jpeg', 'A_Most_Violent_Year_-_Full_Text_poster.jpg', 19559, NULL, NULL, NULL, 2, 1422390942, 2, 1422390942, '334 214'),
(47, 1, 'Selma-Poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Selma-Poster.jpg', 'image/jpeg', 'Selma-Poster.jpg', 192008, NULL, NULL, NULL, 5, 1422392344, 5, 1422392344, '2048 1312'),
(48, 1, '150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg', 'image/jpeg', '150102_POL_SelmaLBJ.jpg.CROP.promovar-mediumlarge.jpg', 132624, NULL, NULL, NULL, 5, 1422392740, 5, 1422392740, '421 590'),
(49, 1, 'Selma-David-Oyelowo-Carmen-Ejogo-.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Selma-David-Oyelowo-Carmen-Ejogo-.jpg', 'image/jpeg', 'Selma-David-Oyelowo-Carmen-Ejogo-.jpg', 427900, NULL, NULL, NULL, 5, 1422392741, 5, 1422392741, '1333 2000'),
(50, 1, 'selma.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/selma.jpg', 'image/jpeg', 'selma.jpg', 75134, NULL, NULL, NULL, 5, 1422392743, 5, 1422392743, '380 612'),
(51, 1, 'selma-past-mirror-on-the-present.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/selma-past-mirror-on-the-present.jpg', 'image/jpeg', 'selma-past-mirror-on-the-present.jpg', 170036, NULL, NULL, NULL, 5, 1422392747, 5, 1422392747, '377 670'),
(52, 1, '04.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/04.jpg', 'image/jpeg', '04.jpg', 132144, NULL, NULL, NULL, 5, 1422392747, 5, 1422392747, '933 1400'),
(53, 1, 'still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg', 'image/jpeg', 'still-of-david-oyelowo_-wendell-pierce_-trai-byers-and-stephan-james-in-selma-(2014).jpg', 351250, NULL, NULL, NULL, 5, 1422393564, 5, 1422393564, '1365 2048'),
(54, 1, 'la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg', 'image/jpeg', 'la-et-mn-violent-year-best-picture-national-board-of-review-20141201.jpg', 833721, NULL, NULL, NULL, 2, 1422395381, 2, 1422395381, '1333 2000'),
(55, 1, 'A_Most_Violent_Year_-_Dinner_Image.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/A_Most_Violent_Year_-_Dinner_Image.jpg', 'image/jpeg', 'A_Most_Violent_Year_-_Dinner_Image.jpg', 471905, NULL, NULL, NULL, 2, 1422396134, 2, 1422396134, '1125 2000'),
(56, 1, 'A_Most_Violent_Year_-_Abel_and_Anna.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/A_Most_Violent_Year_-_Abel_and_Anna.jpg', 'image/jpeg', 'A_Most_Violent_Year_-_Abel_and_Anna.jpg', 124806, NULL, NULL, NULL, 2, 1422396720, 2, 1422396720, '800 1200'),
(57, 1, 'theory_of_everything_still_a_l.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/theory_of_everything_still_a_l.jpg', 'image/jpeg', 'theory_of_everything_still_a_l.jpg', 40476, NULL, NULL, NULL, 5, 1422405869, 5, 1422405869, '318 565'),
(58, 1, 'Theory_of_Everything_WEdding_Kiss_Still.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Theory_of_Everything_WEdding_Kiss_Still.jpg', 'image/jpeg', 'Theory_of_Everything_WEdding_Kiss_Still.jpg', 154472, NULL, NULL, NULL, 5, 1422405869, 5, 1422405869, '548 972'),
(59, 1, 'Theory_of_Everything_Poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Theory_of_Everything_Poster.jpg', 'image/jpeg', 'Theory_of_Everything_Poster.jpg', 162981, NULL, NULL, NULL, 5, 1422405870, 5, 1422405870, '800 540'),
(60, 1, 'THEORY-articleLarge.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/THEORY-articleLarge.jpg', 'image/jpeg', 'THEORY-articleLarge.jpg', 55718, NULL, NULL, NULL, 5, 1422405870, 5, 1422405870, '399 600'),
(61, 1, 'theoryofeverythingpicz.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/theoryofeverythingpicz.jpg', 'image/jpeg', 'theoryofeverythingpicz.jpg', 197969, NULL, NULL, NULL, 5, 1422405872, 5, 1422405872, '900 1352'),
(62, 1, 'theory2.png', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/theory2.png', 'image/png', 'theory2.png', 407135, NULL, NULL, NULL, 5, 1422405874, 5, 1422405874, '358 602'),
(63, 1, 'TTOE_D25_07914_a_h.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/TTOE_D25_07914_a_h.jpg', 'image/jpeg', 'TTOE_D25_07914_a_h.jpg', 81452, NULL, NULL, NULL, 5, 1422405880, 5, 1422405880, '548 972'),
(64, 1, '2-or-3-things.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/2-or-3-things.jpg', 'image/jpeg', '2-or-3-things.jpg', 84623, NULL, NULL, NULL, 5, 1422407807, 5, 1422407807, '366 853'),
(65, 1, 'pierrot.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/pierrot.jpg', 'image/jpeg', 'pierrot.jpg', 15250, NULL, NULL, NULL, 5, 1422408456, 5, 1422408456, '360 640'),
(66, 1, 'alice21.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/alice21.jpg', 'image/jpeg', 'alice21.jpg', 69942, NULL, NULL, NULL, 5, 1422409190, 5, 1422409190, '396 594'),
(67, 1, 'still-alice-julianne-moore-kristen-stewart.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/still-alice-julianne-moore-kristen-stewart.jpg', 'image/jpeg', 'still-alice-julianne-moore-kristen-stewart.jpg', 55138, NULL, NULL, NULL, 5, 1422409191, 5, 1422409191, '426 640'),
(68, 1, 'still-alice-alec-baldwin-julianne-moore-2.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/still-alice-alec-baldwin-julianne-moore-2.jpg', 'image/jpeg', 'still-alice-alec-baldwin-julianne-moore-2.jpg', 193901, NULL, NULL, NULL, 5, 1422409190, 5, 1422409190, '686 1100'),
(69, 1, 'still-alice.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/still-alice.jpeg', 'image/jpeg', 'still-alice.jpeg', 35927, NULL, NULL, NULL, 5, 1422409193, 5, 1422409193, '478 680'),
(70, 1, 'STILL-ALICE-onesheet.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/STILL-ALICE-onesheet.jpg', 'image/jpeg', 'STILL-ALICE-onesheet.jpg', 421112, NULL, NULL, NULL, 5, 1422409195, 5, 1422409195, '1066 720'),
(71, 1, 'Wild.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Wild.jpg', 'image/jpeg', 'Wild.jpg', 105612, NULL, NULL, NULL, 5, 1422410384, 5, 1422410384, '380 612'),
(72, 1, 'wild_xlg.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/wild_xlg.jpg', 'image/jpeg', 'wild_xlg.jpg', 279768, NULL, NULL, NULL, 5, 1422410385, 5, 1422410385, '750 506'),
(73, 1, '9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg', 'image/jpeg', '9d427280-2e4b-11e4-84c1-a39c9fd0b07d_wild-splash.jpg', 870139, NULL, NULL, NULL, 5, 1422410388, 5, 1422410388, '768 1366'),
(74, 1, 'American-Sniper-Movie-Poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/American-Sniper-Movie-Poster.jpg', 'image/jpeg', 'American-Sniper-Movie-Poster.jpg', 89801, NULL, NULL, NULL, 2, 1422410431, 2, 1422410431, '1186 800'),
(75, 1, 'American_Sniper_Movie_-_sniper_pic.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/American_Sniper_Movie_-_sniper_pic.jpg', 'image/jpeg', 'American_Sniper_Movie_-_sniper_pic.jpg', 47317, NULL, NULL, NULL, 2, 1422411316, 2, 1422411316, '451 800'),
(76, 1, '02BUCKLEY2-articleLarge.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/02BUCKLEY2-articleLarge.jpg', 'image/jpeg', '02BUCKLEY2-articleLarge.jpg', 85268, NULL, NULL, NULL, 5, 1422411473, 5, 1422411473, '400 600'),
(77, 1, 'AmericanSniper_trailer.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/AmericanSniper_trailer.jpg', 'image/jpeg', 'AmericanSniper_trailer.jpg', 265623, NULL, NULL, NULL, 2, 1422411729, 2, 1422411729, '716 1280'),
(78, 1, 'tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg', 'image/jpeg', 'tumblr_ni54xpVxEZ1qhojeto1_r1_500.jpg', 58478, NULL, NULL, NULL, 5, 1422411842, 5, 1422411842, '720 500'),
(79, 1, 'whiplash-1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/whiplash-1.jpg', 'image/jpeg', 'whiplash-1.jpg', 136147, NULL, NULL, NULL, 5, 1422411850, 5, 1422411850, '720 1280'),
(80, 1, 'whiplash-blood.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/whiplash-blood.jpg', 'image/jpeg', 'whiplash-blood.jpg', 199273, NULL, NULL, NULL, 5, 1422411855, 5, 1422411855, '370 658'),
(81, 1, 'Whiplash.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Whiplash.jpg', 'image/jpeg', 'Whiplash.jpg', 197004, NULL, NULL, NULL, 5, 1422411859, 5, 1422411859, '254 600'),
(82, 1, 'Whiplash1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Whiplash1.jpg', 'image/jpeg', 'Whiplash1.jpg', 144617, NULL, NULL, NULL, 5, 1422411862, 5, 1422411862, '1067 1600'),
(83, 1, '111.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/111.jpg', 'image/jpeg', '111.jpg', 2988313, NULL, NULL, NULL, 5, 1422411875, 5, 1422411875, '2400 3600'),
(84, 1, 'whiplash_milesteller_dig_in_magazine.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/whiplash_milesteller_dig_in_magazine.jpg', 'image/jpeg', 'whiplash_milesteller_dig_in_magazine.jpg', 2747742, NULL, NULL, NULL, 5, 1422411883, 5, 1422411883, '2400 3600'),
(85, 1, 'American-Sniper-1(1).jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/American-Sniper-1(1).jpg', 'image/jpeg', 'American-Sniper-1(1).jpg', 14687, NULL, NULL, NULL, 2, 1422411919, 2, 1422411919, '300 600'),
(86, 1, 'Clint+Eastwood+Bradley+Cooper+American+Sniper+UaFNY4WtKkxl.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Clint+Eastwood+Bradley+Cooper+American+Sniper+UaFNY4WtKkxl.jpg', 'image/jpeg', 'Clint+Eastwood+Bradley+Cooper+American+Sniper+UaFNY4WtKkxl.jpg', 74178, NULL, NULL, NULL, 2, 1422412269, 2, 1422412269, '594 466'),
(87, 1, 'Clint_Eastwood_39092.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Clint_Eastwood_39092.jpg', 'image/jpeg', 'Clint_Eastwood_39092.jpg', 87533, NULL, NULL, NULL, 2, 1422412576, 2, 1422412576, '300 600'),
(88, 1, 'article-2627658-1DD108CA00000578-433_640x911.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/article-2627658-1DD108CA00000578-433_640x911.jpg', 'image/jpeg', 'article-2627658-1DD108CA00000578-433_640x911.jpg', 130487, NULL, NULL, NULL, 2, 1422413522, 2, 1422413522, '911 640'),
(89, 1, 'MDFeatureimage-sniperclint.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/MDFeatureimage-sniperclint.jpg', 'image/jpeg', 'MDFeatureimage-sniperclint.jpg', 336232, NULL, NULL, NULL, 2, 1422413570, 2, 1422413570, '514 770'),
(90, 1, 'A-Most-Violent-Year-1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/A-Most-Violent-Year-1.jpg', 'image/jpeg', 'A-Most-Violent-Year-1.jpg', 691782, NULL, NULL, NULL, 2, 1422414040, 2, 1422414040, '1333 2000'),
(91, 1, '20150124_inq_svrpix24z-a.JPG', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/20150124_inq_svrpix24z-a.JPG', 'image/jpeg', '20150124_inq_svrpix24z-a.JPG', 42521, NULL, NULL, NULL, 5, 1422414121, 5, 1422414121, '440 599'),
(92, 1, 'film-twodays-570.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/film-twodays-570.jpg', 'image/jpeg', 'film-twodays-570.jpg', 99079, NULL, NULL, NULL, 5, 1422414122, 5, 1422414122, '400 570'),
(93, 1, 'large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg', 'image/jpeg', 'large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg', 53022, NULL, NULL, NULL, 5, 1422414123, 5, 1422414123, '600 400'),
(94, 1, 'two-days-one-night-picture-5.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/two-days-one-night-picture-5.jpg', 'image/jpeg', 'two-days-one-night-picture-5.jpg', 67172, NULL, NULL, NULL, 5, 1422414124, 5, 1422414124, '478 680'),
(95, 1, 'Z1FTWO23F.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Z1FTWO23F.jpg', 'image/jpeg', 'Z1FTWO23F.jpg', 73471, NULL, NULL, NULL, 5, 1422414309, 5, 1422414309, '450 600'),
(96, 1, 'bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg', 'image/jpeg', 'bradley-cooper-texas-longhorn-on-american-sniper-set-05.jpg', 230827, NULL, NULL, NULL, 2, 1422414703, 2, 1422414703, '1222 982'),
(97, 1, '05CROSSCUTS1-master675.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/05CROSSCUTS1-master675.jpg', 'image/jpeg', '05CROSSCUTS1-master675.jpg', 68626, NULL, NULL, NULL, 5, 1422415191, 5, 1422415191, '449 675'),
(98, 1, 'Big_Eyes_Movie_Poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Big_Eyes_Movie_Poster.jpg', 'image/jpeg', 'Big_Eyes_Movie_Poster.jpg', 25019, NULL, NULL, NULL, 2, 1422415235, 2, 1422415235, '267 180'),
(99, 1, 'Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg', 'image/jpeg', 'Article_Lead_-_wide6291871211gkejimage.related.articleLeadwide.729x410.11gke0.png1415335963176.jpg-620x349.jpg', 56599, NULL, NULL, NULL, 5, 1422415701, 5, 1422415701, '349 619'),
(100, 1, '1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG', 'image/jpeg', '1406919919000-XXX-FIRSTLOOK-BIGEYES-01-66181054.JPG', 31366, NULL, NULL, NULL, 2, 1422416201, 2, 1422416201, '401 534'),
(101, 1, 'Big_eyes_-_painting.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Big_eyes_-_painting.jpeg', 'image/jpeg', 'Big_eyes_-_painting.jpeg', 90585, NULL, NULL, NULL, 2, 1422416670, 2, 1422416670, '478 680'),
(102, 1, 'Big_Eyes_-_Burton_and_Screenwriters.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Big_Eyes_-_Burton_and_Screenwriters.jpg', 'image/jpeg', 'Big_Eyes_-_Burton_and_Screenwriters.jpg', 174662, NULL, NULL, NULL, 2, 1422416971, 2, 1422416971, '395 594'),
(103, 1, 'Walter_Stanley_Keane.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Walter_Stanley_Keane.jpg', 'image/jpeg', 'Walter_Stanley_Keane.jpg', 20635, NULL, NULL, NULL, 2, 1422417135, 2, 1422417135, '349 285'),
(104, 1, 'Walter_and_Margaret_Keane.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Walter_and_Margaret_Keane.jpg', 'image/jpeg', 'Walter_and_Margaret_Keane.jpg', 94676, NULL, NULL, NULL, 2, 1422417226, 2, 1422417226, '447 634'),
(105, 1, 'A-Most-Violent-Year-4.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/A-Most-Violent-Year-4.jpg', 'image/jpeg', 'A-Most-Violent-Year-4.jpg', 1186557, NULL, NULL, NULL, 2, 1422417417, 2, 1422417417, '844 1500'),
(106, 1, 'timburton-bigeyes-painting-tsr.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/timburton-bigeyes-painting-tsr.jpg', 'image/jpeg', 'timburton-bigeyes-painting-tsr.jpg', 31707, NULL, NULL, NULL, 2, 1422417558, 2, 1422417558, '168 350'),
(107, 1, 'big-eyes-oxygen-promo-movie-trailer-large-6.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/big-eyes-oxygen-promo-movie-trailer-large-6.jpg', 'image/jpeg', 'big-eyes-oxygen-promo-movie-trailer-large-6.jpg', 48260, NULL, NULL, NULL, 2, 1422417722, 2, 1422417722, '562 1000'),
(108, 1, 'mr-turner.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/mr-turner.jpeg', 'image/jpeg', 'mr-turner.jpeg', 1012092, NULL, NULL, NULL, 5, 1422477631, 5, 1422477631, '1866 2800'),
(109, 1, 'mr-turner.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/mr-turner.jpg', 'image/jpeg', 'mr-turner.jpg', 818048, NULL, NULL, NULL, 5, 1422477658, 5, 1422477658, '875 1600'),
(110, 1, 'beaf9acf-41d6-431f-a557-525f54b2774c.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/beaf9acf-41d6-431f-a557-525f54b2774c.jpg', 'image/jpeg', 'beaf9acf-41d6-431f-a557-525f54b2774c.jpg', 1030421, NULL, NULL, NULL, 5, 1422478045, 5, 1422478045, '1080 2201'),
(111, 1, '89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg', 'image/jpeg', '89u3166-timothy-spall-as-jmw-turner-turner-paints-in-his-studio__140516013417.jpg', 884378, NULL, NULL, NULL, 5, 1422478054, 5, 1422478054, '1659 3000'),
(112, 1, 'bigtmp_31367.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/bigtmp_31367.jpg', 'image/jpeg', 'bigtmp_31367.jpg', 120974, NULL, NULL, NULL, 5, 1422478202, 5, 1422478202, '1318 1000'),
(113, 1, 'Nightcrawler_3.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Nightcrawler_3.jpg', 'image/jpeg', 'Nightcrawler_3.jpg', 107689, NULL, NULL, NULL, 5, 1422481457, 5, 1422481457, '731 1200'),
(114, 1, 'Jake-Gyllenhaal-plays-an--014.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Jake-Gyllenhaal-plays-an--014.jpg', 'image/jpeg', 'Jake-Gyllenhaal-plays-an--014.jpg', 894354, NULL, NULL, NULL, 5, 1422481470, 5, 1422481470, '1152 1920'),
(115, 1, 'nightcrawler-jake-gyllenhaal.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/nightcrawler-jake-gyllenhaal.jpg', 'image/jpeg', 'nightcrawler-jake-gyllenhaal.jpg', 1462028, NULL, NULL, NULL, 5, 1422481480, 5, 1422481480, '1180 1920'),
(116, 1, 'nightcrawler-jake-gyllenhaal2.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/nightcrawler-jake-gyllenhaal2.jpg', 'image/jpeg', 'nightcrawler-jake-gyllenhaal2.jpg', 1826172, NULL, NULL, NULL, 5, 1422481488, 5, 1422481488, '1280 1920'),
(117, 1, '5454e16ae86e9.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/5454e16ae86e9.jpg', 'image/jpeg', '5454e16ae86e9.jpg', 77110, NULL, NULL, NULL, 5, 1422481627, 5, 1422481627, '800 540'),
(118, 1, '11181015_800.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/11181015_800.jpg', 'image/jpeg', '11181015_800.jpg', 78574, NULL, NULL, NULL, 5, 1422489151, 5, 1422489151, '1200 758'),
(119, 1, 'r0_185_4274_2589_w1200_h678_fmax.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/r0_185_4274_2589_w1200_h678_fmax.jpg', 'image/jpeg', 'r0_185_4274_2589_w1200_h678_fmax.jpg', 65000, NULL, NULL, NULL, 5, 1422490064, 5, 1422490064, '675 1200'),
(120, 1, '2432_FP_183C_1_B021_0801821_V1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/2432_FP_183C_1_B021_0801821_V1.jpg', 'image/jpeg', '2432_FP_183C_1_B021_0801821_V1.jpg', 252662, NULL, NULL, NULL, 5, 1422490072, 5, 1422490072, '1198 2880'),
(121, 1, '1405106378_unbroken-movie-zoom.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/1405106378_unbroken-movie-zoom.jpg', 'image/jpeg', '1405106378_unbroken-movie-zoom.jpg', 393437, NULL, NULL, NULL, 5, 1422490074, 5, 1422490074, '1600 3131'),
(122, 1, 'unbrokenbanner.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/unbrokenbanner.jpg', 'image/jpeg', 'unbrokenbanner.jpg', 218220, NULL, NULL, NULL, 5, 1422490085, 5, 1422490085, '968 1720'),
(123, 1, 'citizenfour-poster.jpeg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/citizenfour-poster.jpeg', 'image/jpeg', 'citizenfour-poster.jpeg', 79055, NULL, NULL, NULL, 5, 1422508540, 5, 1422508540, '940 640'),
(124, 1, '141020_r25652-1200.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/141020_r25652-1200.jpg', 'image/jpeg', '141020_r25652-1200.jpg', 63948, NULL, NULL, NULL, 5, 1422508716, 5, 1422508716, '669 1200'),
(125, 1, 'Citizenfour_article_story_large.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Citizenfour_article_story_large.jpeg', 'image/jpeg', 'Citizenfour_article_story_large.jpeg', 99552, NULL, NULL, NULL, 5, 1422508717, 5, 1422508717, '675 1012'),
(126, 1, '1412526024572.cached.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/1412526024572.cached.jpg', 'image/jpeg', '1412526024572.cached.jpg', 187115, NULL, NULL, NULL, 5, 1422509213, 5, 1422509213, '1333 2000'),
(129, 1, 'Txtd-Dom-Rated-Tsr-1sht-VICE.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Txtd-Dom-Rated-Tsr-1sht-VICE.jpg', 'image/jpeg', 'Txtd-Dom-Rated-Tsr-1sht-VICE.jpg', 1585341, NULL, NULL, NULL, 5, 1422509421, 5, 1422509421, '1080 729'),
(128, 1, 'inherent_vice-1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/inherent_vice-1.jpg', 'image/jpeg', 'inherent_vice-1.jpg', 420516, NULL, NULL, NULL, 5, 1422509215, 5, 1422509215, '1334 2000'),
(130, 1, 'o-INHERENT-VICE-facebook.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/o-INHERENT-VICE-facebook.jpg', 'image/jpeg', 'o-INHERENT-VICE-facebook.jpg', 166037, NULL, NULL, NULL, 5, 1422509442, 5, 1422509442, '1000 2000'),
(131, 1, 'Boyhood_poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Boyhood_poster.jpg', 'image/jpeg', 'Boyhood_poster.jpg', 64649, NULL, NULL, NULL, 2, 1422566333, 2, 1422566333, '400 400'),
(132, 1, 'foxcatcher_xlg.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/foxcatcher_xlg.jpg', 'image/jpeg', 'foxcatcher_xlg.jpg', 293636, NULL, NULL, NULL, 5, 1422758172, 5, 1422758172, '1500 1125'),
(133, 1, 'goodbye_to_language_1.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/goodbye_to_language_1.jpg', 'image/jpeg', 'goodbye_to_language_1.jpg', 489174, NULL, NULL, NULL, 5, 1422758878, 5, 1422758878, '1604 1181'),
(134, 1, 'under_the_skin_us_poster.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/under_the_skin_us_poster.jpg', 'image/jpeg', 'under_the_skin_us_poster.jpg', 426077, NULL, NULL, NULL, 5, 1422759176, 5, 1422759176, '2048 1382'),
(135, 1, 'MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg', 'image/jpeg', 'MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg', 36388, NULL, NULL, NULL, 5, 1422760179, 5, 1422760179, '720 489'),
(136, 1, 'MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg', 'image/jpeg', 'MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg', 19991, NULL, NULL, NULL, 5, 1422760725, 5, 1422760725, '317 214'),
(137, 1, 'interstellar3.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/interstellar3.jpg', 'image/jpeg', 'interstellar3.jpg', 646461, NULL, NULL, NULL, 5, 1422761805, 5, 1422761805, '859 550'),
(138, 1, '159386941_bbdd65.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/159386941_bbdd65.jpg', 'image/jpeg', '159386941_bbdd65.jpg', 316265, NULL, NULL, NULL, 5, 1422762769, 5, 1422762769, '700 491'),
(139, 1, '6a00d8341bf7f753ef01bb07b10d55970d.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/6a00d8341bf7f753ef01bb07b10d55970d.jpg', 'image/jpeg', '6a00d8341bf7f753ef01bb07b10d55970d.jpg', 70979, NULL, NULL, NULL, 5, 1422769297, 5, 1422769297, '1080 1920'),
(140, 1, '673927401147773986.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/673927401147773986.jpg', 'image/jpeg', '673927401147773986.jpg', 240022, NULL, NULL, NULL, 5, 1422769298, 5, 1422769298, '932 1400'),
(141, 1, 'Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg', 'image/jpeg', 'Adam-Pearson-interview-Under-the-Skin-Scarlett-Johansson.jpg', 145046, NULL, NULL, NULL, 5, 1422769302, 5, 1422769302, '930 2190'),
(142, 1, 'emily_blunt_in_into_the_woods_2014.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/emily_blunt_in_into_the_woods_2014.jpg', 'image/jpeg', 'emily_blunt_in_into_the_woods_2014.jpg', 433808, NULL, NULL, NULL, 5, 1422769302, 5, 1422769302, '1440 2560'),
(143, 1, 'gallery25.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/gallery25.jpg', 'image/jpeg', 'gallery25.jpg', 140403, NULL, NULL, NULL, 5, 1422769307, 5, 1422769307, '788 1400'),
(144, 1, 'foxcatcher-channing-tatum-steve-carell.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/foxcatcher-channing-tatum-steve-carell.jpg', 'image/jpeg', 'foxcatcher-channing-tatum-steve-carell.jpg', 276364, NULL, NULL, NULL, 5, 1422769316, 5, 1422769316, '853 1280'),
(145, 1, 'gone_girl_review_1.0.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/gone_girl_review_1.0.jpeg', 'image/jpeg', 'gone_girl_review_1.0.jpeg', 723713, NULL, NULL, NULL, 5, 1422769315, 5, 1422769315, '2061 2827'),
(146, 1, 'gone-girl.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/gone-girl.jpg', 'image/jpeg', 'gone-girl.jpg', 67727, NULL, NULL, NULL, 5, 1422769321, 5, 1422769321, '680 1600'),
(147, 1, 'GoodbyetoLanguage.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/GoodbyetoLanguage.jpg', 'image/jpeg', 'GoodbyetoLanguage.jpg', 154794, NULL, NULL, NULL, 5, 1422769325, 5, 1422769325, '730 1296'),
(148, 1, 'inherentvice-movie-review.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/inherentvice-movie-review.jpg', 'image/jpeg', 'inherentvice-movie-review.jpg', 263792, NULL, NULL, NULL, 5, 1422769332, 5, 1422769332, '1000 2000'),
(149, 1, 'gone-girl-df-01826cc_rgb.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/gone-girl-df-01826cc_rgb.jpg', 'image/jpeg', 'gone-girl-df-01826cc_rgb.jpg', 1473667, NULL, NULL, NULL, 5, 1422769336, 5, 1422769336, '1892 2838'),
(150, 1, 'interstellar_a.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/interstellar_a.jpg', 'image/jpeg', 'interstellar_a.jpg', 462800, NULL, NULL, NULL, 5, 1422769341, 5, 1422769341, '730 1296'),
(151, 1, 'Into-the-Woods-3.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Into-the-Woods-3.jpg', 'image/jpeg', 'Into-the-Woods-3.jpg', 362754, NULL, NULL, NULL, 5, 1422769345, 5, 1422769345, '1001 1500'),
(152, 1, 'maxresdefault.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/maxresdefault.jpg', 'image/jpeg', 'maxresdefault.jpg', 118618, NULL, NULL, NULL, 5, 1422769350, 5, 1422769350, '1080 1920'),
(153, 1, 'o-INTERSTELLAR-TRAILER-facebook.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/o-INTERSTELLAR-TRAILER-facebook.jpg', 'image/jpeg', 'o-INTERSTELLAR-TRAILER-facebook.jpg', 43935, NULL, NULL, NULL, 5, 1422769353, 5, 1422769353, '1000 2000'),
(154, 1, 'Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg', 'image/jpeg', 'Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg', 755831, NULL, NULL, NULL, 5, 1422769354, 5, 1422769354, '1800 2880'),
(155, 1, 'only-lovers-left-alive-2013-L-mZnGID.jpeg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/only-lovers-left-alive-2013-L-mZnGID.jpeg', 'image/jpeg', 'only-lovers-left-alive-2013-L-mZnGID.jpeg', 42740, NULL, NULL, NULL, 5, 1422769356, 5, 1422769356, '688 1280'),
(156, 1, 'onlylovers1.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/onlylovers1.jpg', 'image/jpeg', 'onlylovers1.jpg', 403114, NULL, NULL, NULL, 5, 1422769363, 5, 1422769363, '840 1280'),
(157, 1, 'SteveCarellFoxCatcher.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/SteveCarellFoxCatcher.jpg', 'image/jpeg', 'SteveCarellFoxCatcher.jpg', 346739, NULL, NULL, NULL, 5, 1422769364, 5, 1422769364, '800 1200'),
(158, 1, 'Under-the-Skin-feat-Scarlett-Johansson.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/Under-the-Skin-feat-Scarlett-Johansson.jpg', 'image/jpeg', 'Under-the-Skin-feat-Scarlett-Johansson.jpg', 59901, NULL, NULL, NULL, 5, 1422769366, 5, 1422769366, '830 1536'),
(159, 1, 'FoxcatcherFINAL2.jpg', 2, '/home/202322/domains/stage.screenprism.com/html/assets/img/article/FoxcatcherFINAL2.jpg', 'image/jpeg', 'FoxcatcherFINAL2.jpg', 4795084, NULL, NULL, NULL, 5, 1422769363, 5, 1422769363, '3048 5760'),
(160, 1, 'Ida_plakat.jpg', 1, '/home/202322/domains/stage.screenprism.com/html/assets/img/covers/Ida_plakat.jpg', 'image/jpeg', 'Ida_plakat.jpg', 877685, NULL, NULL, NULL, 5, 1422809518, 5, 1422809518, '2500 1707'),
(161, 1, 'Goodbye_to_Language_-_Girl_at_Water_Spout.jpg', 4, '/home/202322/domains/stage.screenprism.com/html/assets/img/uploads/Goodbye_to_Language_-_Girl_at_Water_Spout.jpg', 'image/jpeg', 'Goodbye_to_Language_-_Girl_at_Water_Spout.jpg', 100464, NULL, NULL, NULL, 2, 1423168592, 2, 1423168592, '449 800');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_fields`
--

INSERT INTO `exp_freeform_fields` (`field_id`, `site_id`, `field_name`, `field_label`, `field_type`, `settings`, `author_id`, `entry_date`, `edit_date`, `required`, `submissions_page`, `moderation_page`, `composer_use`, `field_description`) VALUES
(1, 1, 'name', 'Name', 'text', '{"field_length":"150","field_content_type":"any","disallow_html_rendering":"y"}', 1, 1422106312, 1422596946, 'n', 'y', 'y', 'y', 'This field contains the user''s name.'),
(2, 1, 'subject', 'Subject', 'text', '{"field_length":"150","field_content_type":"any","disallow_html_rendering":"y"}', 1, 1422106312, 1422596972, 'n', 'y', 'y', 'y', 'This field contains the subject of the user''s message.'),
(3, 1, 'email', 'Email', 'text', '{"field_length":150,"field_content_type":"email"}', 1, 1422106312, 0, 'n', 'y', 'y', 'y', 'A basic email field for collecting stuff like an email address.'),
(4, 1, 'message', 'Message', 'textarea', '{"field_ta_rows":"6","disallow_html_rendering":"y"}', 1, 1422106312, 1422597437, 'n', 'y', 'y', 'y', 'This field contains the user''s message.'),
(5, 1, 'user_question', 'Question', 'textarea', '{"field_ta_rows":"4","disallow_html_rendering":"y"}', 1, 1422597005, 1422597104, 'n', 'y', 'y', 'y', 'Field contains a question submitted by a user.'),
(6, 1, 'related_media', 'Related Media', 'text', '{"field_length":"150","field_content_type":"any","disallow_html_rendering":"y"}', 1, 1422597069, 0, 'n', 'y', 'y', 'y', 'This field contains the film or tv show related to a user''s question');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_forms`
--

INSERT INTO `exp_freeform_forms` (`form_id`, `site_id`, `form_name`, `form_label`, `default_status`, `notify_user`, `notify_admin`, `user_email_field`, `user_notification_id`, `admin_notification_id`, `admin_notification_email`, `form_description`, `field_ids`, `field_order`, `template_id`, `composer_id`, `author_id`, `entry_date`, `edit_date`, `settings`) VALUES
(1, 1, 'contact', 'Contact', 'pending', 'n', 'y', '', 0, 0, 'kentonquatman@gmail.com', 'Simple contact form', '1|2|3|4', '1|2|3|4', 0, 0, 1, 1422106312, 1422597210, NULL),
(2, 1, 'ask', 'Ask', 'pending', 'n', 'n', '', 0, 0, 'kentonquatman@gmail.com', 'User submitted questions', '1|3|5|6', '1|3|6|5', 0, 0, 1, 1422597134, 1422597191, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exp_freeform_form_entries_2`
--

CREATE TABLE `exp_freeform_form_entries_2` (
`entry_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_3` text,
  `form_field_5` text,
  `form_field_6` text
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_form_entries_2`
--

INSERT INTO `exp_freeform_form_entries_2` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_1`, `form_field_3`, `form_field_5`, `form_field_6`) VALUES
(3, 1, 1, 'y', '173.3.172.44', 1422600899, 0, 'pending', 'Testing', 'me@kentonquatman.com', 'Test Question', 'American Sniper');

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_freeform_params`
--

INSERT INTO `exp_freeform_params` (`params_id`, `entry_date`, `data`) VALUES
(88, 1423174572, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/a-most-violent-year","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(89, 1423174586, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/into-the-woods","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(90, 1423174589, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/still-alice","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(91, 1423174592, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/unbroken","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(92, 1423174598, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/selma","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(93, 1423175283, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/ida","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(94, 1423176595, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/birdman","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(95, 1423177504, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/into-the-woods","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(96, 1423177513, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":true,"require_ip":true,"return":"question-received","inline_error_return":"media\\/wild","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(97, 1423177519, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/into-the-woods","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(98, 1423177524, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/two-days-one-night-deux-jours-une-nuit","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(99, 1423180189, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":true,"require_ip":true,"return":"question-received","inline_error_return":"media\\/the-imitation-game","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}'),
(100, 1423181672, '{"form_id":"2","edit":false,"entry_id":0,"secure_action":false,"secure_return":false,"require_captcha":false,"require_ip":true,"return":"question-received","inline_error_return":"media\\/foxcatcher","error_page":"","ajax":true,"restrict_edit_to_author":true,"inline_errors":true,"prevent_duplicate_on":"","prevent_duplicate_per_site":false,"secure_duplicate_redirect":false,"duplicate_redirect":"","error_on_duplicate":false,"required":"name|email|related_media|user_question","matching_fields":"","last_page":true,"multipage":false,"redirect_on_timeout":true,"redirect_on_timeout_to":"","page_marker":"page","multipage_page":"","paging_url":"","multipage_page_names":"","admin_notify":"kentonquatman@gmail.com","admin_cc_notify":"","admin_bcc_notify":"","notify_user":false,"notify_admin":false,"notify_on_edit":false,"user_email_field":"","recipients":false,"recipients_limit":"3","recipient_user_input":false,"recipient_user_limit":"3","recipient_template":"","recipient_user_template":"","admin_notification_template":"0","user_notification_template":"0","status":"pending","allow_status_edit":false,"recipients_list":[]}');

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_global_variables`
--

INSERT INTO `exp_global_variables` (`variable_id`, `site_id`, `variable_name`, `variable_data`) VALUES
(1, 1, 'low_home_featured', '21|25|22|23|24'),
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
(12, 1, 'low_home_seodescription', 'SEO description for the home page.'),
(13, 1, 'low_message_noresults', '<p>There were no results for your search. Please try again using a different search term.</p>\n\n<p>If you need help, please reach out through the contact form on our&nbsp;<a href="{page_2}">About Page</a>.</p>'),
(14, 1, 'low_message_contact', '<p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n\n<p>If you want to submit a question about a particular film or tv show, please visit our&nbsp;<a href="http://stage.screenprism.com">Ask Page</a>.</p>'),
(15, 1, 'low_message_sent', '<p>Thank you for reaching out to us. Please allow up to 48 hours for us to respond to your e-mail.</p>'),
(16, 1, 'low_message_asked', '<p>Thank you for sending us your question. We will do our best to answer it for you.</p>');

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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_layout_publish`
--

INSERT INTO `exp_layout_publish` (`layout_id`, `site_id`, `member_group`, `channel_id`, `field_layout`) VALUES
(6, 1, 1, 3, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:11;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:6;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:7;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:8;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:9;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:10;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(7, 1, 5, 3, 'a:4:{s:7:"publish";a:11:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:11;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:6;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:7;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:8;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:9;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:0;s:5:"width";s:4:"100%";}i:10;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(35, 1, 1, 1, 'a:4:{s:7:"publish";a:21:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:15;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:16;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:17;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:18;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:20;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:21;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:19;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:22;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:23;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:14;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(36, 1, 5, 1, 'a:4:{s:7:"publish";a:21:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:15;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:16;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:17;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:18;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:20;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:21;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:19;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:22;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:23;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:14;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(37, 1, 1, 2, 'a:4:{s:7:"publish";a:21:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:15;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:16;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:17;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:18;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:20;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:21;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:19;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:22;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:23;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:14;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(23, 1, 1, 4, 'a:4:{s:7:"publish";a:5:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:13;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:7:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(24, 1, 5, 4, 'a:4:{s:7:"publish";a:5:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:13;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:7:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}'),
(38, 1, 5, 2, 'a:4:{s:7:"publish";a:21:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:15;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:16;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:17;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:18;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:20;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:21;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:3:"50%";}i:19;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:22;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:23;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:14;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:8:"seo_lite";a:4:{s:10:"_tab_label";s:8:"SEO Lite";s:24:"seo_lite__seo_lite_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:27:"seo_lite__seo_lite_keywords";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:30:"seo_lite__seo_lite_description";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:6:{s:10:"_tab_label";s:7:"options";s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:0;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}');

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
(1, 1, 'Featured Articles', 'Select five entries to feature on the homepage.', 'low_select_entries', 'YToxMTp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czoxMDoiY2F0ZWdvcmllcyI7YToxOntpOjA7czowOiIiO31zOjg6InN0YXR1c2VzIjthOjE6e2k6MDtzOjQ6Im9wZW4iO31zOjc6Im9yZGVyYnkiO3M6MTA6ImVudHJ5X2RhdGUiO3M6NDoic29ydCI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjUiO3M6ODoibXVsdGlwbGUiO3M6MToieSI7czo5OiJzZXBhcmF0b3IiO3M6NDoicGlwZSI7czoxNToibXVsdGlfaW50ZXJmYWNlIjtzOjk6ImRyYWctbGlzdCI7czoxMToic2hvd19mdXR1cmUiO3M6MDoiIjtzOjEyOiJzaG93X2V4cGlyZWQiO3M6MDoiIjt9', 3, 'n', 'n', 'n', 1422348811),
(2, 2, 'Tagline', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo1OiJsYXJnZSI7czo3OiJwYXR0ZXJuIjtzOjA6IiI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjt9', 1, 'n', 'n', 'n', 1422565913),
(3, 3, 'Twitter URL', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422246358),
(4, 3, 'Facebook URL', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 2, 'n', 'n', 'n', 1422246358),
(5, 4, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422242936),
(6, 4, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422242936),
(7, 5, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422243029),
(8, 5, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422243029),
(9, 6, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422243115),
(10, 6, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422243115),
(11, 1, 'SEO Title', '', 'low_text_input', 'YTo0OntzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NzoicGF0dGVybiI7czowOiIiO3M6MTQ6InRleHRfZGlyZWN0aW9uIjtzOjM6Imx0ciI7fQ', 1, 'n', 'n', 'n', 1422348811),
(12, 1, 'SEO Description', '', 'low_textarea', 'YTozOntzOjQ6InJvd3MiO3M6MToiMyI7czoxNDoidGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJjb2RlX2Zvcm1hdCI7czowOiIiO30', 2, 'n', 'n', 'n', 1422348811),
(13, 7, 'No Search Results', 'Text to display when there are no search results.', 'wygwam', 'YToyOntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO30', 1, 'n', 'n', 'n', 1422599385),
(14, 7, '"Contact Us" Text', 'Text to display above the contact form.', 'wygwam', 'YToyOntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO30', 2, 'n', 'n', 'n', 1422599385),
(15, 7, '"Message Sent" Text', 'Text to display after a user has sent an email through the contact form.', 'wygwam', 'YToyOntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO30', 3, 'n', 'n', 'n', 1422599385),
(16, 7, '"Question Received" Text', 'Text to display after a user has submitted a question.', 'wygwam', 'YToyOntzOjY6ImNvbmZpZyI7czoxOiIzIjtzOjU6ImRlZmVyIjtzOjE6Im4iO30', 4, 'n', 'n', 'n', 1422599385);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_low_variable_groups`
--

INSERT INTO `exp_low_variable_groups` (`group_id`, `site_id`, `group_label`, `group_notes`, `group_order`) VALUES
(1, 1, 'Home Page', '', 1),
(2, 1, 'Site Variables', '', 7),
(3, 1, 'Social Media', '', 6),
(4, 1, 'Insights', '', 2),
(5, 1, 'Film', '', 3),
(6, 1, 'Television', '', 4),
(7, 1, 'Messaging', '', 5);

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
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_matrix_data`
--

INSERT INTO `exp_matrix_data` (`row_id`, `site_id`, `entry_id`, `field_id`, `var_id`, `is_draft`, `row_order`, `col_id_1`, `col_id_2`, `col_id_3`, `col_id_4`) VALUES
(1, 1, 6, 3, NULL, 0, 1, 'The irreducible element of Michael Keaton', 'thedissolve.com', 'http://thedissolve.com/features/exposition/792-the-irreducible-element-of-michael-keaton/', 'Keaton conveys that kind of haunted, something’s-kind-of-off-about-him quality better than almost anyone, even if there hasn’t been enough room for him to do so in Hollywood of late.'),
(128, 1, 6, 3, NULL, 0, 2, '"Birdman" never achieves flight', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/birdman-never-achieves-flight', '“Birdman” trades on facile, casual dichotomies of theatre versus cinema and art versus commerce.'),
(2, 1, 15, 3, NULL, 0, 1, 'Sheila O''Malley''s Review for Ebert Digital', 'rogerebert.com', 'http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.'),
(3, 1, 15, 3, NULL, 0, 2, 'Tasha Robinson''s Review for The Dissolve', 'thedissolve.com', 'http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci.'),
(4, 1, 20, 3, NULL, 0, 1, 'Richard Linklater’s 12-year family epic', 'Andrew O’Hehir, Salon.com', 'http://www.salon.com/2014/01/21/sundance_richard_linklaters_dazzling_12_year_family_epic/', 'What we have here, on first viewing, is something awfully close to a masterpiece of American moviemaking, as well as a film that uses time to tell its story in an unprecedented fashion.'),
(5, 1, 20, 3, NULL, 0, 2, 'Sundance 2014 – first look review', 'Xan Brooks, The Guardian', 'http://www.theguardian.com/film/2014/jan/21/sundance-boyhood-review-richard-linklater', 'What an astonishing achievement; what a beautiful movie. Linklater shot "Boyhood" in sequence, at regular intervals, over a 12-year period, painstakingly toiling away in solitude to produce a kind of cinematic Book of Kells.'),
(6, 1, 20, 3, NULL, 0, 3, 'Filmmaker: Richard Linklater on "Boyhood"', 'filmmakermagazine.com', 'http://filmmakermagazine.com/86652-kodak-moments/', '“Early on I knew I didn’t want to hit all those notes I’d seen in so many movies...I was looking instead at all the in-between moments. I thought the whole thing would be like a memory. Like how you look back and remember things — it’s the little things, not the big moments, which catch your attention."'),
(7, 1, 20, 3, NULL, 0, 4, 'The Playlist: Richard Linklater on "Boyhood"', 'indiewire.com', 'http://blogs.indiewire.com/theplaylist/richard-linklater-discusses-his-12-year-project-boyhood-chronology-memory-and-a-movie-that-occurs-offscreen-20140218', '"Every year I had a year to think up the next part, based on everything that had gone before...I was stuck with this kind of architecture but yet within that the décor, the details were always being reworked, being found."'),
(8, 1, 30, 3, NULL, 0, 1, 'Wes Anderson’s Artistic Manifesto', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/online/blogs/movies/2014/03/wes-andersons-artistic-manifesto.html', 'Perhaps more than ever, Anderson takes a joyful yet aching delight in recreating the styles of bygone days.'),
(9, 1, 30, 3, NULL, 0, 2, '"The Grand Budapest Hotel": Review', 'Glenn Kenny, rogerebert.com', 'http://www.rogerebert.com/reviews/the-grand-budapest-hotel-2014', 'As much as "The Grand Budapest Hotel" takes on the aspect of a cinematic confection, it does so to grapple with the very raw and real stuff of humanity from an unusual but highly illuminating angle.'),
(10, 1, 30, 3, NULL, 0, 3, 'Jewish-Themed Movies, Without Jews', 'J. Hoberman, tabletmag.com', 'http://tabletmag.com/jewish-arts-and-culture/175356/immigrant-grand-budapest-hoberman', 'Wes Anderson’s ‘The Grand Budapest Hotel’ and James Gray’s ‘The Immigrant’ are period fantasies that shy away from real Jews. They may lack the essential pintele yid, but that doesn’t make them any less Jew-ish.\n'),
(11, 1, 30, 3, NULL, 0, 4, 'Interview with Wes Anderson', 'vulture.com', 'http://www.vulture.com/2014/03/wes-anderson-on-grand-budapest-and-his-socks.html', '"It''s a little more of an impressionist version of the war…and hopefully it conveys this sense of this cloud, and the doom of Europe that was coming."'),
(12, 1, 30, 3, NULL, 0, 5, 'Interview with Robert Yeoman', 'theasc.com', 'http://www.theasc.com/ac_magazine/March2014/TheGrandBudapestHotel/page1.php', '"Wes loves the Ernst Lubitsch comedies of the 1930s…We looked at those more to familiarize ourselves with the 1.37:1 aspect ratio, which Wes wanted to use for the 1930s sequences."'),
(13, 1, 36, 3, NULL, 0, 1, 'Inventing a new slander to insult Alan Turing', 'Alex von Tunzelmann, The Guardian', 'http://www.theguardian.com/film/2014/nov/20/the-imitation-game-invents-new-slander-to-insult-alan-turing-reel-history', 'The wartime codebreaker and computing genius was pursued for homosexuality, but nobody – until film-makers came along – accused him of being a traitor.'),
(14, 1, 36, 3, NULL, 0, 2, 'Superb acting, scrambled source code', 'Joe Morgenstern, The Wall Street Journal', 'http://www.wsj.com/articles/imitation-game-review-superb-acting-scrambled-source-code-1417036116', 'A script that muddles its source material to the point of betraying it...the writing keeps eating away at the narrative’s clarity - and integrity - until it’s impossible to separate the glib fictions from the remarkable facts.\n'),
(15, 1, 36, 3, NULL, 0, 3, 'Keeping secrets', 'Anthony Lane, The New Yorker', 'http://www.newyorker.com/magazine/2014/12/01/keeping-secrets-2', 'Turing will survive this film with his enigma intact, but the movie itself is the opposite of enigmatic, and Cumberbatch merits more.'),
(16, 1, 36, 3, NULL, 0, 4, 'The Oscar-Poised Rise of "The Imitation Game" Star', 'John Powers, Vogue', 'http://www.vogue.com/3621965/benedict-cumberbatch-the-imitation-game/', 'His Oscar-tipped performance in "The Imitation Game" is just the latest of Benedict Cumberbatch’s brilliant, versatile roles to win him an ecstatic following.'),
(17, 1, 36, 3, NULL, 0, 5, 'A poor imitation of Alan Turing', 'Christian Caryl, The New York Review of Books', 'http://www.nybooks.com/blogs/nyrblog/2014/dec/19/poor-imitation-alan-turing/', 'Either you embrace the richness of Turing as a character and trust the audience to follow you there, or you simply capitulate, by reducing him to a caricature of the tortured genius.'),
(18, 1, 43, 3, NULL, 0, 1, 'Making history', 'Manohla Dargis, The New York Times', 'http://www.nytimes.com/2014/12/07/movies/ava-duvernay-makes-a-mark-with-selma.html', 'With ‘Selma,’ Ava DuVernay seeks a different equality'),
(19, 1, 43, 3, NULL, 0, 2, '"Selma" vs. "Selma"', 'Sam Tanenhaus, The New Yorker', 'http://www.newyorker.com/culture/cultural-comment/selma-vs-selma', 'Ava DuVernay''s rewrites of Paul Webb''s screenplay completely redefines L.B.J.''s role in "Selma."'),
(20, 1, 43, 3, NULL, 0, 3, 'Deep Focus: "Selma"', 'Michael Sragow, Film Comment', 'http://www.filmcomment.com/entry/deep-focus-selma-ava-duvernay', '"Selma" is nothing if not ambitious, but too much of the movie is deliberate, broad and uninspired.'),
(21, 1, 43, 3, NULL, 0, 4, 'The crucial lessons of democracy in "Selma"', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/crucial-lessons-democracy-selma', 'At a time when protest is once again a spark for reform, it’s worth seeing it in the light of “Selma,” which offers crucial lessons in democracy.'),
(22, 1, 43, 3, NULL, 0, 5, 'Why "Selma" is more than fair to L.B.J.', 'Amy Davidson, The New Yorker', 'http://www.newyorker.com/news/amy-davidson/selma-fair-l-b-j', 'The portrayal is multifaceted and respectful, and fully cognizant of his essential commitment to civil rights.'),
(23, 1, 51, 3, NULL, 0, 1, 'This sepia-toned Oscar bait could have been so much more powerful', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/11/06/the_theory_of_everything_this_sepia_toned_oscar_bait_could_have_been_so_much_more_powerful/', 'Eddie Redmayne and Felicity Jones are wonderful, but the Hawkings'' highly unusual love story deserves better'),
(24, 1, 51, 3, NULL, 0, 2, 'Marriage is hard, physics is easy', 'A.O. Scott, The New York Times', 'http://www.nytimes.com/2014/11/07/movies/in-the-theory-of-everything-stephen-hawkings-home-life.html', 'Like so many cinematic lives of the famous, it loses track of the source of its subject’s fame. '),
(25, 1, 51, 3, NULL, 0, 3, 'The Dissolve: "The Theory of Everything"', 'Scott Tobias, The Dissolve', 'http://thedissolve.com/reviews/1187-the-theory-of-everything/', '"The Theory Of Everything" stumbles into virtually every pitfall that afflicts biopics about geniuses.'),
(26, 1, 51, 3, NULL, 0, 4, 'How Eddie Redmayne became Stephen Hawking', 'variety.com', 'http://variety.com/2014/film/news/eddie-redmayne-theory-of-everything-stephen-hawking-1201340498/', 'Redmayne pulls off a challenging physical transformation in “The Theory of Everything.”'),
(27, 1, 51, 3, NULL, 0, 5, 'The leaky science of Hollywood', 'Dennis Overbye, The New York Times', 'http://www.nytimes.com/2014/10/28/science/stephen-hawkings-movie-life-story-is-not-very-scientific.html\n', 'The movie life story of Stephen Hawking is not very scientific'),
(28, 1, 51, 3, NULL, 0, 6, '"The Theory of Everything" does Jane Hawking a disservice', 'Michelle Dean, The Guardian', 'http://www.theguardian.com/film/filmblog/2014/nov/14/theory-of-everything-movie-jane-steven-hawking-memoir', 'The film, based on her memoir of her marriage to Stephen Hawking, diverges so much from its source it seems dishonest'),
(29, 1, 59, 3, NULL, 0, 1, 'Julianne Moore’s pulpy, Oscar-worthy Alzheimer’s role', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/12/03/still_alice_julianne_moores_pulpy_oscar_worthy_alzheimers_role/', 'The star is luminous as a brilliant academic fading into dementia - in a manufactured Lifetime-style melodrama'),
(30, 1, 59, 3, NULL, 0, 2, 'Losing her bearings in familiar places\n', 'A.O. Scott, The New York Times', 'http://www.nytimes.com/2014/12/05/movies/in-still-alice-a-professor-slides-into-alzheimers.html', 'The story is sad and sincerely told, but it is too removed from life to carry the full measure of pain that Alice deserves.'),
(31, 1, 59, 3, NULL, 0, 3, 'The New Yorker: "Still Alice"', 'Anthony Lane, The New Yorker', 'http://www.newyorker.com/magazine/2015/01/19/losing-way', 'Time and again, as it comes to the next stage of deterioration or distress, it flinches.'),
(32, 1, 59, 3, NULL, 0, 4, 'How Julianne Moore pulled off her performance in ''Still Alice''', 'indiewire.com', 'http://www.indiewire.com/article/how-julianne-moore-pulled-off-her-devastating-performance-in-still-alice-20141212', 'Moore spoke with Indiewire about the work that went into her portrayal of the disease.'),
(33, 1, 63, 3, NULL, 0, 1, 'Adapting ''Wild'' was a fast-paced uphill hike', 'Nick Hornby, The Los Angeles Times', 'http://www.latimes.com/entertainment/envelope/la-et-mn-wild-writer-nick-hornby-20141209-story.html', '"Wild" has gone on to become a contemporary feminist classic and I wrote a couple of novels that became associated with a certain kind of masculinity.'),
(34, 1, 63, 3, NULL, 0, 2, 'Reese Witherspoon sends mixed messages in a gorgeous liberation fable', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/12/03/wild_reese_witherspoon_sends_mixed_messages_in_a_gorgeous_liberation_fable/', 'Cheryl Strayed''s hit memoir becomes a warm, wrenching, often gorgeous travelogue. But has the point been buried?'),
(35, 1, 63, 3, NULL, 0, 3, 'Reese Witherspoon Hoboes Through the Winning "Wild"', 'Stephanie Zacharek, Village Voice', 'http://www.villagevoice.com/2014-12-03/film/where-the-wild-reese-is/', 'Witherspoon returns to the breezy, blunt, self-determined characters of her early career.'),
(36, 1, 63, 3, NULL, 0, 4, '"Wild" struggles to bring an emotionally distant character to life', 'Ann Hornaday, The Washington Post', 'http://www.washingtonpost.com/goingoutguide/movies/wild-movie-review-reese-witherspoon-struggles-to-bring-an-emotionally-distant-character-to-life/2014/12/04/d2a85180-7a57-11e4-84d4-7c896b90abdc_story.html', '"Wild" is an accomplished movie, and often a beautiful and moving one, but the woman at its center remains warily at arm’s length.'),
(37, 1, 70, 3, NULL, 0, 1, '"Whiplash" gets jazz all wrong', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/whiplash-getting-jazz-right-movies', 'The movie’s very idea of jazz is a grotesque and ludicrous caricature.'),
(38, 1, 70, 3, NULL, 0, 2, 'The invented worlds of "Birdman" and "Whiplash"', 'Glenn Kenny, somecamerunning', 'http://somecamerunning.typepad.com/some_came_running/2014/10/the-invented-worlds-of-birdman-and-whiplash.html', 'It''s not that the movie gets jazz wrong—although it does—it’s that it gets LIFE ON THE PLANET EARTH wrong.'),
(39, 1, 70, 3, NULL, 0, 3, 'Press interview with Miles Teller, J.K. Simmons, Melissa Benoist and Damien Chazelle', 'collider.com', 'http://collider.com/miles-teller-jk-simmons-whiplash-interview/', '"I completely agree with feeling the need for or the benefits of being pushed…but that kind of manipulation and abuse has no place in life."'),
(40, 1, 70, 3, NULL, 0, 4, 'Blood on the drum kit', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/01/24/whiplash_blood_on_the_drum_kit/', 'It’s really about teaching and obsession...and where the nebulous boundary lies between mentorship and abuse.'),
(41, 1, 78, 3, NULL, 0, 1, 'The Dardenne brothers present "Two Days, One Night"', 'University of Southern California', 'http://cinema.usc.edu/news/article.cfm?id=14676\n', 'Full Q&A at the University of Southern California''s School of Cinematic Arts '),
(42, 1, 78, 3, NULL, 0, 2, 'Marion Cotillard magnificent in Dardenne brothers'' latest', 'Peter Bradshaw, The Guardian', 'http://www.theguardian.com/film/2014/may/20/cannes-review-two-days-one-night-marion-cotillard-dardennes', 'Cannes favourite Marion Cotillard teams up with Jean-Pierre and Luc Dardenne for a brilliantly taut and telling redundancy drama'),
(43, 1, 78, 3, NULL, 0, 3, 'The Passion of Marion Cotillard', 'J. Hoberman, The New York Review of Books', 'http://www.nybooks.com/blogs/nyrblog/2015/jan/18/two-days-one-night-cotillard/', '"Two Days, One Night" offers much to think about but, like other Dardenne movies, it is an appeal to the emotions.'),
(44, 1, 78, 3, NULL, 0, 4, 'Marion Cotillard on the political (and personal) in "Two Days, One Night"\n', 'The Atlantic', 'http://www.theatlantic.com/entertainment/archive/2014/12/marion-cotillard-interview-two-days-one-night/384021/', '"Our society, which is a sick society, created this story."'),
(45, 1, 91, 3, NULL, 0, 1, 'Mike Leigh on JMW Turner: "He was an enigmatic character – conflicted."', 'The Guardian', 'http://www.theguardian.com/film/2014/oct/05/mike-leigh-mr-turner-enigmatic-character\n', 'The British film director always wanted to make a film about the painter. But does the result contain more than a hint of a self-portrait?'),
(46, 1, 91, 3, NULL, 0, 2, 'Timothy Spall and Mike Leigh command the screen', 'Peter Bradshaw, The Guardian', 'http://www.theguardian.com/film/2014/oct/30/mr-turner-review-mike-leigh-timothy-spall', 'This confident portrait of the great artists hits its stride straight away, with pin-sharp direction and performances.'),
(47, 1, 91, 3, NULL, 0, 3, 'The Baftas vs Mike Leigh: why is our greatest auteur continually snubbed?', 'The Guardian', 'http://www.theguardian.com/film/2015/jan/16/the-baftas-vs-mike-leigh-why-is-mr-turner-director-continually-snubbed', 'The director has made little secret of his contempt for the awards body. Does that explain why his film has received so few nominations, or do voters simply prefer unchallenging, middlebrow entertainment?'),
(48, 1, 91, 3, NULL, 0, 4, 'Empire of light: Three highlights from Cannes move in poetic and painterly directions', 'Kent Jones, Film Comment', 'http://www.filmcomment.com/article/cannes-2014-kent-jones', 'Leigh and his cast achieve something rare—a work that dramatizes both everyday human cruelty and the unspoken longing to rise above it.'),
(49, 1, 91, 3, NULL, 0, 5, 'Plotlines? Brush strokes are enough', 'Roberta Smith, The New York Times', 'http://www.nytimes.com/2015/01/02/arts/an-art-critics-view-of-mr-turner-and-other-art-films.html', 'An art critic’s view of ‘Mr. Turner’ and other art films'),
(50, 1, 91, 3, NULL, 0, 6, 'As if the artist put his brush to each take', 'The New York Times', 'http://www.nytimes.com/2014/12/07/movies/mike-leighs-mr-turner-aims-for-visual-accuracy.html', 'Mike Leigh’s ‘Mr. Turner’ aims for visual accuracy'),
(51, 1, 91, 3, NULL, 0, 7, 'Digital Tableaux: Cinematographer Dick Pope on "Mr. Turner"', 'Filmmaker Magazine', 'http://filmmakermagazine.com/87951-digital-tableaux-cinematographer-dick-pope-on-mr-turner/', '“I was worried about shooting [''Mr. Turner''] digitally. But once we shot tests on these Cooke Speed Panchro lenses, those fears disappeared."'),
(52, 1, 91, 3, NULL, 0, 8, 'Cinematographer Dick Pope Throws Light on "Mr. Turner"', 'thalo.com', 'http://www.thalo.com/articles/view/995/cinematographer_dick_pope_throws_light_on_mr', 'When we first talked about the film, we talked about creating a painting or a canvas that Turner would be walking through...'),
(53, 1, 91, 3, NULL, 0, 9, 'Timothy Spall talks "Mr. Turner"', 'shortlist.com', 'http://www.shortlist.com/entertainment/films/timothy-spall-talks-mr-turner', 'Timothy Spall talks to Andrew Lowry about acting privilege and painting practice'),
(54, 1, 91, 3, NULL, 0, 10, 'Timothy Spall: ''Turner had a god-given genius''', 'The Telegraph', 'http://www.telegraph.co.uk/culture/film/starsandstories/11170201/Timothy-Spall-Turner-had-a-god-given-genius.html', '"You feel like he could say a million things, but he often expresses them in just a grunt. It doesn’t mean he’s not feeling them – he’s feeling them even more."'),
(55, 1, 96, 3, NULL, 0, 1, 'Film of the week: "Nightcrawler"', 'Jonathan Romney, Film Comment', 'http://www.filmcomment.com/entry/film-of-the-week-nightcrawler', 'The film’s trump card is Jake Gyllenhaal who seems to have set his heart on being the weirdest on-screen presence in North American cinema.'),
(56, 1, 96, 3, NULL, 0, 2, 'The first responder is a cameraman', 'A.O. Scott, The New York Times', 'http://www.nytimes.com/2014/10/31/movies/nightcrawler-stars-jake-gyllenhaal-as-an-obsessive.html', '"Nightcrawler" is a slick and shallow movie desperate, like Lou himself, to be something more.'),
(57, 1, 96, 3, NULL, 0, 3, 'The Dissolve: "Nightcrawler"', 'Scott Tobias, The Dissolve', 'http://thedissolve.com/reviews/1181-nightcrawler/', 'There’s a scolding tone to "Nightcrawler" that runs counter to its pulp energy, but much as Gilroy tries to be his own killjoy, Gyllenhaal’s wickedness prevails.\n'),
(58, 1, 96, 3, NULL, 0, 4, '‘I’m a bit strange, you know?’', 'The Guardian', 'http://www.theguardian.com/film/2014/oct/30/jake-gyllenhaal-nightcrawler-interview', 'For his most radical reinvention to date, Gyllenhaal lost 30 pounds and all apparent morals to play a freelance cameraman who rubbernecks at road accidents.'),
(59, 1, 96, 3, NULL, 0, 5, '''Nightcrawler'' shows how the news worm has turned', 'The Los Angeles Times', 'http://www.latimes.com/entertainment/movies/la-et-mn-nightcrawler-20141026-story.html#page=1', 'Veterans in the industry will say that, until the late 1970s, TV journalism was largely considered a public service rather than a for-profit venture.'),
(60, 1, 99, 3, NULL, 0, 1, 'Deep Focus: "Unbroken"', 'Michael Sragow, Film Comment', 'http://www.filmcomment.com/entry/unbroken-angelina-jolie-review', 'Undoubtedly, "Unbroken" stems from Jolie’s genuine devotion to Zamperini’s story. But any filmmaker who celebrates “a triumph of the human spirit” risks falling into hagiography.'),
(61, 1, 99, 3, NULL, 0, 2, 'Angelina Jolie’s long-distance runaround', 'Peter Bradshaw, The Guardian', 'http://www.theguardian.com/film/2014/dec/18/unbroken-review-angelina-jolie-louie-zamperini', 'Athlete and war hero Louie Zamperini’s amazing story of courage and survival has been turned into an unambitious and unengaging marathon in Angelina Jolie’s biopic'),
(62, 1, 99, 3, NULL, 0, 3, 'Roger Deakins on WWII, the ocean''s ''endless prison'' and "Unbroken"', 'hitfix.com', 'http://www.hitfix.com/in-contention/roger-deakins-on-wwii-the-oceans-endless-prison-and-inspirations-for-unbroken', 'I like photographing the human face. It''s as simple as that. I find it more interesting. I don''t like a lot of technology, and action films usually dictate multiple cameras and shooting endless amounts of shots to get it done.'),
(63, 1, 99, 3, NULL, 0, 4, 'ALEXA XT and master primes on "Unbroken"', 'ARRI press release', 'http://www.arri.com/news/news/alexa-xt-and-master-primes-on-unbroken/', 'For cinematographer Roger Deakins, "Unbroken" provided an opportunity to try out the latest ALEXA XT cameras with ARRI/ZEISS master prime lenses'),
(64, 1, 102, 3, NULL, 0, 1, 'Laura Poitras on ''Citizenfour,'' The Most Dangerous Work She''s Ever Done', 'IndieWire', 'http://www.indiewire.com/awardsspotlight/laura-poitras-on-citizenfour-the-most-dangerous-work-shes-ever-done-20150126', 'Laura Poitras reveals the driving forces of "Citizenfour," her unprecedented look into the events surrounding Edward Snowden.'),
(65, 1, 102, 3, NULL, 0, 2, 'Verizon forced to hand over telephone data', 'Edward Snowden', 'http://www.theguardian.com/world/interactive/2013/jun/06/verizon-telephone-data-court-order', 'The first publication of Edward Snowden''s leaks revealed this top secret Foreign Intelligence Surveillance Court order.'),
(66, 1, 102, 3, NULL, 0, 3, 'NSA collecting phone records of millions of Verizon customers daily', 'Glenn Greenwald, The Guardian', 'http://www.theguardian.com/world/2013/jun/06/nsa-phone-records-verizon-court-order', 'The first publication of Edward Snowden''s revelations about the NSA.'),
(67, 1, 102, 3, NULL, 0, 4, 'From inside the Snowden saga', 'Vanity Fair', 'http://www.vanityfair.com/vf-hollywood/2014/10/laura-poitras-citizen-four', 'How Laura Poitras covertly shot her new film, "Citizenfour"'),
(68, 1, 102, 3, NULL, 0, 5, 'Secrets and lies', 'Nicolas Rapold, Film Comment', 'http://www.filmcomment.com/article/citizenfour-laura-poitras-edward-snowden', 'Laura Poitras’ riveting encounter with NSA whistleblower Edward Snowden confirms our worst fears.'),
(69, 1, 102, 3, NULL, 0, 6, 'Interview: Laura Poitras', 'Film Comment', 'http://www.filmcomment.com/entry/interview-laura-poitras', 'Laura Poitras’ film premiered at the New York Film Festival to extraordinary applause, reflecting not only the grip its subject matter exerts on the public but also the efficacy of the filmmaking.'),
(70, 1, 102, 3, NULL, 0, 7, 'Intent on defying an all-seeing eye', 'A.O. Scott, The New York Times', 'http://www.nytimes.com/2014/10/24/movies/citizenfour-a-documentary-about-edward-j-snowden.html', 'Thinking about the issues Ms. Poitras raises can induce a kind of epistemological vertigo. What do we know about what is known about us? Who knows it? Can we trust them? These questions are terrifying, and so is “Citizenfour.”'),
(71, 1, 102, 3, NULL, 0, 8, 'The holder of secrets', 'George Packer, The New Yorker', 'http://www.newyorker.com/magazine/2014/10/20/holder-secrets', 'Laura Poitras’s closeup view of Edward Snowden.'),
(72, 1, 105, 3, NULL, 0, 1, 'Pynchon’s cameo and other surrealities', 'The New York Times', 'http://www.nytimes.com/2014/09/28/movies/paul-thomas-anderson-films-inherent-vice.html', 'Paul Thomas Anderson films "Inherent Vice"'),
(73, 1, 105, 3, NULL, 0, 2, 'Paul Thomas Anderson on "Inherent Vice"', 'Filmmaker Magazine', 'http://filmmakermagazine.com/88626-the-only-thing-i-ever-really-look-at-in-movies-is-the-actors-paul-thomas-anderson-on-inherent-vice/', '“The only thing I ever really look at in movies is the actors...”'),
(74, 1, 105, 3, NULL, 0, 3, 'NYFF Diary: "Inherent Vice"', 'Max Nelson, Film Comment', 'http://www.filmcomment.com/entry/nyff-diary-3-inherent-vice', 'One of "Inherent Vice"’s greatest strengths is the seamless tonal synthesis it finds between the jocular casualness of a stoned-out shaggy dog story and the full tragic sense of a historical saga: in this case, an elegy for a generation’s burnt-out dreams.'),
(75, 1, 105, 3, NULL, 0, 4, '"Inherent Vice" and the modern audience’s ambiguity problem', 'Kevin Lincoln, vulture.com', 'http://www.vulture.com/2015/01/inherent-vice-and-audiences-ambiguity-problem.html', 'A narrative that rides on symbolism and signifying has to be so spot-on that it resonates even without the dramatic, emotional beats that we’re used to, or with those traditional points of connection scattered to the wind.'),
(76, 1, 43, 3, NULL, 0, 6, 'How ‘Selma’ got smeared', 'Mark Harris, grantland.com', 'http://grantland.com/features/selma-oscars-academy-awards-historical-accuracy-controversy/', '“Filmmakers love to talk about their artistic license to distort the truth,” Dowd writes, dismissing, in a sentence, an entire genre as a form of glorified lying.'),
(77, 1, 70, 3, NULL, 0, 5, 'allaboutjazz: "Whiplash"', 'Tyran Grillo, allaboutjazz.com', 'http://www.allaboutjazz.com/whiplash-buddy-rich-by-tyran-grillo.php', 'Although the film has attracted well-earned praise for its acting and editing, this review sets technical flourish aside and approaches "Whiplash" not as a film, per se, but as a failed musical exercise.'),
(78, 1, 70, 3, NULL, 0, 6, '"Whiplash" drums up unrealistic depiction of jazz', 'Ken Micallef, Down Beat', 'http://www.downbeat.com/default.asp?sect=news&subsect=news_detail&nid=2577', '"Whiplash" reveals Chazelle’s jazz ignorance or perhaps an implicit goal to broaden his movie’s appeal to a general audience that couldn’t tell Buddy Rich from Paul Motian.'),
(79, 1, 70, 3, NULL, 0, 7, 'Drummer Peter Erskine on jazz flick ''Whiplash''', 'kcet.org', 'http://www.kcet.org/arts/artbound/counties/los-angeles/drummer-peter-erskine-on-whiplash-film.html', 'Erskine played for Stan Kenton before joining Weather Report. He''s played on more than 600 recordings ranging from Barbra Streisand to Kate Bush. For the last 10 years, he has served as the director of drumset studies at USC''s Thornton School of Music.'),
(80, 1, 105, 3, NULL, 0, 5, 'Splendor in the grass', 'J. Hoberman, Artforum', 'https://artforum.com/inprint/issue=201501&id=49414', '"Inherent Vice" is an extremely credible adaptation of the closest thing to an easy read by the writer whom some consider America’s greatest living novelist.'),
(81, 1, 105, 3, NULL, 0, 6, 'Noir days of sun, Los Angeles smog and marijuana haze', 'Manohla Dargis, The New York Times', 'http://www.nytimes.com/2014/12/12/movies/inherent-vice-directed-by-paul-thomas-anderson.html', 'Mr. Phoenix’s note-perfect performance flows on the story’s currents of comedy that occasionally turn into rapids.'),
(82, 1, 102, 3, NULL, 0, 9, 'Portrait of the whistleblower', 'Nick Bradshaw, Sight & Sound', 'http://www.bfi.org.uk/news-opinion/sight-sound-magazine/reviews-recommendations/film-week-citizenfour', 'Electrifyingly, the film shows us history in the making. Has such a political actor ever before gone direct to a filmmaker in the heat of the action?'),
(83, 1, 111, 3, NULL, 0, 1, 'From tabloid to Oscar fare', 'The Atlantic', 'http://www.theatlantic.com/entertainment/archive/2014/11/bennett-miller-interview/382742/\n', 'The director of the acclaimed new film about the sensational John du Pont story says time allowed him to understand its characters.'),
(84, 1, 111, 3, NULL, 0, 2, 'Film Comment: "Foxcatcher"', 'Farran Smith Nehme, Film Comment', 'http://www.filmcomment.com/article/review-foxcatcher-bennett-miller\n', '"Foxcatcher" is both moral fable and updated, same-sex Gothic: a penniless young person is lured to a vast, sinister mansion owned by an aristocrat tormented by his past.'),
(85, 1, 111, 3, NULL, 0, 3, 'Obsession With an obsession', 'vulture.com', 'http://www.vulture.com/2014/08/the-making-of-foxcatcher.html', 'Miller has wrenched an austere and challenging movie out of that bizarre tragedy.'),
(86, 1, 111, 3, NULL, 0, 4, 'Taken down by twisted ambition', 'Manohla Dargis, The New York Times', 'http://www.nytimes.com/2014/11/14/movies/steve-carell-and-channing-tatum-in-foxcatcher.html', 'Mark and John make a fine odd couple but they never evolve into the kind of deep, meaningful figures who can carry the weight of Mr. Miller’s symbolism and all those American flags.'),
(87, 1, 112, 3, NULL, 0, 1, 'Jean-Luc Godard’s dazzling, provocative 3-D mind trip', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/10/29/goodbye_to_language_jean_luc_godards_dazzling_provocative_3_d_mind_trip/', 'At age 83, a ''60s legend breaks new ground with a wistful, spectacular voyage into love and philosophy -- in 3-D!'),
(88, 1, 112, 3, NULL, 0, 2, '2 + 2 x 3D', 'David Bordwell, davidbordwell.net', 'http://www.davidbordwell.net/blog/2014/09/07/adieu-au-langage-2-2-x-3d/', 'Godard’s "Adieu au Langage" is the best new film I’ve seen this year, and the best 3D film I’ve ever seen.'),
(89, 1, 112, 3, NULL, 0, 3, 'Tree! Fire! Water! Godard!', 'Geoffrey O’Brien, The New York Review of Books', 'http://www.nybooks.com/blogs/nyrblog/2014/nov/03/tree-fire-water-godard/?insrc=hpbl', 'What "Goodbye to Language" restores is the primordial shock before 3-D, before movies, before even cave paintings.'),
(90, 1, 112, 3, NULL, 0, 4, 'Hello Blu-ray: Goodbye to Language', 'Nick Pinkerton, Sight & Sound', 'http://www.bfi.org.uk/news-opinion/sight-sound-magazine/reviews-recommendations/review-goodbye-language', 'It is no stretch to make a case for the structural audacity and pure plastic beauty, but I’ve yet to hear a convincing argument for the way in which his political-historical digressions have been integrated to his structural architectonics.'),
(91, 1, 113, 3, NULL, 0, 1, 'The best film of 2014', 'Peter Bradshaw, The Guardian', 'http://www.theguardian.com/film/2014/dec/12/the-10-best-films-of-2014-no-1-under-the-skin', 'By turns breathtaking, hilarious and disturbing, Jonathan Glazer’s extraordinary, erotic film achieves a rare blend of fantasy and realism.'),
(92, 1, 113, 3, NULL, 0, 2, 'Why did this chilling masterpiece take a decade?', 'The Guardian', 'http://www.theguardian.com/film/2014/mar/06/under-the-skin-director-jonathan-glazer-scarlett-johansson', 'Director Jonathan Glazer talks about how the film – which stars Scarlett Johansson as an alien driving round Glasgow in a van – came to obsess him.'),
(93, 1, 113, 3, NULL, 0, 3, '''I would way rather not have middle ground''', 'The Guardian', 'http://www.theguardian.com/film/2014/mar/16/scarlett-johansson-interview-middle-ground-under-the-skin-sodastream', 'Scarlett Johansson talks about playing an alien in Jonathan Glazer''s low-budget sci-fi film set in Glasgow.'),
(94, 1, 113, 3, NULL, 0, 4, 'Visions in Scarlett', 'Stephanie Zacharek, The Village Voice', 'http://www.villagevoice.com/2014-04-02/film/under-the-skin-movie-review/\n', '"Under the Skin" is alluring, creepy and great.'),
(95, 1, 113, 3, NULL, 0, 5, 'Film of the week: "Under the Skin"', 'Samuel Wigley, Sight & Sound', 'http://www.bfi.org.uk/news-opinion/sight-sound-magazine/reviews-recommendations/film-week-under-skin', 'Scarlett Johansson falls to Scotland – and Jonathan Glazer launches us into yonder void.'),
(96, 1, 113, 3, NULL, 0, 6, 'Telluride Film Review: "Under the Skin"', 'Scott Foundas, Variety', 'http://variety.com/2013/film/reviews/under-the-skin-review-telluride-venice-toronto-1200593111/', 'Jonathan Glazer''s long-awaited third feature is an undeniably ambitious but ultimately torpid and silly tale of an alien on the prowl.'),
(97, 1, 114, 3, NULL, 0, 1, 'Film Comment: Interview with David Fincher', 'Film Comment', 'http://www.filmcomment.com/entry/interview-david-fincher\n', '"I don’t think Gillian [Flynn] is a misogynist. She’s taking everybody to task in a very subtle way."'),
(98, 1, 114, 3, NULL, 0, 2, 'The Gone Girl phenomenon: Gillian Flynn speaks out', 'The Guardian', 'http://www.theguardian.com/books/2014/oct/03/gone-girl-phenomenon-gillian-flynn\n', 'Flynn talks about her leap to fame, writing the screenplay of the new film, and why no one should read her dark books expecting to find a likable character'),
(99, 1, 114, 3, NULL, 0, 3, 'Bombast: Gone Finching', 'Nick Pinkerton, Film Comment', 'http://www.filmcomment.com/entry/bombast-gone-finching\n', 'For all of Fincher’s marvelous control, I can’t look past the accumulation of Nineties tropes that riddle his filmography, a particular form of PTSD that comes with having gone through adolescence in that era.'),
(100, 1, 114, 3, NULL, 0, 4, 'David Fincher''s portrait of a marriage', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/david-finchers-portrait-marriage', '“Gone Girl” is David Fincher’s “Eyes Wide Shut.” As Stanley Kubrick did in his final film, Fincher lifts the lid off the black box of marriage.'),
(101, 1, 115, 3, NULL, 0, 1, 'Trees fall in a forest, making one hell of a sound', 'Catherine Shoard, The Guardian', 'http://www.theguardian.com/film/2014/dec/17/into-the-woods-review-meryl-streep-rob-marshall-stephen-sondheim', 'Rob Marshall’s big screen version of the Stephen Sondheim musical has taken nearly three decades. Emily Blunt and Meryl Streep just about make it worthwhile.'),
(102, 1, 115, 3, NULL, 0, 2, 'Variety: "Into the Woods"', 'Scott Foundas, Variety', 'http://variety.com/2014/film/reviews/film-review-into-the-woods-1201381097/', 'Marshall hasn’t made one of the great movie musicals here, but he hasn’t bungled it, either — far from it.'),
(103, 1, 115, 3, NULL, 0, 3, 'A fine adaptation of beloved Sondheim musical', 'Ty Burr, The Boston Globe', 'http://www.bostonglobe.com/arts/movies/2014/12/24/grandmother-house/3DOwWeQt5WSNgXsgkVDalL/story.html', 'The fanatics will find plenty of nits to pick, but it’s a fair-to-fine film adaptation of a Sondheim musical.'),
(104, 1, 115, 3, NULL, 0, 4, 'How Disney wrecked “Into The Woods”', 'Alyssa Rosenberg, The Washington Post', 'http://www.washingtonpost.com/news/act-four/wp/2014/12/26/how-disney-wrecked-into-the-woods/', 'Rob Marshall hasn’t quite learned his source material’s powerful lessons…or maybe it''s Disney.'),
(105, 1, 116, 3, NULL, 0, 1, 'The exacting, expansive mind of Christopher Nolan', 'Gideon Lewis-Kraus, The New York Times', 'http://www.nytimes.com/2014/11/02/magazine/the-exacting-expansive-mind-of-christopher-nolan.html', 'Perhaps all Nolan does, as one of his critics has put it, is “invest grandeur and novelty into conventional themes.” But at interstellar scale, that’s good enough.'),
(106, 1, 116, 3, NULL, 0, 2, '"Interstellar": The cinema of physicists', 'Dennis Overbye, The New York Times', 'http://www.nytimes.com/2014/11/18/science/interstellar-the-cinema-of-physicists.html', 'I could appreciate that a lot of hard-core 20th- and 21st-century physics was buried in the story. But I wonder if a movie that requires a 324-page book to explicate it can be considered a totally successful work of art.'),
(107, 1, 116, 3, NULL, 0, 3, 'Good space film, bad climate-change parable', 'The Atlantic', 'http://www.theatlantic.com/entertainment/archive/2014/11/why-interstellar-ignores-climate-change/382788/\n', 'A story about looking for a new world is more exciting than a movie about saving an ailing one.'),
(108, 1, 116, 3, NULL, 0, 4, '10 "Interstellar" script changes that drastically changed the film', 'whatculture.com', 'http://whatculture.com/film/10-interstellar-script-changes-drastically-changed-film.php\n', 'What the first draft reveals about the film’s development.'),
(109, 1, 116, 3, NULL, 0, 5, 'Below the line', 'SSN', 'http://www.ssninsider.com/awards-2015-below-the-line-artists-take-ssn-behind-interstellars-in-camera-visual-effects-shooting-on-a-glacier-coming-in-on-time-under-budget/\n', '"Interstellar"''s in-camera visual effects, shooting on a glacier and coming in on time and under budget'),
(110, 1, 116, 3, NULL, 0, 6, 'Christopher Nolan’s grand space opera tries to outdo “2001″', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/11/05/interstellar_christopher_nolans_grand_space_opera_tries_to_outdo_2001/\n', 'Matthew McConaughey and Anne Hathaway go to infinity and beyond in a twisty, dazzling, crazy-ambitious space opera.'),
(111, 1, 116, 3, NULL, 0, 7, 'Sight & Sound: "Interstellar"', 'Nick Pinkerton, Sight & Sound', 'http://www.bfi.org.uk/news-opinion/sight-sound-magazine/reviews-recommendations/review-interstellar', 'It is without great relish that I report that "Interstellar" feels like a movie tangled up in a pile of infinitely-unfolding some-assembly-required instructions.'),
(112, 1, 117, 3, NULL, 0, 1, 'Jarmusch''s undead know how to live', 'Stephanie Zacharek, Village Voice', 'http://www.villagevoice.com/2014-04-09/film/only-lovers-left-alive/', 'The director''s most emotionally direct film since "Dead Man," and maybe his finest, period.'),
(113, 1, 117, 3, NULL, 0, 2, 'Art and style are their lifeblood', 'A.O. Scott, The New York Times', 'http://www.nytimes.com/2014/04/11/movies/only-lovers-left-alive-jarmuschs-vampire-malaise.html', 'This elegy for the tradition of the cool has a defensive, even reactionary undercurrent.'),
(114, 1, 117, 3, NULL, 0, 3, 'Film Comment: Interview with Tilda Swinton', 'Film Comment', 'http://www.filmcomment.com/entry/interview-tilda-swinton', '"She’s a Bructeri druid and she’s lived 3,000 years, so we worked that constantly. She’s seen everything. That’s why she’s got her particular perspective."'),
(115, 1, 117, 3, NULL, 0, 4, 'Film Comment: "Only Lovers Left Alive"', 'Jonathan Romney, Film Comment', 'http://www.filmcomment.com/entry/review-only-lovers-left-alive-jarmusch-swinton', 'One of the most enjoyable and artful pieces of cinematic dandyism in the Jarmusch catalog, and one of the saddest and most serious.'),
(116, 1, 117, 3, NULL, 0, 5, 'Jim Jarmusch talks the vampiric charms of "Only Lovers Left Alive" & proposing to muse Tilda Swinton', 'IndieWire', 'http://blogs.indiewire.com/theplaylist/interview-jim-jarmusch-talks-the-vampiric-charms-of-only-lovers-left-alive-proposing-to-muse-tilda-swinton-20140409', '"I said to Tilda, ''Will you marry me?'' and she said, ''Oh darling, we already are married.''"'),
(117, 1, 117, 3, NULL, 0, 6, 'Slant Magazine: Interview with Tilda Swinton', 'Slant Magazine', 'http://www.slantmagazine.com/features/article/interview-tilda-swinton', '"''Mystery Train'' feels to me like a vampire film, and ''Ghost Dog''...isn''t that a vampire film? It feels like he''s actually been making vampire films all the time."'),
(118, 1, 112, 3, NULL, 0, 5, 'Godard''s revolutionary 3-D film', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/jean-luc-godards-3-d-movie', 'It''s a kind of collage, a compilation of images and sounds, incidents and phrases that don’t tell only one story but bring lots of stories together, in a cycle that fulfills a grand idea.'),
(119, 1, 112, 3, NULL, 0, 6, 'Film of the Week: "Goodbye to Language"', 'Jonathan Romney, Film Comment', 'http://www.filmcomment.com/entry/film-of-the-week-goodbye-to-language', 'Watching Jean-Luc Godard’s recent work can be a source of joy, but also of terror—especially if you’re trying to write about it.'),
(120, 1, 138, 3, NULL, 0, 1, '''If you could lick my heart it would poison you''', 'J. Hoberman, Tablet Magazine', 'http://tabletmag.com/jewish-arts-and-culture/170850/hoberman-ida-pawlikoski', 'Is Pawel Pawlikowski’s new film "Ida" the Polish answer to "Aftermath," or a story of Jewish suffering and sacrifice?'),
(121, 1, 138, 3, NULL, 0, 2, 'A wrenching voyage into Polish history', 'Andrew O''Hehir, salon.com', 'http://www.salon.com/2014/05/01/ida_a_wrenching_voyage_into_polish_history/', 'A devout young nun and her Communist aunt take a road trip into Poland''s past in this moving black-and-white drama'),
(122, 1, 138, 3, NULL, 0, 3, 'RogerEbert.com: "Ida"', 'Godfrey Cheshire, rogerebert.com', 'http://www.rogerebert.com/reviews/ida-2014', 'Riveting, original and breathtakingly accomplished on every level, "Ida" would be a masterpiece in any era, in any country.'),
(123, 1, 138, 3, NULL, 0, 4, 'Cinema Scope: "Ida"', 'Jerry White, Cinema Scope', 'http://cinema-scope.com/spotlight/ida-pawel-pawlikowski-polanddenmark/', '"Ida" marks Polish filmmaker Pawel Pawlikowski’s first feature film in Polish, but just what kind of Polish film it is proves a rather tricky question.'),
(124, 1, 138, 3, NULL, 0, 5, 'The distasteful vagueness of "Ida"', 'Richard Brody, The New Yorker', 'http://www.newyorker.com/culture/richard-brody/the-distasteful-vagueness-of-ida', 'It’s impossible to discuss the film “Ida” without spoilers, because, without spoilers, there’s no way to show how the movie is a pernicious fraud—an aesthetic one and a historical one.'),
(125, 1, 138, 3, NULL, 0, 6, '"I was a lost guy in a weird city."', 'The Guardian', 'http://www.theguardian.com/film/2014/sep/18/pawel-pawlikowski-ida-warsaw-lost-guy-weird-city', 'After the sudden death of his wife, director Pawel Pawlikowski hit a midlife crisis. So he returned to his native Warsaw – and made "Ida," the film of his career.'),
(126, 1, 138, 3, NULL, 0, 7, 'Paweł Pawlikowski on the journey from script to film', 'The Guardian', 'http://www.theguardian.com/film/2014/nov/21/pawel-pawlikowski-making-of-ida-polish-film', 'Paweł Pawlikowski says he’s a film financier’s nightmare – here he explains how he battled industry conventions, as well as Poland’s ‘winter of the century’, to make his award-winning drama.'),
(127, 1, 138, 3, NULL, 0, 8, 'An eerily beautiful road movie', 'Peter Bradshaw, The Guardian', 'http://www.theguardian.com/film/2014/sep/25/ida-pawel-pawlikowski-nun-road-movie', 'A novice nun journeys through her family’s secret past in Paweł Pawlikowski’s outstanding black-and-white drama.'),
(129, 1, 6, 3, NULL, 0, 3, 'The invented worlds of "Birdman" and "Whiplash"', 'Glenn Kenny, somecamerunning', 'http://somecamerunning.typepad.com/some_came_running/2014/10/the-invented-worlds-of-birdman-and-whiplash.html', 'Iñnaritu''s instinct was to create a work that laughed at his midlife crisis rather than sink into it. I believe this instinct was correct.'),
(130, 1, 6, 3, NULL, 0, 4, 'Alejandro Gonzalez Inarritu on his first comedy, "Birdman"', 'Variety', 'http://variety.com/2014/film/news/alejandro-gonzalez-inarritu-birdman-interview-1201292156/\n', '“It was like I was on a ladder, and I was getting a little too comfortable...I was stuck, half out of fear and half out of safety. And I said to myself, ‘I’m going to let go of the ladder.’ ”\n'),
(131, 1, 37, 3, NULL, 0, 1, 'Dirty Oil: "A Most Violent Year"', 'The New Yorker', 'http://www.newyorker.com/magazine/2015/01/12/dirty-oil', 'Abel Morales (Oscar Isaac), the hero of J. C. Chandor’s “A Most Violent Year,” was born in Colombia, but when we meet him, in 1981, he’s living in Westchester, a wealthy businessman in his late thirties, swathed in double-breasted suits and a camel-hair coat. Emerging from his Mercedes coupe, he speaks decisively but quietly, as if raising his voice would signal a loss of authority. '),
(132, 1, 37, 3, NULL, 0, 2, 'Nominated for Nothing: A Most Violent Year', 'Entertainment Weekly', 'http://www.ew.com/article/2015/02/03/nominated-nothing-most-violent-year', 'Just about every year, brilliant movies are utterly ignored by the Oscars. The Searchers, Groundhog Day, Breathless, King Kong, Casino Royale, Touch of Evil, Caddyshack, Mean Streets, The Big Lebowski, Blackfish — the Academy has a long history of overlooking comedies, action movies, horror flicks, hard-boiled genre pics, artsy foreign films, and documentaries that aren’t about World War II. Before the ceremony, we’ll be taking a closer look at films that were too small, too weird, or perhaps simply too awesome for the Academy Awards. These are the Non-Nominees.'),
(133, 1, 37, 3, NULL, 0, 3, 'Film Review: "A Most Violent Year"', 'Variety', 'http://variety.com/2014/film/reviews/film-review-a-most-violent-year-1201348496/', 'J.C. Chandor channels Sidney Lumet to tell a timeless tale of New York City in the grip of a violent crime wave and mass institutional corruption.'),
(134, 1, 37, 3, NULL, 0, 4, 'Heating Oil Mixed with Trouble - "A Most Violent Year" with Oscar Isaac and Jessica Chastain', 'NY Times', 'http://www.nytimes.com/2014/12/31/movies/a-most-violent-year-with-oscar-isaac-and-jessica-chastain.html?_r=0', 'More brooding than brutal, “A Most Violent Year” finds Abel Morales (Oscar Isaac), the upwardly mobile owner of a heating-oil business, in a time of difficulty. Some of the trouble is atmospheric. It’s 1981, and New York City is in a state of decay that looks, in the burnished tints of movie hindsight, almost picturesque. Subway cars blossom with graffiti; the radio news wearily tallies each day’s shootings and stabbings; crime and corruption hang in the winter air like smog.'),
(135, 1, 59, 3, NULL, 0, 5, 'Toronto Film Review: "Still Alice"', 'Peter Debruge, Variety Magazine', 'http://variety.com/2014/film/reviews/toronto-film-review-julianne-moore-in-still-alice-1201301421/', 'Julianne Moore plays a woman slowly disappearing within her own body in this sensitive and restrained look at early-onset Alzheimer''s.');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_members`
--

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`) VALUES
(1, 1, 'kenton', 'Kenton Quatman', '0371a309f01a48fb8e273f4aec6c37ce00ce76e45e8e36bd6f73c5bb7fb2a502a2d6c2247ea69ec694b5b4568a0737232a19193f3f55b4340123309261b421af', 'AU9$a!"N/0Cl+-`d?NoWa|taOo8?Ags<}].WkaeN3sRTH}{G,nxb*WCdq3X`Seq?iKt<%UM"6kq14:J<MaLGgH|"G&R-L6<(I~fVEqWqs7C;}w8GXQ}nnlgh#r]a?[2B', '66bc3fcde266a6b8fc0e630b9801f24d15ea26c1', '578a986efcd2746fef1a4797dd52708697ca3f7c', NULL, 'kentonquatman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '::1', 1422059926, 1423179598, 1423205630, 10, 0, 0, 0, 1422259695, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/New_York', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', '', 'Template Morsels|C=addons_modules&M=show_module_cp&module=template_morsels|1\nGlobals|C=addons_modules&M=show_module_cp&module=low_variables|2\nFreeform|C=addons_modules&M=show_module_cp&module=freeform|3', 'n', 0, 'y', 0),
(2, 5, 'debra', 'Debra Minoff', '11d4f241de022bf7410da15e6d2ebd0052aff9137fd03174fb7c0044db034bd090a14607a89e2cc0fe7edcba4cca0dc85200b70b2d2cf46adeb1db73db2b1d59', 'nR;Oje!X:%C2kCeqaM|!)ngF_U<s[2CE]Tw=AZe`c5d:.^41G%r7/t^tf`u#.#d0<k{{:I~|7bxu5\\q5Mmsjjsek%x''a!~zx3u^GnsSI9$&-auW.ArmVb!uw#}Li2Q''?', 'c2ea3b12a3bf67a528be5a87fad8e62ba9fe4d68', '14ad2790522539bab706b7519cc30aa2c9578eaa', NULL, 'Debra.Minoff@gmail.com', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '173.3.172.44', 1422301000, 1422905633, 1423175976, 20, 0, 0, 0, 1422567466, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/New_York', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0),
(5, 5, 'mitch', 'Mitchell Wu', 'acc119b6357cb2ebebb9d738206915ad68f46286bdd2c0123c104f9a388ec4a444b3678e4c32cac2c27714ce7c59678117c719457168e4fc95a257e138ad7c90', '!Z~5p!b@WmuN(&I`dY]nUnn@mHUbEiAuP5;n(M1\\yB'',I!}vuNbBtLkA^&#.(ff&E]bkd**91X=S#L\\1R:@^z2qPi[cJm+)Z/@$tn7Y^gBl"48~v<aa\\{{*F2S(*&qn"', '73f1f2b52701fdf9ed054aee661673ab2892376d', 'bd1cf9c2a0af17e50e9739785b9fe4c12632f191', NULL, 'mitchell.m.wu@gmail.com', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '173.3.172.44', 1422302748, 1423022296, 1423181592, 97, 0, 0, 0, 1422810420, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/New_York', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0),
(6, 5, 'matt', 'Matt Minoff', 'c57bb5473c0cc771974ddcbc45b034749d301f563674eb734ddc1c6c3880a742bf1841ae026ff0d2e2b404a8dfc1686766d1a8226d657a140f9027a288f2b8d4', 'HFnI;#+_a;+/VA>3[M:UY(_b4_yE#o4%mPC,n(pyqL]~ZYp{N:O22~wz.VN&~$H79&Mq_YfpBu.r-2nW5P6=f2{Opz-rvl)r%F%G@BY~d`9oQo>=+|-v3r5<yf:;05:}', '4c0bbd1e52311363a16234e309223d6a0589ca06', '5a5411e26d22a8a30a7a5d891725ae082b13fadb', NULL, 'matt.minoff@gmail.com', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '173.3.172.44', 1422383838, 1422720478, 1423173474, 0, 0, 0, 0, 0, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/New_York', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0);

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
(1),
(2),
(5),
(6);

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
(5, 1, 'Authors', '', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'n', '', 'n', 'n', 'y', 10, 'n', 0, 0, 'n', 'n', 'y', 'y', 'y');

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
(1, 'l', 1, 'l', 2, 'n', 0, 'r', 1, 'n', 0, 'r', 2, 'r', 0, 'l', 0),
(2, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0),
(5, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0),
(6, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0);

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
(5, 11),
(5, 13),
(5, 14),
(5, 18),
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
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_online_users`
--

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`) VALUES
(234, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(235, 1, 0, 'n', '', '66.87.116.127', 1423177513, ''),
(236, 1, 0, 'n', '', '66.87.116.127', 1423177513, ''),
(237, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(239, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(229, 1, 0, 'n', '', '173.3.172.44', 1423174333, ''),
(240, 1, 0, 'n', '', '75.126.120.78', 1423181687, ''),
(231, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(232, 1, 2, 'n', 'Debra Minoff', '108.14.78.139', 1423175983, ''),
(228, 1, 2, 'n', 'Debra Minoff', '108.14.78.139', 1423175983, ''),
(227, 1, 6, 'n', 'Matt Minoff', '72.226.65.163', 1423173475, ''),
(225, 1, 0, 'n', '', '72.226.65.163', 1423172400, ''),
(226, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(224, 1, 2, 'n', 'Debra Minoff', '108.14.78.139', 1423175983, ''),
(222, 1, 5, 'n', 'Mitchell Wu', '108.14.78.139', 1423181684, ''),
(223, 1, 2, 'n', 'Debra Minoff', '108.14.78.139', 1423175983, ''),
(238, 1, 0, 'n', '', '66.87.116.249', 1423180206, ''),
(241, 1, 0, 'n', '', '74.73.20.219', 1423196430, ''),
(242, 1, 0, 'n', '', '::1', 1423205215, ''),
(243, 1, 1, 'n', 'Kenton Quatman', '::1', 1423205727, '');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_playa_relationships`
--

INSERT INTO `exp_playa_relationships` (`rel_id`, `parent_entry_id`, `parent_field_id`, `parent_col_id`, `parent_row_id`, `parent_var_id`, `parent_element_id`, `parent_is_draft`, `child_entry_id`, `rel_order`) VALUES
(367, 38, 10, NULL, NULL, NULL, NULL, 0, 36, 0),
(375, 28, 10, NULL, NULL, NULL, NULL, 0, 20, 0),
(369, 35, 10, NULL, NULL, NULL, NULL, 0, 30, 0),
(370, 34, 10, NULL, NULL, NULL, NULL, 0, 30, 0),
(381, 27, 10, NULL, NULL, NULL, NULL, 0, 20, 0),
(376, 26, 10, NULL, NULL, NULL, NULL, 0, 20, 0),
(371, 33, 10, NULL, NULL, NULL, NULL, 0, 30, 0),
(372, 32, 10, NULL, NULL, NULL, NULL, 0, 30, 0),
(373, 31, 10, NULL, NULL, NULL, NULL, 0, 30, 0),
(382, 21, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(380, 22, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(379, 23, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(378, 24, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(377, 25, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(374, 29, 10, NULL, NULL, NULL, NULL, 0, 20, 0),
(366, 39, 10, NULL, NULL, NULL, NULL, 0, 36, 0),
(365, 40, 10, NULL, NULL, NULL, NULL, 0, 36, 0),
(364, 41, 10, NULL, NULL, NULL, NULL, 0, 36, 0),
(363, 42, 10, NULL, NULL, NULL, NULL, 0, 36, 0),
(361, 44, 10, NULL, NULL, NULL, NULL, 0, 43, 0),
(360, 45, 10, NULL, NULL, NULL, NULL, 0, 43, 0),
(358, 46, 10, NULL, NULL, NULL, NULL, 0, 43, 0),
(359, 47, 10, NULL, NULL, NULL, NULL, 0, 43, 0),
(356, 48, 10, NULL, NULL, NULL, NULL, 0, 43, 0),
(368, 49, 10, NULL, NULL, NULL, NULL, 0, 37, 0),
(355, 50, 10, NULL, NULL, NULL, NULL, 0, 37, 0),
(349, 58, 10, NULL, NULL, NULL, NULL, 0, 6, 0),
(354, 53, 10, NULL, NULL, NULL, NULL, 0, 51, 0),
(353, 54, 10, NULL, NULL, NULL, NULL, 0, 51, 0),
(352, 55, 10, NULL, NULL, NULL, NULL, 0, 51, 0),
(351, 56, 10, NULL, NULL, NULL, NULL, 0, 51, 0),
(350, 57, 10, NULL, NULL, NULL, NULL, 0, 51, 0),
(348, 60, 10, NULL, NULL, NULL, NULL, 0, 59, 0),
(347, 61, 10, NULL, NULL, NULL, NULL, 0, 59, 0),
(345, 64, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(344, 65, 10, NULL, NULL, NULL, NULL, 0, 63, 0),
(342, 66, 10, NULL, NULL, NULL, NULL, 0, 63, 0),
(341, 67, 10, NULL, NULL, NULL, NULL, 0, 63, 0),
(343, 68, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(340, 69, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(339, 71, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(338, 72, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(335, 73, 10, NULL, NULL, NULL, NULL, 0, 70, 0),
(334, 74, 10, NULL, NULL, NULL, NULL, 0, 70, 0),
(333, 75, 10, NULL, NULL, NULL, NULL, 0, 70, 0),
(214, 76, 10, NULL, NULL, NULL, NULL, 0, 70, 0),
(337, 77, 10, NULL, NULL, NULL, NULL, 0, 70, 0),
(336, 79, 10, NULL, NULL, NULL, NULL, 0, 62, 0),
(332, 80, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(331, 81, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(330, 83, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(328, 84, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(327, 85, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(326, 86, 10, NULL, NULL, NULL, NULL, 0, 78, 0),
(325, 87, 10, NULL, NULL, NULL, NULL, 0, 82, 0),
(324, 88, 10, NULL, NULL, NULL, NULL, 0, 82, 0),
(323, 89, 10, NULL, NULL, NULL, NULL, 0, 82, 0),
(322, 90, 10, NULL, NULL, NULL, NULL, 0, 82, 0),
(321, 92, 10, NULL, NULL, NULL, NULL, 0, 91, 0),
(320, 93, 10, NULL, NULL, NULL, NULL, 0, 91, 0),
(319, 94, 10, NULL, NULL, NULL, NULL, 0, 91, 0),
(317, 95, 10, NULL, NULL, NULL, NULL, 0, 91, 0),
(316, 97, 10, NULL, NULL, NULL, NULL, 0, 96, 0),
(315, 98, 10, NULL, NULL, NULL, NULL, 0, 96, 0),
(314, 100, 10, NULL, NULL, NULL, NULL, 0, 99, 0),
(313, 101, 10, NULL, NULL, NULL, NULL, 0, 99, 0),
(312, 103, 10, NULL, NULL, NULL, NULL, 0, 102, 0),
(311, 104, 10, NULL, NULL, NULL, NULL, 0, 102, 0),
(310, 106, 10, NULL, NULL, NULL, NULL, 0, 105, 0),
(309, 107, 10, NULL, NULL, NULL, NULL, 0, 105, 0),
(308, 108, 10, NULL, NULL, NULL, NULL, 0, 105, 0),
(307, 109, 10, NULL, NULL, NULL, NULL, 0, 105, 0),
(306, 118, 10, NULL, NULL, NULL, NULL, 0, 113, 0),
(305, 119, 10, NULL, NULL, NULL, NULL, 0, 113, 0),
(304, 120, 10, NULL, NULL, NULL, NULL, 0, 113, 0),
(301, 121, 10, NULL, NULL, NULL, NULL, 0, 111, 0),
(299, 122, 10, NULL, NULL, NULL, NULL, 0, 111, 0),
(298, 123, 10, NULL, NULL, NULL, NULL, 0, 111, 0),
(297, 124, 10, NULL, NULL, NULL, NULL, 0, 111, 0),
(295, 125, 10, NULL, NULL, NULL, NULL, 0, 114, 0),
(296, 126, 10, NULL, NULL, NULL, NULL, 0, 114, 0),
(294, 127, 10, NULL, NULL, NULL, NULL, 0, 114, 0),
(293, 128, 10, NULL, NULL, NULL, NULL, 0, 115, 0),
(292, 129, 10, NULL, NULL, NULL, NULL, 0, 115, 0),
(290, 130, 10, NULL, NULL, NULL, NULL, 0, 115, 0),
(291, 131, 10, NULL, NULL, NULL, NULL, 0, 116, 0),
(303, 132, 10, NULL, NULL, NULL, NULL, 0, 116, 0),
(302, 133, 10, NULL, NULL, NULL, NULL, 0, 116, 0),
(287, 134, 10, NULL, NULL, NULL, NULL, 0, 117, 0),
(286, 135, 10, NULL, NULL, NULL, NULL, 0, 117, 0),
(285, 136, 10, NULL, NULL, NULL, NULL, 0, 117, 0),
(276, 137, 10, NULL, NULL, NULL, NULL, 0, 112, 0);

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

--
-- Dumping data for table `exp_search`
--

INSERT INTO `exp_search` (`search_id`, `site_id`, `search_date`, `keywords`, `member_id`, `ip_address`, `total_results`, `per_page`, `query`, `custom_fields`, `result_page`) VALUES
('c561c426d196c63112542ecd0cffbea7', 1, 1423171740, 'only lovers', 2, '108.14.78.139', 4, 20, 's:1406:\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (117,134,135,136)  ORDER BY entry_date  desc\\";', 'a:21:{s:11:\\"media_cover\\";a:2:{i:0;s:1:\\"1\\";i:1;s:1:\\"n\\";}s:14:\\"media_director\\";a:2:{i:0;s:1:\\"2\\";i:1;s:1:\\"y\\";}s:14:\\"media_external\\";a:2:{i:0;s:1:\\"3\\";i:1;s:1:\\"n\\";}s:14:\\"media_starring\\";a:2:{i:0;s:1:\\"4\\";i:1;s:1:\\"y\\";}s:13:\\"media_summary\\";a:2:{i:0;s:1:\\"5\\";i:1;s:1:\\"y\\";}s:12:\\"article_body\\";a:2:{i:0;s:1:\\"6\\";i:1;s:1:\\"y\\";}s:15:\\"article_summary\\";a:2:{i:0;s:1:\\"7\\";i:1;s:1:\\"n\\";}s:12:\\"article_tags\\";a:2:{i:0;s:1:\\"8\\";i:1;s:1:\\"y\\";}s:13:\\"article_image\\";a:2:{i:0;s:1:\\"9\\";i:1;s:1:\\"n\\";}s:21:\\"article_related_media\\";a:2:{i:0;s:2:\\"10\\";i:1;s:1:\\"n\\";}s:14:\\"article_author\\";a:2:{i:0;s:2:\\"11\\";i:1;s:1:\\"y\\";}s:12:\\"media_writer\\";a:2:{i:0;s:2:\\"12\\";i:1;s:1:\\"y\\";}s:10:\\"media_tags\\";a:2:{i:0;s:2:\\"14\\";i:1;s:1:\\"y\\";}s:14:\\"media_producer\\";a:2:{i:0;s:2:\\"15\\";i:1;s:1:\\"y\\";}s:17:\\"media_distributor\\";a:2:{i:0;s:2:\\"16\\";i:1;s:1:\\"y\\";}s:12:\\"media_budget\\";a:2:{i:0;s:2:\\"17\\";i:1;s:1:\\"n\\";}s:15:\\"media_boxoffice\\";a:2:{i:0;s:2:\\"18\\";i:1;s:1:\\"n\\";}s:12:\\"media_awards\\";a:2:{i:0;s:2:\\"19\\";i:1;s:1:\\"y\\";}s:20:\\"media_rottentomatoes\\";a:2:{i:0;s:2:\\"20\\";i:1;s:1:\\"n\\";}s:16:\\"media_metacritic\\";a:2:{i:0;s:2:\\"21\\";i:1;s:1:\\"n\\";}s:13:\\"media_website\\";a:2:{i:0;s:2:\\"22\\";i:1;s:1:\\"n\\";}}', 'search/index'),
('cd88e9d1e3c4d705520616252bf618f8', 1, 1423164739, 'gone girl', 2, '108.14.78.139', 4, 20, 's:1406:\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (114,125,126,127)  ORDER BY entry_date  desc\\";', 'a:21:{s:11:\\"media_cover\\";a:2:{i:0;s:1:\\"1\\";i:1;s:1:\\"n\\";}s:14:\\"media_director\\";a:2:{i:0;s:1:\\"2\\";i:1;s:1:\\"y\\";}s:14:\\"media_external\\";a:2:{i:0;s:1:\\"3\\";i:1;s:1:\\"n\\";}s:14:\\"media_starring\\";a:2:{i:0;s:1:\\"4\\";i:1;s:1:\\"y\\";}s:13:\\"media_summary\\";a:2:{i:0;s:1:\\"5\\";i:1;s:1:\\"y\\";}s:12:\\"article_body\\";a:2:{i:0;s:1:\\"6\\";i:1;s:1:\\"y\\";}s:15:\\"article_summary\\";a:2:{i:0;s:1:\\"7\\";i:1;s:1:\\"n\\";}s:12:\\"article_tags\\";a:2:{i:0;s:1:\\"8\\";i:1;s:1:\\"y\\";}s:13:\\"article_image\\";a:2:{i:0;s:1:\\"9\\";i:1;s:1:\\"n\\";}s:21:\\"article_related_media\\";a:2:{i:0;s:2:\\"10\\";i:1;s:1:\\"n\\";}s:14:\\"article_author\\";a:2:{i:0;s:2:\\"11\\";i:1;s:1:\\"y\\";}s:12:\\"media_writer\\";a:2:{i:0;s:2:\\"12\\";i:1;s:1:\\"y\\";}s:10:\\"media_tags\\";a:2:{i:0;s:2:\\"14\\";i:1;s:1:\\"y\\";}s:14:\\"media_producer\\";a:2:{i:0;s:2:\\"15\\";i:1;s:1:\\"y\\";}s:17:\\"media_distributor\\";a:2:{i:0;s:2:\\"16\\";i:1;s:1:\\"y\\";}s:12:\\"media_budget\\";a:2:{i:0;s:2:\\"17\\";i:1;s:1:\\"n\\";}s:15:\\"media_boxoffice\\";a:2:{i:0;s:2:\\"18\\";i:1;s:1:\\"n\\";}s:12:\\"media_awards\\";a:2:{i:0;s:2:\\"19\\";i:1;s:1:\\"y\\";}s:20:\\"media_rottentomatoes\\";a:2:{i:0;s:2:\\"20\\";i:1;s:1:\\"n\\";}s:16:\\"media_metacritic\\";a:2:{i:0;s:2:\\"21\\";i:1;s:1:\\"n\\";}s:13:\\"media_website\\";a:2:{i:0;s:2:\\"22\\";i:1;s:1:\\"n\\";}}', 'search/index'),
('dea17da20bd2289fb4cf15d4c609ac42', 1, 1423164757, 'thriller', 2, '108.14.78.139', 2, 20, 's:1397:\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (102,17)  ORDER BY entry_date  desc\\";', 'a:21:{s:11:\\"media_cover\\";a:2:{i:0;s:1:\\"1\\";i:1;s:1:\\"n\\";}s:14:\\"media_director\\";a:2:{i:0;s:1:\\"2\\";i:1;s:1:\\"y\\";}s:14:\\"media_external\\";a:2:{i:0;s:1:\\"3\\";i:1;s:1:\\"n\\";}s:14:\\"media_starring\\";a:2:{i:0;s:1:\\"4\\";i:1;s:1:\\"y\\";}s:13:\\"media_summary\\";a:2:{i:0;s:1:\\"5\\";i:1;s:1:\\"y\\";}s:12:\\"article_body\\";a:2:{i:0;s:1:\\"6\\";i:1;s:1:\\"y\\";}s:15:\\"article_summary\\";a:2:{i:0;s:1:\\"7\\";i:1;s:1:\\"n\\";}s:12:\\"article_tags\\";a:2:{i:0;s:1:\\"8\\";i:1;s:1:\\"y\\";}s:13:\\"article_image\\";a:2:{i:0;s:1:\\"9\\";i:1;s:1:\\"n\\";}s:21:\\"article_related_media\\";a:2:{i:0;s:2:\\"10\\";i:1;s:1:\\"n\\";}s:14:\\"article_author\\";a:2:{i:0;s:2:\\"11\\";i:1;s:1:\\"y\\";}s:12:\\"media_writer\\";a:2:{i:0;s:2:\\"12\\";i:1;s:1:\\"y\\";}s:10:\\"media_tags\\";a:2:{i:0;s:2:\\"14\\";i:1;s:1:\\"y\\";}s:14:\\"media_producer\\";a:2:{i:0;s:2:\\"15\\";i:1;s:1:\\"y\\";}s:17:\\"media_distributor\\";a:2:{i:0;s:2:\\"16\\";i:1;s:1:\\"y\\";}s:12:\\"media_budget\\";a:2:{i:0;s:2:\\"17\\";i:1;s:1:\\"n\\";}s:15:\\"media_boxoffice\\";a:2:{i:0;s:2:\\"18\\";i:1;s:1:\\"n\\";}s:12:\\"media_awards\\";a:2:{i:0;s:2:\\"19\\";i:1;s:1:\\"y\\";}s:20:\\"media_rottentomatoes\\";a:2:{i:0;s:2:\\"20\\";i:1;s:1:\\"n\\";}s:16:\\"media_metacritic\\";a:2:{i:0;s:2:\\"21\\";i:1;s:1:\\"n\\";}s:13:\\"media_website\\";a:2:{i:0;s:2:\\"22\\";i:1;s:1:\\"n\\";}}', 'search/index');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_search_log`
--

INSERT INTO `exp_search_log` (`id`, `site_id`, `member_id`, `screen_name`, `ip_address`, `search_date`, `search_type`, `search_terms`) VALUES
(1, 1, 1, 'Kenton Quatman', '173.3.172.44', 1422595936, 'site', 'Birdman'),
(2, 1, 1, 'Kenton Quatman', '173.3.172.44', 1422596123, 'site', 'Blarg'),
(3, 1, 1, 'Kenton Quatman', '173.3.172.44', 1422596131, 'site', 'Clint Eastwood'),
(4, 1, 0, '', '174.226.195.81', 1422631491, 'site', 'Inherent Vice'),
(5, 1, 0, '', '174.226.195.81', 1422631704, 'site', 'Burman'),
(6, 1, 0, '', '174.226.195.81', 1422631719, 'site', 'Birdman'),
(7, 1, 0, '', '12.130.116.27', 1422636473, 'site', 'Michael Keaton'),
(8, 1, 0, '', '12.130.116.27', 1422636718, 'site', 'Nothing'),
(9, 1, 0, '', '12.130.116.27', 1422636733, 'site', 'Pynchon'),
(10, 1, 0, '', '69.115.217.69', 1423076979, 'site', 'Big Eyes'),
(11, 1, 2, 'Debra Minoff', '108.14.78.139', 1423164739, 'site', 'gone girl'),
(12, 1, 2, 'Debra Minoff', '108.14.78.139', 1423164757, 'site', 'thriller'),
(13, 1, 2, 'Debra Minoff', '108.14.78.139', 1423171740, 'site', 'only lovers');

-- --------------------------------------------------------

--
-- Table structure for table `exp_security_hashes`
--

CREATE TABLE `exp_security_hashes` (
`hash_id` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_security_hashes`
--

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`) VALUES
(84, 1423179458, 'cf19f222746280b8fbbb4bcd0c59088ab4b46ba3', '9d4fef071193a79b2a0284b1d8f8ca49e267cff1'),
(83, 1423179458, '6332356fb774b3e674d4d102a3d4bde9a0cb790a', '8dc9e5f532a366cb93ada8d75fd8df68889fbd50'),
(76, 1423165941, '70dc512c7434e35125222612503b2a080d4f72c8', '76df964259dee7bb5ac25a361039bf9ef7b8198f'),
(77, 1423171717, 'f304045d39634a83250e761a681eba0d45a29078', '748c67c13708f351383e5049d4efb98c4181af0e'),
(78, 1423171777, '6d44173ece85f400c4148f6d087b185af774aca7', 'eab7d7b6a6559ed7ad20b6f5aacde834b970ad63'),
(79, 1423172404, 'cb08892f2a480a3f973ebf7528c979877808a2ff', '4186eba48e0a5b2e16dca04ac969139d5839ff9f'),
(80, 1423173553, 'a86f7450e995bb54daeba970270233eca0a7c6ff', '14233ce51192635ecbbe6c2c513aa487c92d5161'),
(90, 1423179660, 'ae07ca7f5e62257115865b51fdc95100d7648392', '8a5a721b4c605275927f303ca567664f64223006'),
(86, 1423179458, '511b4ca213db02217dfefc6d2a9c23682d490810', '1a839f822cc2d1788f7b5c8b732ad8a4378708db'),
(85, 1423179458, '3a44d9e6c60e1432934d5235da50bef821beb684', 'bfac57235cbd03d4fa3d9183187ac7bff891c359'),
(75, 1423160608, '61fd02cf22b8281372ffd679e2c94700c91ad683', '96601311639a1d9ab7e1ba054c14c350c0b6a52c'),
(74, 1423005789, '5b6052c3026633ad63c67f903a8457b1f881946f', '6f37d0fb34b04103b1e99831f8f556f1fab5c63d'),
(73, 1422935569, 'b0c9f2d13beb0bb8576c57d7509d9f0994cdfbff', '5ad3dd5d0f552ecd29291df7b85d501a40ba2eb7'),
(72, 1422925612, 'c459e3b72132d66ac3ede2a8e8e773fd17ea4022', '0fc51d14b18d79ca2048d671f069db06eea7a83c'),
(71, 1422920871, '4c8511334535de7b61e4a98c12463ca568f3561d', 'a8daa3faf62243283ae85ce64880c24e35429058'),
(70, 1422911345, '2f7461d7d058a8d34feab4d194e69bd5e8c91766', '34d2e31fb396beeded5a24e518c69f8a66f3cd26'),
(87, 1423179466, 'aed1f340e276c578e15ed217d51f0a8200eb4941', 'f8030139f88396bd000f8d4d8ee33df522381ef8'),
(88, 1423179477, 'f149867eb8acf4a6e5a0aee3401f15b36b0e4edc', 'bd8911b385143795fb11195ebb09f0cefe75c948'),
(89, 1423179489, 'ca4be169b5a86d0ad744a799010fce1c44857b1f', 'b262e6d5cc444eac94eeb1be334991ae2d96aa0c'),
(91, 1423179692, '49585c5c508f93152728f58f286b47564b7c7a42', '375c769afee0ce42233900aaa151d691ff37e3b0'),
(92, 1423179760, 'ee795d9651c6a7760990f565a8c2c925b5b5afcf', '21fd2c8a8246fb3686ac93121fff525dd50f68bd'),
(93, 1423179868, '555f2d89c94facf1bc3530ca1dcd16a7b7e00339', '9d42840108c37a1321874d7234aecc614cb3205d'),
(94, 1423179916, '2bbb626b42a9d5ffe9ab1d2e4b29b9c820c17b94', '372e437662015e1fe619c3f80bb1d69a913982ec'),
(95, 1423179943, '0faff559cc534a1962b63ec2350737fc03d2083f', '84b05ef34879864f848f190ebc2d8a95cd044949'),
(96, 1423179989, 'd4722a5fdf2ab1e93da6f9855043705e4b9aaa0c', '064bee89c24452e4dd9bcf5b3d1bb0fd025deb00'),
(97, 1423180019, '9a17b813950769c1bb8846520de0b7822a80a0f4', 'd6a14f46221d633de806e20898afea8eff78f426'),
(98, 1423180152, '517cdd7df7fb37396aac73716f21c92ca89b2eb7', '16447eac3181f305038315382d4d8551388d2a98'),
(99, 1423180183, 'eadd2888028a7a28d16ebbfafbbfad41eeb7dee8', 'dbd766f067f3036c166c57112aacee4749eba796'),
(100, 1423180290, '619995a494c2ed41256a41bd78e37c02e1ac8eda', 'fa3906fb0d93545587f70511def05852546ee706'),
(101, 1423180319, '9e2fca07e6ac43d3bf1dc8f47feb1b3be117f748', 'f64bf2f73254c5e93a337746414db9ac0e411eaa'),
(102, 1423180350, '19325baaf7b62416298eea2b1e402296685636bc', 'e46bb6b9e23143bc5d0d2c987b3c188d55b6720f'),
(103, 1423205323, '5aeaa4129d2493a38478ed68aa7a0492379b290b', 'b5b1145ee3e2632c95f5fc5b4e8585f0b002af44');

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
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_seolite_content`
--

INSERT INTO `exp_seolite_content` (`seolite_content_id`, `site_id`, `entry_id`, `title`, `keywords`, `description`) VALUES
(1, 1, 1, '', '', ''),
(2, 1, 2, '', '', ''),
(3, 1, 3, '', '', ''),
(4, 1, 4, '', '', ''),
(30, 1, 30, 'Wes Anderson''s THE GRAND BUDAPEST HOTEL', 'Wes Anderson, The Grand Budapest Hotel, Ralph Fiennes, Edward Norton', 'Wes Anderson''s THE GRAND BUDAPEST HOTEL'),
(6, 1, 6, '', '', ''),
(26, 1, 26, '', '', ''),
(31, 1, 31, '', '', ''),
(27, 1, 27, '', '', ''),
(32, 1, 32, '', '', ''),
(15, 1, 15, '', '', ''),
(16, 1, 16, '', '', ''),
(17, 1, 17, '', '', ''),
(18, 1, 18, '', '', ''),
(19, 1, 19, '', '', ''),
(20, 1, 20, 'Richard Linklater''s BOYHOOD', 'Richard Linklater, Boyhood, IFC, Ethan Hawke, Patricia Arquette', 'Richard Linklater''s BOYHOOD'),
(21, 1, 21, '', '', ''),
(22, 1, 22, '', '', ''),
(23, 1, 23, '', '', ''),
(24, 1, 24, '', '', ''),
(25, 1, 25, '', '', ''),
(28, 1, 28, '', '', ''),
(29, 1, 29, '', '', ''),
(33, 1, 33, '', '', ''),
(34, 1, 34, '', '', ''),
(35, 1, 35, '', '', ''),
(36, 1, 36, '', '', ''),
(37, 1, 37, '', '', ''),
(38, 1, 38, '', '', ''),
(39, 1, 39, '', '', ''),
(40, 1, 40, '', '', ''),
(41, 1, 41, '', '', ''),
(42, 1, 42, '', '', ''),
(43, 1, 43, '', '', ''),
(44, 1, 44, '', '', ''),
(45, 1, 45, '', '', ''),
(46, 1, 46, '', '', ''),
(47, 1, 47, '', '', ''),
(48, 1, 48, '', '', ''),
(49, 1, 49, '', '', ''),
(50, 1, 50, '', '', ''),
(51, 1, 51, '', '', ''),
(58, 1, 58, '', '', ''),
(53, 1, 53, '', '', ''),
(54, 1, 54, '', '', ''),
(55, 1, 55, '', '', ''),
(56, 1, 56, '', '', ''),
(57, 1, 57, '', '', ''),
(59, 1, 59, '', '', ''),
(60, 1, 60, '', '', ''),
(61, 1, 61, '', '', ''),
(62, 1, 62, '', '', ''),
(63, 1, 63, '', '', ''),
(64, 1, 64, '', '', ''),
(65, 1, 65, '', '', ''),
(66, 1, 66, '', '', ''),
(67, 1, 67, '', '', ''),
(68, 1, 68, '', '', ''),
(69, 1, 69, '', '', ''),
(70, 1, 70, 'Damien Chazelle''s WHIPLASH', 'Damien Chazelle, Whiplash, Miles Teller, J.K. Simmons', 'Damien Chazelle''s WHIPLASH'),
(71, 1, 71, '', '', ''),
(72, 1, 72, '', '', ''),
(73, 1, 73, '', '', ''),
(74, 1, 74, '', '', ''),
(75, 1, 75, '', '', ''),
(76, 1, 76, '', '', ''),
(77, 1, 77, '', '', ''),
(78, 1, 78, '', '', ''),
(79, 1, 79, '', '', ''),
(80, 1, 80, '', '', ''),
(81, 1, 81, '', '', ''),
(82, 1, 82, '', '', ''),
(83, 1, 83, '', '', ''),
(84, 1, 84, '', '', ''),
(85, 1, 85, '', '', ''),
(86, 1, 86, '', '', ''),
(87, 1, 87, '', '', ''),
(88, 1, 88, '', '', ''),
(89, 1, 89, '', '', ''),
(90, 1, 90, '', '', ''),
(91, 1, 91, '', '', ''),
(92, 1, 92, '', '', ''),
(93, 1, 93, '', '', ''),
(94, 1, 94, '', '', ''),
(95, 1, 95, '', '', ''),
(96, 1, 96, '', '', ''),
(97, 1, 97, '', '', ''),
(98, 1, 98, '', '', ''),
(99, 1, 99, '', '', ''),
(100, 1, 100, '', '', ''),
(101, 1, 101, '', '', ''),
(102, 1, 102, '', '', ''),
(103, 1, 103, '', '', ''),
(104, 1, 104, '', '', ''),
(105, 1, 105, '', '', ''),
(106, 1, 106, '', '', ''),
(107, 1, 107, '', '', ''),
(108, 1, 108, '', '', ''),
(109, 1, 109, '', '', ''),
(111, 1, 111, '', '', ''),
(112, 1, 112, 'Jean-Luc Godard''s GOODBYE TO LANGUAGE 3D', 'Jean-Luc Godard, Goodbye to Language, 3D', 'Jean-Luc Godard''s GOODBYE TO LANGUAGE 3D'),
(113, 1, 113, 'Jonathan Glazer''s UNDER THE SKIN', 'Jonathan Glazer, Under the Skin, Scarlett Johansson, Michel Faber', 'Jonathan Glazer''s UNDER THE SKIN'),
(114, 1, 114, 'David Fincher''s GONE GIRL', 'David Fincher, Gone Girl, Gillian Flynn', 'David Fincher''s GONE GIRL'),
(115, 1, 115, '', '', ''),
(116, 1, 116, '', '', ''),
(117, 1, 117, 'Jim Jarmusch''s ONLY LOVERS LEFT ALIVE', 'Jim Jarmusch, Only Lovers Left Alive, Tom Hiddleston, Tilda Swinton', 'Jim Jarmusch''s ONLY LOVERS LEFT ALIVE'),
(118, 1, 118, '', '', ''),
(119, 1, 119, '', '', ''),
(120, 1, 120, '', '', ''),
(121, 1, 121, '', '', ''),
(122, 1, 122, '', '', ''),
(123, 1, 123, '', '', ''),
(124, 1, 124, '', '', ''),
(125, 1, 125, '', '', ''),
(126, 1, 126, '', '', ''),
(127, 1, 127, '', '', ''),
(128, 1, 128, '', '', ''),
(129, 1, 129, '', '', ''),
(130, 1, 130, '', '', ''),
(131, 1, 131, '', '', ''),
(132, 1, 132, '', '', ''),
(133, 1, 133, '', '', ''),
(134, 1, 134, '', '', ''),
(135, 1, 135, '', '', ''),
(136, 1, 136, '', '', ''),
(137, 1, 137, '', '', ''),
(138, 1, 138, 'Paweł Pawlikowski''s IDA', 'Ida, Paweł Pawlikowski', 'Paweł Pawlikowski''s IDA');

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
('ae07ca7f5e62257115865b51fdc95100d7648392', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179659, 1423179688),
('2bbb626b42a9d5ffe9ab1d2e4b29b9c820c17b94', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179915, 1423179939),
('aed1f340e276c578e15ed217d51f0a8200eb4941', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179466, 1423179468),
('f149867eb8acf4a6e5a0aee3401f15b36b0e4edc', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179477, 1423179478),
('ca4be169b5a86d0ad744a799010fce1c44857b1f', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179488, 1423179653),
('49585c5c508f93152728f58f286b47564b7c7a42', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179691, 1423179751),
('ee795d9651c6a7760990f565a8c2c925b5b5afcf', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179759, 1423179863),
('555f2d89c94facf1bc3530ca1dcd16a7b7e00339', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179867, 1423179911),
('cf19f222746280b8fbbb4bcd0c59088ab4b46ba3', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179458, 1423179458),
('0faff559cc534a1962b63ec2350737fc03d2083f', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179943, 1423179985),
('d4722a5fdf2ab1e93da6f9855043705e4b9aaa0c', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423179989, 1423180016),
('9a17b813950769c1bb8846520de0b7822a80a0f4', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180018, 1423180146),
('517cdd7df7fb37396aac73716f21c92ca89b2eb7', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180152, 1423180177),
('eadd2888028a7a28d16ebbfafbbfad41eeb7dee8', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180182, 1423180283),
('619995a494c2ed41256a41bd78e37c02e1ac8eda', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180290, 1423180313),
('9e2fca07e6ac43d3bf1dc8f47feb1b3be117f748', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180318, 1423180345),
('19325baaf7b62416298eea2b1e402296685636bc', 5, 1, '108.14.78.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/6.2.2 Safari/537.85.11', '6f93e769bcaf3ce830f94bdaca3804d4', 1423180349, 1423181684),
('5aeaa4129d2493a38478ed68aa7a0492379b290b', 1, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36', 'c3efdbe30acb72ab25d3f837eec07866', 1423205322, 1423205727);

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
(1, 'ScreenPrism', 'default_site', NULL, 'YTo5MDp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjM6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvIjtzOjE2OiJ0aGVtZV9mb2xkZXJfdXJsIjtzOjMwOiJodHRwOi8vc2NyZWVucHJpc20uZGV2L3RoZW1lcy8iO3M6MTU6IndlYm1hc3Rlcl9lbWFpbCI7czoyMzoia2VudG9ucXVhdG1hbkBnbWFpbC5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjM5OiJodHRwOi8vc2NyZWVucHJpc20uZGV2L2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfcGF0aCI7czo3NDoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfZm9udCI7czoxOiJ5IjtzOjEyOiJjYXB0Y2hhX3JhbmQiO3M6MToieSI7czoyMzoiY2FwdGNoYV9yZXF1aXJlX21lbWJlcnMiO3M6MToibiI7czoxNzoiZW5hYmxlX2RiX2NhY2hpbmciO3M6MToibiI7czoxODoiZW5hYmxlX3NxbF9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImZvcmNlX3F1ZXJ5X3N0cmluZyI7czoxOiJuIjtzOjEzOiJzaG93X3Byb2ZpbGVyIjtzOjE6Im4iO3M6MTg6InRlbXBsYXRlX2RlYnVnZ2luZyI7czoxOiJ5IjtzOjE1OiJpbmNsdWRlX3NlY29uZHMiO3M6MToibiI7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czoyMDoid2Vic2l0ZV9zZXNzaW9uX3R5cGUiO3M6MToiYyI7czoxNToiY3Bfc2Vzc2lvbl90eXBlIjtzOjI6ImNzIjtzOjIxOiJhbGxvd191c2VybmFtZV9jaGFuZ2UiO3M6MToieSI7czoxODoiYWxsb3dfbXVsdGlfbG9naW5zIjtzOjE6InkiO3M6MTY6InBhc3N3b3JkX2xvY2tvdXQiO3M6MToieSI7czoyNToicGFzc3dvcmRfbG9ja291dF9pbnRlcnZhbCI7czoxOiIxIjtzOjIwOiJyZXF1aXJlX2lwX2Zvcl9sb2dpbiI7czoxOiJ5IjtzOjIyOiJyZXF1aXJlX2lwX2Zvcl9wb3N0aW5nIjtzOjE6InkiO3M6MjQ6InJlcXVpcmVfc2VjdXJlX3Bhc3N3b3JkcyI7czoxOiJuIjtzOjE5OiJhbGxvd19kaWN0aW9uYXJ5X3B3IjtzOjE6InkiO3M6MjM6Im5hbWVfb2ZfZGljdGlvbmFyeV9maWxlIjtzOjA6IiI7czoxNzoieHNzX2NsZWFuX3VwbG9hZHMiO3M6MToieSI7czoxNToicmVkaXJlY3RfbWV0aG9kIjtzOjg6InJlZGlyZWN0IjtzOjk6ImRlZnRfbGFuZyI7czo3OiJlbmdsaXNoIjtzOjg6InhtbF9sYW5nIjtzOjI6ImVuIjtzOjEyOiJzZW5kX2hlYWRlcnMiO3M6MToieSI7czoxMToiZ3ppcF9vdXRwdXQiO3M6MToibiI7czoxMzoibG9nX3JlZmVycmVycyI7czoxOiJuIjtzOjEzOiJtYXhfcmVmZXJyZXJzIjtzOjM6IjUwMCI7czoxMToiZGF0ZV9mb3JtYXQiO3M6ODoiJW4vJWovJXkiO3M6MTE6InRpbWVfZm9ybWF0IjtzOjI6IjEyIjtzOjEzOiJzZXJ2ZXJfb2Zmc2V0IjtzOjA6IiI7czoyMToiZGVmYXVsdF9zaXRlX3RpbWV6b25lIjtzOjE2OiJBbWVyaWNhL05ld19Zb3JrIjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjE5OiJkZW55X2R1cGxpY2F0ZV9kYXRhIjtzOjE6InkiO3M6MjQ6InJlZGlyZWN0X3N1Ym1pdHRlZF9saW5rcyI7czoxOiJuIjtzOjE2OiJlbmFibGVfY2Vuc29yaW5nIjtzOjE6Im4iO3M6MTQ6ImNlbnNvcmVkX3dvcmRzIjtzOjA6IiI7czoxODoiY2Vuc29yX3JlcGxhY2VtZW50IjtzOjA6IiI7czoxMDoiYmFubmVkX2lwcyI7czowOiIiO3M6MTM6ImJhbm5lZF9lbWFpbHMiO3M6MDoiIjtzOjE2OiJiYW5uZWRfdXNlcm5hbWVzIjtzOjA6IiI7czoxOToiYmFubmVkX3NjcmVlbl9uYW1lcyI7czowOiIiO3M6MTA6ImJhbl9hY3Rpb24iO3M6ODoicmVzdHJpY3QiO3M6MTE6ImJhbl9tZXNzYWdlIjtzOjM0OiJUaGlzIHNpdGUgaXMgY3VycmVudGx5IHVuYXZhaWxhYmxlIjtzOjE1OiJiYW5fZGVzdGluYXRpb24iO3M6MjE6Imh0dHA6Ly93d3cueWFob28uY29tLyI7czoxNjoiZW5hYmxlX2Vtb3RpY29ucyI7czoxOiJ5IjtzOjEyOiJlbW90aWNvbl91cmwiO3M6Mzg6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvaW1hZ2VzL3NtaWxleXMvIjtzOjE5OiJyZWNvdW50X2JhdGNoX3RvdGFsIjtzOjQ6IjEwMDAiO3M6MTc6Im5ld192ZXJzaW9uX2NoZWNrIjtzOjE6InkiO3M6MTc6ImVuYWJsZV90aHJvdHRsaW5nIjtzOjE6Im4iO3M6MTc6ImJhbmlzaF9tYXNrZWRfaXBzIjtzOjE6InkiO3M6MTQ6Im1heF9wYWdlX2xvYWRzIjtzOjI6IjEwIjtzOjEzOiJ0aW1lX2ludGVydmFsIjtzOjE6IjgiO3M6MTI6ImxvY2tvdXRfdGltZSI7czoyOiIzMCI7czoxNToiYmFuaXNobWVudF90eXBlIjtzOjc6Im1lc3NhZ2UiO3M6MTQ6ImJhbmlzaG1lbnRfdXJsIjtzOjA6IiI7czoxODoiYmFuaXNobWVudF9tZXNzYWdlIjtzOjUwOiJZb3UgaGF2ZSBleGNlZWRlZCB0aGUgYWxsb3dlZCBwYWdlIGxvYWQgZnJlcXVlbmN5LiI7czoxNzoiZW5hYmxlX3NlYXJjaF9sb2ciO3M6MToieSI7czoxOToibWF4X2xvZ2dlZF9zZWFyY2hlcyI7czozOiI1MDAiO3M6MTc6InRoZW1lX2ZvbGRlcl9wYXRoIjtzOjY1OiIvVXNlcnMva2VudG9ucXVhdG1hbi9TaXRlcy9maWxtcHJpc20uZGV2L2RldmVsb3BtZW50L2h0bWwvdGhlbWVzLyI7czoxMDoiaXNfc2l0ZV9vbiI7czoxOiJ5IjtzOjExOiJydGVfZW5hYmxlZCI7czoxOiJ5IjtzOjIyOiJydGVfZGVmYXVsdF90b29sc2V0X2lkIjtzOjE6IjEiO3M6MTI6ImNhY2hlX2RyaXZlciI7czo0OiJmaWxlIjtzOjY6ImNwX3VybCI7czozOToiaHR0cDovL3N0YWdlLnNjcmVlbnByaXNtLmNvbS9oZWxtZXIucGhwIjt9', 'YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==', 'YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6Mzg6Imh0dHA6Ly9zY3JlZW5wcmlzbS5kZXYvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo3MzoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9hdmF0YXJzLyI7czoxNjoiYXZhdGFyX21heF93aWR0aCI7czozOiIxMDAiO3M6MTc6ImF2YXRhcl9tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMzoiYXZhdGFyX21heF9rYiI7czoyOiI1MCI7czoxMzoiZW5hYmxlX3Bob3RvcyI7czoxOiJuIjtzOjk6InBob3RvX3VybCI7czo0NDoiaHR0cDovL3NjcmVlbnByaXNtLmRldi9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTA6InBob3RvX3BhdGgiO3M6Nzk6Ii9Vc2Vycy9rZW50b25xdWF0bWFuL1NpdGVzL2ZpbG1wcmlzbS5kZXYvZGV2ZWxvcG1lbnQvaHRtbC9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo1MjoiaHR0cDovL3NjcmVlbnByaXNtLmRldi9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjg3OiIvVXNlcnMva2VudG9ucXVhdG1hbi9TaXRlcy9maWxtcHJpc20uZGV2L2RldmVsb3BtZW50L2h0bWwvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czo4MDoiL1VzZXJzL2tlbnRvbnF1YXRtYW4vU2l0ZXMvZmlsbXByaXNtLmRldi9kZXZlbG9wbWVudC9odG1sL2ltYWdlcy9wbV9hdHRhY2htZW50cy8iO3M6MjM6InBydl9tc2dfbWF4X2F0dGFjaG1lbnRzIjtzOjE6IjMiO3M6MjI6InBydl9tc2dfYXR0YWNoX21heHNpemUiO3M6MzoiMjUwIjtzOjIwOiJwcnZfbXNnX2F0dGFjaF90b3RhbCI7czozOiIxMDAiO3M6MTk6InBydl9tc2dfaHRtbF9mb3JtYXQiO3M6NDoic2FmZSI7czoxODoicHJ2X21zZ19hdXRvX2xpbmtzIjtzOjE6InkiO3M6MTc6InBydl9tc2dfbWF4X2NoYXJzIjtzOjQ6IjYwMDAiO3M6MTk6Im1lbWJlcmxpc3Rfb3JkZXJfYnkiO3M6MTE6InRvdGFsX3Bvc3RzIjtzOjIxOiJtZW1iZXJsaXN0X3NvcnRfb3JkZXIiO3M6NDoiZGVzYyI7czoyMDoibWVtYmVybGlzdF9yb3dfbGltaXQiO3M6MjoiMjAiO30=', 'YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToibiI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjE6Ii8iO30=', 'YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJ5IjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=', 'YToyOntzOjc6ImVtYWlsZWQiO2E6MDp7fXM6Njc6Ii9Vc2Vycy9rZW50b25xdWF0bWFuL1NpdGVzL2ZpbG1wcmlzbS5kZXYvZGV2ZWxvcG1lbnQvaHRtbC9pbmRleC5waHAiO3M6MzI6IjkyYmUxNGRhYTAxNGY0ZTdhNTNiNTE5OTkzYjJhMjI3Ijt9', 'YToxOntpOjE7YTozOntzOjM6InVybCI7czoyMzoiaHR0cDovL3NjcmVlbnByaXNtLmRldi8iO3M6NDoidXJpcyI7YTo0OntpOjE7czo0OiIvYXNrIjtpOjM7czoyMToiL3Rlcm1zLWFuZC1jb25kaXRpb25zIjtpOjQ7czoxNToiL3ByaXZhY3ktcG9saWN5IjtpOjI7czo2OiIvYWJvdXQiO31zOjk6InRlbXBsYXRlcyI7YTo0OntpOjE7czoyOiIxMSI7aTozO3M6MjoiMTAiO2k6NDtzOjI6IjEwIjtpOjI7czoyOiIxMCI7fX19');

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
(1, 1, 4, 6, 'Matt Minoff', 127, 0, 0, 0, 1422766980, 0, 0, 1423205727, 14, 1422413840, 1423318150);

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
(15, 4, 1, 1, 1, '::1', 'channel', 3, 'n'),
(15, 5, 1, 1, 1, '::1', 'channel', 3, 'n'),
(15, 6, 1, 1, 1, '::1', 'channel', 3, 'n'),
(15, 7, 1, 1, 1, '::1', 'channel', 3, 'n'),
(15, 8, 1, 1, 1, '::1', 'channel', 3, 'n'),
(19, 15, 2, 1, 1, '::1', 'channel', 3, 'n'),
(19, 16, 2, 1, 1, '::1', 'channel', 3, 'n'),
(17, 17, 2, 1, 1, '::1', 'channel', 3, 'n'),
(17, 18, 2, 1, 1, '::1', 'channel', 3, 'n'),
(17, 19, 2, 1, 1, '::1', 'channel', 3, 'n'),
(17, 20, 2, 1, 1, '::1', 'channel', 3, 'n'),
(18, 15, 2, 1, 1, '::1', 'channel', 3, 'n'),
(18, 21, 2, 1, 1, '::1', 'channel', 3, 'n'),
(137, 102, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(137, 103, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(137, 104, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(137, 105, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(137, 106, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(137, 107, 3, 1, 2, '108.14.78.139', 'channel', 2, 'n'),
(138, 78, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(138, 79, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(138, 80, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(138, 81, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(16, 4, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(16, 5, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(16, 6, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(16, 7, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(16, 8, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 83, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 84, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 85, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 86, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(70, 87, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 12, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 88, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 89, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 90, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(30, 91, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 92, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 93, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 94, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 95, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 96, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(113, 97, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(117, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(117, 98, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(117, 99, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(117, 100, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(117, 101, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 102, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 103, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 104, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 105, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 106, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(112, 107, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 108, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 109, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 110, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 111, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 112, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(20, 113, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 114, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 115, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 116, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 117, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 118, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(114, 119, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 9, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 10, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 11, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 12, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 13, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 14, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 15, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 18, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 22, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 23, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 24, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 120, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(6, 121, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(102, 97, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(102, 122, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(102, 123, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(102, 124, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(96, 116, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(96, 118, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(96, 125, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 28, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 95, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 126, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 127, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 128, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 129, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(116, 130, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 18, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 46, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 47, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 48, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 49, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 50, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(62, 51, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(51, 93, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(51, 114, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(51, 131, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(51, 137, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(51, 138, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 93, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 114, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 131, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 139, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 140, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 141, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 142, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(36, 143, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(63, 96, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(63, 114, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(63, 144, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(63, 145, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 114, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 146, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 147, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 148, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 149, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 150, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(105, 151, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 93, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 131, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 152, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 153, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 154, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(91, 155, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 97, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 156, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 157, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 158, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 159, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(78, 160, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 53, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 54, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 55, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 56, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 57, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 58, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 154, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 161, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(82, 162, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 82, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 141, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 155, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 163, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 164, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 165, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(43, 166, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(99, 141, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(99, 142, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(99, 155, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(99, 167, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(59, 18, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(59, 168, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(59, 169, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(59, 183, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 18, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 27, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 28, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 29, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 30, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 31, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 32, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 33, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 34, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 35, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 36, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 37, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 38, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 39, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(37, 74, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 124, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 131, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 132, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 133, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 134, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 135, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(111, 136, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 170, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 171, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 172, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 173, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 174, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 175, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(115, 176, 1, 1, 5, '108.14.78.139', 'channel', 3, 'n'),
(136, 76, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(136, 98, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(136, 99, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(136, 100, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(136, 101, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(135, 76, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(135, 77, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(135, 98, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(135, 101, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(134, 82, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(134, 98, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(134, 99, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(134, 100, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(134, 101, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(130, 172, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(130, 176, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(130, 184, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(130, 185, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(131, 127, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(131, 186, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(131, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(129, 170, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(129, 172, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(129, 176, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(128, 170, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(128, 172, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(128, 176, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(127, 115, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(127, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(127, 188, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(125, 115, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(125, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(125, 189, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(125, 190, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(126, 115, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(126, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(126, 191, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(124, 132, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(124, 192, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(124, 193, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(123, 132, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(123, 193, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(123, 194, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(122, 132, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(122, 193, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(122, 195, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(121, 132, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(121, 193, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(121, 196, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(133, 127, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(133, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(132, 127, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(132, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(120, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(120, 197, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(119, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(119, 198, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(118, 187, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(118, 191, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(109, 70, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(109, 71, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(109, 72, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(109, 73, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 70, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 72, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 73, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 146, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 199, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 200, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 201, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(108, 202, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(107, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(107, 146, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(107, 190, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(107, 203, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(106, 146, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(106, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(104, 198, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(104, 205, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(103, 124, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(103, 198, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(103, 205, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(101, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(100, 142, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(100, 206, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(98, 207, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(98, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(97, 116, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(97, 188, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(95, 152, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(95, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(94, 152, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(94, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(94, 209, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(93, 152, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(93, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(93, 209, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(92, 152, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(92, 209, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 53, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 54, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 55, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 57, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 60, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 61, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(90, 64, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 53, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 54, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 55, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 58, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 60, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 61, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 62, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(89, 63, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(88, 53, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(88, 54, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(88, 55, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(88, 57, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(88, 58, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(87, 53, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(87, 54, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(87, 55, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(87, 57, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(87, 58, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(86, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(85, 159, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(85, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(85, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(84, 159, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(84, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(83, 159, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(83, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(83, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(81, 159, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(81, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(80, 210, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(80, 211, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(80, 212, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(75, 213, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(74, 214, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(74, 215, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(73, 83, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(73, 84, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(73, 85, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(73, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(79, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(79, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(79, 48, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(79, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(79, 52, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(77, 213, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(77, 215, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(77, 216, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 48, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 52, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(72, 214, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(71, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(71, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(71, 48, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(71, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(71, 52, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(69, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(69, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(69, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(69, 52, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(69, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(67, 144, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(67, 190, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(66, 144, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(66, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(68, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(68, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(68, 48, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(68, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(68, 52, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(65, 144, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(65, 217, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(64, 46, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(64, 47, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(64, 48, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(64, 49, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(64, 50, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(61, 169, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(61, 218, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(60, 169, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(60, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(60, 218, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(58, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(58, 102, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(58, 219, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(57, 102, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(57, 138, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(56, 138, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(56, 220, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(55, 138, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(55, 221, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(54, 138, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(54, 221, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(53, 138, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(53, 208, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(53, 222, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 28, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 31, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 40, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 41, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 42, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 43, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 44, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(50, 45, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(48, 223, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(48, 224, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(46, 205, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(46, 223, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(46, 224, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(47, 205, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(47, 223, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(47, 224, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(47, 225, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(45, 205, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(45, 223, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(45, 224, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(44, 224, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(44, 226, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(44, 227, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(42, 228, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(42, 229, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(41, 142, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(41, 228, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(40, 194, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(40, 228, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(39, 194, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(39, 228, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(38, 142, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(38, 228, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(38, 229, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(49, 27, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(49, 28, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(49, 37, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(49, 40, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(35, 88, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(35, 230, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(35, 231, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(34, 88, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(34, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(34, 232, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(33, 88, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(33, 231, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(32, 88, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(32, 142, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(32, 190, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(31, 88, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(31, 142, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(31, 233, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(31, 234, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(29, 109, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(29, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(28, 109, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(28, 113, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(26, 109, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(26, 113, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(25, 24, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(25, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(24, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(24, 235, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 14, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 24, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 120, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 177, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 182, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(23, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 9, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 14, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 120, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 177, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 178, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 179, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 180, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 181, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(22, 204, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(27, 108, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(27, 109, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(27, 113, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 9, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 13, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 15, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 23, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 24, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 25, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 120, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n'),
(21, 121, 3, 1, 5, '108.14.78.139', 'channel', 2, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `exp_tag_groups`
--

CREATE TABLE `exp_tag_groups` (
`tag_group_id` int(10) unsigned NOT NULL,
  `tag_group_name` varchar(150) NOT NULL,
  `tag_group_short_name` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_groups`
--

INSERT INTO `exp_tag_groups` (`tag_group_id`, `tag_group_name`, `tag_group_short_name`) VALUES
(1, 'default', 'default'),
(2, 'Article', 'Article'),
(3, 'Media', 'media');

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
  `total_entries_2` int(10) NOT NULL DEFAULT '0',
  `total_entries_3` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_tag_tags`
--

INSERT INTO `exp_tag_tags` (`tag_id`, `tag_alpha`, `tag_name`, `site_id`, `author_id`, `entry_date`, `edit_date`, `clicks`, `total_entries`, `total_entries_1`, `channel_entries`, `total_entries_2`, `total_entries_3`) VALUES
(4, 'T', 'The Hobbit', 1, 1, 1422293442, 1423175353, 0, 2, 0, 2, 0, 2),
(5, 'P', 'Peter Jackson', 1, 1, 1422293442, 1423175353, 0, 2, 0, 2, 0, 2),
(6, 'I', 'Ian McKellen', 1, 1, 1422293442, 1423175353, 0, 2, 0, 2, 0, 2),
(7, 'M', 'Martin Freeman', 1, 1, 1422293442, 1423175353, 0, 2, 0, 2, 0, 2),
(8, 'O', 'Orlando Bloom', 1, 1, 1422293442, 1423175353, 0, 2, 0, 2, 0, 2),
(9, 'M', 'Michael Keaton', 1, 1, 1422293764, 1423181651, 0, 3, 0, 3, 2, 1),
(10, 'E', 'Emma Stone', 1, 1, 1422293764, 1423175815, 0, 1, 0, 1, 0, 1),
(11, 'Z', 'Zach Galifianakis', 1, 1, 1422293764, 1423175815, 0, 1, 0, 1, 0, 1),
(12, 'E', 'Edward Norton', 1, 1, 1422293764, 1423175815, 0, 2, 0, 2, 0, 2),
(13, 'O', 'Oscars', 1, 1, 1422293764, 1423181651, 0, 2, 0, 2, 1, 1),
(14, 'A', 'Academy Awards', 1, 1, 1422293764, 1423181620, 0, 3, 0, 3, 2, 1),
(15, 'C', 'Comedy', 1, 1, 1422293815, 1423181651, 0, 4, 0, 4, 1, 3),
(16, 'N', 'Netflix', 1, 1, 1422293815, 0, 0, 1, 0, 1, 0, 1),
(17, 'H', 'Horror', 1, 1, 1422293871, 0, 0, 1, 0, 1, 0, 1),
(18, 'D', 'Drama', 1, 1, 1422293871, 1423177072, 0, 5, 0, 5, 0, 5),
(19, 'T', 'Thriller', 1, 1, 1422293871, 0, 0, 1, 0, 1, 0, 1),
(20, 'F', 'FX', 1, 1, 1422293871, 0, 0, 1, 0, 1, 0, 1),
(21, 'S', 'Sitcom', 1, 1, 1422293896, 0, 0, 1, 0, 1, 0, 1),
(22, 'I', 'Inarritu', 1, 2, 1422326311, 1423175815, 2, 1, 0, 1, 0, 1),
(23, 's', 'super-hero', 1, 2, 1422326311, 1423181651, 0, 2, 0, 2, 1, 1),
(24, 'm', 'movies about Broadway', 1, 2, 1422326311, 1423181651, 0, 4, 0, 4, 3, 1),
(25, 'B', 'Birdman', 1, 2, 1422328682, 1423181651, 1, 6, 0, 6, 6, 0),
(27, 'J', 'J.C. Chandor', 1, 2, 1422390629, 1423181333, 0, 2, 0, 2, 1, 1),
(28, 'J', 'Jessica Chastain', 1, 2, 1422390629, 1423181333, 2, 4, 0, 4, 2, 2),
(29, 'N', 'Neal Dodson', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(30, 'A', 'Anna Germ', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(31, 'O', 'Oscar Isaac', 1, 2, 1422390629, 1423181103, 1, 2, 0, 2, 1, 1),
(32, 'D', 'David Oyelowo', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(33, 'A', 'Alessandro Nivola', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(34, 'A', 'Albert Brooks', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(35, 'N', 'New York City', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(36, 'T', 'The 80s', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(37, 'v', 'violence', 1, 2, 1422390629, 1423181333, 0, 2, 0, 2, 1, 1),
(38, 'c', 'corruption', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(39, 'i', 'immigrants', 1, 2, 1422390629, 1423177072, 0, 1, 0, 1, 0, 1),
(40, 'A', 'A Most Violent Year', 1, 2, 1422395466, 1423181333, 0, 2, 0, 2, 2, 0),
(41, 'J', 'J.C. Chan', 1, 2, 1422396992, 1423181103, 0, 1, 0, 1, 1, 0),
(42, 'c', 'crime', 1, 2, 1422396992, 1423181103, 0, 1, 0, 1, 1, 0),
(43, 'd', 'drama', 1, 2, 1422396992, 1423181103, 1, 1, 0, 1, 1, 0),
(44, 'N', 'New York', 1, 2, 1422396992, 1423181103, 1, 1, 0, 1, 1, 0),
(45, 't', 'the 80s', 1, 2, 1422396992, 1423181103, 1, 1, 0, 1, 1, 0),
(46, 'A', 'American Sniper', 1, 2, 1422410446, 1423180741, 0, 7, 0, 7, 6, 1),
(47, 'C', 'Clint Eastwood', 1, 2, 1422410446, 1423180741, 0, 7, 0, 7, 6, 1),
(48, 'B', 'Bradley Cooper', 1, 2, 1422410446, 1423180741, 1, 6, 0, 6, 5, 1),
(49, 'S', 'Sienna Miller', 1, 2, 1422410446, 1423180741, 0, 7, 0, 7, 6, 1),
(50, 'W', 'War', 1, 2, 1422410446, 1423180741, 0, 2, 0, 2, 1, 1),
(51, 'N', 'Navy Seal', 1, 2, 1422410446, 1423176099, 0, 1, 0, 1, 0, 1),
(52, 'w', 'war', 1, 2, 1422411757, 1423180680, 0, 5, 0, 5, 5, 0),
(53, 'B', 'Big Eyes', 1, 2, 1422415408, 1423179936, 0, 5, 0, 5, 4, 1),
(54, 'A', 'Amy Adams', 1, 2, 1422415408, 1423179936, 0, 5, 0, 5, 4, 1),
(55, 'C', 'Christoph Waltz', 1, 2, 1422415408, 1423179936, 0, 5, 0, 5, 4, 1),
(56, 'D', 'Danny Huston', 1, 2, 1422415408, 1423176521, 0, 1, 0, 1, 0, 1),
(57, 'K', 'Krysten Ritter', 1, 2, 1422415408, 1423179936, 0, 4, 0, 4, 3, 1),
(58, 'T', 'Tim Burton', 1, 2, 1422415408, 1423179936, 0, 4, 0, 4, 3, 1),
(60, 'W', 'Walter Keane', 1, 2, 1422416981, 1423179860, 0, 2, 0, 2, 2, 0),
(61, 'M', 'Margaret Keane', 1, 2, 1422416981, 1423179860, 0, 2, 0, 2, 2, 0),
(62, 'S', 'Scott Alexander', 1, 2, 1422416981, 1423179860, 0, 1, 0, 1, 1, 0),
(63, 'L', 'Larry Karaszewski', 1, 2, 1422416981, 1423179860, 0, 1, 0, 1, 1, 0),
(64, 'a', 'art', 1, 2, 1422417243, 1423179800, 0, 1, 0, 1, 1, 0),
(70, 'I', 'Inherent Vice', 1, 1, 1422603469, 1423178635, 0, 2, 0, 2, 2, 0),
(71, 'S', 'Stoner', 1, 1, 1422603469, 1423178597, 0, 1, 0, 1, 1, 0),
(72, 'C', 'Cheech', 1, 1, 1422603469, 1423178635, 0, 2, 0, 2, 2, 0),
(73, 'C', 'Chong', 1, 1, 1422603469, 1423178635, 0, 2, 0, 2, 2, 0),
(74, 'C', 'Crime', 1, 1, 1422603687, 1423177072, 0, 1, 0, 1, 0, 1),
(76, 'i', 'independent film', 1, 5, 1422911591, 1423177964, 0, 2, 0, 2, 2, 0),
(77, 'D', 'Detroit', 1, 5, 1422911591, 1423177964, 0, 1, 0, 1, 1, 0),
(78, 'P', 'Polish cinema', 1, 5, 1422925879, 1423175263, 0, 1, 0, 1, 0, 1),
(79, 'P', 'Paweł Pawlikowski', 1, 5, 1422925879, 1423175263, 0, 1, 0, 1, 0, 1),
(80, 'S', 'Stalinism', 1, 5, 1422925879, 1423175263, 0, 1, 0, 1, 0, 1),
(81, 'H', 'Holocaust', 1, 5, 1422925879, 1423175263, 0, 1, 0, 1, 0, 1),
(82, 'I', 'Independent film', 1, 5, 1422931475, 1423177986, 0, 8, 0, 8, 1, 7),
(83, 'D', 'Damien Chazelle', 1, 5, 1422931475, 1423180382, 0, 2, 0, 2, 1, 1),
(84, 'M', 'Miles Teller', 1, 5, 1422931475, 1423180382, 0, 2, 0, 2, 1, 1),
(85, 'J', 'J.K. Simmons', 1, 5, 1422931475, 1423180382, 0, 2, 0, 2, 1, 1),
(86, 'S', 'Sundance', 1, 5, 1422931475, 1423175444, 0, 1, 0, 1, 0, 1),
(87, 'B', 'Best Supporting Actor', 1, 5, 1422931475, 1423175444, 0, 1, 0, 1, 0, 1),
(88, 'W', 'Wes Anderson', 1, 5, 1422932179, 1423181474, 0, 6, 0, 6, 5, 1),
(89, 'R', 'Ralph Fiennes', 1, 5, 1422932179, 1423175496, 0, 1, 0, 1, 0, 1),
(90, 'F', 'Formalist cinema', 1, 5, 1422932179, 1423175496, 0, 1, 0, 1, 0, 1),
(91, 'H', 'Historical fantasy', 1, 5, 1422932179, 1423175496, 0, 1, 0, 1, 0, 1),
(92, 'S', 'Scarlett Johansson', 1, 5, 1422932885, 1423175544, 0, 1, 0, 1, 0, 1),
(93, 'B', 'British cinema', 1, 5, 1422932885, 1423176453, 0, 4, 0, 4, 0, 4),
(94, 'J', 'Jonathan Glazer', 1, 5, 1422932885, 1423175544, 0, 1, 0, 1, 0, 1),
(95, 'S', 'Science fiction', 1, 5, 1422932885, 1423175938, 0, 2, 0, 2, 0, 2),
(96, 'F', 'Feminist cinema', 1, 5, 1422932885, 1423176334, 0, 2, 0, 2, 0, 2),
(97, 'C', 'Cinema vérité', 1, 5, 1422932885, 1423176462, 0, 3, 0, 3, 0, 3),
(98, 'J', 'Jim Jarmusch', 1, 5, 1422932978, 1423177986, 0, 4, 0, 4, 3, 1),
(99, 'T', 'Tilda Swinton', 1, 5, 1422932978, 1423177986, 0, 3, 0, 3, 2, 1),
(100, 'T', 'Tom Hiddleston', 1, 5, 1422932978, 1423177986, 0, 3, 0, 3, 2, 1),
(101, 'V', 'Vampires', 1, 5, 1422932978, 1423177986, 0, 4, 0, 4, 3, 1),
(102, 'J', 'Jean-Luc Godard', 1, 5, 1422933614, 1423180914, 0, 4, 0, 4, 3, 1),
(103, 'E', 'Experimental film', 1, 5, 1422933614, 1423175695, 0, 2, 0, 2, 1, 1),
(104, 'F', 'French New Wave', 1, 5, 1422933614, 1423175695, 0, 2, 0, 2, 1, 1),
(105, 'A', 'Avant-garde', 1, 5, 1422933614, 1423175695, 0, 2, 0, 2, 1, 1),
(106, '3', '3D movies', 1, 5, 1422933614, 1423175695, 0, 2, 0, 2, 1, 1),
(107, 'F', 'Film essays', 1, 5, 1422933614, 1423175695, 0, 2, 0, 2, 1, 1),
(108, 'B', 'Boyhood', 1, 5, 1422934196, 1423181640, 0, 2, 0, 2, 1, 1),
(109, 'R', 'Richard Linklater', 1, 5, 1422934196, 1423181640, 0, 5, 0, 5, 4, 1),
(110, 'E', 'Ethan Hawke', 1, 5, 1422934196, 1423175740, 0, 1, 0, 1, 0, 1),
(111, 'P', 'Patricia Arquette', 1, 5, 1422934196, 1423175740, 0, 1, 0, 1, 0, 1),
(112, 'T', 'Texas', 1, 5, 1422934196, 1423175740, 0, 1, 0, 1, 0, 1),
(113, 'T', 'Time', 1, 5, 1422934196, 1423181640, 0, 4, 0, 4, 3, 1),
(114, 'F', 'Film adaptations', 1, 5, 1422934370, 1423176383, 0, 5, 0, 5, 0, 5),
(115, 'D', 'David Fincher', 1, 5, 1422934370, 1423178240, 0, 4, 0, 4, 3, 1),
(116, 'N', 'Neo-noir', 1, 5, 1422934370, 1423178882, 0, 8, 0, 8, 6, 2),
(117, 'S', 'Satire', 1, 5, 1422934370, 1423175784, 0, 1, 0, 1, 0, 1),
(118, 'M', 'Media satire', 1, 5, 1422934370, 1423175906, 0, 2, 0, 2, 0, 2),
(119, 'D', 'Dark comedy', 1, 5, 1422934370, 1423175784, 0, 1, 0, 1, 0, 1),
(120, 'A', 'Alejandro González Iñárritu', 1, 5, 1422935090, 1423181651, 0, 4, 0, 4, 3, 1),
(121, 'M', 'Mexican cinema', 1, 5, 1422935090, 1423181651, 0, 2, 0, 2, 1, 1),
(122, 'D', 'Direct cinema', 1, 5, 1422936148, 1423175866, 0, 1, 0, 1, 0, 1),
(123, 'P', 'Political thriller', 1, 5, 1422936148, 1423175866, 0, 1, 0, 1, 0, 1),
(124, 'J', 'Journalism', 1, 5, 1422936148, 1423178736, 0, 3, 0, 3, 1, 2),
(125, 'J', 'Jake Gyllenhaal', 1, 5, 1422936183, 1423175906, 0, 1, 0, 1, 0, 1),
(126, 'E', 'Epics', 1, 5, 1422936313, 1423175938, 0, 1, 0, 1, 0, 1),
(127, 'C', 'Christopher Nolan', 1, 5, 1422936313, 1423178450, 0, 4, 0, 4, 3, 1),
(128, 'M', 'Matthew McConaughey', 1, 5, 1422936313, 1423175938, 0, 1, 0, 1, 0, 1),
(129, 'M', 'Michael Caine', 1, 5, 1422936313, 1423175938, 0, 1, 0, 1, 0, 1),
(130, 'A', 'Anne Hathaway', 1, 5, 1422936313, 1423175938, 0, 1, 0, 1, 0, 1),
(131, 'B', 'Biopics', 1, 5, 1422936530, 1423177376, 0, 4, 0, 4, 0, 4),
(132, 'B', 'Bennett Miller', 1, 5, 1422936530, 1423178410, 0, 5, 0, 5, 4, 1),
(133, 'S', 'Steve Carrell', 1, 5, 1422936530, 1423177376, 0, 1, 0, 1, 0, 1),
(134, 'M', 'Mark Ruffalo', 1, 5, 1422936530, 1423177376, 0, 1, 0, 1, 0, 1),
(135, 'C', 'Channing Tatum', 1, 5, 1422936530, 1423177376, 0, 1, 0, 1, 0, 1),
(136, 'S', 'Sports movies', 1, 5, 1422936555, 1423177376, 0, 1, 0, 1, 0, 1),
(137, 'S', 'Science films', 1, 5, 1422936588, 1423176254, 0, 1, 0, 1, 0, 1),
(138, 'S', 'Stephen Hawking', 1, 5, 1422936588, 1423181030, 0, 6, 0, 6, 5, 1),
(139, 'K', 'Keira Knightley', 1, 5, 1422936646, 1423176283, 0, 1, 0, 1, 0, 1),
(140, 'B', 'Benedict Cumberbatch', 1, 5, 1422936646, 1423176283, 0, 1, 0, 1, 0, 1),
(141, 'H', 'Historical drama', 1, 5, 1422936646, 1423176629, 0, 3, 0, 3, 0, 3),
(142, 'W', 'World War II', 1, 5, 1422936646, 1423181474, 0, 7, 0, 7, 5, 2),
(143, 'G', 'Gay cinema', 1, 5, 1422936646, 1423176283, 0, 1, 0, 1, 0, 1),
(144, 'R', 'Reese Witherspoon', 1, 5, 1422936672, 1423180708, 0, 4, 0, 4, 3, 1),
(145, 'L', 'Laura Dern', 1, 5, 1422936672, 1423176334, 0, 1, 0, 1, 0, 1),
(146, 'P', 'Paul Thomas Anderson', 1, 5, 1422936829, 1423178693, 0, 4, 0, 4, 3, 1),
(147, 'A', 'Alternative cinema', 1, 5, 1422936829, 1423176383, 0, 1, 0, 1, 0, 1),
(148, 'S', 'Stoner films', 1, 5, 1422936829, 1423176383, 0, 1, 0, 1, 0, 1),
(149, '1', '1970s', 1, 5, 1422936829, 1423176383, 0, 1, 0, 1, 0, 1),
(150, 'N', 'New Hollywood', 1, 5, 1422936829, 1423176383, 0, 1, 0, 1, 0, 1),
(151, 'J', 'Joaquin Phoenix', 1, 5, 1422936829, 1423176383, 0, 1, 0, 1, 0, 1),
(152, 'M', 'Mike Leigh', 1, 5, 1422936880, 1423179711, 0, 5, 0, 5, 4, 1),
(153, 'T', 'Timothy Spall', 1, 5, 1422936880, 1423176453, 0, 1, 0, 1, 0, 1),
(154, 'F', 'Films about art', 1, 5, 1422936880, 1423176521, 0, 2, 0, 2, 0, 2),
(155, 'P', 'Period pieces', 1, 5, 1422936880, 1423176629, 0, 3, 0, 3, 0, 3),
(156, 'S', 'Socialist cinema', 1, 5, 1422936939, 1423176462, 0, 1, 0, 1, 0, 1),
(157, 'N', 'Neorealism', 1, 5, 1422936939, 1423176462, 0, 1, 0, 1, 0, 1),
(158, 'R', 'Realist cinema', 1, 5, 1422936939, 1423176462, 0, 1, 0, 1, 0, 1),
(159, 'M', 'Marion Cotillard', 1, 5, 1422936939, 1423180174, 0, 5, 0, 5, 4, 1),
(160, 'J', 'Jean-Pierre & Luc Dardennes', 1, 5, 1422936939, 1423176462, 0, 1, 0, 1, 0, 1),
(161, 'K', 'Kitsch', 1, 5, 1422936979, 1423176521, 0, 1, 0, 1, 0, 1),
(162, 'C', 'Camp', 1, 5, 1422936979, 1423176521, 0, 1, 0, 1, 0, 1),
(163, 'S', 'Social change', 1, 5, 1422937031, 1423176570, 0, 1, 0, 1, 0, 1),
(164, 'A', 'African-American cinema', 1, 5, 1422937031, 1423176570, 0, 1, 0, 1, 0, 1),
(165, 'A', 'Ava DuVernay', 1, 5, 1422937031, 1423176570, 0, 1, 0, 1, 0, 1),
(166, 'C', 'Civil rights', 1, 5, 1422937031, 1423176570, 0, 1, 0, 1, 0, 1),
(167, 'A', 'Angelina Jolie', 1, 5, 1422937071, 1423176629, 0, 1, 0, 1, 0, 1),
(168, 'F', 'Films about diseases', 1, 5, 1422937118, 1423176867, 0, 1, 0, 1, 0, 1),
(169, 'J', 'Julianne Moore', 1, 5, 1422937118, 1423180854, 0, 3, 0, 3, 2, 1),
(170, 'M', 'Musicals', 1, 5, 1422937162, 1423178148, 0, 3, 0, 3, 2, 1),
(171, 'M', 'Meryl Streep', 1, 5, 1422937162, 1423177481, 0, 1, 0, 1, 0, 1),
(172, 'S', 'Stephen Sondheim', 1, 5, 1422937162, 1423178148, 0, 4, 0, 4, 3, 1),
(173, 'E', 'Emily Blunt', 1, 5, 1422937162, 1423177481, 0, 1, 0, 1, 0, 1),
(174, 'A', 'Anna Kendrick', 1, 5, 1422937162, 1423177481, 0, 1, 0, 1, 0, 1),
(175, 'F', 'Fantasy', 1, 5, 1422937162, 1423177481, 0, 1, 0, 1, 0, 1),
(176, 'D', 'Disney', 1, 5, 1422937162, 1423178148, 0, 4, 0, 4, 3, 1),
(177, 'E', 'Emmanuel Lubezki', 1, 5, 1423010540, 1423181620, 0, 2, 0, 2, 2, 0),
(178, 'A', 'Alfred Hitchcock', 1, 5, 1423010540, 1423181620, 0, 1, 0, 1, 1, 0),
(179, 'R', 'Rope', 1, 5, 1423010540, 1423181620, 0, 1, 0, 1, 1, 0),
(180, 'A', 'Alexander Sokurov', 1, 5, 1423010540, 1423181620, 0, 1, 0, 1, 1, 0),
(181, 'R', 'Russian Ark', 1, 5, 1423010540, 1423181620, 0, 1, 0, 1, 1, 0),
(182, 'M', 'Movies about theater', 1, 5, 1423011081, 1423181598, 0, 1, 0, 1, 1, 0),
(183, 'A', 'Alzheimers', 1, 2, 1423173940, 1423176867, 0, 1, 0, 1, 0, 1),
(184, 'I', 'Into the Woods', 1, 5, 1423178052, 0, 0, 1, 0, 1, 1, 0),
(185, 'R', 'Rob Marshall', 1, 5, 1423178052, 0, 0, 1, 0, 1, 1, 0),
(186, 'I', 'Interstellar', 1, 5, 1423178096, 0, 0, 1, 0, 1, 1, 0),
(187, 'S', 'Science Fiction', 1, 5, 1423178096, 1423178584, 0, 6, 0, 6, 6, 0),
(188, 'M', 'Media', 1, 5, 1423178181, 1423178882, 0, 2, 0, 2, 2, 0),
(189, 'G', 'Gillian Flynn', 1, 5, 1423178213, 0, 0, 1, 0, 1, 1, 0),
(190, 'A', 'Adaptations', 1, 5, 1423178213, 1423181446, 0, 4, 0, 4, 4, 0),
(191, 'G', 'Gender studies', 1, 5, 1423178240, 1423178584, 0, 2, 0, 2, 2, 0),
(192, 'S', 'Social class', 1, 5, 1423178302, 0, 0, 1, 0, 1, 1, 0),
(193, 'F', 'Films about sports', 1, 5, 1423178302, 1423178410, 0, 4, 0, 4, 4, 0),
(194, 'H', 'Homosexuality', 1, 5, 1423178335, 1423181296, 0, 3, 0, 3, 3, 0),
(195, 'P', 'Psychological disorders', 1, 5, 1423178378, 0, 0, 1, 0, 1, 1, 0),
(196, 'T', 'True crime', 1, 5, 1423178410, 0, 0, 1, 0, 1, 1, 0),
(197, 'C', 'Casting', 1, 5, 1423178508, 0, 0, 1, 0, 1, 1, 0),
(198, 'C', 'Cinema verite', 1, 5, 1423178557, 1423178736, 0, 3, 0, 3, 3, 0),
(199, 'T', 'The Long Goodbye', 1, 5, 1423178635, 0, 0, 1, 0, 1, 1, 0),
(200, 'T', 'The Big Lebowski', 1, 5, 1423178635, 0, 0, 1, 0, 1, 1, 0),
(201, 'C', 'Chinatown', 1, 5, 1423178635, 0, 0, 1, 0, 1, 1, 0),
(202, 'L', 'Los Angeles', 1, 5, 1423178635, 0, 0, 1, 0, 1, 1, 0),
(203, 'T', 'Thomas Pynchon', 1, 5, 1423178669, 0, 0, 1, 0, 1, 1, 0),
(204, 'C', 'Cinematography', 1, 5, 1423178693, 1423181620, 0, 8, 0, 8, 8, 0),
(205, 'P', 'Politics', 1, 5, 1423178715, 1423181185, 0, 5, 0, 5, 5, 0),
(206, 'J', 'Joel & Ethan Coen', 1, 5, 1423178785, 0, 0, 1, 0, 1, 1, 0),
(207, 'M', 'Method acting', 1, 5, 1423178810, 0, 0, 1, 0, 1, 1, 0),
(208, 'R', 'Role preparation', 1, 5, 1423178810, 1423181030, 0, 9, 0, 9, 9, 0),
(209, 'D', 'Dick Pope', 1, 5, 1423179651, 1423179711, 0, 3, 0, 3, 3, 0),
(210, 'D', 'Dardenne', 1, 5, 1423179982, 1423180230, 0, 6, 0, 6, 6, 0),
(211, 'W', 'World Cinema', 1, 5, 1423180230, 0, 0, 1, 0, 1, 1, 0),
(212, 'N', 'Neo-realism', 1, 5, 1423180230, 0, 0, 1, 0, 1, 1, 0),
(213, 'J', 'Jazz', 1, 5, 1423180310, 1423180431, 0, 2, 0, 2, 2, 0),
(214, 'E', 'Editing', 1, 5, 1423180343, 1423180533, 0, 2, 0, 2, 2, 0),
(215, 'W', 'Whiplash', 1, 5, 1423180343, 1423180431, 0, 2, 0, 2, 2, 0),
(216, 'M', 'Music references', 1, 5, 1423180431, 0, 0, 1, 0, 1, 1, 0),
(217, 'F', 'Film development', 1, 5, 1423180708, 0, 0, 1, 0, 1, 1, 0),
(218, 'T', 'Terminal diseases', 1, 5, 1423180771, 1423180854, 0, 2, 0, 2, 2, 0),
(219, 'C', 'Credits', 1, 5, 1423180888, 0, 0, 1, 0, 1, 1, 0),
(220, 'F', 'Films about science', 1, 5, 1423180941, 0, 0, 1, 0, 1, 1, 0),
(221, 'F', 'Felicity Jones', 1, 5, 1423180982, 1423180999, 0, 2, 0, 2, 2, 0),
(222, 'E', 'Eddie Redmayne', 1, 5, 1423181030, 0, 0, 1, 0, 1, 1, 0),
(223, 'C', 'Civil Rights', 1, 5, 1423181121, 1423181185, 0, 4, 0, 4, 4, 0),
(224, 'S', 'Selma', 1, 5, 1423181121, 1423181204, 0, 5, 0, 5, 5, 0),
(225, 'L', 'Lyndon B. Johnson', 1, 5, 1423181144, 1423181170, 0, 1, 0, 1, 1, 0),
(226, 'A', 'Awards season', 1, 5, 1423181204, 0, 0, 1, 0, 1, 1, 0),
(227, 'O', 'Oscar', 1, 5, 1423181204, 0, 0, 1, 0, 1, 1, 0),
(228, 'A', 'Alan Turing', 1, 5, 1423181236, 1423181317, 0, 5, 0, 5, 5, 0),
(229, 'A', 'Artificial intelligence', 1, 5, 1423181252, 1423181317, 0, 2, 0, 2, 2, 0),
(230, 'I', 'In-jokes', 1, 5, 1423181392, 0, 0, 1, 0, 1, 1, 0),
(231, 'P', 'Production design', 1, 5, 1423181392, 1423181431, 0, 2, 0, 2, 2, 0),
(232, 'A', 'Aspect ratio', 1, 5, 1423181413, 0, 0, 1, 0, 1, 1, 0),
(233, 'W', 'World War I', 1, 5, 1423181474, 0, 0, 1, 0, 1, 1, 0),
(234, 'T', 'The Cold War', 1, 5, 1423181474, 0, 0, 1, 0, 1, 1, 0),
(235, 'M', 'Magical realism', 1, 5, 1423181583, 0, 0, 1, 0, 1, 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_templates`
--

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`, `protect_javascript`) VALUES
(1, 1, 1, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_home_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{site_url}"\n  body_id="home"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="homepage_featured"}\n{exp:template_morsels:fetch name="homepage_recent"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422249654, 1, 'n', 0, '', 'n', 'n', 'o', 531, 'n'),
(6, 1, 5, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_insights_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_insights_seodescription''}"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_feed" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250710, 1, 'n', 0, '', 'n', 'n', 'o', 321, 'n'),
(7, 1, 5, 'tag', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_insights_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_insights_seodescription''}"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_tag_feed" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250716, 1, 'n', 0, '', 'n', 'n', 'o', 84, 'n'),
(8, 1, 5, 'article', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="insights"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="insights_article" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250701, 1, 'n', 0, '', 'n', 'n', 'o', 338, 'n'),
(10, 1, 1, 'page', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="page"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="simple_page" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422250616, 1, 'n', 0, '', 'n', 'n', 'o', 77, 'n'),
(13, 1, 6, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_film_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_film_seodescription''}"\n  meta_url="{path=''film''}"\n  body_id="media"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_landing" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422256161, 1, 'n', 0, '', 'n', 'n', 'o', 431, 'n'),
(12, 1, 1, 'media', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="page"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_entry" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422264138, 1, 'n', 0, '', 'n', 'n', 'o', 253, 'n'),
(11, 1, 1, 'ask', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_entry"\n  meta_url="{current_url}"\n  body_id="ask"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main">\n  <article class="submit-form">\n    {exp:channel:entries\n      channel="pages"\n	  limit="1"\n	  cache="yes"\n	  refresh="1440"\n    }\n    <div class="form-top">\n      <header>\n        <h1>{title}</h1>\n      </header>\n      {page_body}\n    </div>\n    {/exp:channel:entries}\n    {exp:freeform:form\n      form_name="ask"\n      form:class="ask-form"\n      required="name|email|related_media|user_question"\n      require_captcha="yes"\n      inline_errors="yes"\n      return="question-received"\n    }\n      {if freeform:general_errors}\n      <div class="errors">\n        <h4>The form contains the following errors:</h4>\n        <ul>\n          {freeform:general_errors}\n          <li>{freeform:error_message}</li>\n          {/freeform:general_errors}\n        </ul>\n      </div>\n      {/if}\n      <div class="half first">\n        <h5><label for="name">Name</label></h5>\n        {freeform:field:name}\n      </div>\n      <div class="half last">\n        <h5><label for="email">Email Address</label></h5>\n        {freeform:field:email}\n      </div>\n      <h5><label for="related_media">Film/TV Show Related to this Question</label></h5>\n      {freeform:field:related_media}\n      <h5><label for="user_question">{freeform:label:user_question}</label></h5>\n      {freeform:field:user_question}\n      {if freeform:captcha}\n      <div class="captcha-box">\n        <p><label for="captcha">Please enter the word you see in the image below</label></p>\n        <div class="captcha-field">\n          {freeform:captcha}\n          <input type="text" name="captcha">\n        </div>\n      </div>\n      {/if}\n      <input type="submit" name="submit" value="Submit" />\n    {/exp:freeform:form}    \n  </article>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422601903, 1, 'n', 0, '', 'n', 'n', 'o', 51, 'n'),
(14, 1, 7, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="{exp:low_variables:single var=''low_tv_seotitle''}"\n  meta_description="{exp:low_variables:single var=''low_tv_seodescription''}"\n  meta_url="{path=''tv''}"\n  body_id="media"\n }\n{exp:template_morsels:fetch name="header"}\n\n{exp:template_morsels:fetch name="media_landing" page="{current_url}"}\n\n{exp:template_morsels:fetch name="foot"}', '', 1422257688, 1, 'n', 0, '', 'n', 'n', 'o', 97, 'n'),
(15, 1, 8, 'index', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="Search Results | {site_name}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{site_url}"\n  body_id="search"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main search-results">\n  <div class="inner">\n    <h3 class="search-heading">Search Results for : <span>{exp:search:keywords}</span></h3>\n    {exp:search:search_results}\n      {if channel_name == "articles"}\n        <article>\n          <h6>{categories}{category_name}{/categories}</h6>\n          <div class="summary">\n            {categories limit="1"}{if category_url_title == "q-and-a"}\n            <h3>Q: <a href="{url_title_path=''insights/article''}">{title}?</a></h3>\n            {if:else}\n            <h3><a href="{url_title_path=''insights/article''}">{title}</a></h3>\n            {/if}{/categories}\n            <p>{excerpt}</p>\n          </div>\n          <footer>\n            <p><a href="{url_title_path=''insights/article''}"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span> <span class="divider">|</span> Read More</a></p>\n          </footer>\n        </article>\n      {if:else}\n        <article>\n          <h6>{channel}</h6>\n          <div class="summary">\n            <h3><a href="{url_title_path=''media''}">{title}</a></h3>\n            <p class="excerpt">{excerpt}</p>\n          </div>\n          <footer>\n            <p><a href="{url_title_path=''media''}">See Page</a></p>\n          </footer>\n        </article>\n      {/if}\n      {paginate}\n        {if next_page}<a href="{auto_path}" class="button load">Load More</a>{/if}\n      {/paginate}\n    {/exp:search:search_results}\n  </div>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422595417, 1, 'n', 0, '', 'n', 'n', 'o', 12, 'n'),
(16, 1, 8, 'empty', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="No Results | {site_name}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{site_url}"\n  body_id="search"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main">\n  <div class="inner">\n    <article class="no-results">\n      <h2>No Results for: <span>{exp:search:keywords}</span></h2>\n      {exp:low_variables:single var=''low_message_noresults''}\n    </article>\n  </div>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422595823, 1, 'n', 0, '', 'n', 'n', 'o', 2, 'n'),
(17, 1, 1, 'message-sent', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="Message Sent | {site_name}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{current_url}"\n  body_id="message"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main">\n  <div class="inner">\n    <article class="message">\n      <h2>Your Message Has Been Sent</h2>\n      {exp:low_variables:single var=''low_message_sent''}\n    </article>\n  </div>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422599440, 1, 'n', 0, '', 'n', 'n', 'o', 3, 'n'),
(18, 1, 1, 'question-received', 'n', 'webpage', '{exp:template_morsels:fetch\n  name="head_landing"\n  meta_title="Question Received | {site_name}"\n  meta_description="{exp:low_variables:single var=''low_home_seodescription''}"\n  meta_url="{current_url}"\n  body_id="message"\n }\n{exp:template_morsels:fetch name="header"}\n\n<section class="main">\n  <div class="inner">\n    <article class="message">\n      <h2>We Received Your Question</h2>\n      {exp:low_variables:single var=''low_message_asked''}\n    </article>\n  </div>\n</section>\n\n{exp:template_morsels:fetch name="foot"}', '', 1422599607, 1, 'n', 0, '', 'n', 'n', 'o', 2, 'n');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_groups`
--

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`) VALUES
(1, 1, 'site', 1, 'y'),
(5, 1, 'insights', 2, 'n'),
(6, 1, 'film', 3, 'n'),
(7, 1, 'tv', 4, 'n'),
(8, 1, 'search', 5, 'n');

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
(1, 1, 1, 1423250725, 1440, 46, 20, 'head_landing', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>{meta_title} | {site_name}</title>\n  \n  <meta content="{meta_description}" name="description">\n  <meta content="{site_name}" name="author">\n\n  <meta content="{meta_title} | {site_name}" name="DC.title">\n  <meta content="{meta_description}" name="DC.subject">\n  <meta content="{site_name}" name="DC.creator">\n  \n  <meta content="{site_url}assets/img/fav/facebook.png" property="og:image">\n  <meta content="{meta_title} | {site_name}" property="og:title">\n  <meta content="{meta_description}" property="og:description">\n  <meta content="{meta_url}" property="og:url">\n  \n  <link content="{meta_url}" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="{site_url}assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="{site_url}assets/js/modernizr.js"></script>\n  \n  <link href="{site_url}assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="{site_url}assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n{svg_sprite}', '', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>{meta_title} | ScreenPrism</title>\n  \n  <meta content="{meta_description}" name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="{meta_title} | ScreenPrism" name="DC.title">\n  <meta content="{meta_description}" name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="{meta_title} | ScreenPrism" property="og:title">\n  <meta content="{meta_description}" property="og:description">\n  <meta content="{meta_url}" property="og:url">\n  \n  <link content="{meta_url}" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>', 'n', 1423164325),
(2, 1, 1, 1423250725, 1440, 42, 20, 'foot', '<footer class="site-footer">\n  <div class="inner">\n    <div class="footer-links">\n      <h1><a href="{site_url}">{site_name}</a></h1>\n      <ol class="legal-links">\n        <li><a href="{path=''terms-and-conditions''}">Terms &amp; Conditions</a></li>\n        <li><a href="{path=''privacy-policy''}">Privacy Policy</a></li>\n      </ol>\n      <ol class="social-links">\n      {exp:low_variables:pair var="low_facebook_link"}\n        {if low_facebook_link != ""}\n        <li>\n          <a href="{low_facebook_link}">\n            <svg viewBox="0 0 20 20" class="icon facebook-icon">\n              <use xlink:href="#facebook-icon"></use>\n            </svg>\n          </a>\n        </li>\n        {/if}\n      {/exp:low_variables:pair}\n      {exp:low_variables:pair var="low_twitter_link"}\n        {if low_twitter_link != ""}\n        <li>\n          <a href="{low_twitter_link}">\n            <svg viewBox="0 0 20 20" class="icon twitter-icon">\n              <use xlink:href="#twitter-icon"></use>\n            </svg>\n          </a>\n        </li>\n        {/if}\n      {/exp:low_variables:pair}\n      </ol>\n    </div>\n    <aside id="mailing-list" class="mailing-list">\n      <h5>Join our Mailing List</h5>\n      <form>\n        <input type="text" placeholder="Email Address">\n        <input type="submit" value="Subscribe">\n      </form>\n    </aside>\n    <small class="copyright">&copy; {current_time format="%Y"} {site_name}, LLC</small>\n  </div>\n</footer>\n\n<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>\n<script>!window.jQuery && document.write(unescape(''%3Cscript src="{site_url}assets/js/jquery.js"%3E%3C/script%3E''))</script>\n<script src="{site_url}assets/js/scripts.foot.deploy.js"></script>\n\n<!--[if (lt IE 9) & (!IEMobile)]>\n<script src="{site_url}assets/js/ie8.scripts.deploy.js"></script>\n<![endif]-->\n<!--[if (lt IE 8) & (!IEMobile)]>\n<script src=''assets/js/imgsizer.js''></script>\n<script>\n  addLoadEvent(function() {\n    if (document.getElementById && document.getElementsByTagName) {\n      var aImgs = document.getElementById("content").getElementsByTagName("img");\n      imgSizer.collate(aImgs);\n    }\n  });\n</script>\n<![endif]-->\n\n<script type="text/javascript">\n  var disqus_shortname = ''screenprism'';\n  (function () {\n    var s = document.createElement(''script''); s.async = true;\n    s.type = ''text/javascript'';\n    s.src = ''//'' + disqus_shortname + ''.disqus.com/count.js'';\n    (document.getElementsByTagName(''HEAD'')[0] || document.getElementsByTagName(''BODY'')[0]).appendChild(s);\n  }());\n</script>\n\n<script>\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\n  ga(''create'', ''UA-58999700-1'', ''auto'');\n  ga(''send'', ''pageview'');\n</script>\n\n</body>\n</html>', '', '<footer class="site-footer">\n  <div class="inner">\n    <div class="footer-links">\n      <h1><a href="http://stage.screenprism.com/">ScreenPrism</a></h1>\n      <ol class="legal-links">\n        <li><a href="http://stage.screenprism.com/terms-and-conditions">Terms &amp; Conditions</a></li>\n        <li><a href="http://stage.screenprism.com/privacy-policy">Privacy Policy</a></li>\n      </ol>\n      <ol class="social-links">\n      \n      <li>\n          <a href="https://twitter.com/screenprism">\n            <svg viewBox="0 0 20 20" class="icon twitter-icon">\n              <use xlink:href="#twitter-icon"></use>\n            </svg>\n          </a>\n        </li>\n      </ol>\n    </div>\n    <aside id="mailing-list" class="mailing-list">\n      <h5>Join our Mailing List</h5>\n      <form>\n        <input type="text" placeholder="Email Address">\n        <input type="submit" value="Subscribe">\n      </form>\n    </aside>\n    <small class="copyright">&copy; 2015 ScreenPrism, LLC</small>\n  </div>\n</footer>\n\n<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>\n<script>!window.jQuery && document.write(unescape(''%3Cscript src="http://stage.screenprism.com/assets/js/jquery.js"%3E%3C/script%3E''))</script>\n<script src="http://stage.screenprism.com/assets/js/scripts.foot.deploy.js"></script>\n\n<!--[if (lt IE 9) & (!IEMobile)]>\n<script src="http://stage.screenprism.com/assets/js/ie8.scripts.deploy.js"></script>\n<![endif]-->\n<!--[if (lt IE 8) & (!IEMobile)]>\n<script src=''assets/js/imgsizer.js''></script>\n<script>\n  addLoadEvent(function() {\n    if (document.getElementById && document.getElementsByTagName) {\n      var aImgs = document.getElementById("content").getElementsByTagName("img");\n      imgSizer.collate(aImgs);\n    }\n  });\n</script>\n<![endif]-->\n\n<script type="text/javascript">\n  var disqus_shortname = ''screenprism'';\n  (function () {\n    var s = document.createElement(''script''); s.async = true;\n    s.type = ''text/javascript'';\n    s.src = ''//'' + disqus_shortname + ''.disqus.com/count.js'';\n    (document.getElementsByTagName(''HEAD'')[0] || document.getElementsByTagName(''BODY'')[0]).appendChild(s);\n  }());\n</script>\n\n<script>\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\n  ga(''create'', ''UA-58999700-1'', ''auto'');\n  ga(''send'', ''pageview'');\n</script>\n\n</body>\n</html>', 'n', 1423164325),
(5, 1, 1, 1423268052, 1440, 418, 20, 'homepage_featured', '<section class="popular">\n  <div class="inner">\n    <h5 class="section-heading">Popular Articles</h5>\n    {exp:low_variables:parse}\n    {exp:channel:entries channel="articles" limit="5" fixed_order="{low_home_featured}" cache="yes" refresh="1440"}\n    {if count == 1}\n    <article class="featured">\n      <a href="{url_title_path=''insights/article''}">\n        {article_image}\n        <figure>\n          <img src="{url:800x450}" alt="{alt_text}">\n        </figure>\n        {/article_image}\n        <div class="summary">\n          {categories limit="1"}{if category_url_title == "q-and-a"}\n          <h3>Q: {title}?</h3>{if:else}<h3>{title}</h3>\n          {/if}{/categories}\n          <p>{article_summary}</p>\n          <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n        </div>\n      </a>\n    </article>\n    <ol class="article-list">\n    {if:else}\n      <li>\n        <a href="{url_title_path=''insights/article''}">\n          {article_image}\n          <figure>\n            <img src="{url:120x120}" alt="{alt_text}">\n          </figure>\n          {/article_image}\n          <div class="summary">\n            {categories limit="1"}{if category_url_title == "q-and-a"}\n            <h5>Q: {title}?</h5>{if:else}<h5>{title}</h5>\n            {/if}{/categories}\n            <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n          </div>\n        </a>\n      </li>\n    {/if}\n    {if count == total_results}</ol>{/if}\n    {/exp:channel:entries}\n    {/exp:low_variables:parse}\n  </div>\n</section>', '', '<section class="popular">\n  <div class="inner">\n    <h5 class="section-heading">Popular Articles</h5>\n    <article class="featured">\n      <a href="http://stage.screenprism.com/insights/article/what-does-birdman-have-to-do-with-michael-keatons-past-role-as-batman">\n        \n        <figure>\n          <img src="http://stage.screenprism.com/assets/img/article/_800x450/birdman-image.jpg" alt="">\n        </figure>\n        \n        <div class="summary">\n          <h3>Q: What does &#8220;Birdman&#8221; have to do with Michael Keaton’s past role as Batman?</h3>\n          <p>The role wasn''t written with Keaton in mind, but his past career definitely helped the film.</p>\n          <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-does-birdman-have-to-do-with-michael-keatons-past-role-as-batman">0</span></p>\n        </div>\n      </a>\n    </article>\n    <ol class="article-list"><li>\n        <a href="http://stage.screenprism.com/insights/article/whats-birdman-really-about-is-it-critiquing-the-dominance-of-comic-book-fil">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_120x120/birdman_(1).jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Q: What&#8217;s &#8220;Birdman&#8221; really about? Is it critiquing the dominance of comic book films in Hollywood?</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/whats-birdman-really-about-is-it-critiquing-the-dominance-of-comic-book-fil">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/insights/article/is-it-true-that-the-film-was-made-to-look-like-one-continuous-take-without">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_120x120/birdman.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Q: Is it true that the film was made to look like one continuous take without any cuts?</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/is-it-true-that-the-film-was-made-to-look-like-one-continuous-take-without">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/insights/article/was-it-necessary-for-birdman-to-be-filmed-to-look-like-one-continuous-take">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_120x120/michael-keaton-birdman-movie.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Q: Was it necessary for &#8220;Birdman&#8221; to be filmed to look like one continuous take?</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/was-it-necessary-for-birdman-to-be-filmed-to-look-like-one-continuous-take">0</span></p>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/insights/article/does-riggan-thomson-michael-keaton-actually-have-super-powers">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_120x120/wgirmpbhcvolewmk1cxk.jpg" alt="">\n          </figure>\n          \n          <div class="summary">\n            <h5>Q: Does Riggan Thomson (Michael Keaton) actually have super powers?</h5>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg>  <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/does-riggan-thomson-michael-keaton-actually-have-super-powers">0</span></p>\n          </div>\n        </a>\n      </li>\n    \n    </ol>\n  </div>\n</section>', 'n', 1423160274),
(6, 1, 1, 1423268052, 1440, 418, 20, 'homepage_recent', '<section class="recent">\n  <div class="inner">\n    <h5 class="section-heading">Recent Articles</h5>\n    <ol class="article-list">\n	  {exp:channel:entries channel="articles" limit="12" cache="yes" refresh="1440" disable="category_fields|member_data|pagination"}\n      <li>\n        <a href="{url_title_path=''insights/article''}">\n          {article_image}\n          <figure>\n            <img src="{url:720x360}" alt="{alt_text}" />\n          </figure>\n          {/article_image}\n          <div class="summary">\n            {categories limit="1"}{if category_url_title == "q-and-a"}\n            <h3>Q: {title}?</h3>{if:else}<h3>{title}</h3>\n            {/if}{/categories}\n            <p>{article_summary}</p>\n            <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n          </div>\n        </a>\n      </li>\n	  {/exp:channel:entries}\n    </ol>\n    <a href="{path=''insights''}" class="button load">See More</a>\n  </div>\n</section>', '', '<section class="recent">\n  <div class="inner">\n    <h5 class="section-heading">Recent Articles</h5>\n    <ol class="article-list">\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/GoodbyetoLanguage.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: What is &#8220;Goodbye to Language&#8221; actually about?</h3>\n            <p>Godard''s experimental feature has elicited a wide range of awe and confusion.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/onlylovers1.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: How was the original score conceived for &#8220;Only Lovers Left Alive&#8221;?</h3>\n            <p>Jarmusch said he drew much inspiration from Josef van Wissem’s lute music.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/only-lovers-left-alive-2013-L-mZnGID.jpeg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: How was Detroit used in &#8220;Only Lovers Left Alive&#8221;?</h3>\n            <p>“Detroit is a city I really deeply love...When I was a child it was almost mythological, the Paris of the Midwest."</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/673927401147773986.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: What does &#8220;Only Lovers Left Alive&#8221; do with the genre of vampire films?</h3>\n            <p>It gives us characters who, due to their longevity, are able to appreciate, bear witness and even lament the changes in world culture over the course of many centuries.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/6a00d8341bf7f753ef01bb07b10d55970d.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: There are complaints that &#8220;Interstellar&#8221; makes no logical sense. How so?</h3>\n            <p>Spoilers ahead.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/interstellar_a.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: What did physicists actually do for &#8220;Interstellar&#8221;?</h3>\n            <p>Much of the film is actually based on the work of Kip Thorne.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/o-INTERSTELLAR-TRAILER-facebook.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: Why does the hype over &#8220;Interstellar&#8221; draw comparisons to &#8220;2001: A Space Odyssey&#8221;?</h3>\n            <p>Both films are clearly works of great artistic ambition.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/emily_blunt_in_into_the_woods_2014.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: Which reported changes were not made to &#8220;Into the Woods&#8221;?</h3>\n            <p>Sondheim originally said that that Prince would not have an affair with the Baker’s wife, and that the song “Any Moment” would be cut.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: Why would Stephen Sondheim allow Disney to change &#8220;Into the Woods&#8221;?</h3>\n            <p>"You have to deal with reality."</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/Into-the-Woods-3.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: Is it true that Disney watered down &#8220;Into the Woods&#8221;?</h3>\n            <p>Many of the film''s changes remain controversial.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/what-does-this-film-say-about-media-how-does-that-tie-in-with-its-themes-on">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/gone-girl-df-01826cc_rgb.jpg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: What does &#8220;Gone Girl&#8221; say about media? How does that tie-in with its themes on marriage?</h3>\n            <p>While the film does remain faithful, it’s notable that one aspect of Flynn’s novel gets special emphasis: the media.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-does-this-film-say-about-media-how-does-that-tie-in-with-its-themes-on">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n      <li>\n        <a href="http://stage.screenprism.com/insights/article/is-this-film-really-misogynist-or-is-it-really-misandristic">\n          \n          <figure>\n            <img src="http://stage.screenprism.com/assets/img/article/_720x360/gone_girl_review_1.0.jpeg" alt="" />\n          </figure>\n          \n          <div class="summary">\n            <h3>Q: Is &#8220;Gone Girl&#8221; really misogynist? Or is it really misandristic?</h3>\n            <p>The film in general is misanthropic.</p>\n            <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/is-this-film-really-misogynist-or-is-it-really-misandristic">0</span></p>\n          </div>\n        </a>\n      </li>\n	  \n    </ol>\n    <a href="http://stage.screenprism.com/insights" class="button load">See More</a>\n  </div>\n</section>', 'n', 1423160274),
(7, 1, 1, 1423268051, 1440, 410, 20, 'insights_feed', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type {exp:channel:categories channel="articles" category_group="2" style="linear" backspace="1"}<a href="{path=''insights''}">{category_name}</a> {/exp:channel:categories}</p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      {exp:tag:cloud tag_group_id="2" orderby="count" websafe_separator="-"}\n      <option value="{path=''insights/tag''}/{websafe_tag}">{tag}</option>\n      {/exp:tag:cloud}\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    {exp:channel:entries\n      channel="articles"\n      limit="10"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    <article class="feature">\n      <h6>{categories}{category_name}{/categories}</h6>\n      {article_image}\n      <figure>\n        <a href="{url_title_path=''insights/article''}"><img src="{url:720x270}" alt="{alt_text}"></a>\n      </figure>\n      {/article_image}\n      <div class="summary">\n        {categories limit="1"}{if category_url_title == "q-and-a"}\n        <h2>Q: <a href="{url_title_path=''insights/article''}">{title}?</a></h2>\n        {if:else}\n        <h2><a href="{url_title_path=''insights/article''}">{title}</a></h2>\n        {/if}{/categories}\n        <p>{article_summary}</p>\n      </div>\n      <footer>\n        <p><a href="{url_title_path=''insights/article''}"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    {paginate}\n    {if next_page}<a href="{auto_path}" class="button load">Load More</a>{/if}\n    {/paginate}\n    {/exp:channel:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type <a href="http://stage.screenprism.com/insights/category/article">Article</a> <a href="http://stage.screenprism.com/insights/category/q-and-a">Q & A</a></p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Role-preparation">Role preparation</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Cinematography">Cinematography</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Clint-Eastwood">Clint Eastwood</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Dardenne">Dardenne</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/American-Sniper">American Sniper</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Birdman">Birdman</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Sienna-Miller">Sienna Miller</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Science-Fiction">Science Fiction</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Neo-noir">Neo-noir</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/war">war</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Wes-Anderson">Wes Anderson</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Stephen-Hawking">Stephen Hawking</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Alan-Turing">Alan Turing</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Selma">Selma</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Politics">Politics</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Bradley-Cooper">Bradley Cooper</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/World-War-II">World War II</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Adaptations">Adaptations</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Mike-Leigh">Mike Leigh</option>\n      \n      <option value="http://stage.screenprism.com/insights/tag/Christoph-Waltz">Christoph Waltz</option>\n      \n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about"><img src="http://stage.screenprism.com/assets/img/article/_720x270/GoodbyetoLanguage.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about">What is &#8220;Goodbye to Language&#8221; actually about?</a></h2>\n        <p>Godard''s experimental feature has elicited a wide range of awe and confusion.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film"><img src="http://stage.screenprism.com/assets/img/article/_720x270/onlylovers1.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film">How was the original score conceived for &#8220;Only Lovers Left Alive&#8221;?</a></h2>\n        <p>Jarmusch said he drew much inspiration from Josef van Wissem’s lute music.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/how-was-the-original-score-conceived-for-the-film">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film"><img src="http://stage.screenprism.com/assets/img/article/_720x270/only-lovers-left-alive-2013-L-mZnGID.jpeg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film">How was Detroit used in &#8220;Only Lovers Left Alive&#8221;?</a></h2>\n        <p>“Detroit is a city I really deeply love...When I was a child it was almost mythological, the Paris of the Midwest."</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/how-was-detroit-used-in-the-film">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films"><img src="http://stage.screenprism.com/assets/img/article/_720x270/673927401147773986.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films">What does &#8220;Only Lovers Left Alive&#8221; do with the genre of vampire films?</a></h2>\n        <p>It gives us characters who, due to their longevity, are able to appreciate, bear witness and even lament the changes in world culture over the course of many centuries.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-does-this-film-do-with-the-genre-of-vampire-films">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so"><img src="http://stage.screenprism.com/assets/img/article/_720x270/6a00d8341bf7f753ef01bb07b10d55970d.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so">There are complaints that &#8220;Interstellar&#8221; makes no logical sense. How so?</a></h2>\n        <p>Spoilers ahead.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film"><img src="http://stage.screenprism.com/assets/img/article/_720x270/interstellar_a.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film">What did physicists actually do for &#8220;Interstellar&#8221;?</a></h2>\n        <p>Much of the film is actually based on the work of Kip Thorne.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-did-physicists-actually-do-for-the-film">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey"><img src="http://stage.screenprism.com/assets/img/article/_720x270/o-INTERSTELLAR-TRAILER-facebook.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey">Why does the hype over &#8220;Interstellar&#8221; draw comparisons to &#8220;2001: A Space Odyssey&#8221;?</a></h2>\n        <p>Both films are clearly works of great artistic ambition.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film"><img src="http://stage.screenprism.com/assets/img/article/_720x270/emily_blunt_in_into_the_woods_2014.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film">Which reported changes were not made to &#8220;Into the Woods&#8221;?</a></h2>\n        <p>Sondheim originally said that that Prince would not have an affair with the Baker’s wife, and that the song “Any Moment” would be cut.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/which-reported-changes-were-not-made-to-the-film">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical"><img src="http://stage.screenprism.com/assets/img/article/_720x270/Into-the-Woods-Makes-Excellent-Transition-from-Stage-to-Film-Video.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical">Why would Stephen Sondheim allow Disney to change &#8220;Into the Woods&#8221;?</a></h2>\n        <p>"You have to deal with reality."</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    \n    <article class="feature">\n      <h6>Q & A</h6>\n      \n      <figure>\n        <a href="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical"><img src="http://stage.screenprism.com/assets/img/article/_720x270/Into-the-Woods-3.jpg" alt=""></a>\n      </figure>\n      \n      <div class="summary">\n        <h2>Q: <a href="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical">Is it true that Disney watered down &#8220;Into the Woods&#8221;?</a></h2>\n        <p>Many of the film''s changes remain controversial.</p>\n      </div>\n      <footer>\n        <p><a href="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/is-it-true-that-disney-watered-down-the-musical">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    \n    <a href="http://stage.screenprism.com/cp/content_publish/entry_form/P10" class="button load">Load More</a>\n  </div>\n</section>', 'n', 1423164325);
INSERT INTO `exp_template_morsels_cache` (`cache_id`, `member_id`, `site_id`, `date`, `refresh`, `refreshes`, `rows`, `morsel_name`, `code`, `notes`, `morsel`, `preparsed_snippet`, `filetime`) VALUES
(8, 1, 1, 1423268051, 1440, 389, 20, 'insights_tag_feed', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type {exp:channel:categories channel="articles" category_group="2" style="linear" backspace="1"}<a href="{path=''insights''}">{category_name}</a> {/exp:channel:categories}</p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      {exp:tag:cloud tag_group_id="2" orderby="count" websafe_separator="-"}\n      <option value="{path=''insights/tag''}/{websafe_tag}"{if segment_3 == websafe_tag} selected{/if}>{tag}</option>\n      {/exp:tag:cloud}\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    {exp:tag:entries\n      channel="articles"\n      limit="10"\n      inclusive="yes"\n      websafe_separator="-"\n      paginate="bottom"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    <article class="feature">\n      <h6>{categories}{category_name}{/categories}</h6>\n      {article_image}\n      <figure>\n        <a href="{url_title_path=''insights/article''}"><img src="{url:720x270}" alt="{alt_text}"></a>\n      </figure>\n      {/article_image}\n      <div class="summary">\n        {categories limit="1"}{if category_url_title == "q-and-a"}\n        <h2>Q: <a href="{url_title_path=''insights/article''}">{title}?</a></h2>\n        {if:else}\n        <h2><a href="{url_title_path=''insights/article''}">{title}</a></h2>\n        {/if}{/categories}\n        <p>{article_summary}</p>\n      </div>\n      <footer>\n        <p><a href="{url_title_path=''insights/article''}"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span> <span class="spacer">|</span> Read More</a></p>\n      </footer>\n    </article>\n    {tag_paginate}\n    {if next_page}<a href="{tag_auto_path}" class="button load">Load More</a>{/if}\n    {/tag_paginate}\n    {/exp:tag:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Filter by Type <a href="http://stage.screenprism.com/insights/category/article">Article</a> <a href="http://stage.screenprism.com/insights/category/q-and-a">Q & A</a></p>\n    <select data-placeholder="Filter by Topic" class="chosen-select">\n      <option></option>\n      <option value="http://stage.screenprism.com/insights/tag/Role-preparation">Role preparation</option><option value="http://stage.screenprism.com/insights/tag/Cinematography">Cinematography</option><option value="http://stage.screenprism.com/insights/tag/Clint-Eastwood">Clint Eastwood</option><option value="http://stage.screenprism.com/insights/tag/Dardenne">Dardenne</option><option value="http://stage.screenprism.com/insights/tag/American-Sniper">American Sniper</option><option value="http://stage.screenprism.com/insights/tag/Birdman">Birdman</option><option value="http://stage.screenprism.com/insights/tag/Sienna-Miller">Sienna Miller</option><option value="http://stage.screenprism.com/insights/tag/Science-Fiction">Science Fiction</option><option value="http://stage.screenprism.com/insights/tag/Neo-noir">Neo-noir</option><option value="http://stage.screenprism.com/insights/tag/war">war</option><option value="http://stage.screenprism.com/insights/tag/Wes-Anderson">Wes Anderson</option><option value="http://stage.screenprism.com/insights/tag/Stephen-Hawking">Stephen Hawking</option><option value="http://stage.screenprism.com/insights/tag/Alan-Turing">Alan Turing</option><option value="http://stage.screenprism.com/insights/tag/Selma">Selma</option><option value="http://stage.screenprism.com/insights/tag/Politics">Politics</option><option value="http://stage.screenprism.com/insights/tag/Bradley-Cooper">Bradley Cooper</option><option value="http://stage.screenprism.com/insights/tag/World-War-II">World War II</option><option value="http://stage.screenprism.com/insights/tag/Adaptations">Adaptations</option><option value="http://stage.screenprism.com/insights/tag/Mike-Leigh">Mike Leigh</option><option value="http://stage.screenprism.com/insights/tag/Christoph-Waltz">Christoph Waltz</option>\n    </select>\n  </div>\n</section>\n<section class="main thoughts-feed">\n  <div class="inner">\n    \n  </div>\n</section>', 'n', 1422295271),
(9, 1, 1, 1423268052, 1440, 395, 20, 'insights_article', '<section class="main">\n  <div class="content single thoughts feature">\n    {exp:channel:entries\n      channel="articles"\n      limit="1"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data|pagination"\n    }\n      {article_image}\n      <figure class="article-image">\n        <img src="{url:1080x360}" alt="Hero image">\n      </figure>\n      {/article_image}\n      <article>\n        <header>\n          {categories limit="1"}{if category_url_title == "q-and-a"}\n          <h1>Q: {title}?</h1>{if:else}<h1>{title}</h1>\n          {/if}{/categories}\n          {article_related_media}\n          <h5><a href="{url_title_path=''media''}">{title}</a></h5>\n          {/article_related_media}\n          <p class="by-line">{if article_author != ""}{article_author}{if:else}{author}{/if} <span class="spacer">|</span> <time datetime="{entry_date format=''%Y-%m-%dT%H%i''}">{entry_date format="%F %j, %Y"}</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></a></p>\n        </header>\n        {article_body}\n        <footer>\n          <ul class="tags">\n          {exp:tag:tags case="title" websafe_separator="-"}\n            <li><a href="{path=''insights/tag''}/{websafe_tag}">{tag}</a></li>\n          {/exp:tag:tags}\n          </ul>\n        </footer>\n      </article>\n    {/exp:channel:entries}\n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          {exp:tag:related_entries channel="articles" limit="3"}\n            <li>\n              <a href="{url_title_path=''insights/article''}">\n                {categories limit="1"}{if category_url_title == "q-and-a"}\n                <h5>Q: {title}?</h5>{if:else}<h5>{title}</h5>\n                {/if}{/categories}\n                <p class="meta">{categories}{category_name}{/categories} <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {/exp:tag:related_entries}\n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''screenprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n    </div>\n  </div>\n</section>', '', '<section class="main">\n  <div class="content single thoughts feature">\n    <figure class="article-image">\n        <img src="http://stage.screenprism.com/assets/img/article/_1080x360/GoodbyetoLanguage.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Q: What is &#8220;Goodbye to Language&#8221; actually about?</h1>\n          \n          <h5><a href="http://stage.screenprism.com/media/goodbye-to-language">Goodbye to Language 3D</a></h5>\n          \n          <p class="by-line">Screen Prism <span class="spacer">|</span> <time datetime="2015-02-01T0003">February 1, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-is-goodbye-to-language-actually-about">0</span></a></p>\n        </header>\n        <p><em>Goodbye to Language&nbsp;</em>(or&nbsp;<em>Adieu au Langage</em>) is a 2014 French-Swish 3D experimental narrative essay film written and directed by film legend Jean-Luc Godard.</p>\n\n<p>Even with&nbsp;his most accessible films, Jean-Luc Godard challenges not only&nbsp;the audience but modern conventions of filmmaking.&nbsp;Many of his earliest innovations&nbsp;from the 1960s&nbsp;have become commonplace in film and&nbsp;media - techniques&nbsp;such as jump cuts (almost like a record skipping through time), character asides or breaking the fourth wall (think: Kevin Spacey in <em>House of Cards</em>).&nbsp; Once revolutionary in form, these techniques are now very familier,&nbsp;even to those who have never even seen his films.</p>\n\n<p>Godard hasn&#39;t made a widely-distributed, commercial work in years, but his experimental work continues to garner praise and&nbsp;<em>Goodbye to Language 3D&nbsp;</em>is possibly one of his most acclaimed films. Though its use of 3D is surprising and unprecendented,&nbsp;many of its admirers concede that the film is&nbsp;very difficult to understand. &nbsp;Compare:&nbsp;James Joyce&#39;s <em>Ulysses</em>, which&nbsp;can be difficult&nbsp;to understand.</p>\n\n<p>Celebrated film scholar,&nbsp;David Bordwell, shared his thoughts in a recent <a href="http://www.npr.org/2014/10/29/359658248/at-83-filmmaker-jean-luc-godard-makes-the-leap-to-3-d">interview with&nbsp;NPR</a>. &nbsp;Bordwell explained, "I think what [Godard is]&nbsp;talking about &mdash; and this is one of the reasons the dog Roxy is very prominent in the film &mdash; is that he&#39;s trying to get people to look at the world in a kind of an unspoiled way.&nbsp;There are hints throughout the film that animal consciousness is kind of closer to the world than we are, that language sets up a barrier or filter or screen between us and what&#39;s really there. And although the film is full of language, talk, printed text and so on, nevertheless I think there&#39;s a sense he wants the viewer to scrape away a lot of the ordinary conceptions we have about how we communicate and look at the world afresh."&nbsp;</p>\n\n<p><img alt="" src="http://stage.screenprism.com/assets/img/uploads/Goodbye_to_Language_-_Girl_at_Water_Spout.jpg" style="height:449px; width:800px" /></p>\n        <footer>\n          <ul class="tags">\n          \n          </ul>\n        </footer>\n      </article>\n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''screenprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n    </div>\n  </div>\n</section>', 'n', 1423164366),
(10, 1, 1, 1423250725, 1440, 32, 20, 'header', '<header class="site-header">\n  <div class="header-top inner">\n    {exp:template_morsels:escape}\n    {exp:search:simple_form\n      channel="articles|film|television"\n      show_future_entries="yes"\n      search_in="everywhere"\n      results="20"\n      result_page="search/index"\n      no_result_page="search/empty"\n      form_class="search-bar"\n    }\n      <input type="text" name="keywords" id="keywords" value="" placeholder="Search by film title, genre, director&hellip;" />\n      <button>\n        <span>Search</span>\n        <svg viewBox="0 0 20 20" class="icon search-icon"><use xlink:href="#search-icon"></use></svg>\n      </button>\n    {/exp:search:simple_form}\n    {/exp:template_morsels:escape}\n    <div class="logo-group">\n      <h1><a href="{path=''site_index''}">ScreenPrism</a></h1>\n      <p class="tagline">{exp:low_variables:single var=''low_site_tagline''}</p>\n    </div>\n  </div>\n  <div class="header-bottom">\n    <div class="inner">\n      <nav>\n        <ol class="site-nav">\n          <li class="insights"><a href="{path=''insights''}">Insights</a></li>\n          <li class="film"><a href="{path=''film''}">Film</a></li>\n          <li class="tv"><a href="{path=''tv''}">TV</a></li>\n          <li class="ask"><a href="{path=''ask''}">Ask</a></li>\n          <li class="about"><a href="{path=''about''}">About</a></li>\n          <li class="subscribe"><a href="#mailing-list">Email Subscribe</a></li>\n        </ol>\n      </nav>\n      <div class="header-links">\n        <div class="mailing-list">\n          <a href="#mailing-list">Email Subscribe</a>\n          <div class="form-wrapper">\n            <form>\n              <h6>Join Our Mailing List</h6>\n              <input type="text" placeholder="Email Address">\n              <input type="submit" value="Subscribe">\n            </form>\n          </div>\n        </div>\n        <ol class="social-links">\n          {exp:low_variables:pair var="low_facebook_link"}\n            {if low_facebook_link != ""}\n            <li>\n              <a href="{low_facebook_link}">\n                <svg viewBox="0 0 20 20" class="icon facebook-icon">\n                  <use xlink:href="#facebook-icon"></use>\n                </svg>\n              </a>\n            </li>\n            {/if}\n          {/exp:low_variables:pair}\n          {exp:low_variables:pair var="low_twitter_link"}\n            {if low_twitter_link != ""}\n            <li>\n              <a href="{low_twitter_link}">\n                <svg viewBox="0 0 20 20" class="icon twitter-icon">\n                  <use xlink:href="#twitter-icon"></use>\n                </svg>\n              </a>\n            </li>\n            {/if}\n          {/exp:low_variables:pair}\n        </ol>\n      </div>\n    </div>\n  </div>\n</header>', '', '<header class="site-header">\n  <div class="header-top inner">\n    \n    {exp:search:simple_form\n      channel="articles|film|television"\n      show_future_entries="yes"\n      search_in="everywhere"\n      results="20"\n      result_page="search/index"\n      no_result_page="search/empty"\n      form_class="search-bar"\n    }\n      <input type="text" name="keywords" id="keywords" value="" placeholder="Search by film title, genre, director&hellip;" />\n      <button>\n        <span>Search</span>\n        <svg viewBox="0 0 20 20" class="icon search-icon"><use xlink:href="#search-icon"></use></svg>\n      </button>\n    {/exp:search:simple_form}\n    \n    <div class="logo-group">\n      <h1><a href="http://stage.screenprism.com/">ScreenPrism</a></h1>\n      <p class="tagline">The hub for Film & TV analysis</p>\n    </div>\n  </div>\n  <div class="header-bottom">\n    <div class="inner">\n      <nav>\n        <ol class="site-nav">\n          <li class="insights"><a href="http://stage.screenprism.com/insights">Insights</a></li>\n          <li class="film"><a href="http://stage.screenprism.com/film">Film</a></li>\n          <li class="tv"><a href="http://stage.screenprism.com/tv">TV</a></li>\n          <li class="ask"><a href="http://stage.screenprism.com/ask">Ask</a></li>\n          <li class="about"><a href="http://stage.screenprism.com/about">About</a></li>\n          <li class="subscribe"><a href="#mailing-list">Email Subscribe</a></li>\n        </ol>\n      </nav>\n      <div class="header-links">\n        <div class="mailing-list">\n          <a href="#mailing-list">Email Subscribe</a>\n          <div class="form-wrapper">\n            <form>\n              <h6>Join Our Mailing List</h6>\n              <input type="text" placeholder="Email Address">\n              <input type="submit" value="Subscribe">\n            </form>\n          </div>\n        </div>\n        <ol class="social-links">\n          \n          <li>\n              <a href="https://twitter.com/screenprism">\n                <svg viewBox="0 0 20 20" class="icon twitter-icon">\n                  <use xlink:href="#twitter-icon"></use>\n                </svg>\n              </a>\n            </li>\n        </ol>\n      </div>\n    </div>\n  </div>\n</header>', 'n', 1423164325),
(11, 1, 1, 1423268051, 1440, 584, 20, 'head_entry', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  {exp:seo_lite use_last_segment="yes"}\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="{site_url}assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="{site_url}assets/js/modernizr.js"></script>\n  \n  <link href="{site_url}assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="{site_url}assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="{site_url}assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n{svg_sprite}', '', '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n<meta content="ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://stage.screenprism.com/cp/content_publish/entry_form" property="og:url">\n<link content="http://stage.screenprism.com/cp/content_publish/entry_form" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="{body_id}">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>', 'n', 1422905208),
(12, 1, 1, 1423251163, 1440, 19, 20, 'simple_page', '<section class="main">\n  <div class="content single">\n    {exp:channel:entries\n      channel="pages"\n      limit="1"\n      cache="yes"\n      refresh="1440"\n    }\n    <article>\n      <header>\n        <h1>{title}</h1>\n      </header>\n	  {page_body}\n    </article>\n	{/exp:channel:entries}\n    <aside>\n      <h4>Contact Info</h4>\n      {exp:low_variables:single var=''low_message_contact''}\n      {exp:template_morsels:escape}\n      {exp:freeform:form\n        form_name="contact"\n        form:class="contact-form"\n        required="name|email|subject|message"\n        require_captcha="yes"\n        inline_errors="yes"\n        return="message-sent"\n      }\n        {if freeform:general_errors}\n        <div class="errors">\n          <h4>The form contains the following errors:</h4>\n          <ul>\n            {freeform:general_errors}\n            <li>{freeform:error_message}</li>\n            {/freeform:general_errors}\n          </ul>\n        </div>\n        {/if}\n        <h5><label for="name">{freeform:label:name}</label></h5>\n        {freeform:field:name}\n        <h5><label for="email">{freeform:label:email}</label></h5>\n        {freeform:field:email}\n        <h5><label for="subject">{freeform:label:subject}</label></h5>\n        {freeform:field:subject}\n        <h5><label for="message">{freeform:label:message}</label></h5>\n        {freeform:field:message}\n        {if freeform:captcha}\n        <div class="captcha-box">\n          <p><label for="captcha">Please enter the word you see in the image below</label></p>\n          <div class="captcha-field">\n            {freeform:captcha}\n            <input type="text" name="captcha">\n          </div>\n        </div>\n        {/if}\n        <input type="submit" name="submit" value="Send" />\n      {/exp:freeform:form}\n      {/exp:template_morsels:escape}\n    </aside>\n  </div>\n</section>', '', '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>About Us</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n\n<p>If you want to submit a question about a particular film or tv show, please visit our&nbsp;<a href="http://stage.screenprism.com">Ask Page</a>.</p>\n      \n      {exp:freeform:form\n        form_name="contact"\n        form:class="contact-form"\n        required="name|email|subject|message"\n        require_captcha="yes"\n        inline_errors="yes"\n        return="message-sent"\n      }\n        {!-- ra:00000000123c6d4c000000002487ceda --}{if freeform:general_errors}\n        <div class="errors">\n          <h4>The form contains the following errors:</h4>\n          <ul>\n            {freeform:general_errors}\n            <li>{freeform:error_message}</li>\n            {/freeform:general_errors}\n          </ul>\n        </div>\n        {/if}\n        <h5><label for="name">{freeform:label:name}</label></h5>\n        {freeform:field:name}\n        <h5><label for="email">{freeform:label:email}</label></h5>\n        {freeform:field:email}\n        <h5><label for="subject">{freeform:label:subject}</label></h5>\n        {freeform:field:subject}\n        <h5><label for="message">{freeform:label:message}</label></h5>\n        {freeform:field:message}\n        {!-- ra:00000000123c6d6a000000002487ceda --}{if freeform:captcha}\n        <div class="captcha-box">\n          <p><label for="captcha">Please enter the word you see in the image below</label></p>\n          <div class="captcha-field">\n            {freeform:captcha}\n            <input type="text" name="captcha">\n          </div>\n        </div>\n        {/if}\n        <input type="submit" name="submit" value="Send" />\n      {/exp:freeform:form}\n      \n    </aside>\n  </div>\n</section>', 'n', 1423164763),
(13, 1, 1, 1423263882, 1440, 212, 20, 'media_landing', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="{path=''{segment_1}''}">Release Date</a> <a href="{path=''{segment_1}/title''}">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      {exp:channel:categories\n        category_group="1"\n        channel="film"\n        style="linear"\n        disable="category_fields"\n      }\n      <option {if segment_2 == "title"}value="{path=''{segment_1}/title''}"{if:else}value="{path=''{segment_1}''}"{/if}{if (segment_3 == category_url_title) OR (segment_4 == category_url_title)} selected{/if}>{category_name}</option>\n      {/exp:channel:categories}\n    </select>\n  </div>\n</section>\n<section id="media-list" class="main films-list">\n  <div class="inner">\n    {exp:channel:entries\n      {if segment_1 == "film"}\n        channel="film"\n      {/if}\n      {if segment_1 == "tv"}\n        channel="television"\n      {/if}\n      {if segment_2 == "title"}\n        orderby="title"\n        sort="asc"\n      {/if}\n      limit="12"\n      show_future_entries="yes"\n      paginate="bottom"\n      cache="yes"\n      refresh="1440"\n      disable="category_fields|member_data"\n    }\n    {if count == 1}<ol>{/if}\n      <li>\n        <a href="{url_title_path=''media''}">\n          <figure>\n            {if media_cover != ""}\n              <img src="{media_cover:url:270x400}" alt="Media graphic">\n            {if:else}\n              <img src="{site_url}assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            {/if}\n          </figure>\n          <div class="details">\n            <h5>{title}</h5>\n          </div>\n        </a>\n      </li>\n    {if count == total_results}\n    </ol>\n    {paginate}\n      {if next_page}<a href="{auto_path}" class="button load">Load More</a>{/if}\n    {/paginate}\n    {/if}\n    {/exp:channel:entries}\n  </div>\n</section>', '', '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://stage.screenprism.com/cp">Release Date</a> <a href="http://stage.screenprism.com/cp/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://stage.screenprism.com/cp/category/comedy">Comedy</option><option value="http://stage.screenprism.com/cp/category/crime">Crime</option><option value="http://stage.screenprism.com/cp/category/documentary">Documentary</option><option value="http://stage.screenprism.com/cp/category/drama">Drama</option><option value="http://stage.screenprism.com/cp/category/experimental">Experimental</option><option value="http://stage.screenprism.com/cp/category/fantasy">Fantasy</option><option value="http://stage.screenprism.com/cp/category/horror">Horror</option><option value="http://stage.screenprism.com/cp/category/musical">Musical</option><option value="http://stage.screenprism.com/cp/category/romantic">Romantic</option><option value="http://stage.screenprism.com/cp/category/science-fiction">Science Fiction</option><option value="http://stage.screenprism.com/cp/category/war">War</option><option value="http://stage.screenprism.com/cp/category/western">Western</option><option value="http://stage.screenprism.com/cp/category/world-cinema">World Cinema</option>\n    </select>\n  </div>\n</section>\n<section id="media-list" class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://stage.screenprism.com/media/what-is-goodbye-to-language-actually-about">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>What is &#8220;Goodbye to Language&#8221; actually about</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/how-was-the-original-score-conceived-for-the-film">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>How was the original score conceived for &#8220;Only Lovers Left Alive&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/how-was-detroit-used-in-the-film">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>How was Detroit used in &#8220;Only Lovers Left Alive&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/what-does-this-film-do-with-the-genre-of-vampire-films">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>What does &#8220;Only Lovers Left Alive&#8221; do with the genre of vampire films</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/there-are-complaints-that-the-film-makes-no-logical-sense.-how-so">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>There are complaints that &#8220;Interstellar&#8221; makes no logical sense. How so</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/what-did-physicists-actually-do-for-the-film">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>What did physicists actually do for &#8220;Interstellar&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/why-does-the-hype-draw-comparisons-to-2001-a-space-odyssey">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Why does the hype over &#8220;Interstellar&#8221; draw comparisons to &#8220;2001: A Space Odyssey&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/which-reported-changes-were-not-made-to-the-film">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Which reported changes were not made to &#8220;Into the Woods&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/why-would-stephen-sondheim-allow-disney-to-change-his-celebrated-musical">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Why would Stephen Sondheim allow Disney to change &#8220;Into the Woods&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/is-it-true-that-disney-watered-down-the-musical">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Is it true that Disney watered down &#8220;Into the Woods&#8221;</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/what-does-this-film-say-about-media-how-does-that-tie-in-with-its-themes-on">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>What does &#8220;Gone Girl&#8221; say about media? How does that tie-in with its themes on marriage</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/is-this-film-really-misogynist-or-is-it-really-misandristic">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            \n          </figure>\n          <div class="details">\n            <h5>Is &#8220;Gone Girl&#8221; really misogynist? Or is it really misandristic</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://stage.screenprism.com/cp/content_publish/entry_form/P12" class="button load">Load More</a>\n  </div>\n</section>', 'n', 1423075466);
INSERT INTO `exp_template_morsels_cache` (`cache_id`, `member_id`, `site_id`, `date`, `refresh`, `refreshes`, `rows`, `morsel_name`, `code`, `notes`, `morsel`, `preparsed_snippet`, `filetime`) VALUES
(14, 1, 1, 1423268052, 1440, 567, 20, 'media_entry', '<section class="main">\n  <div class="content media-article">\n    {exp:channel:entries\n      channel="film|television"\n      limit="1"\n      show_future_entries="yes"\n      cache="yes"\n      refresh="1440"\n      disable="categories|category_fields|member_data|pagination"\n    }\n    <header>\n      <h1>{title}</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      {if media_cover != ""}\n        <img src="{media_cover:url:350x520}" alt="Media graphic">\n      {if:else}\n        <img src="{site_url}assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n      {/if}\n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="{entry_date format=''%Y-%m-%d''}">{entry_date format="%F %j, %Y"}</time></li>\n        <li><strong>Directed By:</strong> {media_director}</li>\n        <li><strong>Written By:</strong> {media_writer}</li>\n        <li><strong>Starring:</strong> {media_starring backspace="2"}<span>{item}</span>, {/media_starring}</li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          {media_summary}\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        {exp:playa:parents\n          channel="articles"\n          category="5"\n          disable="category_fields|member_data|pagination"\n          var_prefix="rel"\n        }\n        {if {rel:total_results} >= 1}\n          {if {rel:count} == 1}<ul>{/if}\n            <li>\n              <a href="{rel:url_title_path=''insights/article''}">\n                <h3>Q: {rel:title}?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {if {rel:count} == {rel:total_results}}</ul>{/if}\n        {/if}\n        {if no_parents}<p>There are no Q &amp; A''s at this time. If you have a question, please send it to us using the form at the bottom of this page.</p>{/if}\n        {/exp:playa:parents}\n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        {exp:playa:parents\n          channel="articles"\n          category="6"\n          disable="category_fields|member_data|pagination"\n          var_prefix="rel"\n        }\n        {if {rel:total_results} >= 1}\n          {if {rel:count} == 1}<ul>{/if}\n            <li>\n              <a href="{rel:url_title_path=''insights/article''}">\n                <h5>{rel:title}</h5>\n                <p>{rel:article_summary}</p>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="{url_title_path=''insights/article''}">0</span></p>\n              </a>\n            </li>\n          {if {rel:count} == {rel:total_results}}</ul>{/if}\n        {/if}\n        {if no_parents}<p>There are no articles at this time. Please check back again soon.</p>{/if}\n        {/exp:playa:parents}\n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        {if media_external != ""}\n        {media_external}\n        {if row_count == 1}<ul>{/if}\n          <li>\n            <a href="{media_link_url}" target="_blank">\n              <h5>{media_link_title}</h5>\n              <p>{media_link_summary}</p>\n              <p><strong>Source:</strong> {media_link_source}</p>\n            </a>\n          </li>\n        {if row_count == total_rows}</ul>{/if}\n        {/media_external}\n        {if:else}\n          <p>There are no links available at this time. Please check back soon.</p>\n        {/if}\n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        {exp:template_morsels:escape}\n        {exp:freeform:form\n          form_name="ask"\n          form:class="ask-form"\n          required="name|email|related_media|user_question"\n          require_captcha="yes"\n          inline_errors="yes"\n          return="question-received"\n        }\n          <input type="hidden" name="related_media" id="related_media" value="{title}">\n          {if freeform:general_errors}\n          <div class="errors">\n            <h4>The form contains the following errors:</h4>\n            <ul>\n              {freeform:general_errors}\n              <li>{freeform:error_message}</li>\n              {/freeform:general_errors}\n            </ul>\n          </div>\n          {/if}\n          <div class="half first">\n            <h5><label for="name">Name</label></h5>\n            {freeform:field:name}\n          </div>\n          <div class="half last">\n            <h5><label for="email">Email Address</label></h5>\n            {freeform:field:email}\n          </div>\n          <h5><label for="user_question">{freeform:label:user_question}</label></h5>\n          {freeform:field:user_question}\n          {if freeform:captcha}\n          <div class="captcha-box">\n            <p><label for="captcha">Please enter the word you see in the image below</label></p>\n            <div class="captcha-field">\n              {freeform:captcha}\n              <input type="text" name="captcha">\n            </div>\n          </div>\n          {/if}\n          <input type="submit" name="submit" value="Submit" />\n        {/exp:freeform:form}\n        {/exp:template_morsels:escape}\n      </div>\n    {/exp:channel:entries}\n    </div>\n    <aside class="related-films">\n      <h4>Related</h4>\n      <ul>\n      {exp:tag:related_entries channel="film|television" limit="2"}\n        <li>\n          <a href="{url_title_path=''media''}">\n            <figure>\n            {if media_cover != ""}\n              <img src="{media_cover:url:350x520}" alt="Media graphic">\n            {if:else}\n              <img src="{site_url}assets/img/graphics/placeholder-cover-01.png" alt="Image not available">\n            {/if}\n            </figure>\n            <div class="details">\n              <h5>{title}</h5>\n            </div>\n          </a>\n        </li>\n      {/exp:tag:related_entries}\n      </ul>\n    </aside>\n  </div>\n</section>', '', '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>A Most Violent Year</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://stage.screenprism.com/assets/img/covers/_350x520/A_Most_Violent_Year_Movie_Poster.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2014-12-31">December 31, 2014</time></li>\n        <li><strong>Directed By:</strong> J. C. Chandor</li>\n        <li><strong>Written By:</strong> J. C. Chandor</li>\n        <li><strong>Starring:</strong> <span>Oscar Isaac</span>, <span>Jessica Chastain</span>, <span>David Oyelowo</span>, <span>Alessandro Nivola</span>, <span>Albert Brooks</span>, <span>Catalina Sandino Moreno</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p>Set in New York City during the winter of 1981, statistically one of the most violent years in the city&#39;s history, an immigrant and his family try to expand their business and capitalize on opportunities as the rampant violence, decay, and corruption of the day drag them in and threaten to destroy all they have built.</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        \n          <ul>\n            <li>\n              <a href="http://stage.screenprism.com/insights/article/why-set-the-film-during-one-of-new-york-citys-most-violent-years-is-it-a-so">\n                <h3>Q: Why set &#8220;A Most Violent Year&#8221; during one of New York City&#8217;s most violent years?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/a-most-violent-year">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/why-was-the-violence-in-1981-so-significant-why-was-it-so-bad">\n                <h3>Q: Why was the violence in 1981 so significant?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/a-most-violent-year">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        <p>There are no articles at this time. Please check back again soon.</p>\n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n        <ul>\n          <li>\n            <a href="http://www.newyorker.com/magazine/2015/01/12/dirty-oil" target="_blank">\n              <h5>Dirty Oil: "A Most Violent Year"</h5>\n              <p>Abel Morales (Oscar Isaac), the hero of J. C. Chandor’s “A Most Violent Year,” was born in Colombia, but when we meet him, in 1981, he’s living in Westchester, a wealthy businessman in his late thirties, swathed in double-breasted suits and a camel-hair coat. Emerging from his Mercedes coupe, he speaks decisively but quietly, as if raising his voice would signal a loss of authority. </p>\n              <p><strong>Source:</strong> The New Yorker</p>\n            </a>\n          </li><li>\n            <a href="http://www.ew.com/article/2015/02/03/nominated-nothing-most-violent-year" target="_blank">\n              <h5>Nominated for Nothing: A Most Violent Year</h5>\n              <p>Just about every year, brilliant movies are utterly ignored by the Oscars. The Searchers, Groundhog Day, Breathless, King Kong, Casino Royale, Touch of Evil, Caddyshack, Mean Streets, The Big Lebowski, Blackfish — the Academy has a long history of overlooking comedies, action movies, horror flicks, hard-boiled genre pics, artsy foreign films, and documentaries that aren’t about World War II. Before the ceremony, we’ll be taking a closer look at films that were too small, too weird, or perhaps simply too awesome for the Academy Awards. These are the Non-Nominees.</p>\n              <p><strong>Source:</strong> Entertainment Weekly</p>\n            </a>\n          </li><li>\n            <a href="http://variety.com/2014/film/reviews/film-review-a-most-violent-year-1201348496/" target="_blank">\n              <h5>Film Review: "A Most Violent Year"</h5>\n              <p>J.C. Chandor channels Sidney Lumet to tell a timeless tale of New York City in the grip of a violent crime wave and mass institutional corruption.</p>\n              <p><strong>Source:</strong> Variety</p>\n            </a>\n          </li><li>\n            <a href="http://www.nytimes.com/2014/12/31/movies/a-most-violent-year-with-oscar-isaac-and-jessica-chastain.html?_r=0" target="_blank">\n              <h5>Heating Oil Mixed with Trouble - "A Most Violent Year" with Oscar Isaac and Jessica Chastain</h5>\n              <p>More brooding than brutal, “A Most Violent Year” finds Abel Morales (Oscar Isaac), the upwardly mobile owner of a heating-oil business, in a time of difficulty. Some of the trouble is atmospheric. It’s 1981, and New York City is in a state of decay that looks, in the burnished tints of movie hindsight, almost picturesque. Subway cars blossom with graffiti; the radio news wearily tallies each day’s shootings and stabbings; crime and corruption hang in the winter air like smog.</p>\n              <p><strong>Source:</strong> NY Times</p>\n            </a>\n          </li>\n        </ul>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        \n        {exp:freeform:form\n          form_name="ask"\n          form:class="ask-form"\n          required="name|email|related_media|user_question"\n          require_captcha="yes"\n          inline_errors="yes"\n          return="question-received"\n        }\n          <input type="hidden" name="related_media" id="related_media" value="A Most Violent Year">\n          {!-- ra:000000003f74dc36000000001dc12a4b --}{if freeform:general_errors}\n          <div class="errors">\n            <h4>The form contains the following errors:</h4>\n            <ul>\n              {freeform:general_errors}\n              <li>{freeform:error_message}</li>\n              {/freeform:general_errors}\n            </ul>\n          </div>\n          {/if}\n          <div class="half first">\n            <h5><label for="name">Name</label></h5>\n            {freeform:field:name}\n          </div>\n          <div class="half last">\n            <h5><label for="email">Email Address</label></h5>\n            {freeform:field:email}\n          </div>\n          <h5><label for="user_question">{freeform:label:user_question}</label></h5>\n          {freeform:field:user_question}\n          {!-- ra:000000003f74dc28000000001dc12a4b --}{if freeform:captcha}\n          <div class="captcha-box">\n            <p><label for="captcha">Please enter the word you see in the image below</label></p>\n            <div class="captcha-field">\n              {freeform:captcha}\n              <input type="text" name="captcha">\n            </div>\n          </div>\n          {/if}\n          <input type="submit" name="submit" value="Submit" />\n        {/exp:freeform:form}\n        \n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related</h4>\n      <ul>\n      \n      </ul>\n    </aside>\n  </div>\n</section>', 'n', 1422905277);

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
) ENGINE=InnoDB AUTO_INCREMENT=1298 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_morsels_dynamic_cache`
--

INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(929, 1, 1, 1423252922, '1dfa6a456959fa589d8a4307b044523b', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>The hub for Film & TV analysis | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="The hub for Film & TV analysis | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="The hub for Film & TV analysis | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://stage.screenprism.com/" property="og:url">\n  \n  <link content="http://stage.screenprism.com/" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="home">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(932, 1, 1, 1423184269, '76401cde4f11702f4fed8024c18e7940', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Film | ScreenPrism</title>\n  \n  <meta content="SEO description for the Film landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Film | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the Film landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Film | ScreenPrism" property="og:title">\n  <meta content="SEO description for the Film landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/film" property="og:url">\n  \n  <link content="http://stage.screenprism.com/film" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="media">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(944, 1, 1, 1423251139, '0e4ff8ecfa2d3b6dff24da26234711c7', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Search Results | ScreenPrism | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Search Results | ScreenPrism | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Search Results | ScreenPrism | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://stage.screenprism.com/" property="og:url">\n  \n  <link content="http://stage.screenprism.com/" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="search">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(947, 1, 1, 1423250725, '60e94fd24fab488b4aaf52034abad149', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(949, 1, 1, 1422682523, 'ecb4a922a4ce826f34cbbd9e5f850bd5', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>No Results | ScreenPrism | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="No Results | ScreenPrism | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="No Results | ScreenPrism | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://stage.screenprism.com/" property="og:url">\n  \n  <link content="http://stage.screenprism.com/" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="search">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(954, 1, 1, 1422685877, 'b766eaca5c75350546f4ae185209ffdb', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Message Sent | ScreenPrism | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Message Sent | ScreenPrism | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Message Sent | ScreenPrism | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://stage.screenprism.com/message-sent" property="og:url">\n  \n  <link content="http://stage.screenprism.com/message-sent" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="message">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(956, 1, 1, 1422686432, '851c0d192d61e65ac2fa8726f906ebff', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Question Received | ScreenPrism | ScreenPrism</title>\n  \n  <meta content="SEO description for the home page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Question Received | ScreenPrism | ScreenPrism" name="DC.title">\n  <meta content="SEO description for the home page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Question Received | ScreenPrism | ScreenPrism" property="og:title">\n  <meta content="SEO description for the home page." property="og:description">\n  <meta content="http://stage.screenprism.com/question-received" property="og:url">\n  \n  <link content="http://stage.screenprism.com/question-received" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="message">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(960, 1, 1, 1423163466, 'c93230ab487079b18762bb5f7367e2d1', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>TV Shows | ScreenPrism</title>\n  \n  <meta content="" name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="TV Shows | ScreenPrism" name="DC.title">\n  <meta content="" name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="TV Shows | ScreenPrism" property="og:title">\n  <meta content="" property="og:description">\n  <meta content="http://stage.screenprism.com/tv" property="og:url">\n  \n  <link content="http://stage.screenprism.com/tv" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="media">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(964, 12, 1, 1423251163, '98c9ea267b1564d10bdeeec5420d3d7c', NULL, '<section class="main">\n  <div class="content single">\n    \n    <article>\n      <header>\n        <h1>About Us</h1>\n      </header>\n	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n\n<p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>\n    </article>\n	\n    <aside>\n      <h4>Contact Info</h4>\n      <p>Have questions, comments, or concerns? Please reach out to us using the form below.</p>\n\n<p>If you want to submit a question about a particular film or tv show, please visit our&nbsp;<a href="http://stage.screenprism.com">Ask Page</a>.</p>\n      \n      {exp:freeform:form\n        form_name="contact"\n        form:class="contact-form"\n        required="name|email|subject|message"\n        require_captcha="yes"\n        inline_errors="yes"\n        return="message-sent"\n      }\n        {!-- ra:00000000123c6d47000000002487ceda --}{if freeform:general_errors}\n        <div class="errors">\n          <h4>The form contains the following errors:</h4>\n          <ul>\n            {freeform:general_errors}\n            <li>{freeform:error_message}</li>\n            {/freeform:general_errors}\n          </ul>\n        </div>\n        {/if}\n        <h5><label for="name">{freeform:label:name}</label></h5>\n        {freeform:field:name}\n        <h5><label for="email">{freeform:label:email}</label></h5>\n        {freeform:field:email}\n        <h5><label for="subject">{freeform:label:subject}</label></h5>\n        {freeform:field:subject}\n        <h5><label for="message">{freeform:label:message}</label></h5>\n        {freeform:field:message}\n        {!-- ra:00000000123c6db0000000002487ceda --}{if freeform:captcha}\n        <div class="captcha-box">\n          <p><label for="captcha">Please enter the word you see in the image below</label></p>\n          <div class="captcha-field">\n            {freeform:captcha}\n            <input type="text" name="captcha">\n          </div>\n        </div>\n        {/if}\n        <input type="submit" name="submit" value="Send" />\n      {/exp:freeform:form}\n      \n    </aside>\n  </div>\n</section>'),
(1037, 1, 1, 1422991810, '9bdcfd3c060f047e8addaa468ba7d0d9', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P10" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P10" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1039, 1, 1, 1422991837, '3b40a1d7c9f4c9a2b801b2df5eee0df0', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P20" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P20" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1044, 1, 1, 1422856402, 'bef841ab5e7c525773225afd892dd1c2', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P30" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P30" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1046, 1, 1, 1422856428, 'bd7414165b4159dcf2a2c3256be9c379', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P40" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P40" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1048, 1, 1, 1422856454, 'dca20cd12babce1cae82e79ae7d538c2', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P50" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P50" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1050, 1, 1, 1422856477, '954c78e7e722e626fade881f18254c49', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/P60" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/P60" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1168, 1, 1, 1423094768, '3b293500f185b86a9a024473ddaf425a', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/tag/Avant-garde" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/tag/Avant-garde" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(1206, 1, 1, 1423163508, '656ef2490e9078d2ae11b04d546d043f', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/tag/Bradley-Cooper" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/tag/Bradley-Cooper" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1208, 1, 1, 1423163522, '61f3b1f8ff77996736669b432f68bb47', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Insights | ScreenPrism</title>\n  \n  <meta content="Description for the Insights landing page." name="description">\n  <meta content="ScreenPrism" name="author">\n\n  <meta content="Insights | ScreenPrism" name="DC.title">\n  <meta content="Description for the Insights landing page." name="DC.subject">\n  <meta content="ScreenPrism" name="DC.creator">\n  \n  <meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n  <meta content="Insights | ScreenPrism" property="og:title">\n  <meta content="Description for the Insights landing page." property="og:description">\n  <meta content="http://stage.screenprism.com/insights/tag/Jessica-Chastain" property="og:url">\n  \n  <link content="http://stage.screenprism.com/insights/tag/Jessica-Chastain" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1282, 13, 1, 1423263900, 'dd46ceeceb49a300ebe7e9aeb15d3ea3', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://stage.screenprism.com/film">Release Date</a> <a href="http://stage.screenprism.com/film/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://stage.screenprism.com/film/category/comedy">Comedy</option><option value="http://stage.screenprism.com/film/category/crime">Crime</option><option value="http://stage.screenprism.com/film/category/documentary">Documentary</option><option value="http://stage.screenprism.com/film/category/drama">Drama</option><option value="http://stage.screenprism.com/film/category/experimental">Experimental</option><option value="http://stage.screenprism.com/film/category/fantasy">Fantasy</option><option value="http://stage.screenprism.com/film/category/horror">Horror</option><option value="http://stage.screenprism.com/film/category/musical">Musical</option><option value="http://stage.screenprism.com/film/category/romantic">Romantic</option><option value="http://stage.screenprism.com/film/category/science-fiction">Science Fiction</option><option value="http://stage.screenprism.com/film/category/war">War</option><option value="http://stage.screenprism.com/film/category/western">Western</option><option value="http://stage.screenprism.com/film/category/world-cinema">World Cinema</option>\n    </select>\n  </div>\n</section>\n<section id="media-list" class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://stage.screenprism.com/media/a-most-violent-year">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/A_Most_Violent_Year_Movie_Poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>A Most Violent Year</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/into-the-woods">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SX214_AL_.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Into the Woods</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/still-alice">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/STILL-ALICE-onesheet.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Still Alice</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/unbroken">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/11181015_800.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Unbroken</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/selma">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Selma-Poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Selma</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/big-eyes">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Big_Eyes_Movie_Poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Big Eyes</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/two-days-one-night-deux-jours-une-nuit">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/large_1mYAejpMskvskGr0J0SaBvdjmrH.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Two Days, One Night (Deux jours, une nuit)</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/mr.-turner">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/bigtmp_31367.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Mr. Turner</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/the-hobbit-the-battle-of-the-five-armies">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/hobbit-movie-poster-02.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>The Hobbit: The Battle of the Five Armies</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/inherent-vice">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Txtd-Dom-Rated-Tsr-1sht-VICE.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Inherent Vice</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/wild">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/wild_xlg.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Wild</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/the-imitation-game">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/The-Imitation-Game-poster-1.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>The Imitation Game</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://stage.screenprism.com/film/P12" class="button load">Load More</a>\n  </div>\n</section>'),
(1293, 13, 1, 1423268070, '7c1cbe4eaf957d88acf59ce1f0c965f6', NULL, '<section class="filters">\n  <div class="inner">\n    <p class="sort-toggles">Sort by <a href="http://stage.screenprism.com/film">Release Date</a> <a href="http://stage.screenprism.com/film/title">Title</a></p>\n    <select data-placeholder="Filter by Genre" class="chosen-select">\n      <option></option>\n      <option value="http://stage.screenprism.com/film/category/comedy">Comedy</option><option value="http://stage.screenprism.com/film/category/crime">Crime</option><option value="http://stage.screenprism.com/film/category/documentary">Documentary</option><option value="http://stage.screenprism.com/film/category/drama">Drama</option><option value="http://stage.screenprism.com/film/category/experimental">Experimental</option><option value="http://stage.screenprism.com/film/category/fantasy">Fantasy</option><option value="http://stage.screenprism.com/film/category/horror">Horror</option><option value="http://stage.screenprism.com/film/category/musical">Musical</option><option value="http://stage.screenprism.com/film/category/romantic">Romantic</option><option value="http://stage.screenprism.com/film/category/science-fiction">Science Fiction</option><option value="http://stage.screenprism.com/film/category/war">War</option><option value="http://stage.screenprism.com/film/category/western">Western</option><option value="http://stage.screenprism.com/film/category/world-cinema">World Cinema</option>\n    </select>\n  </div>\n</section>\n<section id="media-list" class="main films-list">\n  <div class="inner">\n    <ol>\n      <li>\n        <a href="http://stage.screenprism.com/media/the-theory-of-everything">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Theory_of_Everything_Poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>The Theory of Everything</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/foxcatcher">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/foxcatcher_xlg.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Foxcatcher</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/american-sniper">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/American-Sniper-Movie-Poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>American Sniper</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/interstellar">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/interstellar3.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Interstellar</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/nightcrawler">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/5454e16ae86e9.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Nightcrawler</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/citizenfour">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/citizenfour-poster.jpeg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Citizenfour</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/birdman">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Birdman_poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Birdman</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/gone-girl">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Gone Girl</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/boyhood">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/Boyhood_-_poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Boyhood</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/goodbye-to-language">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/goodbye_to_language_1.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Goodbye to Language 3D</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/only-lovers-left-alive">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/159386941_bbdd65.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Only Lovers Left Alive</h5>\n          </div>\n        </a>\n      </li><li>\n        <a href="http://stage.screenprism.com/media/under-the-skin">\n          <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_270x400/under_the_skin_us_poster.jpg" alt="Media graphic">\n            \n          </figure>\n          <div class="details">\n            <h5>Under the Skin</h5>\n          </div>\n        </a>\n      </li>\n    \n    </ol><a href="http://stage.screenprism.com/film/P24" class="button load">Load More</a>\n  </div>\n</section>'),
(1294, 11, 1, 1423268072, '7dc465c20217b4871d06fcd3db80ee60', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>Foxcatcher | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="Foxcatcher | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n<meta content="Foxcatcher | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://stage.screenprism.com/media/foxcatcher" property="og:url">\n<link content="http://stage.screenprism.com/media/foxcatcher" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="page">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>'),
(1295, 14, 1, 1423268072, 'af9e7e3cee1af6dd2f4b4e71eafaabf5', NULL, '<section class="main">\n  <div class="content media-article">\n    <header>\n      <h1>Foxcatcher</h1>\n      <nav class="inner-nav"><a href="#summary">Summary</a> <span>|</span> <a href="#qanda">Q &amp; A</a> <span>|</span> <a href="#articles">Articles</a> <span>|</span> <a href="#related-links">Around the Web</a> <span>|</span> <a href="#submit-question">Submit a Question</a></nav>\n    </header>\n    <aside class="details">\n      <figure>\n      \n        <img src="http://stage.screenprism.com/assets/img/covers/_350x520/foxcatcher_xlg.jpg" alt="Media graphic">\n      \n      </figure>\n      <ul>\n        <li><strong>Released:</strong> <time datetime="2014-11-14">November 14, 2014</time></li>\n        <li><strong>Directed By:</strong> Bennett Miller</li>\n        <li><strong>Written By:</strong> E. Max Frye, Dan Futterman</li>\n        <li><strong>Starring:</strong> <span>Steve Carell</span>, <span>Channing Tatum</span>, <span>Mark Ruffalo</span></li>\n      </ul>\n    </aside>\n    <div class="article-body">\n      <article id="summary">\n        <h4 class="section-heading">Summary</h4>\n        <div class="summary">\n          <p><em>Foxcatcher</em> tells the gripping, true story of Olympic Wrestling Champion brothers Mark Schultz (Channing Tatum) and Dave Schultz (Mark Ruffalo) and their relationship with the eccentric John du Pont (Steve Carell) that led to murder.</p>\n        </div>\n        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>\n      </article>\n      <div id="qanda" class="related-questions">\n        <h2>Q &amp; A</h2>\n        \n          <ul>\n            <li>\n              <a href="http://stage.screenprism.com/insights/article/what-does-the-film-have-to-say-about-social-class-in-america">\n                <h3>Q: What does &#8220;Foxcatcher&#8221; have to say about social class in America?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/foxcatcher">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/did-mark-schultz-and-john-du-pont-have-a-gay-relationship">\n                <h3>Q: Did Mark Schultz and John du Pont have a gay relationship?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/foxcatcher">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/how-much-of-this-film-is-accurate">\n                <h3>Q: How much of &#8220;Foxcatcher&#8221; is accurate?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/foxcatcher">0</span></p>\n              </a>\n            </li>\n          \n        \n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/who-is-john-du-pont">\n                <h3>Q: Who is John du Pont?</h3>\n                <p><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/foxcatcher">0</span></p>\n              </a>\n            </li>\n          </ul>\n        \n      </div>\n      <div id="articles" class="related-articles">\n        <h2>Articles</h2>\n        <p>There are no articles at this time. Please check back again soon.</p>\n      </div>\n      <div id="related-links" class="related-links">\n        <h2>Around the Web</h2>\n        \n        <ul>\n          <li>\n            <a href="http://www.theatlantic.com/entertainment/archive/2014/11/bennett-miller-interview/382742/\n" target="_blank">\n              <h5>From tabloid to Oscar fare</h5>\n              <p>The director of the acclaimed new film about the sensational John du Pont story says time allowed him to understand its characters.</p>\n              <p><strong>Source:</strong> The Atlantic</p>\n            </a>\n          </li><li>\n            <a href="http://www.filmcomment.com/article/review-foxcatcher-bennett-miller\n" target="_blank">\n              <h5>Film Comment: "Foxcatcher"</h5>\n              <p>"Foxcatcher" is both moral fable and updated, same-sex Gothic: a penniless young person is lured to a vast, sinister mansion owned by an aristocrat tormented by his past.</p>\n              <p><strong>Source:</strong> Farran Smith Nehme, Film Comment</p>\n            </a>\n          </li><li>\n            <a href="http://www.vulture.com/2014/08/the-making-of-foxcatcher.html" target="_blank">\n              <h5>Obsession With an obsession</h5>\n              <p>Miller has wrenched an austere and challenging movie out of that bizarre tragedy.</p>\n              <p><strong>Source:</strong> vulture.com</p>\n            </a>\n          </li><li>\n            <a href="http://www.nytimes.com/2014/11/14/movies/steve-carell-and-channing-tatum-in-foxcatcher.html" target="_blank">\n              <h5>Taken down by twisted ambition</h5>\n              <p>Mark and John make a fine odd couple but they never evolve into the kind of deep, meaningful figures who can carry the weight of Mr. Miller’s symbolism and all those American flags.</p>\n              <p><strong>Source:</strong> Manohla Dargis, The New York Times</p>\n            </a>\n          </li>\n        </ul>\n        \n      </div>\n      <div id="submit-question" class="submit-question">\n        <h2>Submit a Question</h2>\n        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>\n        \n        {exp:freeform:form\n          form_name="ask"\n          form:class="ask-form"\n          required="name|email|related_media|user_question"\n          require_captcha="yes"\n          inline_errors="yes"\n          return="question-received"\n        }\n          <input type="hidden" name="related_media" id="related_media" value="Foxcatcher">\n          {!-- ra:00000000003fa48a0000000010f7586a --}{if freeform:general_errors}\n          <div class="errors">\n            <h4>The form contains the following errors:</h4>\n            <ul>\n              {freeform:general_errors}\n              <li>{freeform:error_message}</li>\n              {/freeform:general_errors}\n            </ul>\n          </div>\n          {/if}\n          <div class="half first">\n            <h5><label for="name">Name</label></h5>\n            {freeform:field:name}\n          </div>\n          <div class="half last">\n            <h5><label for="email">Email Address</label></h5>\n            {freeform:field:email}\n          </div>\n          <h5><label for="user_question">{freeform:label:user_question}</label></h5>\n          {freeform:field:user_question}\n          {!-- ra:00000000003fa4b00000000010f7586a --}{if freeform:captcha}\n          <div class="captcha-box">\n            <p><label for="captcha">Please enter the word you see in the image below</label></p>\n            <div class="captcha-field">\n              {freeform:captcha}\n              <input type="text" name="captcha">\n            </div>\n          </div>\n          {/if}\n          <input type="submit" name="submit" value="Submit" />\n        {/exp:freeform:form}\n        \n      </div>\n    </div>\n    <aside class="related-films">\n      <h4>Related</h4>\n      <ul>\n      <li>\n          <a href="http://stage.screenprism.com/media/mr.-turner">\n            <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_350x520/bigtmp_31367.jpg" alt="Media graphic">\n            \n            </figure>\n            <div class="details">\n              <h5>Mr. Turner</h5>\n            </div>\n          </a>\n        </li><li>\n          <a href="http://stage.screenprism.com/media/the-imitation-game">\n            <figure>\n            \n              <img src="http://stage.screenprism.com/assets/img/covers/_350x520/The-Imitation-Game-poster-1.jpg" alt="Media graphic">\n            \n            </figure>\n            <div class="details">\n              <h5>The Imitation Game</h5>\n            </div>\n          </a>\n        </li>\n      </ul>\n    </aside>\n  </div>\n</section>'),
(1296, 11, 1, 1423268084, '96906ad8ced82f17a54cc5d9fdc03f40', NULL, '<!DOCTYPE html>\n\n<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->\n<!--[if lt IE 9 ]><html class="no-js ie ltie9 ltie10" lang="en"><![endif]-->\n<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->\n<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->\n\n<head>\n\n  <meta charset="utf-8">\n  \n  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">\n  <meta content="false" http-equiv="imagetoolbar">\n  <meta content="on" http-equiv="cleartype">\n  \n  <meta content="True" name="HandheldFriendly">\n  <meta content="320" name="MobileOptimized">\n  <meta content="width=device-width, initial-scale=1.0" name="viewport">\n  \n  <title>How much of "Foxcatcher" is accurate | ScreenPrism</title>\n<meta content="Default SEO description" name="description">\n<meta content="film, tv, analysis, screenprism, movies" name="keywords">\n<meta content="ScreenPrism" name="author">\n<meta content="How much of "Foxcatcher" is accurate | ScreenPrism" name="DC.title">\n<meta content="Default SEO description" name="DC.subject">\n<meta content="ScreenPrism" name="DC.creator">\n<meta content="http://stage.screenprism.com/assets/img/fav/facebook.png" property="og:image">\n<meta content="How much of "Foxcatcher" is accurate | ScreenPrism" property="og:title">\n<meta content="Default SEO description" property="og:description">\n<meta content="http://stage.screenprism.com/insights/article/how-much-of-this-film-is-accurate" property="og:url">\n<link content="http://stage.screenprism.com/insights/article/how-much-of-this-film-is-accurate" rel="canonical">\n  \n  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:400,400italic,700,700italic|Oswald:300" rel="stylesheet" type="text/css">\n  <link href="http://stage.screenprism.com/assets/css/style.css" rel="stylesheet" type="text/css">\n  \n  <script>\n    var b = document.documentElement;\n    b.setAttribute(''data-useragent'',  navigator.userAgent);\n    b.setAttribute(''data-platform'', navigator.platform );\n  </script>\n  \n  <script src="http://stage.screenprism.com/assets/js/modernizr.js"></script>\n  \n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">\n  <link href="http://stage.screenprism.com/assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">\n  <link href="http://stage.screenprism.com/assets/img/fav/favicon.ico" rel="shortcut icon">\n  \n</head>\n\n<body id="insights">\n<svg style="display:none">\n  <defs>\n\n    <symbol id="search-icon">\n      <path fill="currentColor" d="M12.8,2.3c-2.9-2.9-7.5-2.9-10.4,0s-2.9,7.5,0,10.4c2.4,2.4,6.1,2.8,9,1.1l5.4,5.4c0.7,0.7,1.9,0.7,2.6,0\n      c0.7-0.7,0.7-1.9,0-2.6l-5.4-5.4C15.6,8.5,15.2,4.8,12.8,2.3z M11.5,11.5c-2.2,2.2-5.7,2.2-7.8,0s-2.2-5.7,0-7.8s5.7-2.2,7.8,0\n      S13.6,9.3,11.5,11.5z"/>\n    </symbol>\n    \n    <symbol id="comment-icon">\n      <path fill="currentColor" d="M16,1H4C1.8,1,0,2.8,0,5v7c0,2.2,1.8,4,4,4h2l4,4l4-4h2c2.2,0,4-1.8,4-4V5C20,2.8,18.2,1,16,1z"/>\n    </symbol>\n    \n    <symbol id="facebook-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M12.8,10H11v6.5H8.3V10H7V7.8h1.3V6.4\n      c0-1.8,0.8-2.9,2.9-2.9H13v2.2h-1.1c-0.8,0-0.9,0.3-0.9,0.9l0,1.1h2L12.8,10z"/>\n    </symbol>\n    \n    <symbol id="pinterest-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M11.3,12.9c-0.8,0-1.6-0.4-1.8-0.9\n      c0,0-0.4,1.7-0.5,2.1c-0.3,1.2-1.3,2.3-1.3,2.4c-0.1,0.1-0.2,0-0.2,0c0-0.1-0.3-1.6,0-2.8c0.1-0.6,1-4.1,1-4.1S8.1,9,8.1,8.3\n      c0-1.1,0.6-1.9,1.4-1.9c0.7,0,1,0.5,1,1.1c0,0.7-0.4,1.7-0.7,2.6c-0.2,0.8,0.4,1.4,1.2,1.4c1.4,0,2.4-1.8,2.4-4\n      c0-1.6-1.1-2.9-3.1-2.9c-2.3,0-3.7,1.7-3.7,3.6c0,0.7,0.2,1.1,0.5,1.5C7.3,10,7.3,10,7.3,10.2c0,0.1-0.1,0.5-0.2,0.6\n      c0,0.2-0.2,0.3-0.4,0.2c-1-0.4-1.5-1.6-1.5-2.9C5.2,6,7,3.5,10.6,3.5c2.9,0,4.7,2.1,4.7,4.3C15.3,10.7,13.7,12.9,11.3,12.9z"/>\n    </symbol>\n    \n    <symbol id="twitter-icon">\n      <path fill="currentColor" d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10s10-4.5,10-10C20,4.5,15.5,0,10,0z M15.6,10.3c-0.4,1.6-1.5,2.8-2.7,3.5\n      c-3,1.7-7.4,1.5-9.6-1.6c1.4,1.1,3.6,1.4,5.2-0.2c-1,0-1.3-0.8-0.5-1.2c-0.8,0-1.3-0.3-1.6-0.7C6.3,9.9,6.3,9.9,6.4,9.7\n      c0.2-0.1,0.5-0.2,0.7-0.2C6.4,9.3,5.9,8.8,5.7,8.3C5.7,8.1,5.6,8.1,5.8,8.1C6,8,6.3,8,6.5,8c-0.6-0.4-1-0.9-1.1-1.4\n      c-0.1-0.5,0-0.4,0.4-0.2C7.4,7,9,7.7,10,8.7c0.4-1.4,1-2.3,1.6-3c0.5-0.5,0.7-0.6,0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.3\n      c0.8-0.4,0.7-0.1,0.2,0.3c1.4-0.5,1.4,0.1-0.1,0.5c1.2,0,2.6,0.8,2.9,2.5c0.1,0.2,0,0.2,0.2,0.3c0.5,0.1,1,0.1,1.5-0.1\n      c-0.1,0.3-0.5,0.6-1.2,0.7c-0.3,0.1-0.3,0,0,0.1c0.4,0.1,0.8,0.1,1.3,0.1C16.9,10.1,16.3,10.3,15.6,10.3z"/>\n    </symbol>\n    \n    <symbol id="email-icon">\n      <g fill="currentColor">\n        <path d="M10,10.7C10,10.7,10,10.7,10,10.7c0.2,0,0.3-0.1,0.4-0.1l4.2-4.2H5.4l4.2,4.2C9.7,10.7,9.9,10.7,10,10.7z"/>\n        <path d="M11,11.2c-0.2,0.2-0.6,0.4-1,0.4c0,0,0,0,0,0c-0.4,0-0.7-0.1-1-0.4l-0.6-0.6l-3,3.1h9.1l-3-3.1L11,11.2z"/>\n        <polygon points="15.1,13.1 15.1,7 12.1,10 	"/>\n        <polygon points="4.9,6.9 4.9,13.1 7.9,10 	"/>\n        <path d="M10,0C4.5,0,0,4.5,0,10c0,5.5,4.5,10,10,10c5.5,0,10-4.5,10-10C20,4.5,15.5,0,10,0z M16,14.5H4v-9H16V14.5z\n        "/>\n      </g>\n    </symbol>\n\n  </defs>\n</svg>');
INSERT INTO `exp_template_morsels_dynamic_cache` (`cache_id`, `parent_id`, `site_id`, `date`, `hash`, `notes`, `morsel`) VALUES
(1297, 9, 1, 1423268084, '945dab2040d58d9a6eb21e4663b2ca20', NULL, '<section class="main">\n  <div class="content single thoughts feature">\n    <figure class="article-image">\n        <img src="http://stage.screenprism.com/assets/img/article/_1080x360/gallery25.jpg" alt="Hero image">\n      </figure>\n      \n      <article>\n        <header>\n          <h1>Q: How much of &#8220;Foxcatcher&#8221; is accurate?</h1>\n          \n          <h5><a href="http://stage.screenprism.com/media/foxcatcher">Foxcatcher</a></h5>\n          \n          <p class="by-line">Screen Prism <span class="spacer">|</span> <time datetime="2015-01-31T2319">January 31, 2015</time> <span class="spacer">|</span> <a href="#discussion"><svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/how-much-of-this-film-is-accurate">0</span></a></p>\n        </header>\n        <p>Much of <em>Foxcatcher</em> is fairly accurate, but there are some notable discrepancies. The film leaves out any mention of du Pont&rsquo;s eventual diagnosis as a paranoid schizophrenic. In real life, this was later offered as the reason for du Pont killing Dave. Curiously, the film suggests that du Pont&rsquo;s mother was the cause of his insecure behavior even though some believe she was not an influence in any way.</p>\n\n<p>Du Pont&rsquo;s schizophrenia also manifested itself in real life when Dave was coaching in Foxcatcher. Mark recalls Dave and others describing such incidents as du Pont removing treadmills from the training center because their clocks were somehow transporting him back through time. Despite his long history of paranoid delusions and disturbing, erratic behavior (often times casually dismissed as innocuous eccentricity or the result of cocaine or alcohol), none of these incidents are explored in the film.</p>\n\n<p>The film also downplays Mark&rsquo;s initial resistance towards du Pont when he was offered the job. In real life, Mark believed du Pont did not know enough about wrestling and was even repelled by his personal hygiene.</p>\n\n<p>While there was sibling rivalry that strained Mark&rsquo;s relationship with Dave, the film does add some fictional details to play up their rivalry. Dave never took over as coach at Foxcatcher while Mark was there, he was hired only after Mark was fired by du Pont.</p>\n        <footer>\n          <ul class="tags">\n          \n            <li><a href="http://stage.screenprism.com/insights/tag/Bennett-Miller">Bennett Miller</a></li>\n          \n            <li><a href="http://stage.screenprism.com/insights/tag/Films-about-sports">Films About Sports</a></li>\n          \n            <li><a href="http://stage.screenprism.com/insights/tag/Psychological-disorders">Psychological Disorders</a></li>\n          \n          </ul>\n        </footer>\n      </article>\n    <aside>\n      <div class="aside-content">\n        <div class="share-links">\n          <h4>Share this article</h4>\n          <ul>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon pinterest-icon"><use xlink:href="#pinterest-icon"></use></svg></a></li>\n            <li><a href="#"><svg viewBox="0 0 20 20" class="icon email-icon"><use xlink:href="#email-icon"></use></svg></a></li>\n          </ul>\n        </div>\n        <div class="related">\n          <h4>Related Content</h4>\n          <ul>\n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/what-does-the-film-have-to-say-about-social-class-in-america">\n                <h5>Q: What does &#8220;Foxcatcher&#8221; have to say about social class in America?</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/what-does-the-film-have-to-say-about-social-class-in-america">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/did-mark-schultz-and-john-du-pont-have-a-gay-relationship">\n                <h5>Q: Did Mark Schultz and John du Pont have a gay relationship?</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/did-mark-schultz-and-john-du-pont-have-a-gay-relationship">0</span></p>\n              </a>\n            </li>\n          \n            <li>\n              <a href="http://stage.screenprism.com/insights/article/who-is-john-du-pont">\n                <h5>Q: Who is John du Pont?</h5>\n                <p class="meta">Q & A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> <span class="disqus-comment-count" data-disqus-url="http://stage.screenprism.com/insights/article/who-is-john-du-pont">0</span></p>\n              </a>\n            </li>\n          \n          </ul>\n        </div>\n      </div>\n    </aside>\n    <div class="discussion" id="discussion">\n      <h1>Discussion</h1>\n      <div id="disqus_thread"></div>\n      <script type="text/javascript">\n        var disqus_shortname = ''screenprism'';\n        (function() {\n          var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n          dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n          (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n        })();\n      </script>\n      <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\n    </div>\n  </div>\n</section>');

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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_template_morsels_refresh_rules`
--

INSERT INTO `exp_template_morsels_refresh_rules` (`rule_id`, `cache_id`, `template_id`, `template_dynamic_only`, `channel_id`, `channel_statuses`, `channel_add_only`, `channel_edit_only`, `channel_dynamic_only`, `category_group_id`, `member_id`, `site_id`) VALUES
(66, 11, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(67, 11, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(68, 11, 0, 'n', 4, 'all', 'n', 'n', 'n', 0, 0, 1),
(69, 11, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(70, 11, 8, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(117, 13, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(118, 13, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(119, 13, 13, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(148, 7, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(149, 7, 6, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(150, 8, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(151, 8, 7, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(156, 6, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(157, 5, 0, 'n', 3, 'open', 'n', 'n', 'n', 0, 0, 1),
(158, 9, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(159, 9, 8, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(174, 14, 0, 'n', 3, 'all', 'n', 'n', 'n', 0, 0, 1),
(175, 14, 0, 'n', 1, 'all', 'n', 'n', 'n', 0, 0, 1),
(176, 14, 0, 'n', 2, 'all', 'n', 'n', 'n', 0, 0, 1),
(177, 14, 12, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1),
(178, 12, 0, 'n', 4, 'all', 'n', 'n', 'n', 0, 0, 1),
(179, 12, 10, 'n', 0, NULL, 'n', 'n', 'n', 0, 0, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
(9, 13, 1, NULL, NULL, 'n'),
(11, 16, NULL, NULL, NULL, 'n'),
(12, 15, NULL, NULL, NULL, 'n'),
(13, 17, NULL, 'message-sent', '^message-sent\\/?\\/?$', 'n'),
(14, 18, NULL, 'question-received', '^question-received\\/?\\/?$', 'n');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_zoo_flexible_admin_menus`
--

INSERT INTO `exp_zoo_flexible_admin_menus` (`id`, `site_id`, `group_id`, `nav`, `autopopulate`, `hide_sidebar`, `startpage`) VALUES
(1, 1, 5, '<li class="home"  id="" ><a href="helmer.php?/cp&S=99a4a03f3905c15f0ed353c0da7589b4" class="first_level"><img src=/themes/cp_themes/default/images/home_icon.png /></a></li><li class="parent"  id="" ><a href="#" class="first_level">Content</a><ul class=""><li class="parent" id="publishfolder"><a href="#">Publish</a><ul class=""><li class="" id="publishitem"><a href="helmer.php?/cp/content_publish/entry_form&channel_id=3&S=99a4a03f3905c15f0ed353c0da7589b4">Articles</a></li><li class="" id="publishitem"><a href="helmer.php?/cp/content_publish/entry_form&channel_id=1&S=99a4a03f3905c15f0ed353c0da7589b4">Film</a></li><li class="" id="publishitem"><a href="helmer.php?/cp/content_publish/entry_form&channel_id=4&S=99a4a03f3905c15f0ed353c0da7589b4">Pages</a></li><li class="" id="publishitem"><a href="helmer.php?/cp/content_publish/entry_form&channel_id=2&S=99a4a03f3905c15f0ed353c0da7589b4">Television</a></li></ul></li><li class="parent" id="editfolder"><a href="#">Edit</a><ul class=""><li class="" id="edititem"><a href="helmer.php?/cp/content_edit&channel_id=3&S=99a4a03f3905c15f0ed353c0da7589b4">Articles</a></li><li class="" id="edititem"><a href="helmer.php?/cp/content_edit&channel_id=1&S=99a4a03f3905c15f0ed353c0da7589b4">Film</a></li><li class="" id="edititem"><a href="helmer.php?/cp/content_edit&channel_id=4&S=99a4a03f3905c15f0ed353c0da7589b4">Pages</a></li><li class="" id="edititem"><a href="helmer.php?/cp/content_edit&channel_id=2&S=99a4a03f3905c15f0ed353c0da7589b4">Television</a></li><li class="bubble_footer" id=""><a href=""></a></li></ul></li><li class="parent" id=""><a href="#">Files</a><ul class=""><li class="" id=""><a href="helmer.php?/cp/content_files&S=99a4a03f3905c15f0ed353c0da7589b4">File Manager</a></li><li class="nav_divider" id=""><a href="#"></a></li><li class="" id=""><a href="helmer.php?/cp/content_files/file_upload_preferences&S=99a4a03f3905c15f0ed353c0da7589b4">File Upload Preferences</a></li><li class="" id=""><a href="helmer.php?/cp/content_files/watermark_preferences&S=99a4a03f3905c15f0ed353c0da7589b4">Watermark Preferences</a></li></ul></li><li class="nav_divider" id=""><a href="#"></a></li><li class="" id=""><a href="helmer.php?/cp/content&S=99a4a03f3905c15f0ed353c0da7589b4">Overview</a></li></ul></li><li class=""  id="moduleitem" ><a href="helmer.php?/cp/addons_modules/show_module_cp&module=low_variables&S=99a4a03f3905c15f0ed353c0da7589b4" class="first_level">Globals</a></li><li class=""  id="moduleitem" ><a href="helmer.php?/cp/addons_modules/show_module_cp&module=assets&S=99a4a03f3905c15f0ed353c0da7589b4" class="first_level">Assets</a></li><li class=""  id="moduleitem" ><a href="helmer.php?/cp/addons_modules/show_module_cp&module=freeform&S=99a4a03f3905c15f0ed353c0da7589b4" class="first_level">Freeform</a></li><li class=""  id="" ><a href="helmer.php?/cp/members/view_all_members&S=5accc56ee72890598c51b11885ac73d8" class="first_level">Members</a></li><li class="parent newfolder"  id="" ><a href="#" class="first_level">Plug-ins</a><ul class=""><li class="" id="moduleitem"><a href="helmer.php?/cp/addons_modules/show_module_cp&module=tag&S=5accc56ee72890598c51b11885ac73d8">Tag</a></li><li class="" id="moduleitem"><a href="helmer.php?/cp/addons_modules/show_module_cp&module=template_morsels&S=5accc56ee72890598c51b11885ac73d8">Template Morsels</a></li></ul></li>', 1, 0, '');

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
-- Indexes for table `exp_freeform_form_entries_2`
--
ALTER TABLE `exp_freeform_form_entries_2`
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
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
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
MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `exp_categories`
--
ALTER TABLE `exp_categories`
MODIFY `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `exp_channel_fields`
--
ALTER TABLE `exp_channel_fields`
MODIFY `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `exp_channel_form_settings`
--
ALTER TABLE `exp_channel_form_settings`
MODIFY `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_channel_titles`
--
ALTER TABLE `exp_channel_titles`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `exp_content_types`
--
ALTER TABLE `exp_content_types`
MODIFY `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_cp_log`
--
ALTER TABLE `exp_cp_log`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `exp_cp_search_index`
--
ALTER TABLE `exp_cp_search_index`
MODIFY `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_developer_log`
--
ALTER TABLE `exp_developer_log`
MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `exp_field_groups`
--
ALTER TABLE `exp_field_groups`
MODIFY `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_files`
--
ALTER TABLE `exp_files`
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
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
MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exp_freeform_form_entries_1`
--
ALTER TABLE `exp_freeform_form_entries_1`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_freeform_form_entries_2`
--
ALTER TABLE `exp_freeform_form_entries_2`
MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
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
MODIFY `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `exp_low_variable_groups`
--
ALTER TABLE `exp_low_variable_groups`
MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exp_matrix_cols`
--
ALTER TABLE `exp_matrix_cols`
MODIFY `col_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exp_matrix_data`
--
ALTER TABLE `exp_matrix_data`
MODIFY `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `exp_members`
--
ALTER TABLE `exp_members`
MODIFY `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `exp_pages_configuration`
--
ALTER TABLE `exp_pages_configuration`
MODIFY `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exp_password_lockout`
--
ALTER TABLE `exp_password_lockout`
MODIFY `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_playa_relationships`
--
ALTER TABLE `exp_playa_relationships`
MODIFY `rel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=383;
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
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `exp_security_hashes`
--
ALTER TABLE `exp_security_hashes`
MODIFY `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `exp_seolite_config`
--
ALTER TABLE `exp_seolite_config`
MODIFY `seolite_config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exp_seolite_content`
--
ALTER TABLE `exp_seolite_content`
MODIFY `seolite_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
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
MODIFY `tag_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_tag_preferences`
--
ALTER TABLE `exp_tag_preferences`
MODIFY `tag_preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `exp_tag_tags`
--
ALTER TABLE `exp_tag_tags`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `exp_templates`
--
ALTER TABLE `exp_templates`
MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `exp_template_groups`
--
ALTER TABLE `exp_template_groups`
MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `exp_template_morsels_cache`
--
ALTER TABLE `exp_template_morsels_cache`
MODIFY `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exp_template_morsels_dynamic_cache`
--
ALTER TABLE `exp_template_morsels_dynamic_cache`
MODIFY `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1298;
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
MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `exp_template_routes`
--
ALTER TABLE `exp_template_routes`
MODIFY `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
