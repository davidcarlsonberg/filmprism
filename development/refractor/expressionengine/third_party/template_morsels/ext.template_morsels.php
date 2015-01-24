<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Extension
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/ext.template_morsels.php
 */

require_once 'addon_builder/extension_builder.php';

class Template_morsels_ext extends Extension_builder_template_morsels
{
	public $settings		= array();
	public $name			= '';
	public $version			= '';
	public $description		= '';
	public $settings_exist	= 'n';
	public $docs_url		= '';
	public $required_by			= array('module');

	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access	public
	 * @return	null
	 */

	public function __construct($settings = array())
	{
		parent::__construct();

		// --------------------------------------------
		//  Settings
		// --------------------------------------------

		$this->settings = $settings;
	}
	// END Template_morsels_extension_base()


	// --------------------------------------------------------------------


	/**
	 * Refresh morsels from category
	 *
	 * Refresh caches when a category is edited
	 *
	 * @access	public
	 * @return	null
	 */

	public function refresh_morsels_from_category()
	{
		// --------------------------------------------
		//	For EE 2.x Doing a Sessions End - So We Check Our Get Vars
		// --------------------------------------------

		if ( ee()->input->get('C') !== 'admin_content' OR
			ee()->input->get('M') !== 'category_update')
		{
			return FALSE;
		}

		if ( ! empty( $_POST['group_id'] ) )
		{
			$group_id = $_POST['group_id'];
		}
		else
		{
			return FALSE;
		}

		// --------------------------------------------
		//	Get morsels to be refreshed
		// --------------------------------------------

		$morsels = $this->data->get_morsels_by_category_group_id( $group_id );

		// -------------------------------------
		//  EE 2.x Recaching
		//  - Required because we are using sessions_end,
		//  which means the certain objects like Localize and Functions
		//  cannot be used as they require a valid Session object.
		//  So, we cannot do our normal Refresh Morsels routine
		//  - If EE 2.x ever gets a hook for category updating,
		//  we can change this.
		// -------------------------------------


		foreach($morsels as $cache_id)
		{
			ee()->db->update(
				'exp_template_morsels_cache',
				array('date'		=> ee()->localize->now - 1),
				array('cache_id'	=> $cache_id)
			);

			// -------------------------------------
			//	Set any dynamic morsels to expired
			//	so that they will be updated on next page load.
			// -------------------------------------

			ee()->db
				->where('parent_id', $cache_id)
				->delete('template_morsels_dynamic_cache');
		}

		return;
	}
	/* End refresh morsels from category */


	// --------------------------------------------------------------------


	/**
	 * Refresh morsels from template
	 *
	 * Refresh caches when a template is edited
	 *
	 * @access	public
	 * @return	null
	 */

	public function refresh_morsels_from_template( $template_id )
	{
		$output = (ee()->extensions->last_call !== FALSE) ? ee()->extensions->last_call : '';

		// --------------------------------------------
		//	Get morsels to be refreshed
		// --------------------------------------------

		$morsels = $this->data->get_morsels_by_template_id( $template_id );

		$cache_ids = array();

		foreach($morsels as $row)
		{
			if ($row['template_dynamic_only'] == 'y')
			{
				if ($this->actions()->prefs['caching_type'] == 'redis')
				{
					require_once 'libraries/Solspace_redis.php';
					$redis = Solspace_redis::getInstance($this->actions()->prefs['redis_servers'])->setPrefix('solspace:morsels:');
				}

				// find dynamic caches and remove
				$dynamic = $redis->get_prefixed_items($row['cache_id'].':');

				foreach($dynamic as $key)
				{
					$redis->delete($key);
				}

				ee()->db->delete('exp_template_morsels_dynamic_cache', array('cache_id' => $row['cache_id']));
			}
			else
			{
				$cache_ids[] = $row['cache_id'];
			}
		}

		// --------------------------------------------
		//	Refresh
		// --------------------------------------------

		if (sizeof($cache_ids) > 0)
		{
			$this->actions()->refresh_morsels( $cache_ids );
		}

		return $output;
	}

	// --------------------------------------------------------------------


	/**
	 * Catches the channel ids of entries being deleted
	 * then saves them for refreshing channels at the end of the loop
	 *
	 * @access	public
	 * @return	null
	 */

	public function delete_entries_loop ($val, $channel_id)
	{
		if ( ! isset($this->cache['delete_loop']))
		{
			$this->cache['delete_loop'] = array();
		}

		//keeps the array unique
		$this->cache['delete_loop'][$channel_id] = $channel_id;
	}
	//END delete_entries_loop


	// --------------------------------------------------------------------

	/**
	 *	Add JS for Template Manager
	 *
	 *	@access		public
	 *	@return		string
	 */

	public function cp_js_end()
	{
		$output = $this->get_last_call(NULL, '');

		if ( ! is_string($output))
		{
			$output = '';
		}

		if ($this->actions()->prefs['template_manager_menu_item'] == 'n')
		{
			return $output;
		}

		//BASE is not set until AFTER sessions_end,
		//and we don't want to clobber it.
		$base_const = defined('BASE') ? BASE :  SELF . '?S=0';

		//2.x adds an extra param for base
		if (substr($base_const, -4) != 'D=cp')
		{
			$base_const .= '&amp;D=cp';
		}

		$morsels_url = str_replace('&amp;', '&', $base_const) .
			'&C=addons_modules&M=show_module_cp&module=' .
			$this->lower_name;

		$extra = <<<EOT

if (typeof EE !== "undefined" && EE.router_class == 'design' && $('.rightNav div span.button').length > 2)
{
	$('.rightNav div').append('<span class="button"><a title="Template Morsels" class="submit" href="{$morsels_url}">Template Morsels</a></span>');
}
EOT;

		return $output."\n".$extra;
	}

	// --------------------------------------------------------------------

	/**
	 * Takes the channels stored from the delete entries loop
	 * and runs moresel refresh
	 *
	 * @access	public
	 * @return	null
	 */

	public function delete_entries_end ()
	{
		if ( ! empty($this->cache['delete_loop']))
		{
			foreach ($this->cache['delete_loop'] as $channel_id)
			{
				// --------------------------------------------
				//	Get morsels to be refreshed
				// --------------------------------------------

				$morsels = $this->data->get_morsels_by_channel_id( $channel_id );

				// --------------------------------------------
				//	Refresh
				// --------------------------------------------

				$this->actions()->refresh_morsels( $morsels );
			}

			//in case this somehow would get run twice? I dunno man.
			unset($this->cache['delete_loop']);
		}
	}
	//END delete_entries_end


	// --------------------------------------------------------------------


	/**
	 * Refresh morsels from Channel
	 *
	 * Refresh caches when a channel entry is edited or published
	 *
	 * @access	public
	 * @return	null
	 */

	public function refresh_morsels_from_channel( $entry_id, $data, $ping_message )
	{
		ee()->extensions->end_script = FALSE;

		// --------------------------------------------
		//	In EE 2.x, the second argument and third argument need to be combined.
		// --------------------------------------------

		$data = array_merge($data, $ping_message);

		if ( empty( $data[$this->sc->db->channel_id] ) === TRUE )
		{
			return FALSE;
		}
		else
		{
			$channel_id	= $data[$this->sc->db->channel_id];
		}

		// --------------------------------------------
		//  Cache IDs
		// --------------------------------------------

		$morsels = $this->data->get_morsels_by_channel_id( $channel_id );

		$cache_ids = array();

		foreach($morsels as $row)
		{
			// --------------------------------------------
			//  Add/Update Check
			// --------------------------------------------

			// Using the the Publish form? (API may have no POST values)
			if ( isset($_POST['entry_id']) && ($row['channel_add_only'] == 'y' OR $row['channel_edit_only'] == 'y'))
			{
				// If add only and entry_id is not 0 or empty...no!
				if ($row['channel_add_only'] == 'y' && ! empty($_POST['entry_id']))
				{
					continue;
				}

				// If edit only and entry_id is empty or 0...no!
				if ($row['channel_edit_only'] == 'y' && empty($_POST['entry_id']))
				{
					continue;
				}
			}

			// --------------------------------------------
			//  Status Check!
			// --------------------------------------------

			if ( ! empty($row['channel_statuses']) && is_string($row['channel_statuses']) && $row['channel_statuses'] != 'all')
			{
				$statuses = array_filter(explode('|', $row['channel_statuses']));

				if ( ! empty($statuses) && ! in_array('all', $statuses))
				{
					$statuses = array_map('strtolower', $statuses);

					// Only these statuses trigger refresh!
					if ( ! in_array(strtolower($data['status']), $statuses))
					{
						continue;
					}
				}
			}

			// --------------------------------------------
			//  Dynamic Only vs ALL
			// --------------------------------------------

			if ($row['channel_dynamic_only'] == 'y')
			{
				if ($this->actions()->prefs['caching_type'] == 'redis')
				{
					require_once 'libraries/Solspace_redis.php';
					$redis = Solspace_redis::getInstance($this->actions()->prefs['redis_servers'])->setPrefix('solspace:morsels:');

					// find dynamic caches and remove
					$dynamic = $redis->get_prefixed_items($row['cache_id'].':');

					foreach($dynamic as $key)
					{
						$redis->delete($key);
					}
				}

				ee()->db->delete('exp_template_morsels_dynamic_cache', array('cache_id' => $row['cache_id']));
			}
			else
			{
				$cache_ids[] = $row['cache_id'];
			}
		}

		// --------------------------------------------
		//	Refresh
		// --------------------------------------------

		if (sizeof($cache_ids) > 0)
		{
			$this->actions()->refresh_morsels( $cache_ids );
		}
	}

	// --------------------------------------------------------------------

	/**
	 *	Preparse Template Morsels
	 *
	 *	Searches template data for any {template_morsel:variable_name} vars and if so, it
	 *	adds the preparsed template morsel into the template.
	 *
	 *	@access		public
	 *	@param		array
	 *	@return		null
	 */

	public function template_fetch_template($row)
	{
		if ( ! isset($row['template_data'])) return;
		if ( ! stristr($row['template_data'], '{template_morsels:')) return;

		preg_match_all('/\{template_morsels:([0-9a-z\_\-]+)\}/', $row['template_data'], $matches, PREG_SET_ORDER);

		foreach ($matches as $match)
		{
			$morsels[] = $match[1];
		}

		if ( empty($morsels)) return;

		// --------------------------------------------
		//  Dynamic Hash is Based on URI
		// --------------------------------------------

		$site_id = ee()->config->item('site_id');

		$this->cached_morsels['dynamic'] = array();

		// --------------------------------------------
		//  See if Morsel Snippet is Already Loaded
		// --------------------------------------------

		$hashes	 = array();
		$missing = array();

		foreach($morsels as $name)
		{
			$params = array('name'		 => $name,
							'site_id'	 => $site_id,
							'uri_string' => ee()->uri->uri_string);

			if (($hash = $this->actions()->create_hash_if_dynamic_morsel($params)) !== FALSE)
			{
				$hashes[$name] = $hash;

				// Cache for this dynamic morsel is already complete.  Let's not repeat our work
				if ( isset($this->cached_morsels['dynamic'][$site_id][$name][$hash]))
				{
					continue;
				}

				$missing[$name] = $hash;
			}
		}

		// --------------------------------------------
		//  Get Morsels Not Already Loaded
		// --------------------------------------------

		$missing_morsels = array();

		if (sizeof($missing) > 0)
		{
			// --------------------------------------------
			//  Fetch Morsel Data
			//	- This query also validates the morsel name and that it is set to be a preparsed_snippet
			// --------------------------------------------

			$sql = "SELECT cache_id, site_id, morsel_name, date, code, morsel, refresh, refreshes, filetime
					FROM exp_template_morsels_cache
					WHERE site_id = ".ee()->db->escape_str($site_id)."
					AND morsel_name IN ( '".implode( "','", ee()->db->escape_str(array_keys($missing)))."')
					AND preparsed_snippet = 'y'";

			$query = ee()->db->query($sql);

			foreach($query->result_array() as $row)
			{
				$missing_morsels[$row['morsel_name']] = $row;

				// --------------------------------------------
				//  File Change?
				// --------------------------------------------

				if ($this->actions()->prefs['save_as_files'] == 'y' && ! empty($this->actions()->prefs['save_as_files_path']))
				{
					$basepath = rtrim($this->actions()->prefs['save_as_files_path'], '/').'/'.
								$row['site_id'].'/'.
								$row['morsel_name'].'.html';

					if ( file_exists($basepath) && filemtime($basepath) >= $row['filetime'])
					{
						// Clear out all dynamic caches
						ee()->db->query("DELETE FROM exp_template_morsels_dynamic_cache
										 WHERE parent_id = '".ee()->db->escape_str($row['cache_id'])."'");
					}
				}
			}

			$missing = array_intersect_key($missing, $missing_morsels);

			// --------------------------------------------
			//  Take List of Missing Morsels, Search for the Dynamic Morsels in DB
			// --------------------------------------------

			if ( sizeof($missing) > 0)
			{
				$sql = "SELECT hash, date, morsel, cache_id FROM exp_template_morsels_dynamic_cache
						WHERE hash IN ( '".implode("','", ee()->db->escape_str($missing))."')";

				$dquery	= ee()->db->query( $sql );

				// -------------------------------------
				//	Go Through These and Find Out What Needs to Be Recached
				// -------------------------------------

				foreach ( $dquery->result_array() as $row )
				{
					$name = array_search($row['hash'], $missing);

					// Cache exists and Never Refreshes
					if ($missing_morsels[$name]['refresh'] == 0)
					{
						$this->cached_morsels['dynamic'][$site_id][$name][$row['hash']] = $row['morsel'];
						unset($missing[$name]);
					}

					// No Need to Recache
					if ( $row['date'] >= ee()->localize->now )
					{
						$this->cached_morsels['dynamic'][$site_id][$name][$row['hash']] = $row['morsel'];
						unset($missing[$name]);
					}
				}
			}
		}

		// --------------------------------------------
		//  Process Missing Morsels
		// --------------------------------------------

		if (sizeof($missing) > 0)
		{
			$recache = array();

			foreach($missing as $name => $hash)
			{
				$params = array('name'		 => $name,
								'site_id'	 => $site_id,
								'uri_string' => ee()->uri->uri_string);

				$recache['static'][$site_id][$name] = $missing_morsels[$name];

				$recache['dynamic'][$site_id][$name][$hash] = array($missing_morsels[$name],
																	$params);
			}

			$this->actions()->parser_refresh($recache);
		}

		// --------------------------------------------
		//  Loopity Loop Loop!
		// --------------------------------------------

		foreach($hashes AS $name => $hash)
		{
			if (isset($this->cached_morsels['dynamic'][$site_id][$name][$hash]))
			{
				ee()->config->_global_vars['template_morsels:'.$name] = $this->cached_morsels['dynamic'][$site_id][$name][$hash];
			}
			elseif (isset($this->actions()->cached_morsels['dynamic'][$site_id][$name][$hash]))
			{
				ee()->config->_global_vars['template_morsels:'.$name] = $this->actions()->cached_morsels['dynamic'][$site_id][$name][$hash];
			}
		}

		// Need to undo these because of possible interferece with Preparsed Vars and normal Fetch tags
		unset($this->cached_morsels['static']);
		unset($this->actions()->cached_morsels['static']);

		unset($this->cached_morsels['dynamic']);
		unset($this->actions()->cached_morsels['dynamic']);
	}
	// END template_fetch_template()

	// --------------------------------------------------------------------


	/**
	 * Activate Extension
	 *
	 * A required method that we actually ignore because this extension is installed by its module
	 * and no other place.  If they want the extension enabled, they have to install the module.
	 *
	 * @access	public
	 * @return	null
	 */

	public function activate_extension(){}
	// END activate_extension()


	// --------------------------------------------------------------------


	/**
	 * Disable Extension
	 *
	 * A required method that we actually ignore because this extension is installed by its module
	 * and no other place.  If they want the extension disabled, they have to uninstall the module.
	 *
	 * @access	public
	 * @return	null
	 */

	public function disable_extension(){}
	// END disable_extension()


	// --------------------------------------------------------------------


	/**
	 * Update Extension
	 *
	 * A required method that we actually ignore because this extension is updated by its module
	 * and no other place.  We cannot redirect to the module upgrade script because we require a
	 * confirmation dialog, whereas extensions were designed to update automatically as they will try
	 * to call the update script on both the User and CP side.
	 *
	 * @access	public
	 * @return	null
	 */

	public function update_extension(){}
	// END update_extension()


	// --------------------------------------------------------------------


	/**
	 * Error Page
	 *
	 * @access	public
	 * @param	string	$error	Error message to display
	 * @return	null
	 */

	public function error_page($error = '')
	{
		$this->cached_vars['error_message'] = $error;

		$this->cached_vars['page_title'] = lang('error');

		// -------------------------------------
		//  Output
		// -------------------------------------

		$this->ee_cp_view('error_page.html');
	}
	// END error_page()

	// --------------------------------------------------------------------
}
// END Class Template_morsels_extension