<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Control Panel
 *
 * The Control Panel master class that handles all of the CP requests and displaying.
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/mcp.template_morsels.php
 */

require_once 'addon_builder/module_builder.php';

class Template_morsels_mcp extends Module_builder_template_morsels
{
	public $row_limit	= 50;

	public $prefs		= array();

	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access	public
	 * @param	bool		Enable calling of methods based on URI string
	 * @return	string
	 */

	public function __construct( $switch = TRUE )
	{
		parent::__construct();

		 if ((bool) $switch === FALSE) return; // Install or Uninstall Request

		// --------------------------------------------
		//  Module Menu Items
		// --------------------------------------------

		$menu = array(
			'module_home' => array(
				'link'  => $this->base,
				'title' => lang('manage_morsels')
			),
			'module_preferences' => array(
				'link'  => $this->base.'&method=preferences',
				'title' => lang('morsel_preferences')
			),
			'module_documentation'		=> array(
				'link'  => TEMPLATE_MORSELS_DOCS_URL,
				'title' => lang('online_documentation'),
				'new_window' => TRUE
			),
		);

		$this->cached_vars['lang_module_version'] 	= lang('template_morsels_module_version');
		$this->cached_vars['module_version'] 		= TEMPLATE_MORSELS_VERSION;
		$this->cached_vars['module_menu_highlight'] = 'module_home';
		$this->cached_vars['module_menu'] 			= $menu;

		//needed for header.html file views
		$this->cached_vars['js_magic_checkboxes']	= $this->js_magic_checkboxes();
	}

	// --------------------------------------------------------------------

	/**
	 * Module's Main Homepage
	 *
	 * @access	public
	 * @param	string
	 * @return	null
	 */

	public function index($message = '')
	{
		$paginate	= '';
		$row_count	= '';

		// -------------------------------------
		//  Messages
		// -------------------------------------

		if ($message == '' AND ! in_array(ee()->input->get('msg'), array(FALSE, '')) )
		{
			$message = lang(ee()->input->get('msg'));
		}

		$this->cached_vars['message'] = $message;

		// -------------------------------------
		//	Get morsels
		// -------------------------------------

		$sql	= "SELECT %q
					FROM exp_template_morsels_cache
					WHERE site_id = ".ee()->db->escape_str( ee()->config->item('site_id') )."
					ORDER BY morsel_name ASC";

		$query	= ee()->db->query( str_replace( '%q', 'COUNT(*) AS count', $sql ) );

		// ----------------------------------------
		//	Paginate
		// ----------------------------------------

		if ( $query->num_rows() > 0 AND $query->row('count') > $this->row_limit )
		{
			$url		= $this->base;
			$row_count	= ( ! ee()->input->get_post('row')) ? 0 : ee()->input->get_post('row');

			$pagination_data = $this->universal_pagination(
				array(
						'sql'					=> $sql,
						'total_results'			=> $query->row('count'),
						'limit'					=> $this->row_limit,
						'current_page'			=> $row_count,
						'pagination_config'		=> array('base_url' => $url),
						'query_string_segment'	=> 'row'
			));


			$sql		= $pagination_data['sql'];
			$paginate 	= $pagination_data['pagination_links'];
		}

		$query	= ee()->db->query(
			str_replace(
				'%q',
				'cache_id, site_id, date, refresh, morsel_name, preparsed_snippet',
				$sql
			)
		);

		$this->cached_vars['row_count'] = $row_count;
		$this->cached_vars['paginate']  = $paginate;

		$items					  = array();
		$this->cached_vars['items']	=& $items;

		$sites	= $this->data->get_sites();

		foreach ( $query->result_array() as $row )
		{
			$items[ $row['cache_id'] ]			= $row;
			$items[ $row['cache_id'] ]['date']	= ($row['refresh'] == '0') ? '--' : $this->time_format( $row['date'] );

			if ( isset( $sites[ $row['site_id'] ] ) === TRUE )
			{
				$items[ $row['cache_id'] ]['site_name']	= $sites[ $row['site_id'] ];
			}
			else
			{
				$items[ $row['cache_id'] ]['site_name']	= '';
			}

			if (APP_VER < '2.4.0')
			{
				$items[$row['cache_id']]['preparsed_snippet'] = FALSE;
			}
			else
			{
				$items[$row['cache_id']]['preparsed_snippet'] = ($row['preparsed_snippet'] == 'y') ? lang('yes') : lang('no');
			}
		}

		// --------------------------------------------
		//  Cron URL
		// --------------------------------------------

		$this->cached_vars['cron_url'] = ee()->functions->fetch_site_index(0, 0).
										 QUERY_MARKER.
										 'ACT='.
										 ee()->functions->insert_action_ids(ee()->functions->fetch_action_id('Template_morsels', 'cron_refresh_morsel'));


		// -------------------------------------
		//	Title and Crumbs
		// -------------------------------------

		$this->add_crumb(lang('manage_morsels'));

		// -------------------------------------
		//	Prep crumb button
		// -------------------------------------

		$this->add_right_link(lang('add_morsel'), $this->base.'&method=edit_morsel_form');
		$this->add_right_link(lang('Refresh All Morsels'), $this->base.'&method=refresh_all_morsels');

		// --------------------------------------------
		//	Load Homepage
		// --------------------------------------------

		$this->cached_vars['current_page'] = $this->view('home.html', NULL, TRUE);
		return $this->ee_cp_view('index.html');
	}

	// --------------------------------------------------------------------

	/**
	 * Display Cached Morsel
	 *
	 * @access	public
	 * @return	string
	 */

	public function cached_morsel()
	{
		$this->actions()->refresh_from_cp( ee()->input->get_post('cache_id') );

		$sql	=  "SELECT morsel FROM exp_template_morsels_cache
					WHERE cache_id = '".ee()->db->escape_str( ee()->input->get_post('cache_id') )."'
					LIMIT 1";

		$query	= ee()->db->query($sql);

		if ($query->num_rows() == 0)
		{
			exit(lang('invalid_request'));
		}

		exit($query->row('morsel'));
	}

	// --------------------------------------------------------------------

	/**
	 * Delete morsel
	 *
	 * @access	public
	 * @param	message
	 * @return	string
	 */

	public function delete_morsel()
	{
		if ( empty($_POST['delete']) OR ! is_array($_POST['delete']))
		{
			return $this->index();
		}

		$query = ee()->db->query("SELECT cache_id FROM exp_template_morsels_cache
							 WHERE cache_id IN ('".implode("','", ee()->db->escape_str($_POST['delete']))."')");

		// ----------------------------------------
		//	Delete
		// ----------------------------------------

		$sql	= array();

		foreach ( $query->result_array() as $row )
		{
			$sql[]	= "DELETE FROM exp_template_morsels_cache
						WHERE cache_id = '".$row['cache_id']."'";

			$sql[]	= "DELETE FROM exp_template_morsels_refresh_rules
						WHERE cache_id = '".$row['cache_id']."'";
		}

		foreach ( $sql as $q )
		{
			ee()->db->query($q);
		}

		$message = ($query->num_rows() == 1) ?
			str_replace(
				'%i',
				$query->num_rows(),
				lang('morsel_deleted')
			) :
			str_replace(
				'%i',
				$query->num_rows(),
				lang('morsels_deleted')
			);

		ee()->functions->redirect($this->base . AMP . 'msg=' . $message);

		//return $this->index($message);
	}

	// --------------------------------------------------------------------

	/**
	 * Delete morsel - Confirm
	 *
	 * @access	public
	 * @param	message
	 * @return	string
	 */

	public function delete_morsel_confirm()
	{
		if ( ee()->input->post('toggle') === FALSE )
		{
			return $this->index();
		}

		$i = 0;

		$this->cached_vars['items']	= array();

		foreach ( $_POST['toggle'] as $key => $val )
		{
			if ( is_numeric( $val ) === TRUE )
			{
				$this->cached_vars['items'][]	= $val;

				$i++;
			}
		}

		if ( $i == 1 )
		{
			$replace[]	= $i;
			$replace[]	= 'morsel';
		}
		else
		{
			$replace[]	= $i;
			$replace[]	= 'morsels';
		}

		$search	= array( '%i', '%count' );

		$this->cached_vars['question']	= str_replace(
			$search,
			$replace,
			lang('morsel_delete_question')
		);

		$this->cached_vars['method']	= 'delete_morsel';

		// -------------------------------------
		//	Title and Crumbs
		// -------------------------------------

		$this->add_crumb( lang('delete_morsel_confirm') );
		$this->cached_vars['module_menu_highlight'] = 'module_index';

		// --------------------------------------------
		//	Load Homepage
		// --------------------------------------------

		$this->cached_vars['current_page'] = $this->view('delete_confirm.html', NULL, TRUE);
		return $this->ee_cp_view('index.html');
	}

	// --------------------------------------------------------------------


	/**
	 * Edit Template Morsel
	 *
	 * @access	public
	 * @return	string
	 */

	public function edit_morsel()
	{
		$cache_id			= (
			ee()->input->get_post('cache_id') !== FALSE AND
			is_numeric( ee()->input->get_post('cache_id') ) === TRUE
		) ? ee()->input->get_post('cache_id'): '';

		$morsel_name	= '';
		$refresh		= '';
		$rows			= 20;
		$code			= '';

		$update			= ( $cache_id != '' ) ? TRUE: FALSE;

		// ----------------------------------------
		//	Validate
		// ----------------------------------------

		$errors	= array();

		if ( ! $morsel_name = ee()->input->get_post('morsel_name') )
		{
			$errors[]	= lang('morsel_name_required');
		}
		elseif ( preg_match("/[^a-z0-9\_\-\.]/", strtolower(ee()->input->get_post('morsel_name')) ) )
		{
			$errors[]	= lang('morsel_name_invalid');
		}

		if ( is_numeric( ee()->input->get_post('refresh') ) === FALSE )
		{
			$errors[]	= lang('morsel_numeric_refresh');
		}

		if ( count( $errors ) > 0 )
		{
			return ee()->output->show_user_error('general', $errors );
		}

		$morsel_name = strtolower(ee()->input->get_post('morsel_name'));

		// ----------------------------------------
		//	Check for duplicate
		// ----------------------------------------

		$sql	= "SELECT COUNT(*) AS count
					FROM exp_template_morsels_cache
					WHERE site_id = ".ee()->config->item('site_id')."
					AND morsel_name = '".ee()->db->escape_str( $morsel_name )."'";

		if ( $update === TRUE )
		{
			$sql .= " AND cache_id != '".ee()->db->escape_str( $cache_id )."'";
		}

		$query	= ee()->db->query( $sql );

		if ( $query->num_rows() > 0 AND $query->row('count') > 0 )
		{
			return ee()->output->show_user_error(
				'submission',
				str_replace(
					'%name%',
					$morsel_name,
					lang('morsel_name_exists')
				)
			);
		}

		// ----------------------------------------
		//	Update or Create
		// ----------------------------------------

		$old_data = array();

		if ( $update === TRUE )
		{
			$od_query = ee()->db
							->where('cache_id', $cache_id)
							->get('exp_template_morsels_cache');

			if ($od_query->num_rows() > 0)
			{
				$old_data = $od_query->row_array();
			}

			ee()->db->update(
				'exp_template_morsels_cache',
				array(
					'morsel_name'		=> $morsel_name,
					'refresh'			=> ee()->input->get_post('refresh'),
					'rows'				=> is_numeric(ee()->input->get_post('rows')) ?
											ee()->input->get_post('rows') :
											$rows,
					'date'				=> ee()->localize->now + ( ee()->input->get_post('refresh') * 60 ),
					'member_id'			=> ee()->session->userdata('member_id'),
					'notes'				=> ee()->input->get_post('notes'),
					'code'				=> ee()->input->get_post('code'),
					'preparsed_snippet' => ee()->input->get_post('preparsed_snippet'),
					'filetime'			=> time()
				),
				array(
					'cache_id'		=> $cache_id
				)
			);

			$message	= str_replace('%name%', $morsel_name, lang('morsel_updated'));
		}
		else
		{
			ee()->db->insert(
				'exp_template_morsels_cache',
				array(
					'morsel_name'		=> $morsel_name,
					'refresh'			=> ee()->input->get_post('refresh'),
					'rows'				=> is_numeric(ee()->input->get_post('rows')) ?
											ee()->input->get_post('rows') :
											20,
					'date'				=> ee()->localize->now + ( ee()->input->get_post('refresh') * 60 ),
					'site_id'			=> ee()->config->item('site_id'),
					'member_id'			=> ee()->session->userdata('member_id'),
					'notes'				=> ee()->input->get_post('notes'),
					'code'				=> ee()->input->get_post('code'),
					'preparsed_snippet' => ee()->input->get_post('preparsed_snippet'),
					'filetime'		  => time()
				)
			);

			$cache_id	= ee()->db->insert_id();

			$message	= str_replace(
				'%name',
				$morsel_name,
				lang('morsel_added')
			);
		}

		// ----------------------------------------
		//	Category group ids?
		// ----------------------------------------

		$category_group_ids	= array();

		if ( ! empty($_POST['category_group_id']))
		{
			foreach ( $_POST['category_group_id'] as $val )
			{
				$category_group_ids[]	= $val;
			}
		}

		// ----------------------------------------
		//	Template ids?
		// ----------------------------------------

		$template_ids	= array();

		if ( ! empty($_POST['template_id']))
		{
			foreach ( $_POST['template_id'] as $val )
			{
				$template_ids[]	= $val;
			}
		}

		// ----------------------------------------
		//	Channel IDs?
		// ----------------------------------------

		$channel_ids = array();

		if ( ! empty($_POST['channel_id']))
		{
			foreach ( $_POST['channel_id'] as $val )
			{
				$channel_ids[]	= $val;
			}
		}

		// ----------------------------------------
		//	Channel Statuses?
		// ----------------------------------------

		$channel_statuses = array();

		if ( ! empty($_POST['channel_statuses']))
		{
			foreach ( $_POST['channel_statuses'] as $val )
			{
				$channel_statuses[]	= $val;
			}
		}

		// ----------------------------------------
		//	Update refresh rules
		// ----------------------------------------

		ee()->db
			->where('cache_id', $cache_id)
			->delete('template_morsels_refresh_rules');

		foreach ( $category_group_ids as $val )
		{
			ee()->db->insert_string(
				'exp_template_morsels_refresh_rules',
				array(
					'cache_id'			=> $cache_id,
					'category_group_id'	=> $val
				)
			);
		}

		$add_only  = (isset($_POST['channel_only']) && $_POST['channel_only'] == 'add') ? 'y' : 'n';
		$edit_only = (isset($_POST['channel_only']) && $_POST['channel_only'] == 'edit') ? 'y' : 'n';

		foreach ( $channel_ids as $val )
		{
			ee()->db->insert(
				'exp_template_morsels_refresh_rules',
				array(
					'cache_id'				=> $cache_id,
					'channel_id'			=> $val,
					'channel_add_only'		=> $add_only,
					'channel_edit_only'		=> $edit_only,
					'channel_dynamic_only'	=> ee()->input->get_post('channel_dynamic_only'),
					'channel_statuses'		=> implode('|', $channel_statuses)
				)
			);
		}

		foreach ( $template_ids as $val )
		{
			ee()->db->insert(
				'exp_template_morsels_refresh_rules',
				array(
					'cache_id'				=> $cache_id,
					'template_id'			=> $val,
					'template_dynamic_only'	=> ee()->input->get_post('template_dynamic_only')
				)
			);
		}

		// --------------------------------------------
		//  Save as File
		// --------------------------------------------

		$prefs = $this->actions()->prefs;

		if ($prefs['save_as_files'] == 'y' &&
			$prefs['save_as_files_path'] != '' &&
			is_dir($prefs['save_as_files_path']))
		{
			$basepath = rtrim($prefs['save_as_files_path'], '/').'/'.
						ee()->config->item('site_id').'/';

			if ( ! @is_dir($basepath))
			{
				if ( ! @mkdir($basepath, DIR_WRITE_MODE))
				{
					return ee()->output->show_user_error('submission', lang('unable_to_write_morsel_to_file'));
				}

				@chmod($basepath, DIR_WRITE_MODE);
			}

			$file = $basepath . $morsel_name.'.html';

			if ( ! $fp = @fopen($file, FOPEN_WRITE_CREATE_DESTRUCTIVE))
			{
				return ee()->output->show_user_error('submission', lang('unable_to_write_morsel_to_file'));
			}
			else
			{
				flock($fp, LOCK_EX);
				fwrite($fp, ee()->input->get_post('code'));
				flock($fp, LOCK_UN);
				fclose($fp);

				@chmod($file, FILE_WRITE_MODE);
			}

			//delete old file if rename
			if ( ! empty($old_data['morsel_name']) AND
				$morsel_name != $old_data['morsel_name'])
			{
				$old_file = $basepath . $old_data['morsel_name'] . '.html';

				if (is_file($old_file))
				{
					@unlink($old_file);
				}
			}
		}

		// ----------------------------------------
		//	Refresh?
		// ----------------------------------------

		$this->actions()->refresh_from_cp( $cache_id );

		$return = $this->base;

		if ( isset($_POST['row']) && is_numeric($_POST['row']))
		{
			$return .= AMP.'row='.((int) $_POST['row']);
		}

		$return .= AMP . 'msg=' . $message;

		ee()->functions->redirect($return);

		//return $this->index( $message );
	}

	// --------------------------------------------------------------------

	/**
	 * Edit morsel form
	 *
	 * @access	public
	 * @param	message
	 * @return	string
	 */

	public function edit_morsel_form( $message = '' )
	{
		$this->cached_vars['cache_id']			= ee()->input->get_post('cache_id');
		$this->cached_vars['morsel_name']		= '';
		$this->cached_vars['refresh']			= '5';
		$this->cached_vars['rows']				= 20;
		$this->cached_vars['date']				= '';
		$this->cached_vars['notes']				= '';
		$this->cached_vars['code']				= '';
		$this->cached_vars['morsel']			= '';
		$this->cached_vars['next_refresh']		= '';
		$this->cached_vars['preparsed_snippet'] = 'n';
		$this->cached_vars['row']				= (isset($_GET['row']) && is_numeric($_GET['row'])) ? (int) $_GET['row'] : '';
		$this->cached_vars['channel_dynamic_only']  = 'n';
		$this->cached_vars['template_dynamic_only'] = 'n';
		$this->cached_vars['channel_only']		= 'both';

		$edit_mode	= (
			ee()->input->get_post('cache_id') !== FALSE AND
			is_numeric(ee()->input->get_post('cache_id'))
		) ? 'edit': 'add';

		$this->cached_vars['edit_mode'] = $edit_mode;

		// ----------------------------------------
		//	Query
		// ----------------------------------------

		if ( $edit_mode == 'edit' )
		{
			$query = ee()->db
						->where('cache_id', ee()->input->get_post('cache_id'))
						->limit(1)
						->get('template_morsels_cache');

			if ($query->num_rows() == 0)
			{
				return FALSE;
			}

			$row = $query->row_array();

			$this->cached_vars['cache_id']			= $query->row('cache_id');
			$this->cached_vars['morsel_name']		= $query->row('morsel_name');
			$this->cached_vars['refresh']			= $query->row('refresh');
			$this->cached_vars['rows']				= $query->row('rows');
			$this->cached_vars['date']				= $query->row('date');
			$this->cached_vars['notes']				= $query->row('notes');
			$this->cached_vars['code']				= $this->actions()->fetch_morsel_code($row); // Insures we get the file data
			$this->cached_vars['morsel']			= $query->row('morsel');
			$this->cached_vars['preparsed_snippet']	= $query->row('preparsed_snippet');

			$this->cached_vars['next_refresh']		= lang('morsel_next_refresh') . ': ' . $this->time_format( $query->row('date') );

			// This smacks of laziness on my part. -PB

			$query = ee()->db
						->where('cache_id', ee()->input->get_post('cache_id'))
						->where('channel_dynamic_only', 'y')
						->limit(1)
						->get('exp_template_morsels_refresh_rules');

			if ($query->num_rows() > 0)
			{
				$this->cached_vars['channel_dynamic_only']  = 'y';
			}

			$query = ee()->db
						->where('cache_id', ee()->input->get_post('cache_id'))
						->where('channel_add_only', 'y')
						->limit(1)
						->get('exp_template_morsels_refresh_rules');

			if ($query->num_rows() > 0)
			{
				$this->cached_vars['channel_only']  = 'add';
			}

			$query = ee()->db
						->where('cache_id', ee()->input->get_post('cache_id'))
						->where('channel_edit_only', 'y')
						->limit(1)
						->get('exp_template_morsels_refresh_rules');

			if ($query->num_rows() > 0)
			{
				$this->cached_vars['channel_only']  = 'edit';
			}

			$query = ee()->db
						->where('cache_id', ee()->input->get_post('cache_id'))
						->where('template_dynamic_only', 'y')
						->limit(1)
						->get('exp_template_morsels_refresh_rules');

			if ($query->num_rows() > 0)
			{
				$this->cached_vars['template_dynamic_only']  = 'y';
			}
		}

		// -------------------------------------
		//	Title and Crumbs
		// -------------------------------------

		$crumb	= ( $edit_mode == 'edit' ) ? lang( 'edit_morsel' ): lang( 'add_morsel' );

		$this->add_crumb($crumb);

		if ($edit_mode == 'edit')
		{
			$this->add_crumb($this->cached_vars['morsel_name']);
		}

		$this->cached_vars['module_menu_highlight'] = 'module_home';

		// --------------------------------------------
		//	Load Homepage
		// --------------------------------------------

		$this->cached_vars['current_page'] = $this->view('edit_morsel.html', NULL, TRUE);
		return $this->ee_cp_view('index.html');
	}

	// --------------------------------------------------------------------

	/**
	 * Refresh Template Morsel
	 *
	 * @access	public
	 * @param	string
	 * @return	null
	 */

	public function refresh( $message = '' )
	{
		// -------------------------------------
		//	Cache id?
		// -------------------------------------

		if ( ee()->input->get_post('cache_id') === FALSE OR is_numeric( ee()->input->get_post('cache_id') ) === FALSE )
		{
			$message	= lang('morsel_cache_id_required');

			ee()->functions->redirect($this->base . AMP . 'msg=' . $message);
			//return $this->index( $message );
		}

		// -------------------------------------
		//	Refresh
		// -------------------------------------

		$this->actions();

		if ( is_array( $morsel = $this->actions->refresh_from_cp( ee()->input->get_post('cache_id') ) ) === FALSE )
		{
			$message	= lang('morsel_not_found');

			ee()->functions->redirect($this->base . AMP . 'msg=' . $message);
			//return $this->index( $message );
		}

		// -------------------------------------
		//	Return
		// -------------------------------------

		$message	= str_replace( array( '%name', '%refresh' ), array( $morsel['morsel_name'], $this->time_format( $morsel['date'] ) ), lang('morsel_refreshed') );

		$return = $this->base;

		if ( isset($_GET['row']) && is_numeric($_GET['row']))
		{
			$return .= AMP.'row='.((int) $_GET['row']);
		}

		$return .= AMP . 'msg=' . $message;

		ee()->functions->redirect($return);

		//return $this->index( $message );
	}

	// --------------------------------------------------------------------

	/**
	 *	Cron - Refresh Template Morsel
	 *
	 *	@access		public
	 *	@return		string
	 */

	public function refresh_all_morsels()
	{
		if ($this->actions()->prefs['caching_type'] == 'redis')
		{
			require_once 'libraries/Solspace_redis.php';
			$redis = Solspace_redis::getInstance($this->actions()->prefs['redis_servers'])->setPrefix('solspace:morsels:');

			if ($this->actions()->prefs['caching_type'] == 'redis')
			{
				$caches = $redis->get_prefixed_items();

				foreach($caches as $key)
				{
					$redis->delete($key);
				}
			}
		}

		// -------------------------------------
		//	Clear Out All Dynamics
		// -------------------------------------

		ee()->db->query("DELETE FROM exp_template_morsels_dynamic_cache");

		// -------------------------------------
		//	Update Statics
		// -------------------------------------

		$arr = array('date' => time() - 1);

		ee()->db->query(
			ee()->db->update_string(
				'exp_template_morsels_cache',
				$arr,
				array()
			)
		);

		// -------------------------------------
		//	Return
		// -------------------------------------

		ee()->functions->redirect($this->base . AMP . 'msg=all_morsels_recached');
	}

	// --------------------------------------------------------------------

	/**
	 * Preferences Form
	 *
	 * @access	public
	 * @return	string
	 */

	public function preferences($message = '')
	{
		if (ee()->input->get_post('msg') !== FALSE)
		{
			$message = lang(ee()->input->get_post('msg'));
		}

		$this->cached_vars['message'] = $message;

		// --------------------------------------------
		//  crumbs, messages, and highlights
		// --------------------------------------------

		$this->cached_vars['module_menu_highlight'] = 'module_preferences';
		$this->add_crumb(lang('morsel_preferences'));

		//	----------------------------------------
		//	Get prefs
		//	----------------------------------------

		$prefs = $this->actions()->prefs; // The default

		ee()->db->where('site_id' , ee()->config->item('site_id'));
		$query = ee()->db->get('exp_template_morsels_preferences');

		foreach($query->result_array() as $row)
		{
			$prefs[$row['preference_name']] = stripslashes($row['preference_value']);
		}

		// --------------------------------------------
		//	Preferences Vars
		// --------------------------------------------

		foreach ($prefs as $key => $value)
		{
			$this->cached_vars['pref_' . $key] = $value;
		}

		// ----------------------------------------
		//	Build page
		// ----------------------------------------

		$this->cached_vars['current_page'] = $this->view('preferences_form.html', NULL, TRUE);

		return $this->ee_cp_view('index.html');
	}

	// --------------------------------------------------------------------

	/**
	 * Update Preferences
	 *
	 * @access	public
	 * @param	string
	 * @return	string
	 */

	public function update_preferences( $message = '' )
	{
		if (REQ != 'CP') return FALSE;

		// --------------------------------------------
		//  Validate the Save as File Path, if Necessary
		// --------------------------------------------

		if (ee()->input->post('save_as_files') == 'y')
		{
			$path = ee()->input->post('save_as_files_path');

			if ( empty($path) OR ! is_dir($path))
			{
				if ( ! @mkdir($path, DIR_WRITE_MODE))
				{
					return ee()->output->show_user_error('general', lang('invalid_path_for_save_as_files'));
				}

				@chmod($basepath, DIR_WRITE_MODE);
			}

			if ( ! is_really_writable($path))
			{
				return ee()->output->show_user_error('general', lang('path_for_save_as_files_cannot_write'));
			}

			// @paul - @todo
			// Setting has changed to on.  Time to store existing morsels in file system
			if (isset($this->actions()->prefs['save_as_files']) &&
				$this->actions()->prefs['save_as_files'] != 'y')
			{
				$basepath = rtrim($path, '/').'/'.
							ee()->config->item('site_id').'/';

				if ( ! @is_dir($basepath))
				{
					if ( ! @mkdir($basepath, DIR_WRITE_MODE))
					{
						return ee()->output->show_user_error(
							'submission',
							lang('path_for_save_as_files_cannot_write') . ': ' . $basepath
						);
					}

					@chmod($basepath, DIR_WRITE_MODE);
				}

				$query = ee()->db->select('morsel_name, code')
					->from('exp_template_morsels_cache')
					->where('site_id', ee()->config->item('site_id'))
					->get();

				foreach($query->result_array() AS $row)
				{
					$filepath = $basepath . $row['morsel_name'].'.html';

					if ( ! $fp = @fopen($filepath, FOPEN_WRITE_CREATE_DESTRUCTIVE))
					{
						return ee()->output->show_user_error(
							'submission',
							lang('unable_to_write_morsel_to_file') . ': ' . $filepath
						);
					}
					else
					{
						flock($fp, LOCK_EX);
						fwrite($fp, $row['code']);
						flock($fp, LOCK_UN);
						fclose($fp);

						@chmod($filepath, FILE_WRITE_MODE);
					}
				}
			}
		}
		// Save as files disabled.
		else if (ee()->input->post('save_as_files') == 'n' &&
			$this->actions()->prefs['save_as_files'] == 'y')
		{
			if ($this->actions()->prefs['save_as_files_path'] != '' &&
				is_dir($this->actions()->prefs['save_as_files_path']))
			{
				ee()->functions->delete_directory(
					$this->actions()->prefs['save_as_files_path'], TRUE
				);
			}
		}

		//	----------------------------------------
		//	Oh! Look! A New Preferences Table! Gee Golly!  -Sarah Palin
		//	----------------------------------------

		$prefs = array_keys($this->actions()->prefs);

		foreach($prefs as $pref)
		{
			if ( isset( $_POST[$pref] ) )
			{
				ee()->db->query(
					"DELETE FROM exp_template_morsels_preferences
					 WHERE preference_name = '".ee()->db->escape_str($pref)."'
					 AND site_id = '".ee()->db->escape_str(ee()->config->item('site_id'))."'");

				ee()->db->query(
					ee()->db->insert_string(
						'exp_template_morsels_preferences',
						array(
							'preference_value'	=> $_POST[$pref],
							'preference_name'	=> $pref,
							'site_id'			=> ee()->config->item('site_id')
						)
					)
				);
			}
		}

		//	----------------------------------------
		//	Success
		//	----------------------------------------

		ee()->functions->redirect(
			$this->base.'&method=preferences&msg=morsel_preferences_updated'
		);
	}

	// --------------------------------------------------------------------

	/**
	 * Time format
	 *
	 * @access	private
	 * @param	number
	 * @return	string
	 */

	private function time_format( $timestamp = 0 )
	{
		if ( $timestamp === 0 ) return '';

		if (is_callable(array(ee()->localize, 'human_time')))
		{
			$return = ee()->localize->human_time($timestamp);
		}
		else
		{
			$return = ee()->localize->set_human_time($timestamp);
		}

		return $return;
	}

	// --------------------------------------------------------------------

	/**
	 * Module Upgrading
	 *
	 * @access	public
	 * @return	bool
	 */

	public function template_morsels_module_update()
	{
		if ( ! isset($_POST['run_update']) OR $_POST['run_update'] != 'y')
		{
			$this->add_crumb(lang('update_template_morsels_module'));
			$this->build_crumbs();
			$this->cached_vars['form_url'] = $this->base . AMP . '&msg=update_successful';
			return $this->ee_cp_view('update_module.html');
		}

		require_once $this->addon_path . 'upd.template_morsels.php';

		$U = new Template_morsels_upd();

		if ($U->update() !== TRUE)
		{
			return ee()->functions->redirect(
				$this->base . AMP . 'msg=update_failure'
			);
		}
		else
		{
			return ee()->functions->redirect(
				$this->base . AMP . 'msg=update_successful'
			);
		}
	}

	// --------------------------------------------------------------------

	// --------------------------------------------------------------------

	/**
	 * add_right_link
	 *
	 * abstractor for cp add_right_link so freeform can move it how it needs
	 * when an alternate style is chosen
	 *
	 * @access	private
	 * @param 	string 	words of link to display
	 * @param 	string 	link to display
	 * @return	null
	 */

	public function add_right_link ($lang, $link)
	{
		$this->cached_vars['inner_nav_links'][$lang] = $link;

		//return $this->add_right_link($lang, $link);
	}
	//END add_right_link
}
// END CLASS Template_morsels