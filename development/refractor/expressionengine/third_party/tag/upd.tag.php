<?php if ( ! defined('EXT') ) exit('No direct script access allowed');

/**
 * Tag - Updater
 *
 * @package		Solspace:Tag
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2008-2014, Solspace, Inc.
 * @link		http://solspace.com/docs/tag
 * @license		http://www.solspace.com/license_agreement
 * @version		4.2.8
 * @filesource	tag/upd.tag.php
 */

require_once 'addon_builder/module_builder.php';

class Tag_upd extends Module_builder_tag
{
	public $module_actions		= array();
	public $hooks				= array();

	// --------------------------------------------------------------------

	/**
	 * Contructor
	 *
	 * @access	public
	 * @return	null
	 */

	public function __construct()
	{
		parent::__construct('tag');

		// --------------------------------------------
		//  Module Actions
		// --------------------------------------------

		$this->module_actions = array(
			'insert_tags',
			'ajax',
			'tag_js',
			'subscribe',
			'unsubscribe'
		);

		$this->csrf_exempt_actions = array('ajax');

		// --------------------------------------------
		//  Extension Hooks
		// --------------------------------------------

		$default = array(
			'class'			=> $this->extension_name,
			'settings'		=> '',
			'priority'		=> 4,
			'version'		=> TAG_VERSION,
			'enabled'		=> 'y'
		);

		$this->hooks = array(
			array_merge($default,
				array(
					'method'		=> 'delete_entries_start',
					'hook'			=> 'delete_entries_start'
				)
			),
			array_merge($default,
				array(
					'method'		=> 'sessions_end',
					'hook'			=> 'sessions_end'
				)
			),
			array_merge($default,
				array(
					'method'		=> 'entry_submission_end',
					'hook'			=> 'entry_submission_end'
				)
			),
			array_merge($default,
				array(
					'method'		=> 'cp_js_end',
					'hook'			=> 'cp_js_end'
				)
			),
		);
	}
	// END __construct

	// --------------------------------------------------------------------

	/**
	 * Module Installer
	 *
	 * @access	public
	 * @return	bool
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
		//  Default Preferences - Per Site
		// --------------------------------------------

		$prefs = array(
			'parse'							=> 'linebreak',
			'convert_case'					=> 'y',
			'enable_tag_form'				=> 'y',
			'publish_entry_tag_limit'		=> 0,
			'allow_tag_creation_publish' 	=> 'y',
			'separator'						=> 'comma'
		);

		$squery = ee()->db->select("site_id")->get("exp_sites");

		foreach($squery->result_array() as $row)
		{
			foreach($prefs as $name => $value)
			{
				$data = array(
					'site_id'					=> $row['site_id'],
					'tag_preference_name'		=> $name,
					'tag_preference_value'		=> $value
				);

				ee()->db->insert('exp_tag_preferences', $data);
			}
		}

		$this->set_default_tag_group();

		// --------------------------------------------
		//  Module Install
		// --------------------------------------------

		$data = array(	'module_name'			=> $this->class_name,
						'module_version'		=> constant(strtoupper($this->lower_name).'_VERSION'),
						'has_publish_fields'	=> 'y',
						'has_cp_backend'		=> 'y');

		ee()->db->insert('exp_modules', $data);

		return TRUE;
	}
	/* END install() */

	// --------------------------------------------------------------------

	/**
	 * Module Uninstaller
	 *
	 * @access	public
	 * @return	bool
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

		// --------------------------------------------
		//  Publish Page Tabs
		// --------------------------------------------

		ee()->load->library('layout');
		ee()->layout->delete_layout_tabs($this->tabs());

		return TRUE;
	}
	/* END */


	// --------------------------------------------------------------------

	/**
	 * Module Updater
	 *
	 * For the sake of sanity, we only start upgrading from version 2.0 or above.  Cleans out
	 * all of the really old upgrade code, which was making Paul really really crazily confused.
	 *
	 * @access	public
	 * @return	bool
	 */

	public function update($current = '')
	{
		if ($current == $this->version)
		{
			return FALSE;
		}

		//need this for later
		$this->previous_version = $this->database_version();

		//IMPORTANT
		//this will add the prefs table for items older than 2.5
		//all augments need to check this bool for newest prefs and NOT run
		$newest_prefs = FALSE;

		if (ee()->db->table_exists('exp_tag_preferences') === FALSE)
		{
			$newest_prefs = TRUE;

			$module_install_sql = file_get_contents($this->addon_path . strtolower($this->lower_name) . '.sql');

			//gets JUST the tag prefs table from the sql

			$prefs_table = stristr(
				$module_install_sql,
				"CREATE TABLE IF NOT EXISTS `exp_tag_preferences`"
			);

			$prefs_table = substr($prefs_table, 0, stripos($prefs_table, ';;'));

			//install it
			ee()->db->query($prefs_table);
		}

		// --------------------------------------------
		//  Missing Table Columns.  No Versions Known...Damn You, Mitchell.
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '2.2.0'))
		{
			if ( ee()->db->table_exists('exp_tag_tags') AND $this->column_exists( 'total_entries', 'exp_tag_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_tags ADD total_entries int(10) NOT NULL default '0'";
			}

			if ( ee()->db->table_exists('exp_tag_tags') AND $this->column_exists( 'weblog_entries', 'exp_tag_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_tags ADD weblog_entries int(10) NOT NULL default '0'";
			}

			if ( ee()->db->table_exists('exp_tag_tags') AND $this->column_exists( 'gallery_entries', 'exp_tag_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_tags ADD gallery_entries int(10) NOT NULL default '0'";
			}

			if ( ee()->db->table_exists('exp_tag_tags') AND  $this->column_exists( 'clicks', 'exp_tag_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_tags ADD clicks int(10) NOT NULL default '0'";
			}

			if ( ee()->db->table_exists('exp_tag_tags') AND  $this->column_exists( 'site_id', 'exp_tag_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_tags ADD site_id smallint(3) NOT NULL default '1'";
			}

			if ( ee()->db->table_exists('exp_tag_tags') AND $this->column_exists( 'count', 'exp_tag_tags') === TRUE )
			{
				$sql[] = "ALTER TABLE exp_tag_tags DROP count";
			}

			if ( ee()->db->table_exists('exp_tag_bad_tags') AND $this->column_exists( 'site_id', 'exp_tag_bad_tags') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_bad_tags ADD site_id smallint(3) NOT NULL default '1'";
			}

			if ( ee()->db->table_exists('exp_tag_entries') AND $this->column_exists( 'remote', 'exp_tag_entries') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_entries ADD remote char(1) NOT NULL default 'n' AFTER author_id";
			}

			if ( ee()->db->table_exists('exp_tag_entries') AND $this->column_exists( 'ip_address', 'exp_tag_entries') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_entries ADD ip_address varchar(16) NOT NULL default '0' AFTER author_id";
			}

			if ( ee()->db->table_exists('exp_tag_entries') AND $this->column_exists( 'type', 'exp_tag_entries') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_entries ADD type varchar(16) NOT NULL default 'weblog'";
			}

			if ( ee()->db->table_exists('exp_tag_entries') AND $this->column_exists( 'site_id', 'exp_tag_entries') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_entries ADD site_id smallint(3) NOT NULL default '1'";
			}

			if ( ee()->db->table_exists('exp_tag_prefs') AND $this->column_exists( 'site_id', 'exp_tag_prefs') === FALSE )
			{
				$sql[]	= "ALTER TABLE exp_tag_prefs ADD site_id smallint(3) NOT NULL default '1'";
			}
		}

		// --------------------------------------------
		//	Convert Tag Data to UTF-8 for Foreign Characters
		//  - Added: 2.2.0
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '2.2.0'))
		{
			// --------------------------------------------
			//  Changes for Foreign Language Support
			// --------------------------------------------

			// make sure STRICT MODEs aren't in use
			@mysql_query("SET SESSION sql_mode=''", ee()->db->conn_id);

			$tables = array('exp_tag_tags', 'exp_tag_bad_tags', 'exp_tag_entries', 'exp_tag_prefs');

			foreach ($tables as $table)
			{
				$query = ee()->db->query("SHOW COLUMNS FROM `{$table}`");

				foreach($query->result_array() as $row)
				{
					$field = $row['Field'];
					ee()->db->query("UPDATE `{$table}` SET `{$field}` = CONVERT(CONVERT(`{$field}` USING binary) USING utf8)");
				}

				ee()->db->query("ALTER TABLE `{$table}` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci");
			}

			ee()->db->query("ALTER TABLE `exp_tag_tags` CHANGE `tag_alpha` `tag_alpha` CHAR( 3 ) NOT NULL");
			ee()->db->query("ALTER TABLE `exp_tag_tags` CHANGE `tag_name` `tag_name` VARCHAR( 200 ) NOT NULL");

			// --------------------------------------------
			//  Remove Bad Characters from Old Tags and Merge
			// --------------------------------------------

			$not_allowed = array('$', '?', ')', '(', '!', '<', '>');

			$sql = array();

			foreach($not_allowed as $char)
			{
				$sql[] = "tag_name LIKE '%".ee()->db->escape_str($char)."%'";
			}

			$query = ee()->db->query("SELECT tag_id, tag_name
								 FROM exp_tag_tags
								 WHERE ".implode(" OR ", $sql));

			foreach($query->result_array() as $row)
			{
				$new_tag = str_replace($not_allowed, '', $row['tag_name']);

				$cquery = ee()->db->query("SELECT tag_id FROM exp_tag_tags WHERE tag_name = '".ee()->db->escape_str($new_tag)."'");

				if ($cquery->num_rows() > 0)
				{
					ee()->db->query(ee()->db->update_string('exp_tag_entries',
												  array('tag_id' => $cquery->row('tag_id')),
														"tag_id = '".$row['tag_id']."'"));

					ee()->db->query("DELETE FROM exp_tag_tags WHERE tag_id = '".$row['tag_id']."'");
					ee()->db->query("DELETE FROM exp_tag_bad_tags WHERE tag_id = '".$row['tag_id']."'");

					if (ee()->db->table_exists('exp_tag_subscriptions'))
					{
						ee()->db->query("DELETE FROM exp_tag_subscriptions WHERE tag_id = '".$row['tag_id']."'");
					}
				}
				else
				{
					ee()->db->query(ee()->db->update_string('exp_tag_tags',
												  array('tag_name' => $new_tag),
														"tag_id = '".$row['tag_id']."'"));
				}
			}
		}

		// --------------------------------------------
		//  Move Config Preferences into Preference Table
		//  - Added: 2.5.1
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '2.5.1'))
		{
			// --------------------------------------------
			//  Insure Preferences Exist for All Sites
			// --------------------------------------------

			$parse		= (ee()->config->item( $this->lower_name.'_module_parse' ) === FALSE)			 ? 'linebreak' : ee()->config->item( $this->lower_name.'_module_parse' );
			$convert	= (ee()->config->item( $this->lower_name.'_module_convert_case' ) === FALSE)	 ? 'y' : ee()->config->item( $this->lower_name.'_module_convert_case' );
			$enable		= (ee()->config->item( $this->lower_name.'_module_enable_tag_form' ) === FALSE) ? 'y' : ee()->config->item( $this->lower_name.'_module_enable_tag_form' );

			// Should always be at least one...
			$tquery = ee()->db->query("SELECT DISTINCT site_id FROM exp_tag_preferences");

			if ($tquery->num_rows() > 0)
			{
				$sites = array();

				foreach($tquery->result_array() as $row)
				{
					$sites[] = $row['site_id'];
				}

				$squery = ee()->db->query("SELECT site_id FROM exp_sites WHERE site_id NOT IN (".implode(",", $sites).")");

				foreach($squery->result_array() as $row)
				{
					ee()->db->query(ee()->db->insert_string('exp_tag_preferences', array(	'tag_preference_name' 	=> 'parse',
																				'tag_preference_value' 	=> $parse,
																				'site_id'				=> $row['site_id'])));

					ee()->db->query(ee()->db->insert_string('exp_tag_preferences', array(	'tag_preference_name' 	=> 'convert_case',
																				'tag_preference_value'	=> $convert,
																				'site_id'				=> $row['site_id'])));

					ee()->db->query(ee()->db->insert_string('exp_tag_preferences', array(	'tag_preference_name'	=> 'enable_tag_form',
																				'tag_preference_value'	=> $enable,
																				'site_id'				=> $row['site_id'])));

					ee()->db->query(ee()->db->insert_string('exp_tag_preferences', array(	'tag_preference_name'	=> 'publish_entry_tag_limit',
																				'tag_preference_value'	=> 0,
																				'site_id'				=> $row['site_id'])));

					ee()->db->query(ee()->db->insert_string('exp_tag_preferences', array(	'tag_preference_name'	=> 'allow_tag_creation_publish',
																				'tag_preference_value'	=> 'y',
																				'site_id'				=> $row['site_id'])));
				}
			}
		}

		// --------------------------------------------
		// Added Tag Subscriptions Feature
		//  - Added: 2.6.0
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '2.6.0'))
		{
			ee()->db->query("CREATE TABLE IF NOT EXISTS `exp_tag_subscriptions` (
								  `tag_id` int(10) unsigned NOT NULL,
								  `member_id` int(10) unsigned NOT NULL,
								  `site_id` int(10) unsigned NOT NULL,
								  PRIMARY KEY (`tag_id`,`member_id`,`site_id`),
								  KEY `site_id` (`site_id`),
								  KEY `member_id` (`member_id`),
								  KEY `tag_id` (`tag_id`)
								) CHARACTER SET utf8 COLLATE utf8_general_ci");
		}


		// --------------------------------------------
		// Missing Indexes Update
		//  - Added: 2.6.2
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '2.6.2'))
		{
			ee()->db->query("ALTER TABLE `exp_tag_bad_tags` ADD INDEX (`site_id`)");
			ee()->db->query("ALTER TABLE `exp_tag_bad_tags` ADD INDEX (`author_id`)");

			ee()->db->query("ALTER TABLE `exp_tag_entries` ADD INDEX (`weblog_id`)");
			ee()->db->query("ALTER TABLE `exp_tag_entries` ADD INDEX (`site_id`)");
			ee()->db->query("ALTER TABLE `exp_tag_entries` ADD INDEX (`author_id`)");

			//if we added the table from scratch, we dont want this
			if ( ! $newest_prefs ) ee()->db->query("ALTER TABLE `exp_tag_preferences` ADD INDEX (`site_id`)");

			ee()->db->query("ALTER TABLE `exp_tag_prefs` ADD INDEX (`site_id`)");

			if (ee()->db->table_exists('exp_tag_subscriptions'))
			{
				ee()->db->query("ALTER TABLE `exp_tag_subscriptions` ADD INDEX (`tag_id`)");
				ee()->db->query("ALTER TABLE `exp_tag_subscriptions` ADD INDEX (`member_id`)");
				ee()->db->query("ALTER TABLE `exp_tag_subscriptions` ADD INDEX (`site_id`)");
			}

			ee()->db->query("ALTER TABLE `exp_tag_tags` ADD INDEX (`tag_alpha`)");
			ee()->db->query("ALTER TABLE `exp_tag_tags` ADD INDEX (`site_id`)");
			ee()->db->query("ALTER TABLE `exp_tag_tags` ADD INDEX (`author_id`)");
		}


		// --------------------------------------------
		// Hermes Bridge Conversion
		//  - Added: 3.0.0.d1
		//	 - No more Tag_submit extension file, pure Module Extension now
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d1'))
		{
			ee()->db->query("UPDATE exp_extensions SET class = '".ee()->db->escape_str($this->extension_name)."' WHERE class IN ('Tag_submit')");
		}

		// --------------------------------------------
		//  Rename the 'parse' preference to a more descriptive name
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d3'))
		{
			ee()->db->query("UPDATE `exp_tag_preferences` SET tag_preference_name = 'separator' WHERE tag_preference_name = 'parse'");
			ee()->db->query("UPDATE `exp_tag_preferences` SET tag_preference_value = 'comma'
							 WHERE tag_preference_name = 'parse'
							 AND tag_preference_value IN ('semicolon', 'colon')");
		}

		// --------------------------------------------
		//  - Put Publish Tab Labels in preferences table
		//	 - DROP exp_tag_prefs table
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d4'))
		{
			$query = ee()->db->query("SELECT settings FROM exp_extensions WHERE class = '".ee()->db->escape_str($this->extension_name)."' AND settings != '' LIMIT 1");

			if ($query->num_rows() > 0)
			{
				ee()->load->helper('string');
				$settings = strip_slashes((unserialize($query->row('settings'))));


				$query = ee()->db->query("SELECT site_id, channel_id, channel_title FROM exp_channels");

				foreach($query->result_array() AS $row)
				{
					if ( ! empty($settings[$row['channel_id']]))
					{
						ee()->db->query(ee()->db->insert_string('exp_tag_preferences',
																array('tag_preference_name'	 => $row['channel_id'].'_publish_tab_label',
																	  'tag_preference_value' => $settings[$row['channel_id']],
																	  'site_id'				 => $row['site_id'])));
					}
				}
			}

			ee()->db->query("DROP TABLE IF EXISTS exp_tag_prefs");
		}

		// --------------------------------------------
		//  Change Tag DB Structure to have EE 2.x Naming
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d7'))
		{
			ee()->db->query("ALTER TABLE `exp_tag_tags` CHANGE `weblog_entries` `channel_entries` INT( 10 ) NOT NULL DEFAULT '0'");
			ee()->db->query("ALTER TABLE `exp_tag_entries` CHANGE `weblog_id` `channel_id` SMALLINT( 3 ) UNSIGNED NOT NULL");
		}

		// --------------------------------------------
		//  Change 'weblog' to 'channel' in exp_tag_entries - No matter the version.
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d9'))
		{
			ee()->db->query("UPDATE `exp_tag_entries` SET `type` = 'channel' WHERE `type` = 'weblog'");
		}

		//remove old tab style from everything
		if ($this->version_compare($this->database_version(), '<', '3.0.3'))
		{
			ee()->load->library('layout');
			ee()->layout->delete_layout_tabs($this->old_tabs());

			//need to fix areas that have rogue tabs
			ee()->layout->delete_layout_tabs($this->tabs());

			//if we already have tabs named, we need to reinstall them
			//this starts by not using cache on these so if its true, we still only call it once
			if ($this->data->get_tab_channel_ids(FALSE) !== FALSE)
			{
				ee()->layout->add_layout_tabs($this->tabs(), '', array_keys($this->data->get_tab_channel_ids()));
			}
		}

		//--------------------------------------------
		//	Some tags were getting preceding/exceeding
		// 	white space, this cleans that up
		//	this looks insane, but it's better
		//	than losing customer's data - gf
		//--------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.4'))
		{
			//we are using binary for exact matching with tag merging
			//but when we trim items, we need to check if we need case or not
			//BEFORE merging,
			$strict_case	= $this->check_no($this->preference('convert_case'));

			//get all tags that start or end with spaces
			$ws_tags = ee()->db->query(
				"SELECT site_id, tag_name, tag_id
				 FROM 	exp_tag_tags
				 WHERE 	tag_name
				 REGEXP '^ | $'"
			);

			if ($ws_tags->num_rows() > 0)
			{
				$trimmed_list 	 = array();

				foreach ($ws_tags->result_array() as $row)
				{
					$row['trimmed_name'] = ($strict_case ? trim($row['tag_name']) : strtolower(trim($row['tag_name'])));
					//array of site_ids containing trimmed names which
					//are also arrays for easier merging
					$trimmed_list[$row['site_id']][$row['trimmed_name']][] = $row;
				}

				//--------------------------------------------
				// check for existing tags matching trimmed tags
				//--------------------------------------------

				$sql = "SELECT 	tag_name, tag_id, site_id
						FROM	exp_tag_tags
						WHERE	";

				foreach ($trimmed_list as $site_id => $names)
				{
						$sql .= "( site_id = '" . ee()->db->escape_str($site_id) . "'
								   AND BINARY tag_name
								   IN ('" . implode("','", ee()->db->escape_str(array_keys($names))) . "')
								 ) OR ";
				}

				//remove trailing ' OR '
				$sql 			= substr($sql, 0, -4) . " ORDER BY site_id, tag_id ASC";

				$current_tags 	= ee()->db->query($sql);

				if ($current_tags->num_rows() > 0)
				{
					$current_tags_by_site_id 	= array();

					//need to sort by site_id and name for matching the trimmed ones from above
					foreach ($current_tags->result_array() as $row)
					{
						$current_tags_by_site_id[$row['site_id']][$row['tag_name']]	= $row;
					}

					//for each match set, we need to check, merge, and remove
					foreach ($current_tags_by_site_id as $site_id => $tags)
					{
						foreach ($tags as $tag_name => $tag_data)
						{
							//this shouldnt be needed as we checked against this list
							//but saftey first
							if (isset($trimmed_list[$site_id][$tag_name]) AND
								! empty($trimmed_list[$site_id][$tag_name]))
							{
								//foreach trimmed name match we need to convert the ugly names
								for ($i = 0, $l = count($trimmed_list[$site_id][$tag_name]); $i < $l; $i++)
								{
									//merge untrimmed tags by trimmed name with matching good tags
									$this->actions()->merge_tags(
										$tag_name,
										//here 'tag_name' is the row data from the untrimmed name
										$trimmed_list[$site_id][$tag_name][$i]['tag_name'],
										$site_id
									);
								}

								//remove so we dont try to work with it again later
								unset($trimmed_list[$site_id][$tag_name]);
							}
						}

						//just a little cleanup incase everything had matching trimmed tags
						if (empty($trimmed_list[$site_id]))
						{
							unset($trimmed_list[$site_id]);
						}
					}
				}

				//--------------------------------------------
				//	convert all tags left to the trimmed
				// 	version of thier names
				//--------------------------------------------
				if ( ! empty($trimmed_list))
				{
					foreach ($trimmed_list as $site_id => $tag_names)
					{
						foreach ($tag_names as $trimmed_name => $matching_tags)
						{
							for ($i = 0, $l = count($matching_tags); $i < $l; $i++)
							{
								//for the first item with this trimmed name, (but no real tag match)
								//we update to the trimmed name
								if ($i == 0)
								{
									ee()->db->query(
										ee()->db->update_string(
											'exp_tag_tags',
											array(
												'tag_name' => $trimmed_name
											),
											"site_id = '" . ee()->db->escape_str($site_id) ."'
											 AND tag_id = '" . ee()->db->escape_str(
												$matching_tags[$i]['tag_id']
											) . "'"
										)
									);
								}
								//if we have more than one trimmed name of the same
								//we are going to merge this with the first one we updated
								else
								{
									$this->actions()->merge_tags(
										$trimmed_name,
										//here 'tag_name' is the row data from the untrimmed name
										$matching_tags[$i]['tag_name'],
										$site_id
									);
								}
							}
						}
					}
				}
			}
		}

		//--------------------------------------------
		//	tag groups added in 4.0
		//--------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '4.0'))
		{

			if ( ! $this->column_exists( 'tag_group_id', 'exp_tag_entries', FALSE) )
			{
				ee()->db->query(
					"ALTER TABLE exp_tag_entries
					 ADD 		 tag_group_id int(10) unsigned NOT NULL default '1'"
				);
			}

			//--------------------------------------------
			//	removing the old style tags in favor of the
			//	new ones is tricky...
			//--------------------------------------------

			//remove old tab style from everything

			ee()->load->library('layout');

			//just delete the tag_suggest fields
			ee()->layout->delete_layout_fields(array(
				'tag' => array(
					'tag__solspace_tag_suggest' => array(
						'visible'		=> 'true',
						'collapse'		=> 'false',
						'htmlbuttons'	=> 'false',
						'width'			=> '100%'
					)
				)
			));

			$layout_query = ee()->db->query(
				"SELECT layout_id, field_layout
				 FROM	exp_layout_publish"
			);

			if ($layout_query->num_rows() > 0)
			{
				foreach ($layout_query->result_array() as $row)
				{
					//	if the old tag submit is present, replace the name in the
					//	serialized strings and update
					if (stristr($row['field_layout'], 'tag__solspace_tag_submit'))
					{
						//have to make sure and replace the string length ident as well
						$field_layout = str_replace(
							's:24:"tag__solspace_tag_submit"',
							's:23:"tag__solspace_tag_entry"',
							 $row['field_layout']
						);

						ee()->db->query(
							ee()->db->update_string(
								'exp_layout_publish',
								array(
									'field_layout' 	=> $field_layout
								),
								array(
									'layout_id'		=> $row['layout_id']
								)
							)
						);
					}
				}
			}
		}
		//END if ($this->version_compare($this->database_version(), '<', '4.0'))

		if (ee()->db->table_exists('exp_tag_groups') === FALSE)
		{
			$module_install_sql = file_get_contents($this->addon_path . strtolower($this->lower_name) . '.sql');

			//gets JUST the tag groups table from the sql
			$groups_table = stristr(
				$module_install_sql,
				"CREATE TABLE IF NOT EXISTS `exp_tag_groups`"
			);

			$groups_table = substr($groups_table, 0, stripos($groups_table, ';;'));

			//install it
			ee()->db->query($groups_table);
		}

		$this->set_default_tag_group();

		// -------------------------------------
		//	add tag group counts for 4.1.0
		// -------------------------------------

		if ($this->version_compare($this->database_version(), '<', '4.1.0'))
		{
			$tag_groups = $this->data->get_tag_groups(FALSE);

			foreach ($tag_groups as $tag_group_id => $tag_group_name)
			{
				$new_col	= ee()->db->escape_str('total_entries_' . $tag_group_id);

				//um this should NEVER be true... but
				if ( ! $this->column_exists($new_col, 'exp_tag_tags', FALSE))
				{
					ee()->db->query(
						"ALTER TABLE 	`exp_tag_tags`
						 ADD COLUMN 	{$new_col} 		int(10) NOT NULL DEFAULT '0'"
					);
				}
			}

			//after this, there is a custom redirect for 4.0.2 that does an ajax update of counts
		}

		// --------------------------------------------
		//  Default Module Update
		// --------------------------------------------

		$this->default_module_update();

		// --------------------------------------------
		//  Version Number Update - LAST!
		// --------------------------------------------

		$data = array(
			'module_version' 		=> constant(strtoupper($this->class_name).'_VERSION'),
			'has_publish_fields'	=> 'y'
		);

		ee()->db->query(
			ee()->db->update_string(
				'exp_modules',
				$data,
				array(
					'module_name'		=> $this->class_name
				)
			)
		);


		return TRUE;
	}
	/* END update() */


	// --------------------------------------------------------------------

	/**
	 *	This will install itself when needed in the tabs section
	 *
	 *
	 *	@access		public
	 *	@return		array
	 */

	private function set_default_tag_group()
	{
		$query = ee()->db->query(
			"SELECT tag_group_id
			 FROM	exp_tag_groups
			 WHERE	tag_group_id = 1"
		);

		if ($query->num_rows() > 0)
		{
			return;
		}

		ee()->db->query(
			ee()->db->insert_string(
				"exp_tag_groups",
				array(
					'tag_group_id'			=> 1,
					'tag_group_name'		=> "default",
					"tag_group_short_name"	=> "default"
				)
			)
		);
	}
	/* END tabs() */


	// --------------------------------------------------------------------

	/**
	 *	This will install itself when needed in the tabs section
	 *
	 *
	 *	@access		public
	 *	@return		array
	 */

	public function tabs()
	{
		return array(
			'tag' => array(
				'tag__solspace_tag_entry' => array(
					'visible'		=> 'true',
					'collapse'		=> 'false',
					'htmlbuttons'	=> 'false',
					'width'			=> '100%'
				),
			)
		);
	}
	/* END tabs() */


	// --------------------------------------------------------------------

	/**
	 *	need this to remove the old tags so we can have a proper tag update
	 *
	 *
	 *	@access		public
	 *	@return		array
	 */

	public function old_tabs()
	{
		return array(
			'tag' => array(
				'tag__solspace_tag_submit' => array(
					'visible'		=> 'true',
					'collapse'		=> 'false',
					'htmlbuttons'	=> 'false',
					'width'			=> '100%'
				),
				'tag__solspace_tag_suggest' => array(
					'visible'		=> 'true',
					'collapse'		=> 'false',
					'htmlbuttons'	=> 'false',
					'width'			=> '100%'
				)
			)
		);
	}
	/* END tabs() */
}
/* END Tag_updater_base CLASS */