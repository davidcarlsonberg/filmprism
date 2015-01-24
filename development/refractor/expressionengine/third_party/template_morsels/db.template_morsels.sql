CREATE TABLE IF NOT EXISTS `exp_template_morsels_cache` (
	`cache_id`			int(10) unsigned			NOT NULL auto_increment,
	`member_id`			int(10) unsigned			NOT NULL DEFAULT 0,
	`site_id`			int(10) unsigned			NOT NULL DEFAULT 1,
	`date`				int(10) unsigned			NOT NULL DEFAULT 0,
	`refresh`			smallint(5) unsigned		NOT NULL DEFAULT 0,
	`refreshes`			int(10) unsigned			NOT NULL DEFAULT 0,
	`rows`				tinyint(3) unsigned 		NOT NULL DEFAULT 0 ,
	`morsel_name`		varchar(150)				NOT NULL DEFAULT '' ,
	`code`				text,
	`notes`				text,
	`morsel`			mediumtext,
	`preparsed_snippet` char(1)						NOT NULL DEFAULT 'n',
	`filetime`			int							NOT NULL DEFAULT 0,
	PRIMARY KEY			(`cache_id`),
	KEY					`morsel_name` (`morsel_name`)
) CHARACTER SET utf8 COLLATE utf8_general_ci ;;

CREATE TABLE IF NOT EXISTS `exp_template_morsels_dynamic_cache` (
	`cache_id`			int(10) unsigned			NOT NULL auto_increment,
	`parent_id`			int(10) unsigned			NOT NULL DEFAULT 0,
	`site_id`			int(10) unsigned			NOT NULL DEFAULT 1,
	`date`				int(10) unsigned			NOT NULL DEFAULT 0,
	`hash`				varchar(32)					NOT NULL DEFAULT '',
	`notes`				text,
	`morsel`			mediumtext,
	PRIMARY KEY			(`cache_id`),
	KEY					`parent_id` (`parent_id`),
	KEY					`site_id` (`site_id`),
	UNIQUE KEY			`hash` (`hash`)
) CHARACTER SET utf8 COLLATE utf8_general_ci ;;

CREATE TABLE IF NOT EXISTS `exp_template_morsels_queue` (
	`queue_id`			int(10) unsigned			NOT NULL AUTO_INCREMENT,
	`site_id`			int(10) unsigned			NOT NULL DEFAULT 1,
	`queue_hash`		varchar(32)					NOT NULL DEFAULT '',
	`queue_data`		mediumtext,
	`queue_status`		char(1)						NOT NULL DEFAULT '',
	PRIMARY KEY			(`queue_id`),
	KEY					`site_id` (`site_id`),
	KEY					`queue_hash` (`queue_hash`),
	KEY					`queue_status` (`queue_status`)
) CHARACTER SET utf8 COLLATE utf8_general_ci ;;

CREATE TABLE IF NOT EXISTS `exp_template_morsels_refresh_rules` (
	`rule_id`				int(10) unsigned			NOT NULL auto_increment,
	`cache_id`				int(10) unsigned			NOT NULL DEFAULT 0,
	`template_id`			int(10) unsigned			NOT NULL DEFAULT 0,
	`template_dynamic_only`	char(1)						NOT NULL DEFAULT 'n',
	`channel_id`			int(10) unsigned			NOT NULL DEFAULT 0,
	`channel_statuses`		text,
	`channel_add_only`		char(1)						NOT NULL DEFAULT 'n',
	`channel_edit_only`		char(1)						NOT NULL DEFAULT 'n',
	`channel_dynamic_only`	char(1)						NOT NULL DEFAULT 'n',
	`category_group_id`		int(10) unsigned			NOT NULL DEFAULT 0,
	`member_id`				int(10) unsigned			NOT NULL DEFAULT 0 ,
	`site_id`				int(10) unsigned			NOT NULL DEFAULT 1,
	PRIMARY KEY				(`rule_id`),
	KEY						`cache_id` (`cache_id`),
	KEY						`template_id` (`template_id`),
	KEY						`channel_id` (`channel_id`),
	KEY						`category_group_id` (`category_group_id`),
	KEY						`site_id` (`site_id`)
) CHARACTER SET utf8 COLLATE utf8_general_ci ;;

CREATE TABLE IF NOT EXISTS `exp_template_morsels_preferences` (
	`preference_id`			int(10) unsigned		NOT NULL AUTO_INCREMENT,
	`preference_name`		varchar(50)				NOT NULL DEFAULT '',
	`preference_value`		text,
	`site_id`				int(4) unsigned			NOT NULL DEFAULT 1,
	PRIMARY KEY				(`preference_id`),
	KEY						`site_id` (`site_id`)
) CHARACTER SET utf8 COLLATE utf8_general_ci ;;