<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Data Models
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/data.template_morsels.php
 */

require_once 'addon_builder/data.addon_builder.php';

class Template_morsels_data extends Addon_builder_data_template_morsels
{
	public $cached = array();

	// --------------------------------------------------------------------

	/**
	 * Get category groups
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_category_groups()
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab category groups
		// --------------------------------------------

		$sql = "SELECT group_id, group_name
				FROM exp_category_groups
				WHERE site_id = ".ee()->db->escape_str( ee()->config->item('site_id') )."
				ORDER BY group_name ASC";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][$row['group_id']] = $row['group_name'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	/*	End get category groups */


	// --------------------------------------------------------------------


	/**
	 * Get morsels by template id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_morsels_by_template_id( $template_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab cache ids
		// --------------------------------------------

		if ( $template_id === 0 OR is_numeric( $template_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT cache_id, template_dynamic_only
				FROM exp_template_morsels_refresh_rules
				WHERE template_id = ".ee()->db->escape_str( $template_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row;
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	// --------------------------------------------------------------------


	/**
	 * Get morsels by Channel ID
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_morsels_by_channel_id( $channel_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab cache ids
		// --------------------------------------------

		if ( $channel_id === 0 OR is_numeric( $channel_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT cache_id, channel_dynamic_only, channel_statuses, channel_add_only, channel_edit_only
				FROM exp_template_morsels_refresh_rules
				WHERE channel_id = ".ee()->db->escape_str( $channel_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row;
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/* END get_morsels_by_id() */


	// --------------------------------------------------------------------


	/**
	 * Get morsels by category group id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_morsels_by_category_group_id( $group_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab cache ids
		// --------------------------------------------

		if ( $group_id === 0 OR is_numeric( $group_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT cache_id
				FROM exp_template_morsels_refresh_rules
				WHERE category_group_id = ".ee()->db->escape_str( $group_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['cache_id'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/*	End get morsels by category group id */


	// --------------------------------------------------------------------


	/**
	 * Get selected category groups by cache id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_selected_category_groups_by_cache_id( $cache_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab Category Groups
		// --------------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT category_group_id
				FROM exp_template_morsels_refresh_rules
				WHERE category_group_id != 0
				AND cache_id = ".ee()->db->escape_str( $cache_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['category_group_id'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/*	End selected category groups by cache id */


	// --------------------------------------------------------------------

	/**
	 * Get selected template groups by cache id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_selected_template_groups_by_cache_id( $cache_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab templates
		// --------------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT group_id FROM exp_templates
				WHERE template_id IN
				(
					SELECT template_id
					FROM exp_template_morsels_refresh_rules
					WHERE template_id != 0
					AND cache_id = ".ee()->db->escape_str( $cache_id )."
				)";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['group_id'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/*	End selected template groups by cache id */


	// --------------------------------------------------------------------


	/**
	 * Get selected templates by cache id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_selected_templates_by_cache_id( $cache_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab templates
		// --------------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT template_id
				FROM exp_template_morsels_refresh_rules
				WHERE template_id != 0
				AND cache_id = ".ee()->db->escape_str( $cache_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['template_id'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/*	End selected templates by cache id */


	// --------------------------------------------------------------------


	/**
	 * Get selected channels by cache id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_selected_channels_by_cache_id( $cache_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab channels
		// --------------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT channel_id
				FROM exp_template_morsels_refresh_rules
				WHERE channel_id != 0
				AND cache_id = ".ee()->db->escape_str( $cache_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['channel_id'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	// --------------------------------------------------------------------

	/**
	 * Get selected statuses by cache id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_selected_statuses_by_cache_id( $cache_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab channels
		// --------------------------------------------

		if ( $cache_id === 0 OR is_numeric( $cache_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT channel_statuses
				FROM exp_template_morsels_refresh_rules
				WHERE channel_id != 0
				AND channel_statuses IS NOT NULL
				AND cache_id = ".ee()->db->escape_str( $cache_id );

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash] = (empty($row['channel_statuses'])) ? array() : explode('|', $row['channel_statuses']);
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	// --------------------------------------------------------------------

	/**
	 * Get template groups
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_template_groups()
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab Template Groups and Templates
		// --------------------------------------------

		$sql = "SELECT tg.group_id, tg.group_name, t.template_id, t.template_name
				FROM exp_template_groups tg
				LEFT JOIN exp_templates t ON t.group_id = tg.group_id
				WHERE tg.site_id = ".ee()->db->escape_str( ee()->config->item('site_id') )."
				ORDER BY tg.group_order, t.template_name ASC";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[ $cache_name ][ $cache_hash ][ $row['group_id'] ]	= $row['group_name'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}
	/*	End get template groups */


	// --------------------------------------------------------------------


	/**
	 * Get templates by group id
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_templates_by_group_id( $group_id = 0 )
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab Templates
		// --------------------------------------------

		if ( $group_id === 0 OR is_numeric( $group_id ) === FALSE ) return $this->cached[$cache_name][$cache_hash];

		$sql = "SELECT t.template_id, t.template_name
				FROM exp_templates t
				WHERE t.group_id = ".ee()->db->escape_str( $group_id )."
				ORDER BY t.template_name ASC";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[ $cache_name ][ $cache_hash ][ $row['template_id'] ]	= $row['template_name'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	// --------------------------------------------------------------------

	/**
	 * Get Channels
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_channels()
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab Channels
		// --------------------------------------------

		$sql = "SELECT {$this->sc->db->channel_id}, {$this->sc->db->channel_title}
				FROM {$this->sc->db->channels}
				WHERE site_id = ".ee()->db->escape_str( ee()->config->item('site_id') )."
				ORDER BY {$this->sc->db->channel_title} ASC";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][$row[$this->sc->db->channel_id]] = $row[$this->sc->db->channel_title];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

    // --------------------------------------------------------------------

	/**
	 * Get Statuses
	 *
	 * @access	public
	 * @return	array
	 */

	public function get_statuses()
	{
		// --------------------------------------------
		//	Prep Cache, Return if Set
		// --------------------------------------------

		$cache_name = __FUNCTION__;
		$cache_hash = $this->_imploder(func_get_args());

		if (isset($this->cached[$cache_name][$cache_hash]))
		{
			return $this->cached[$cache_name][$cache_hash];
		}

		$this->cached[$cache_name][$cache_hash] = array();

		// --------------------------------------------
		//	Grab Channels
		// --------------------------------------------

		$sql = "SELECT DISTINCT status
				FROM exp_statuses
				WHERE site_id = ".ee()->db->escape_str( ee()->config->item('site_id') )."
				ORDER BY status ASC";

		$query = ee()->db->query( $sql );

		foreach($query->result_array() as $row)
		{
			$this->cached[$cache_name][$cache_hash][] = $row['status'];
		}

		// --------------------------------------------
		//	Return Data
		// --------------------------------------------

		return $this->cached[$cache_name][$cache_hash];
	}

	// --------------------------------------------------------------------
}
// END CLASS Template_morsels_data