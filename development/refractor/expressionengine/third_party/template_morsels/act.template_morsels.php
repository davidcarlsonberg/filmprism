<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Actions
 *
 * Handles all form submissions and action requests used on both user and CP areas of EE.
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/act.template_morsels.php
 */

require_once 'addon_builder/module_builder.php';

class Template_morsels_actions extends Module_builder_template_morsels
{

	public $cached_morsels	= array();
	public $refresh_type	= 'parser'; // parser, remote, javascript [not finished], replace

	public $prefs           = array();

	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access	public
	 * @return	null
	 */

	public function __construct()
	{
		parent::__construct();

		// --------------------------------------------
		//  Default Preferences
		// --------------------------------------------

		$this->prefs = array(
			'caching_type'                          => 'db',
			'save_as_files' 						=> 'n',
			'save_as_files_path'					=> '',
			'template_manager_menu_item'            => 'y',
			'redis_servers'                         => ''
		);

		// --------------------------------------------
		//  Retrieve Preferences from DB
		// --------------------------------------------

		if ( ! isset($this->cache['prefs_fetched']) OR ! is_array($this->cache['prefs_fetched']))
		{
			if (ee()->db->table_exists('exp_template_morsels_preferences'))
			{
				ee()->db->where('site_id' , ee()->config->item('site_id'));
				$query = ee()->db->get('exp_template_morsels_preferences');

				foreach($query->result_array() as $prow)
				{
					$this->prefs[$prow['preference_name']] = stripslashes($prow['preference_value']);
				}

				$this->cache['prefs_fetched'] = $this->prefs;
			}
		}
		else
		{
			$this->prefs = $this->cache['prefs_fetched'];
		}

		// -------------------------------------------
		//	Hidden Configuration Variables
		//	- template_morsels_refresh_type => How are we refreshing our Template Morsels
		// -------------------------------------------

		if (in_array(ee()->config->item('template_morsels_refresh_type'), array('parser', 'remote')))
		{
			$this->refresh_type = ee()->config->item('template_morsels_refresh_type');
		}

		// -------------------------------------
		//	Shortcut to ee()->session->cache['modules']['template_morsels']['cached_morsels']
		// -------------------------------------

		$this->cached_morsels =& $this->cache['cached_morsels'];

		ee()->load->helper('string');
	}
	// END


	// --------------------------------------------------------------------

	/**
	 * Create hash if dynamic morsel
	 *
	 * In this module we create a hash out of a serialized array of tag params.
	 *
	 * @access	public
	 * @param	array	params
	 * @return	string	hash
	 */

	public function create_hash_if_dynamic_morsel( $params = array() )
	{
		if ( count( array_diff( array_keys($params), array( 'name', 'site' ) ) ) == 0 ) return FALSE;
		ksort( $params );
		return md5( serialize( $params ) );
	}
	/*	End create hash if dynamic morsel */

	// --------------------------------------------------------------------

	/**
	 *	Fetch Template Morsel's Code
	 *
	 *	@access		public
	 *	@param		array
	 *	@param		string - Default code, if no file
	 *	@return		string
	 */
	public function fetch_morsel_code($row)
	{
		if ( ! isset($row['code'])) exit('issue');

		$default = $row['code'];

		$prefs = $this->prefs; // The default

		// --------------------------------------------
		//  Not Saving as File?  Return!
		// --------------------------------------------

		if ( $prefs['save_as_files'] != 'y') return $default;
		if ( $prefs['save_as_files_path'] == '') return $default;
		if ( ! is_dir($prefs['save_as_files_path'] )) return $default;

		// --------------------------------------------
		//  Find Template File and Return!
		// --------------------------------------------

		$basepath = rtrim($prefs['save_as_files_path'], '/').'/'.
					$row['site_id'].'/';

		if ( ! @is_dir($basepath))
		{
			return $default;
		}

		$basepath .= $row['morsel_name'].'.html';

		ee()->load->helper('file');

		$data = read_file($basepath);

		if (empty($data)) return $default;

		return $data;
	}
	// END fetch_morsel_code()

	// --------------------------------------------------------------------

	/**
	 * Refresh from CP
	 *
	 * When a refresh request comes from the CP we don't have an instantiated $TMPL class. This
	 * requires some special handling with $GLOBALS['TMPL'].
	 *
	 * We have dynamic morsels attached to normal morsels. We'd like to refresh them at the same
	 * time we refresh our normal morsels, but we can't since we don't have access to the variables
	 * that get fed to them through template params. So we leave them alone. They get refreshed
	 * when a page loads and calls an expired dynamic morsel
	 *
	 *	@access	public
	 *	@param	number
	 *	@return	null
	 */

	public function refresh_from_cp( $cache_id = 0 )
	{
		$out	= '';

		// -------------------------------------
		//	Cache id?
		// -------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE )
		{
			return $message	= lang('morsel_cache_id_required');
		}

		if ($this->prefs['caching_type'] == 'redis')
		{
			require_once 'libraries/Solspace_redis.php';
			$redis = Solspace_redis::getInstance($this->prefs['redis_servers'])->setPrefix('solspace:morsels:');
		}

		// -------------------------------------
		//	Get data
		// -------------------------------------

		$sql	= "SELECT cache_id, morsel_name, code, refresh, refreshes, site_id, filetime
					FROM exp_template_morsels_cache
					WHERE cache_id = ".ee()->db->escape_str( $cache_id );

		$query	= ee()->db->query( $sql );

		if ( $query->num_rows() == 0 )
		{
			return $message	= lang('morsel_not_found');
		}

		$row = $query->row_array();

		$row['code'] = $this->fetch_morsel_code($row);

		if ( $row['code'] != '' )
		{
			// -------------------------------------
			//	Invoke parsing capability
			// -------------------------------------

			require_once 'addon_builder/parser.addon_builder.php';

			// -------------------------------------
			//	Parse
			// -------------------------------------

			ee()->TMPL = $GLOBALS['TMPL'] = new Addon_builder_parser_template_morsels();
			$out = $GLOBALS['TMPL']->process_string_as_template( $this->escape_data($this->fetch_morsel_code($row)) );
			$out = $this->unescape_data($out);
		}

		// -------------------------------------
		//	Prep update
		// -------------------------------------

		if ($this->prefs['caching_type'] == 'redis')
		{
			$redis->set($cache_id, $out, $query->row('refresh'));

			// find dynamic caches and remove
			$dynamic = $redis->get_prefixed_items($cache_id.':');

			foreach($dynamic as $key)
			{
				$redis->delete($key);
			}
		}


		$arr	= array(
						'date'		=> time() + ( $query->row('refresh') * 60 ),
						'morsel'	=> $out,
						'refreshes'	=> $query->row('refreshes') + 1
						);

		ee()->db->query(
			ee()->db->update_string(
								'exp_template_morsels_cache',
								$arr,
								array('cache_id' => $cache_id)
							  )
		);

		// -------------------------------------
		//	Set any dynamic morsels to expired so that they will be updated on next page load.
		// -------------------------------------

		ee()->db->query("DELETE FROM exp_template_morsels_dynamic_cache WHERE parent_id = '".ee()->db->escape_str($cache_id)."'");

		// -------------------------------------
		//	Return
		// -------------------------------------

		return array( 'morsel_name' => $query->row('morsel_name'), 'date' => time() + ( $query->row('refresh') * 60 ) );
	}

	// --------------------------------------------------------------------

	/**
	 * Refresh from mod
	 *
	 * This morsel cache refresh method is triggered by calls in the mod.template_morsels.php file. It handles template parsing differently since the $TMPL object exists and can be used.
	 *
	 * @access	public
	 * @return	string
	 */

	 public function refresh_from_mod()
	 {
		// -------------------------------------
		//	Have we already refreshed?
		// -------------------------------------

		$template = ( empty( ee()->TMPL->cache_hash ) ) ? 'base' : ee()->TMPL->cache_hash;
		if ( ! empty( $this->cache['refreshed'][$template] ) ) return TRUE;
		$this->cache['refreshed'][$template] = TRUE;

		if ($this->prefs['caching_type'] == 'redis')
		{
			require_once 'libraries/Solspace_redis.php';
			$redis = Solspace_redis::getInstance($this->prefs['redis_servers'])->setPrefix('solspace:morsels:');
		}

		// --------------------------------------------
		//	Sites Array Can Be Empty if First Fetch has no site="" parameter
		// --------------------------------------------

		if ( empty(ee()->TMPL->sites))
		{
			$sites_query = ee()->db->query("SELECT site_id, site_name FROM exp_sites");

			foreach($sites_query->result_array() as $row)
			{
				ee()->TMPL->sites[$row['site_id']] = $row['site_name'];
			}
		}

		// -------------------------------------
		//	Find All Morsels in the Template
		// -------------------------------------

		$template_morsels	= array();
		$dynamic_morsels	= array();
		$file_recache       = array();

		if ( isset( ee()->TMPL->tag_data ) )
		{
			foreach ( ee()->TMPL->tag_data as $key => $val )
			{
				// Now, if one of these tags happens to have a Template Morsels Fetch tag inside of
				// it, then we cannot parse that Morsel yet.  We have to wait for this tag to finish
				// processing to insure that any variables are parsed. So, we reset the check
				if (strpos($val['block'], LD.'exp:template_morsels:fetch') !== FALSE)
				{
					unset($this->cache['refreshed'][$template]);
				}

				if (strtolower($val['class']) != 'template_morsels' OR empty( $val['params']['name']))
				{
					continue;
				}

				$name	= $val['params']['name'];
				$site	= ee()->config->item('site_id');

				/** -------------------------------------
				/**	If someone is trying to declare the site, we make sure it's a valid site name.
				/** If they are not declaring a site, we default to the current site.
				/** -------------------------------------*/

				if ( ! empty( $val['params']['site'] ) AND ( $site = array_search( $val['params']['site'], ee()->TMPL->sites ) ) === FALSE )
				{
					continue;	// We continue through our loop without adding this to the $template_morsels array.
				}

				// Cache for this static morsel is already complete.  Let's not repeat our work
				if (isset($this->cached_morsels['static'][$site][$name]))
				{
					continue;
				}

				$template_morsels[ $site ][ $name ]	= $name;

				// -------------------------------------
				//	Are there dynamic morsels?
				// -------------------------------------

				if ( ( $hash = $this->create_hash_if_dynamic_morsel( $val['params'] ) ) !== FALSE )
				{
					$hashes[$hash] = $val['params']['name'];
					$hash_sites[$hash] = $site;

					unset( $val['params']['name'], $val['params']['site'] );

					// Cache for this dynamic morsel is already complete.  Let's not repeat our work
					if ( isset($this->cached_morsels['dynamic'][$site][$name][$hash]))
					{
						continue;
					}

					$dynamic_morsels[$site][$name][$hash] = $val['params'];
				}
			}
		}

		if ( count( $template_morsels ) == 0 ) return FALSE;

		/** -------------------------------------
		/**	 Find Cached Morsels in the Database
		/**		- We store these in the $this->cached_morsels array now, even if they may need to be recached
		/** -------------------------------------*/

		$sql = "SELECT cache_id, site_id, morsel_name, date, code, morsel, refresh, refreshes, filetime
				FROM exp_template_morsels_cache
				WHERE ";

		$sql_ors	= array();

		foreach ( $template_morsels as $site => $names )
		{
			$sql_ors[]	= " ( site_id = ".ee()->db->escape_str($site)." AND morsel_name IN ( '".implode( "','", ee()->db->escape_str($names))."' ) )";
		}

		$query = ee()->db->query( $sql . implode( ' OR ', $sql_ors ) );

		if ( $query->num_rows() == 0 ) return FALSE;

		foreach($query->result_array() as $row)
		{
			$this->cached_morsels['static'][$row['site_id']][$row['morsel_name']] = $row['morsel'];

			if ($this->prefs['caching_type'] == 'redis' && $redis->exists($row['cache_id']))
			{
				$this->cached_morsels['static'][$row['site_id']][$row['morsel_name']] =
					$redis->get($row['cache_id']);
			}

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
					$file_recache[$row['cache_id']] = $row['cache_id'];

					if ($this->prefs['caching_type'] == 'redis')
					{
						$redis->delete($row['cache_id']);

						// find dynamic caches and remove
						$dynamic = $redis->get_prefixed_items($row['cache_id'].':');

						foreach($dynamic as $key)
						{
							$redis->delete($key);
						}
					}
					else
					{
						// Clear out all dynamic caches
						ee()->db->query("DELETE FROM exp_template_morsels_dynamic_cache
										 WHERE parent_id = '".ee()->db->escape_str($row['cache_id'])."'");
					}
				}
			}
		}

		/** -------------------------------------
		/**	 Find Dynamic Morsels in the Database
		/**		- We store these in the $this->cached_morsels array now, even if they may need to be recached
		/** -------------------------------------*/

		if ( ! empty( $dynamic_morsels ) )
		{
			if ($this->prefs['caching_type'] == 'redis')
			{
				$dynamic = $redis->get_prefixed_items();

				foreach($dynamic AS $redis_key)
				{
					foreach(array_keys($hashes) AS $hash)
					{
						if (stristr($redis_key, $hash))
						{
							if (($info = $redis->meta($redis_key, true)) === false) continue;

							$dynamic_morsel_dates[$hash]	= $info['expiration_time'];
							$morsel_site_id                 = $hash_sites[$hash];
							$morsel_name                    = $hashes[$hash];
							$this->cached_morsels['dynamic'][$morsel_site_id][$morsel_name][$hash] = $info['content'];
						}
					}
				}
			}
			else
			{
				$sql = "SELECT site_id, date, hash, morsel FROM exp_template_morsels_dynamic_cache
						WHERE hash IN ( '".implode( "','", ee()->db->escape_str(array_keys($hashes)) )."' )";

				$dquery	= ee()->db->query( $sql );

				// -------------------------------------
				//	Save dynamic morsels to cache, we'll refresh later
				// -------------------------------------

				$dynamic_morsel_dates	= array();

				foreach ( $dquery->result_array() as $row )
				{
					$dynamic_morsel_dates[$row['hash']]	= $row['date'];
					$this->cached_morsels['dynamic'][$row['site_id']][$hashes[$row['hash']]][$row['hash']] = $row['morsel'];
				}
			}
		}

		// -------------------------------------
		//	Begin Checking the Morsels Cache Status
		// -------------------------------------

		$recache = array();

		ee()->TMPL->log_item(' - Checking Cache Status of Morsels');

		// -------------------------------------
		//	Loop Through Morsels for Template and Check
		// -------------------------------------

		foreach ( $query->result_array() as $row )
		{
			/** -------------------------------------
			/**	 Cache Expired for Morsel?
			/**     - The file has been updated?
			/**		- The 'date' field indicates the next time to recache
			/**		- A '0' refresh value indicates that it should never be recached
			/** -------------------------------------*/

			if ( isset($file_recache[$row['cache_id']]))
			{
				$recache['static'][$row['site_id']][$row['morsel_name']] = $row;
			}
			elseif ( $row['refresh'] != 0 && ($this->prefs['caching_type'] == 'db' && $row['date'] <= ee()->localize->now ))
			{
				$recache['static'][$row['site_id']][$row['morsel_name']] = $row;
			}
			elseif($this->prefs['caching_type'] == 'redis' && $redis->exists($row['cache_id']) === false)
			{
				$recache['static'][$row['site_id']][$row['morsel_name']] = $row;
			}

			// -------------------------------------
			//	Check Dynamic Morsels for this Template Morsel
			// -------------------------------------

			if ( isset( $dynamic_morsels[$row['site_id']][$row['morsel_name']]))
			{
				foreach ( $dynamic_morsels[$row['site_id']][ $row['morsel_name'] ] as $hash => $params )
				{
					// -------------------------------------
					//	Missing?  Cache!
					// -------------------------------------

					if ( ! isset($dynamic_morsel_dates[$hash]))
					{
						$recache['dynamic'][$row['site_id']][$row['morsel_name']][$hash] = array($row, $params);
						continue;
					}

					// --------------------------------------------
					//	If Refresh Rate is '0' we NEVER refresh
					// --------------------------------------------

					if ($row['refresh'] == 0) continue;

					// --------------------------------------------
					//	Recache Dynamic When Static Template Morsels are Recached
					// --------------------------------------------

					if ( isset($recache['static'][$row['site_id']][$row['morsel_name']]))
					{
						$recache['dynamic'][$row['site_id']][$row['morsel_name']][$hash] = array($row, $params);
						continue;
					}

					// -------------------------------------
					//	Cache has Expired!  Recache!
					// -------------------------------------

					if ( $dynamic_morsel_dates[ $hash ] < ee()->localize->now )
					{
						$recache['dynamic'][$row['site_id']][$row['morsel_name']][$hash] = array($row, $params);
						continue;
					}
				}

				$total = ( ! isset($recache['dynamic'][$row['site_id']][$row['morsel_name']])) ? 0 : count($recache['dynamic'][$row['site_id']][$row['morsel_name']]);
			}
		}

		ee()->TMPL->log_item(' - End Checking Cache Status of Morsels');

		//print_r($recache);
		// print_r($this->cached_morsels);

		// --------------------------------------------
		//	Nothing to Recache?  Bail!
		// --------------------------------------------

		if (count($recache) == 0)
		{
			return;
		}

		if ($this->refresh_type == 'replace')
		{
			$this->replace_morsels($recache);
		}
		elseif ($this->refresh_type == 'remote')
		{
			ee()->TMPL->log_item(' - Recaching Template Morsels via Remote Request');
			$this->remote_refresh($recache);
		}
		elseif ($this->refresh_type == 'javascript')
		{
			ee()->TMPL->log_item(' - Recaching Template Morsels via JavaScript Remote Request');
			//$this->javascript_refresh($recache);
		}
		else
		{
			ee()->TMPL->log_item(' - Recaching Template Morsels via Built in Parser');
			$this->parser_refresh($recache);
		}
	}
	/* END refresh_from_mod() */


	// --------------------------------------------------------------------

	/**
	 *	Replace Morsels with their Code
	 *
	 *	After a Remote Request, if the Morsel is not Rereshed or in the Database, we Replace
	 *  our Fetch tag with the Morsel's code.
	 *
	 *	@access		public
	 *	@param		array
	 *	@return		null
	 */

	public function replace_morsels($recache)
	{
		ee()->TMPL->log_item(' -- Replace Morsels Procedure Triggered');

		// --------------------------------------------
		//	Find and Replace in the Code
		// --------------------------------------------

		// $recache['static'][$row['site_id']][$row['morsel_name']] = $row;

		if ( isset($recache['static']))
		{
			foreach($recache['static'] as $site_id => $static_morsels)
			{
				foreach($static_morsels as $name => $morsel_data)
				{
					$this->cached_morsels['static'][$site_id][$name] = str_replace('/', T_SLASH, $morsel_data['code']);
				}
			}
		}

		if ( isset($recache['dynamic']))
		{
			foreach($recache['dynamic'] as $site_id => $site_dynamic_morsels)
			{
				foreach($site_dynamic_morsels as $name => $dynamic_morsels)
				{
					foreach($dynamic_morsels as $hash => $morsel_data);
					{
						$out = str_replace('/', T_SLASH, $morsel_data[0]['code']);

						if (isset($morsel_data[1]) && is_array($morsel_data[1]))
						{
							foreach($morsel_data[1] as $var_name => $var_value)
							{
								$out = str_replace('{'.$var_name.'}', $var_value, $out);
							}
						}

						$this->cached_morsels['dynamic'][$site_id][$name][$hash] = $out;
					}
				}
			}
		}
	}
	/* END replace_morsels() */

	// --------------------------------------------------------------------

	/**
	 * Refresh via a Remote Action Request
	 *
	 * We store what Morsels need to be recached in a database table and then make an Action request
	 * from within PHP to have it do the re-caching.  This prevents us from having a problem where
	 * our Parser's $TMPL global interferes with the one doing the template parsing for a page.
	 *
	 * @access	public
	 * @param	array
	 * @return	string
	 */

	 public function remote_refresh($recache = array())
	 {
		if ( ! is_array($recache) OR count($recache) == 0) return;

		// --------------------------------------------
		//	Store Our Recache Data in the Database, if Not a Duplicate Recaching Effort
		// --------------------------------------------

		$new_caching	= array();

		// $recache['static'][$row['site_id']][$row['morsel_name']] = $row;

		if ( isset($recache['static']))
		{
			foreach($recache['static'] as $site_id => $static_morsels)
			{
				foreach($static_morsels as $morsel_name => $morsel_data)
				{
					$data = array();
					$data['static'][$site_id][$morsel_name] = $morsel_data;

					$queue_data = base64_encode(serialize($data));
					$hash		= md5($queue_data);

					$new_caching[$hash] = $queue_data;
				}
			}
		}

		// $recache['dynamic'][$row['site_id']][$row['morsel_name']][$hash] = array($row, $params);

		if ( isset($recache['dynamic']))
		{
			foreach($recache['dynamic'] as $site_id => $site_dynamic_morsels)
			{
				foreach($site_dynamic_morsels as $morsel_name => $dynamic_morsels)
				{
					foreach($dynamic_morsels as $hash => $morsel_data);
					{
						$data = array();
						$data['dynamic'][$site_id][$morsel_name][$hash] = $morsel_data;

						$queue_data = base64_encode(serialize($data));

						$new_caching[$hash] = $queue_data;
					}
				}
			}
		}

		// --------------------------------------------
		//	Check Queue - Prevents Duplicate Work
		// --------------------------------------------

		if (count($new_caching) > 0)
		{
			$query = ee()->db->query(
				"SELECT queue_status, queue_hash
				 FROM exp_template_morsels_queue
				 WHERE queue_hash IN ('".implode("','", ee()->db->escape_str(array_keys($new_caching)))."')");

			// Remove existing Queue Items
			foreach($query->result_array() as $row)
			{
				unset($new_caching[$row['queue_hash']]);
			}
		}

		// --------------------------------------------
		//	Request Action URL - If New Recaching is Required
		// --------------------------------------------

		if (count($new_caching) > 0)
		{
			foreach($new_caching as $hash => $queue_data)
			{
				ee()->db->query(ee()->db->insert_string('exp_template_morsels_queue',
											  array('site_id' 		=> ee()->config->item('site_id'),
													'queue_hash'	=> $hash,
													'queue_data'	=> $queue_data,
													'queue_date'	=> ee()->localize->now)));
			}

			// --------------------------------------------
			//	Prevents Bad Module Updates - The Frisky!
			// --------------------------------------------

			$aid = ee()->functions->insert_action_ids(ee()->functions->fetch_action_id('Template_morsels', 'parse_queue'));

			if (strpos($aid, 'AID:') !== FALSE)
			{
				ee()->TMPL->log_item('Template Morsel Remote Recache Failure: Bad Module Update');
				return;
			}

			$url = ee()->functions->fetch_site_index(0, 0).QUERY_MARKER.'ACT='.$aid;

			ee()->TMPL->log_item(' -- Starting Remote Request');

			$data = $this->fetch_url($url.'&hash='.implode('|', array_keys($new_caching)));

			ee()->TMPL->log_item(' -- End Remote Request');

			// We don't need the system to do it again at the end of PAGE processing, so we remove it.
			unset(ee()->functions->action_ids['Template_morsels']);

			// --------------------------------------------
			//	Clean Queue of These Hashes and Any Over Two Minutes Old
			// --------------------------------------------

			ee()->db->query(
				"DELETE FROM exp_template_morsels_queue
				WHERE queue_hash IN ('".ee()->db->escape_str(implode("','", ee()->db->escape_str(array_keys($new_caching))))."')
				OR queue_date < '".(ee()->localize->now - 120)."'");

			// --------------------------------------------
			//	Log the Remote Request Status for Debugging
			// --------------------------------------------

			ee()->TMPL->log_item(' -- Remote Request Status: '.$data);
		}

		// --------------------------------------------
		//	Our Remote Cache Request is Done.  Redo Morsel Checks and Replace Code for Anything Uncached
		// --------------------------------------------

		$template = ( empty( ee()->TMPL->cache_hash ) ) ? 'base' : ee()->TMPL->cache_hash;
		unset($this->cache['refreshed'][$template]);

		$this->refresh_type = 'replace';
		$this->refresh_from_mod();
	}

	// --------------------------------------------------------------------

	/**
	 * Refresh via Parser
	 *
	 * The default method of recaching morsels is to
	 * use our Parser during the template parsing for
	 * a page.  However, on a notable site this caused
	 * a problem with the Template's normal $TMPL global,
	 * causing confusion in PHP about what data was being
	 * looked at.  A very rare instance but enough
	 * of a difficulty to create substitute methods that
	 * did not occur during a page's creation.
	 *
	 * @access	public
	 * @param	array
	 * @return	string
	 */

	 public function parser_refresh($recache = array())
	 {
		if ( ! is_array($recache) OR count($recache) == 0) return;

		if ($this->prefs['caching_type'] == 'redis')
		{
			require_once 'libraries/Solspace_redis.php';
			$redis = Solspace_redis::getInstance($this->prefs['redis_servers'])->setPrefix('solspace:morsels:');
		}

		// --------------------------------------------
		//	Bring in Morsel Parser, Back Up Current TMPL global object
		// --------------------------------------------

		require_once 'addon_builder/parser.addon_builder.php';

		$modules = $plugins = array();

		if ( isset(ee()->TMPL) && is_object(ee()->TMPL))
		{
			$TMPL_bak = ee()->TMPL;

			foreach(get_object_vars(ee()->TMPL) as $key => $value)
			{
				$TMPL_bak->$key = $value;
			}

			$modules = ee()->TMPL->modules;
			$plugins = ee()->TMPL->plugins;
		}

		// --------------------------------------------
		//	Recache Static Morsels
		// --------------------------------------------

		if (isset($recache['static']) && is_array($recache['static']) && count($recache['static']) > 0)
		{
			if ( isset($TMPL_bak))
			{
				$TMPL_bak->log_item(' -- Starting Caching of Static Morsels');
			}

			$sql = array();

			foreach($recache['static'] as $site_id => $morsel)
			{
				foreach($morsel as $name => $row)
				{
					if ( isset($TMPL_bak))
					{
						$TMPL_bak->log_item(' --- Parsing of Static Cache for Morsel: '.$name);
					}

					unset($TMPL, $GLOBALS['TMPL']); // Clear old $TMPL global completely out of memory

					global $TMPL;
					ee()->TMPL = $TMPL = new Addon_builder_parser_template_morsels();
					$TMPL->modules	= $modules;	// Just to save time
					$TMPL->plugins	= $plugins;	// Just to save time

					$out = $TMPL->process_string_as_template( $this->escape_data($this->fetch_morsel_code($row)) );
					$out = $this->unescape_data($out);

					$this->cached_morsels['static'][$site_id][$name] = $out;

					// --------------------------------------------
					//	Save to Prevent Process on Next Loop
					// --------------------------------------------

					if ( empty($modules))
					{
						$modules = $TMPL->modules;
					}

					if ( empty($plugins))
					{
						$plugins = $TMPL->plugins;
					}

					// --------------------------------------------
					//	Prep Query for Static Morsels
					// --------------------------------------------

					if ($this->prefs['caching_type'] == 'redis')
					{
						$redis->set($row['cache_id'], $out, $row['refresh']);
					}

					$sql[]	= "(".$row['cache_id'];
					$sql[]	= ee()->localize->now + ( $row['refresh'] * 60 );
					$sql[]	= "'".ee()->db->escape_str( $out )."'";
					$sql[]  = "'".ee()->db->escape_str( $this->fetch_morsel_code($row) )."'";
					$sql[]	= time();
					$sql[]	= ( $row['refreshes'] + 1 ).")";

					if ( isset($TMPL_bak))
					{
						$TMPL_bak->log_item(' --- End Parsing of Static Cache for Morsel: '.$name);
					}
				}
			}

			// This still happens even on Redis caching, as it updates the cache code/filetime
			$sql = "INSERT INTO exp_template_morsels_cache (cache_id, date, morsel, code, filetime, refreshes)
					VALUES " . implode( ",", $sql ) . "
					ON DUPLICATE KEY
					UPDATE date = VALUES(date),
						   morsel = VALUES(morsel),
						   code = VALUES(code),
						   filetime = VALUES(filetime),
						   refreshes = VALUES(refreshes)";

			ee()->db->query( $sql );

			if ( isset($TMPL_bak))
			{
				$TMPL_bak->log_item(' -- Ending Caching of Static Morsels');
			}
		}

		// -------------------------------------
		//	Recache Dynamic Morsels
		// -------------------------------------

		if (isset($recache['dynamic']) && is_array($recache['dynamic']) && count($recache['dynamic']) > 0)
		{
			if ( isset($TMPL_bak))
			{
				$TMPL_bak->log_item(' -- Starting Caching of Dynamic Morsels');
			}

			$sql = array();

			foreach($recache['dynamic'] as $site_id => $morsel)
			{
				foreach($morsel as $name => $dynamic_morsels)
				{
					if ( isset($TMPL_bak))
					{
						$TMPL_bak->log_item(' --- Parsing of '.count($dynamic_morsels).' Dynamic Caches for Morsel: '.$name);
					}

					foreach($dynamic_morsels as $hash => $details)
					{
						$row = $details[0];

						unset($TMPL, $GLOBALS['TMPL']); // Clear old $TMPL global completely out of memory

						global $TMPL;
						ee()->TMPL= $TMPL = new Addon_builder_parser_template_morsels();
						$TMPL->modules	= $modules;	// Just to save time
						$TMPL->plugins	= $plugins;	// Just to save time

						unset( $details[1]['name']); // Remove name="" parameter

						$TMPL->global_vars	= $details[1];

						$out = $TMPL->process_string_as_template( $this->escape_data($this->fetch_morsel_code($row)) );
						$out = $this->unescape_data($out, $details[1]);

						$this->cached_morsels['dynamic'][$site_id][$name][$hash] = $out;

						// --------------------------------------------
						//	Save to Prevent Process on Next Loop
						// --------------------------------------------

						if ( empty($modules))
						{
							$modules = $TMPL->modules;
						}

						if ( empty($plugins))
						{
							$plugins = $TMPL->plugins;
						}

						// --------------------------------------------
						//	Prep Query for Dynamic Morsels
						// --------------------------------------------

						if ($this->prefs['caching_type'] == 'redis')
						{
							// Dynamic get a prefix of the cache_id, for easier deleting
							$redis->set($row['cache_id'].':'.$hash, $out, $row['refresh']);
						}
						else
						{
							$dsql[]	= "(".$row['cache_id'];
							$dsql[]	= $row['site_id'];
							$dsql[]	= ee()->localize->now + ( $row['refresh'] * 60 );
							$dsql[]	= "'".$hash."'";
							$dsql[]	= "'".ee()->db->escape_str( $out )."')";
						}
					}

					if ( isset($TMPL_bak))
					{
						$TMPL_bak->log_item(' --- End Parsing of Dynamice Caches for Morsel: '.$name);
					}
				}
			}

			if ($this->prefs['caching_type'] == 'db')
			{
				$dsql = "INSERT INTO exp_template_morsels_dynamic_cache (parent_id, site_id, date, hash, morsel)
						 VALUES " . implode( ",", $dsql ) . " ON DUPLICATE KEY UPDATE morsel = VALUES(morsel), date = VALUES(date)";

				ee()->db->query( $dsql );
			}

			if ( isset($TMPL_bak))
			{
				$TMPL_bak->log_item(' -- Ending Caching of Dynamic Morsels');
			}
		}

		// --------------------------------------------
		//	Remove our Morsels Parsers Completely
		// --------------------------------------------

		foreach(get_object_vars($TMPL) as $key => $value)
		{
			unset($TMPL->$key, ee()->TMPL->$key);
		}

		unset($TMPL, $GLOBALS['TMPL'], ee()->TMPL);

		// --------------------------------------------
		//	Bring Back our Original EE Parser object
		// --------------------------------------------

		if ( isset($TMPL_bak) && is_object($TMPL_bak))
		{
			global $TMPL;
			ee()->TMPL = $TMPL = $TMPL_bak;

			foreach(get_object_vars($TMPL_bak) as $key => $value)
			{
				unset(ee()->TMPL->$key);
				ee()->TMPL->$key = $TMPL->$key = $value;
			}

			unset($TMPL_bak);
		}
	}
	/* END parser_refresh() */


	// --------------------------------------------------------------------


	/**
	 * Add URIs into the Database
	 *
	 * @access	public
	 * @return	null
	 */

	public function refresh_morsels( $morsels = array() )
	{
		// --------------------------------------------
		//	Any morsels?
		// --------------------------------------------

		if ( empty( $morsels ) === TRUE ) return FALSE;

		// --------------------------------------------
		//	Loop and do it
		// --------------------------------------------

		foreach ( $morsels as $cache_id )
		{
			$this->refresh_from_cp( $cache_id );
		}

		// --------------------------------------------
		//	Return
		// --------------------------------------------

		return TRUE;
	}
	// END refresh_morsels()


	// --------------------------------------------------------------------


	/**
	 * Harvest Embeds from Database
	 *
	 * If the template_morsels:harvest="" OR solspace:harvest=""
	 * parameter is found in an Embed, we
	 * put that Embed into the page's content and try to reduce
	 * the load of EE Template's parsing
	 * and the Template Morsels, which has to do its work all
	 * over for each template with a morsel in it.
	 *
	 * @access	public
	 * @return	null
	 */

	public function embed_harvest( $level = 0 )
	{
		// --------------------------------------------
		//	Limit of Two Levels Below the Main
		// --------------------------------------------

		if ($level > 2)
		{
			return FALSE;
		}

		// --------------------------------------------
		//	Any Harvestable Embeds? Quick Checks.
		// --------------------------------------------

		if ( strpos(ee()->TMPL->template, '{embed') === FALSE OR
			(
				strpos(ee()->TMPL->template, 'solspace:harvest=') === FALSE &&
				strpos(ee()->TMPL->template, 'template_morsels:harvest=') === FALSE
			)
		)
		{
			return FALSE;
		}

		// --------------------------------------------
		//	Find Entirety of Embeds
		// --------------------------------------------

		$template = str_replace(T_SLASH, '/', ee()->TMPL->template);

		if ( ! preg_match_all("/({embed\s*=)(.*?)}/s", $template, $matches))
		{
			return FALSE;
		}

		foreach ($matches[2] as $key => $val)
		{
			if (strpos($val, '{') !== FALSE)
			{
				$matches[0][$key] = ee()->functions->full_tag($matches[0][$key], $template);
				$matches[2][$key] = substr(str_replace($matches[1][$key], '', $matches[0][$key]), 0, -1);
				$template = str_replace($matches[0][$key], '', $template);
			}
		}

		// --------------------------------------------
		//	Sites Array Can Be Empty if First Fetch has no site="" parameter
		// --------------------------------------------

		if (ee()->config->item('multiple_sites_enabled') == 'y' && empty(ee()->TMPL->sites))
		{
			$sites_query = ee()->db->query("SELECT site_id, site_name FROM exp_sites");

			foreach($sites_query->result_array() as $row)
			{
				ee()->TMPL->sites[$row['site_id']] = $row['site_name'];
			}
		}

		// --------------------------------------------
		//	Process Embeds
		// --------------------------------------------

		$templates	= array();
		$sql		= array();

		foreach($matches[2] as $key => $val)
		{
			// --------------------------------------------
			//	Skip Those That are Not Enabled for Harvesting
			// --------------------------------------------

			if (strpos($val, 'solspace:harvest') === FALSE &&
				strpos($val, 'template_morsels:harvest') === FALSE)
			{
				continue;
			}

			// --------------------------------------------
			//	Find Embed Variables, if any...
			// --------------------------------------------

			$parts = preg_split("/\s+/", $val, 2);

			$embed_vars = (isset($parts['1'])) ? ee()->functions->assign_parameters($parts[1]) : array();

			if ((! isset($embed_vars['solspace:harvest']) OR $embed_vars['solspace:harvest'] != 'y') &&
				(! isset($embed_vars['template_morsels:harvest']) OR $embed_vars['template_morsels:harvest'] != 'y'))
			{
				continue;
			}

			$val = trim_slashes(strip_quotes(trim($parts[0])));

			if ( ! stristr($val, '/'))
			{
				continue;
			}

			$ex = explode("/", trim($val));

			if (count($ex) != 2)
			{
				continue;
			}

			// ----------------------------------
			//	Determine Site
			// ----------------------------------

			$site_id = ee()->config->item('site_id');

			if (stristr($ex[0], ':'))
			{
				$name = substr($ex[0], 0, strpos($ex[0], ':'));

				if (ee()->config->item('multiple_sites_enabled') == 'y')
				{
					$site_id = array_search($name, $this->sites);

					if (empty($site_id))
					{
						$site_id = ee()->config->item('site_id');
					}
				}

				$ex[0] = str_replace($name.':', '', $ex[0]);
			}

			// ----------------------------------
			//	Store for Processing
			// ----------------------------------

			$templates[$site_id][$ex[0]][$ex[1]] = array('tag' => $matches['0'][$key], 'embed_vars' => $embed_vars);

			// ----------------------------------
			//	SQL for Template
			// ----------------------------------

			$sql[] = "(t.site_id = '".ee()->db->escape_str($site_id)."' AND t.template_name = '".ee()->db->escape_str($ex[1])."' AND tg.group_name = '".ee()->db->escape_str($ex[0])."')";
		}

		if (count($templates) == 0)
		{
			return FALSE;
		}

		// --------------------------------------------
		//	Fetch and Process Embedded Templates
		// --------------------------------------------

		$reprocess = FALSE;

		$query = ee()->db->query(
			"SELECT t.template_data, t.site_id, t.template_name, tg.group_name
			 FROM exp_templates AS t
			 LEFT JOIN exp_template_groups AS tg ON tg.group_id = t.group_id
			 WHERE ".implode(" OR ", $sql));

		foreach($query->result_array() as $row)
		{
			if ( ! isset($templates[$row['site_id']][$row['group_name']][$row['template_name']])) continue;

			extract($templates[$row['site_id']][$row['group_name']][$row['template_name']]);

			// --------------------------------------------
			//	Global Variables
			// --------------------------------------------

			$global_vars = ee()->config->_global_vars;

			foreach (array('site_id', 'site_label', 'site_short_name') as $site_var)
			{
				$global_vars[$site_var] = stripslashes(ee()->config->item($site_var));
			}

			// Parse {last_segment} variable
			$seg_array = ee()->uri->segment_array();
			$global_vars['last_segment'] = end($seg_array);

			if (count($global_vars) > 0)
			{
				foreach ($global_vars as $key => $val)
				{
					$row['template_data'] = str_replace(LD.$key.RD, $val, $row['template_data']);
				}

				// in case any of these variables have EE comments of their own
				$row['template_data'] = ee()->TMPL->remove_ee_comments($row['template_data']);
			}

			// --------------------------------------------
			//	Segment Variables
			// --------------------------------------------

			for ($i = 1; $i < 10; $i++)
			{
				$row['template_data'] = str_replace(
					LD.'segment_'.$i.RD,
					ee()->uri->segment($i),
					$row['template_data']
				);
			}

			if ( ! empty($embed_vars))
			{
				foreach ($embed_vars as $key => $val)
				{
					// add 'embed:' to the key for replacement and so these variables work in conditionals
					$embed_vars['embed:'.$key] = $val;
					unset($embed_vars[$key]);
					$row['template_data'] = str_replace(LD.'embed:'.$key.RD, $val, $row['template_data']);
				}
			}

			// Remove extra, non-used Embed Variables
			if (strpos($row['template_data'], '{embed:') !== FALSE)
			{
				$row['template_data'] = preg_replace('/{embed:(.+?)}/', '', $row['template_data']);
			}

			// -------------------------------------
			//	Parse date format string "constants"
			// -------------------------------------

			$date_constants	= array(
				'DATE_ATOM'		=>	'%Y-%m-%dT%H:%i:%s%Q',
				'DATE_COOKIE'	=>	'%l, %d-%M-%y %H:%i:%s UTC',
				'DATE_ISO8601'	=>	'%Y-%m-%dT%H:%i:%s%O',
				'DATE_RFC822'	=>	'%D, %d %M %y %H:%i:%s %O',
				'DATE_RFC850'	=>	'%l, %d-%M-%y %H:%m:%i UTC',
				'DATE_RFC1036'	=>	'%D, %d %M %y %H:%i:%s %O',
				'DATE_RFC1123'	=>	'%D, %d %M %Y %H:%i:%s %O',
				'DATE_RFC2822'	=>	'%D, %d %M %Y %H:%i:%s %O',
				'DATE_RSS'		=>	'%D, %d %M %Y %H:%i:%s %O',
				'DATE_W3C'		=>	'%Y-%m-%dT%H:%i:%s%Q'
			);

			foreach ($date_constants as $key => $val)
			{
				$row['template_data'] = str_replace(LD.$key.RD, $val, $row['template_data']);
			}

			// --------------------------------------------------
			//	Current time {current_time format="%Y %m %d %H:%i:%s"}
			// --------------------------------------------------

			if (strpos($row['template_data'], LD.'current_time') !== FALSE &&
				preg_match_all("/".LD."current_time\s+format=([\"\'])([^\\1]*?)\\1".RD."/", $row['template_data'], $matches))
			{
				for ($j = 0; $j < count($matches[0]); $j++)
				{
					$date_func = (is_callable(array(ee()->localize, 'format_date'))) ?
									'format_date' :
									'decode_date';

					$row['template_data'] = str_replace(
						$matches[0][$j],
						ee()->localize->$date_func(
							$matches[2][$j],
							ee()->localize->now
						),
						$row['template_data']
					);
				}
			}

			$row['template_data'] = str_replace(LD.'current_time'.RD, ee()->localize->now, $row['template_data']);

			// Remove whitespace from variables.
			$row['template_data'] = preg_replace("/".LD."\s*(\S+)\s*".RD."/U", LD."\\1".RD, $row['template_data']);

			// --------------------------------------------
			//	Global Variable Conditionals
			// --------------------------------------------

			$row['template_data'] = ee()->TMPL->parse_simple_segment_conditionals($row['template_data']);
			$row['template_data'] = ee()->TMPL->simple_conditionals($row['template_data'], $embed_vars);
			$row['template_data'] = ee()->TMPL->simple_conditionals($row['template_data'], ee()->config->_global_vars);


			// --------------------------------------------
			//	Assign Variables / Preload Replace
			// --------------------------------------------

			if (strpos($row['template_data'], 'preload_replace') !== FALSE)
			{
				if (preg_match_all("/".LD."preload_replace:(.+?)=([\"\'])([^\\2]*?)\\2".RD."/i", $row['template_data'], $matches))
				{
					for ($j = 0; $j < count($matches[0]); $j++)
					{
						$row['template_data'] = str_replace($matches[0][$j], "", $row['template_data']);
						$row['template_data'] = str_replace(LD.$matches[1][$j].RD, $matches[3][$j], $row['template_data']);
					}
				}
			}

			if (preg_match_all("/".LD."assign_variable:(.+?)=([\"\'])([^\\2]*?)\\2".RD."/i", $row['template_data'], $matches))
			{
				ee()->TMPL->log_item("Processing Assigned Variables: ".trim(implode('|', $matches['1'])));

				for ($j = 0; $j < count($matches['0']); $j++)
				{
					$row['template_data'] = str_replace($matches['0'][$j], "", $row['template_data']);
					$row['template_data'] = str_replace(LD.$matches['1'][$j].RD, $matches['3'][$j], $row['template_data']);
				}
			}

			// --------------------------------------------
			//	Do Replacement, Check for Reprocessing
			// --------------------------------------------

			$template = str_replace($tag, $row['template_data'], $template);

			if ( strpos($row['template_data'], '{embed') !== FALSE &&
				(
					strpos($row['template_data'], 'solspace:harvest=') !== FALSE OR
					strpos($row['template_data'], 'template_morsels:harvest=') !== FALSE
				)
			)
			{
				$reprocess = TRUE;
			}
		}

		ee()->TMPL->template = str_replace('/', T_SLASH, $template);

		// --------------------------------------------
		//	Reprocess for Nested Embeds?
		// --------------------------------------------

		if ($reprocess == TRUE)
		{
			$this->embed_harvest($level+ 1);
		}

		// --------------------------------------------
		// Redo Template Processing for this Template
		// - We just loaded a bunch of new content into
		// the Template. The currently parsed tag
		// is being called using an old loop of tags
		// that were parsed from the original template.
		// That old loop of parsed tags is now out of date.
		// So, we replace the old loop's "markers"
		// with the original tags, slice off any tag
		// processing *after* the current tag being
		// processed, and this should cause the Template
		// parser to finish processing this one tag and then
		// reparse this Template from scratch.
		// --------------------------------------------

		if ( $level == 0)
		{
			$end = 0;

			for($i=0, $s = count(ee()->TMPL->tag_data); $i < $s; ++$i)
			{
				if ($end != 0)
				{
					$this->replace_marker($i, ee()->TMPL->tag_data[$i]['chunk']);
				}
				elseif (ee()->TMPL->tagchunk == ee()->TMPL->tag_data[$i]['chunk'])
				{
					$end = $i+1;
				}
			}

			if ($end != 0)
			{
				ee()->TMPL->tag_data = array_slice(ee()->TMPL->tag_data, 0, $end);
			}
		}

		// --------------------------------------------
		//	Return
		// --------------------------------------------

		return TRUE;
	}

	// --------------------------------------------------------------------

	/**
	 *  Escape Pieces of Data Prior to Parsing
	 *
	 *  @access public
	 *  @param  $data
	 *  @return string
	 */
	public function escape_data( $data )
	{
		$tag = 'exp:template_morsels:escape:pre';

		if ( strpos( $data, $tag ) === false) return $data;

		preg_match_all( '@\{'.preg_quote($tag).'\}(.*)\{\/'.preg_quote($tag).'@isU', $data, $matches, PREG_SET_ORDER);

		foreach ( $matches as $match )
		{
			$storage_hash = md5($match[1]);
			$this->cache['pre_escaped_data'][$storage_hash] = $match[1];

			$new_tag = str_replace('pre', $storage_hash, $tag);
			$data = str_replace($match[0], str_replace($tag, $new_tag, $match[0]), $data);

			$data_hash = uniqid('morsels:pre_escaped_code:');
			$data = str_replace($match[1], $data_hash, $data);
		}

		return $data;
	}

	// --------------------------------------------------------------------

	/**
	 *  UnEscape Pieces of Data after Parsing
	 *
	 *  @access public
	 *  @param  $data
	 *  @return string
	 */
	public function unescape_data( $data, $vars = array() )
	{
		if ( empty($this->cache['escaped_data'])) return $data;

		foreach($this->cache['escaped_data'] AS $hash => $escaped_code)
		{
			$data = str_replace($hash, $escaped_code, $data);
		}

		if ( ! empty($vars))
		{
			foreach($vars AS $var => $value)
			{
				$data = str_replace('{'.$var.'}', $value, $data);
			}
		}

		return $data;
	}

	// --------------------------------------------------------------------

	/**
	 * replace_marker
	 * EE 2 no longer has the replace marker function? Weird.
	 *
	 * @access	public
	 * @param	int		iterator
	 * @param	string	data to replace into the markers place
	 * @return	null
	 */

	private function replace_marker($i, $return_data)
	{
		ee()->TMPL->template = str_replace(
			'M' . $i . ee()->TMPL->marker,
			$return_data,
			ee()->TMPL->template
		);
	}
	//END replace_marker

}
// END Template_morsels_actions Class