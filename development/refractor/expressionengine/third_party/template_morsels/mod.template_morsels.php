<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - User Side
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/mod.template_morsels.php
 */

require_once 'addon_builder/module_builder.php';

class Template_morsels extends Module_builder_template_morsels
{

	public $return_data		= '';
	public $disabled		= FALSE;
	public $cached_morsels	= array();

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

		$this->cached_morsels =& $this->cache['cached_morsels'];
	}
	// END Template_morsels()


	// --------------------------------------------------------------------

	/**
	 * Harvest
	 *
	 * Forces a harvesting of the Embeds and their Template Data
	 *
	 * @access	public
	 * @return	null
	 */

	public function harvest()
	{
		// --------------------------------------------
		//  Embed Harvest
		//	- The Embed Harvest is only done once per page request
		//	- Thank goodness the tag processing for()
		//		construct does a sizeof() on every loop.
		// --------------------------------------------

		if ( empty($this->cache['embed_harvest']))
		{
			$this->cache['embed_harvest'] = TRUE;

			if ($this->actions()->embed_harvest() == TRUE)
			{
				return $this->return_data = ee()->TMPL->tagchunk;
			}
		}
	}

	// --------------------------------------------------------------------

	/**
	 *	Escape Tag and Store
	 *
	 *	@access		public
	 *	@return		string
	 */

    public function escape()
	{
		$tagdata = ee()->TMPL->tagdata;

		$tag_parts = ee()->TMPL->tagparts;
		if ( is_array($tag_parts) && isset($tag_parts[2]))
		{
			if ( isset($this->cache['pre_escaped_data'][$tag_parts[2]]))
			{
				$tagdata = $this->cache['pre_escaped_data'][$tag_parts[2]];
			}
		}

		if (empty($tagdata) OR trim($tagdata) == '')
		{
			return $tagdata;
		}

		$hash = uniqid('morsels:escaped_code:');
        $this->cache['escaped_data'][$hash] = $tagdata;

		return $hash;
	}

	// --------------------------------------------------------------------

	/**
	 * Fetch Template Morsel for Display
	 *
	 * @access	public
	 * @return	string
	 */

	public function fetch()
	{
		// -------------------------------------
		//	Refresh, Once Per Template
		// -------------------------------------

		$template = (
			empty(ee()->TMPL->cache_hash)
		) ? 'base' : ee()->TMPL->cache_hash;

		if ( empty( $this->cache['refreshed'][$template] ) )
		{
			// --------------------------------------------
			//  Embed Harvest
			//	- The Embed Harvest is only done once per page request
			//	- When a Harvest is done, tag parsing restarts
			//		and we return the tag's data instead of processing
			//	- Thank goodness the tag processing for() construct
			//		does a sizeof() on every loop.
			// --------------------------------------------

			if ( empty($this->cache['embed_harvest']))
			{
				$this->cache['embed_harvest'] = TRUE;

				if ($this->actions()->embed_harvest() == TRUE)
				{
					return $this->return_data = ee()->TMPL->tagchunk;
				}
			}

			$this->actions()->refresh_from_mod();
		}

		// -------------------------------------
		//	Name?
		// -------------------------------------

		if ( ee()->TMPL->fetch_param('name') !== FALSE AND
			ee()->TMPL->fetch_param('name') != '' )
		{
			$morsel_name	= ee()->TMPL->fetch_param('name');
		}
		else
		{
			return $this->no_results('template_morsels');
		}

		// -------------------------------------
		//	Site?
		// -------------------------------------
		// If we are trying to declare a site, we make
		// sure it is actually a valid site. If not,
		// we fail out. Otherwise we assume current site
		// -------------------------------------

		$site	= ee()->config->item('site_id');

		if ( ee()->TMPL->fetch_param('site') !== FALSE AND
			ee()->TMPL->fetch_param('site') != '' )
		{
			if (
				($site = array_search(
						ee()->TMPL->fetch_param('site'),
						ee()->TMPL->sites
					)
				) === FALSE
			)
			{
				return $this->no_results('template_morsels');
			}
		}

		// -------------------------------------
		//	Return Morsel
		// -------------------------------------

		ee()->TMPL->log_item(' - Returning Morsel: '.$morsel_name);

		if ( ( $hash = $this->create_hash_if_dynamic_morsel( ee()->TMPL->tagparams ) ) !== FALSE )
		{
			if ( isset( $this->cached_morsels['dynamic'][$site][$morsel_name][$hash] ) )
			{
				return $this->cached_morsels['dynamic'][$site][$morsel_name][$hash];
			}
		}
		elseif ( isset( $this->cached_morsels['static'][$site][$morsel_name] ) )
		{
			return $this->cached_morsels['static'][$site][$morsel_name];
		}

		return $this->no_results('template_morsels');
	}
	//	END fetch()


	// --------------------------------------------------------------------

	/**
	 * Create hash if dynamic morsel
	 *
	 * Yes, this is duplicated in the Actions class,
	 * but Frisky has shown us that creating that object
	 * just for this one method is a bit prohibitive when
	 * you are taking 100s of hits a minute
	 *
	 * @access	public
	 * @param	array	params
	 * @return	string	hash
	 */

	public function create_hash_if_dynamic_morsel( $params = array() )
	{
		$diff = array_diff(array_keys($params), array('name','site'));

		if (count($diff) == 0 )
		{
			return FALSE;
		}

		ksort($params);
		return md5(serialize($params));
	}
	// END create_hash_if_dynamic_morsel


	// --------------------------------------------------------------------

	/**
	 * Parse Queue based on Hash
	 *
	 * @access		public
	 * @return		string
	 */

	public function parse_queue()
	{
		if ( ! isset($_GET['hash']))
		{
			exit('Invalid Hash - No Hash');
		}

		// exit('Failure Test: '.$_GET['hash']);

		$hashes = explode('|', $_GET['hash']);

		// Queue Statues:
		// i - In Progress
		// f - Finished

		$query = ee()->db
						->where_in('queue_hash', $hashes)
						->where_not_in('queue_status', array('i', 'f'))
						->get('template_morsels_queue');

		if ($query->num_rows() == 0)
		{
			exit('No Recaching Required');
		}

		// --------------------------------------------
		//	Work Might Take a While, Prevents Duplicates
		// --------------------------------------------

		ee()->db
				->set('queue_status', 'i')
				->where_in('queue_hash', $hashes)
				->update('template_morsels_queue');

		// --------------------------------------------
		//	Refresh Our Parser
		// --------------------------------------------

		$recache = array();

		foreach($query->result_array() as $row)
		{
			$recache = array_merge(
				$recache,
				unserialize(base64_decode($row['queue_data']))
			);
		}

		// --------------------------------------------
		//	Recaching In Progress.
		// --------------------------------------------

		$this->actions()->parser_refresh($recache);

		// --------------------------------------------
		//	Remove Hashes, Caching Complete
		// --------------------------------------------

		ee()->db
				->where_in('queue_hash', $hashes)
				->or_where('queue_date <', ee()->localize->now - 120)
				->delete('template_morsels_queue');

		exit('Success');
	}
	// END parse_queue


	// --------------------------------------------------------------------

	/**
	 *	Cron - Refresh Template Morsel
	 *
	 *	@access		public
	 *	@return		string
	 */

	public function cron_refresh_morsel()
	{
		if (REQ != 'ACTION')
		{
			return;
		}

		ee()->lang->load('template_morsels');

		// -------------------------------------
		//	Cache id?
		// -------------------------------------

		if (ee()->input->get_post('cache_id') === FALSE OR
			is_numeric( ee()->input->get_post('cache_id')) === FALSE
		)
		{
			exit(ee()->output->_display(lang('morsel_cache_id_required')));
		}

		// -------------------------------------
		//	Refresh
		// -------------------------------------

		$this->actions();

		$morsel = $this->actions->refresh_from_cp(
			ee()->input->get_post('cache_id')
		);

		if (is_array($morsel) === FALSE)
		{
			exit(ee()->output->_display(lang('morsel_not_found')));
		}

		// -------------------------------------
		//	Return
		// -------------------------------------

		$message = str_replace(
			array('%name', '%refresh'),
			array($morsel['morsel_name'], date('Y-m-d g:i A', $morsel['date'])),
			lang('morsel_refreshed')
		);

		exit(ee()->output->_display($message));
	}
	// END cron_refresh_morsel()
}
// END CLASS Template_morsels