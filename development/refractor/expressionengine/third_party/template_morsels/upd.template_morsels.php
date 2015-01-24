<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Updater
 *
 * In charge of the install, uninstall, and updating of the add-on.
 *
 * @package     Solspace:Template Morsels
 * @author      Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource  template_morsels/upd.template_morsels.php
 */

require_once 'addon_builder/module_builder.php';

class Template_morsels_upd extends Module_builder_template_morsels
{

	public $module_actions  = array();
	public $hooks           = array();

	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access  public
	 * @return  null
	 */

	public function __construct()
	{
		parent::__construct();

		// --------------------------------------------
		//  Module Actions
		// --------------------------------------------

		$this->module_actions = array(
			'parse_queue',
			'cron_refresh_morsel'
		);

		// --------------------------------------------
		//  Extension Hooks
		// --------------------------------------------

		$this->default_settings = array();

		$default = array(
			'class'         => $this->extension_name,
			'settings'      => '',
			'priority'      => 10,
			'version'       => TEMPLATE_MORSELS_VERSION,
			'enabled'       => 'y'
		);

		$this->hooks = array(
			array_merge($default,
				array(
					'method'        => 'refresh_morsels_from_channel',
					'hook'          => 'entry_submission_end'
				)
			),
			array_merge($default,
				array(
					'method'        => 'delete_entries_loop',
					'hook'          => 'delete_entries_loop'
				)
			),
			array_merge($default,
				array(
					'method'        => 'delete_entries_end',
					'hook'          => 'delete_entries_end'
				)
			),
			array_merge($default,
				array(
					'method'        => 'refresh_morsels_from_template',
					'hook'          => 'update_template_end'
				)
			),
			array_merge($default,
				array(
					'method'        => 'refresh_morsels_from_category',
					'hook'          => 'sessions_end'
				)
			),
			array_merge($default,
				array(
					'method'    => 'template_fetch_template',
					'hook'      => 'template_fetch_template'
					)
			),
			array_merge($default,
				array(
					'method'    => 'cp_js_end',
					'hook'      => 'cp_js_end'
					)
			)
		);
	}
	// END __construct()


	// --------------------------------------------------------------------

	/**
	 * Refresh Template Morsels Rules?
	 *
	 * @access  private
	 * @return  str
	 */

	public function _exp_template_morsels_refresh_rules()
	{
		$sql    = array();

		if ( $this->column_exists( 'category_group_id', 'exp_template_morsels_refresh_rules' ) === FALSE )
		{
			$sql[]  = "ALTER TABLE `exp_template_morsels_refresh_rules` ADD COLUMN
					   `category_group_id` int(10) unsigned NOT NULL default '0'";
		}

		return $sql;
	}
	/* exp_template_morsels_refresh_rules */


	// --------------------------------------------------------------------

	/**
	 * Module Installer
	 *
	 * @access  public
	 * @return  bool
	 */

	public function install()
	{
		// Already installed, let's not install again.
		if ($this->database_version() !== FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Our Default Install
		// --------------------------------------------

		if ($this->default_module_install() == FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Module Install
		// --------------------------------------------

		ee()->db->insert(
			'exp_modules',
			array(
				'module_name'       => $this->class_name,
				'module_version'    => TEMPLATE_MORSELS_VERSION,
				'has_cp_backend'    => 'y'
			)
		);

		return TRUE;
	}
	// END install()


	// --------------------------------------------------------------------

	/**
	 * Module Uninstaller
	 *
	 * @access  public
	 * @return  bool
	 */

	public function uninstall()
	{
		// Cannot uninstall what does not exist, right?
		if ($this->database_version() === FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Default Module Uninstall
		// --------------------------------------------

		if ($this->default_module_uninstall() == FALSE)
		{
			return FALSE;
		}

		return TRUE;
	}
	// END uninstall()


	// --------------------------------------------------------------------

	/**
	 * Module Updater
	 *
	 * @access  public
	 * @return  bool
	 */

	public function update($current = '')
	{
		if ($current == $this->version && $this->extensions_enabled())
		{
			return TRUE;
		}

		// --------------------------------------------
		//  Default Module Update
		// --------------------------------------------

		$this->default_module_update();

		$this->actions();

		// --------------------------------------------
		//  Version 1.1.0
		//  - Adding in the Queue table
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.1.0.d1'))
		{
			$sql[] = "CREATE TABLE IF NOT EXISTS `exp_template_morsels_queue` (
						`queue_id`          int(10) unsigned            NOT NULL AUTO_INCREMENT,
						`site_id`           int(10) unsigned            NOT NULL DEFAULT 1,
						`queue_hash`        varchar(32)                 NOT NULL DEFAULT '',
						`queue_data`        mediumtext,
						`queue_status`      char(1)                     NOT NULL DEFAULT '',
						PRIMARY KEY         (`queue_id`),
						KEY                 `site_id` (`site_id`),
						KEY                 `queue_hash` (`queue_hash`),
						KEY                 `queue_status` (`queue_status`)
					) CHARACTER SET utf8 COLLATE utf8_general_ci";
		}

		// --------------------------------------------
		//  Version: 1.1.0.d11
		//  - Added missing indexes
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.1.0.d11'))
		{
			$sql[] = "ALTER TABLE   `exp_template_morsels_queue`
					  CHANGE        `queue_hash`
									`queue_hash` varchar(32) NOT NULL DEFAULT ''";

			$sql[] = "ALTER TABLE   `exp_template_morsels_queue`
					  CHANGE        `queue_status`
									`queue_status` char(1) NOT NULL DEFAULT ''";

			$sql[] = "ALTER TABLE   `exp_template_morsels_queue`
					  ADD INDEX     (`queue_hash`)";

			$sql[] = "ALTER TABLE   `exp_template_morsels_queue`
					  ADD INDEX     (`queue_status`)";
		}

		// --------------------------------------------
		//  Version: 1.1.1.d2
		//  - When was the Queue Item Added, Better for Cleaning Out Old Data
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.1.1.d2'))
		{
			$sql[] = "ALTER TABLE `exp_template_morsels_queue`
					  ADD `queue_date` int unsigned NOT NULL DEFAULT 0";
		}

		// --------------------------------------------
		//  Version: 1.2.0.d3
		//  - Switch weblog_id to channel_id
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.2.0.d4'))
		{
			$sql[] = "ALTER TABLE   `exp_template_morsels_refresh_rules`
					  CHANGE        `weblog_id`
									`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0";
		}

		// --------------------------------------------
		//  MySQL Strict Changes
		//  - Added: 1.6.0.d1 (2011-11-05)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.6.0.d1'))
		{
			$sql[] = "ALTER TABLE `exp_template_morsels_cache`
					  CHANGE `code` `code` text";

			$sql[] = "ALTER TABLE `exp_template_morsels_cache`
					  CHANGE `morsel` `morsel` mediumtext";

			$sql[] = "ALTER TABLE `exp_template_morsels_dynamic_cache`
					  CHANGE `morsel` `morsel` mediumtext";

			$sql[] = "ALTER TABLE `exp_template_morsels_queue`
					  CHANGE `queue_data` `queue_data` mediumtext";
		}

		// --------------------------------------------
		//  1.7.0
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '1.6.0.1'))
		{
			if ( ! $this->column_exists(
					'preparsed_snippet',
					'exp_template_morsels_cache',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_cache`
						  ADD `preparsed_snippet` char(1) NOT NULL DEFAULT 'n'";
			}

			$sql[] = "CREATE TABLE IF NOT EXISTS `exp_template_morsels_preferences` (
					  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
					  `preference_name` varchar(50) NOT NULL,
					  `preference_value` text,
					  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
					  PRIMARY KEY (`preference_id`),
					  KEY `site_id` (`site_id`)
					) CHARACTER SET utf8 COLLATE utf8_general_ci ;;
					";

			if ( ! $this->column_exists(
					'filetime',
					'exp_template_morsels_cache',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_cache`
						  ADD `filetime` INT NOT NULL DEFAULT 0";
			}

			if ( ! $this->column_exists(
					'notes',
					'exp_template_morsels_cache',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_cache`
						  ADD `notes` text";
			}

			if ( ! $this->column_exists(
					'template_dynamic_only',
					'exp_template_morsels_refresh_rules',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_refresh_rules`
						  ADD `template_dynamic_only` char(1) NOT NULL DEFAULT 'n'";
			}

			if ( ! $this->column_exists(
					'channel_dynamic_only',
					'exp_template_morsels_refresh_rules',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_refresh_rules`
						  ADD `channel_dynamic_only` char(1) NOT NULL DEFAULT 'n'";
			}

			if ( ! $this->column_exists(
					'channel_statuses',
					'exp_template_morsels_refresh_rules',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_refresh_rules`
						  ADD `channel_statuses` text";
			}

			if ( ! $this->column_exists(
					'channel_add_only',
					'exp_template_morsels_refresh_rules',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_refresh_rules`
						  ADD `channel_add_only` char(1) NOT NULL DEFAULT 'n'";
			}

			if ( ! $this->column_exists(
					'channel_edit_only',
					'exp_template_morsels_refresh_rules',
					FALSE
			))
			{
				$sql[] = "ALTER TABLE `exp_template_morsels_refresh_rules`
						  ADD `channel_edit_only` char(1) NOT NULL DEFAULT 'n'";
			}
		}

		// --------------------------------------------
		//  Clear Out Queue Table
		// --------------------------------------------

		$sql[] = "TRUNCATE exp_template_morsels_queue";

		// --------------------------------------------
		//  Run all of the SQL Statements - This may be changed, if necessary.
		// --------------------------------------------

		foreach ($sql as $query)
		{
			ee()->db->query($query);
		}

		// --------------------------------------------
		//  Version Number Update - LAST!
		// --------------------------------------------

		ee()->db->update(
			'exp_modules',
			array('module_version'  => TEMPLATE_MORSELS_VERSION),
			array('module_name'     => $this->class_name)
		);

		return TRUE;
	}
	// END update()
}
// END Class Template_morsels_updater_base