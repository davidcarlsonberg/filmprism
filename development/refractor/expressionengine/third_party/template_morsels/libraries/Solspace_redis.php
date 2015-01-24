<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Template Morsels - Redis Library
 *
 * Allows the saving of Template Morsels in Redis.
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @filesource	template_morsels/libraries/Solspace_redis.php
 */

/**
 * More Info:  http://redis.io/
 * Commands:   http://redis.io/commands/
 * PHPRedis:   https://github.com/nicolasff/phpredis
 *
 * Mac OS X Setup (insure php paths, if you have multiple PHP versions installed):
 * - Get PHPRedis:  https://github.com/nicolasff/phpredis
 * - /usr/local/php5/bin/phpize
 * - MACOSX_DEPLOYMENT_TARGET=10.8 CFLAGS='-O3 -fno-common -arch i386 -arch x86_64' LDFLAGS='-O3 -arch i386 -arch x86_64' CXXFLAGS='-O3 -fno-common -arch i386 -arch x86_64' ./configure --with-php-config=/usr/local/php5/bin/php-config
 * - make
 * - sudo make install
 */


class Solspace_redis
{
	private		$redis;
	private		$redis_connected_on = false;
	protected	$key_prefix = 'solspace:';

	protected	static $instance;

	protected	$default_servers = array('127.0.0.1');
	protected	$servers;


	// --------------------------------------------------------------------

	/**
	 *	Construct
	 *
	 *	@access		public
	 *	@return		object
	 */

	public function __construct($servers = null)
	{
		$this->setServers($servers);
	}

	// --------------------------------------------------------------------

	/**
	 *	Self-Destruct
	 *
	 *	@access		public
	 *	@return		null
	 */

	public function __destruct()
	{
		if ( $this->redis_connected_on !== false )
		{
			$this->redis->close();
		}
	}

	// --------------------------------------------------------------------

	/**
	 *	Set the key_prefix
	 *
	 *	@access		public
	 *	@param		string
	 *	@return		object
	 */

	public function setPrefix($prefix)
	{
		$this->key_prefix = $prefix;

		return $this;
	}

	// --------------------------------------------------------------------

	/**
	 *  Creates our singleton or return it, also allows the setting of servers
	 *
	 *  @access public
	 *  @param  string  $servers
	 */
	public static function getInstance($servers = null)
	{
		if (is_null(self::$instance))
		{
			self::$instance = new static($servers);
		}
		// If null, it is likely coming from one of our
		// class methods and we do not want to override.
		elseif( ! is_null($servers))
		{
			self::$instance->setServers($servers);
		}

		return self::$instance;
	}

	// --------------------------------------------------------------------

	/**
	 *	Set the Servers and connect to Redis
	 *
	 *	@access		protected
	 *	@param		mixed
	 *	@return		null
	 */

	public function setServers($servers = null)
	{
		if (is_string($servers) && trim($servers) != '')
		{
			$servers = array_unique(
				array_merge(
					preg_split(
						'/[\s,]/',
						trim($servers),
						-1,
						PREG_SPLIT_NO_EMPTY
					),
					$this->default_servers
				)
			);
		}
		elseif(is_array($servers))
		{
			$servers = $servers;
		}
		else
		{
			$servers = $this->default_servers;
		}

		// Someone is going to really get in my face about how I am
		// treating this singleton, I know it. -PB
		if ($servers != $this->servers)
		{
			$this->servers = $servers;
			$this->getRedis();
		}

		return $this;
	}

	// --------------------------------------------------------------------

	/**
	 *  Retrieves instance of Redis object
	 *
	 *  @access private
	 *  @return boolean|object
	 */
	private function getRedis()
	{
		if(self::supported() === false)
		{
			throw new RuntimeException("Redis is not supported on this server.");
		}
		elseif($this->redis_connected_on === false OR ! in_array($this->redis_connected_on, $this->servers))
		{
			if ($this->createRedisInstance() === FALSE)
			{
				throw new RuntimeException("Unable to connect to Redis.");
			}

			return $this->redis;
		}
	}

	// --------------------------------------------------------------------

	/**
	 *	Redis is Supported, right?  Only used in two places, but might expand logic later.
	 *
	 *	@access		public
	 *	@return		boolean
	 */

	public static function supported()
	{
		return extension_loaded('redis');
	}

	// --------------------------------------------------------------------

	/**
	 *	Create Redis Object
	 *
	 *	@access		private
	 *	@return		bool
	 */
	private function createRedisInstance()
	{
		if ( self::supported() === false )
		{
			return false;
		}

		$this->redis = null;

		$redis = new Redis();

		$success = false;

		if ( empty($this->servers) OR ! is_array($this->servers))
		{
			$this->servers = $this->default_servers;
		}

		foreach ( $this->servers as $server )
		{
			try
			{
				$port = 6379;

				if (stristr($server, ':'))
				{
					$x = explode(':', $server, 2);
					$server = $x[0];
					$port = $x[1];
				}

				// port 6379 by default, 2.5s timeout
				call_user_func_array( array( $redis, 'connect' ), array($server, $port, 2.5) );
				$success = true;
				$this->redis_connected_on = $server;
			}
			catch ( RedisException $e ){}
		}

		if ( $success !== true )
		{
			return false;
		}

		$this->redis = $redis;

		return true;
	}

	// --------------------------------------------------------------------

	/**
	 *	Store Cache item
	 *
	 *	@access public
	 *	@param  string
	 *  @param  string
	 *  @param  integer    $minutes - Default is 5 minutes
	 *	@return	boolean
	 *  @link   http://redis.io/commands/set
	 */
	public static function set($id, $content = '', $minutes = 5)
	{
		$instance = self::getInstance();

		$id = $instance->key_prefix.$id;

		$data = array(
			'ttl'       => $minutes*60, // time to live
			'made'      => time(),
			'content'   => $content
		);

		$success = $instance->redis->hMset( $id, $data );

		if ( $success === true )
		{
			if ( $minutes != 0 && is_numeric($minutes))
			{
				$instance->redis->expire( $id, (int) $minutes * 60 );
			}

			return true;
		}

		return false;
	}

	// --------------------------------------------------------------------

	/**
	 *	Key Exists
	 *
	 *	@access		public
	 *	@param		string
	 *	@return		boolean
	 */
	public static function exists( $id )
	{
		$instance = self::getInstance();

		$id = $instance->key_prefix.$id;

		return $instance->redis->exists( $id );
	}

	// --------------------------------------------------------------------

	/**
	 *	Get Item from Cache
	 *
	 *	@access		public
	 *	@param		string
	 *	@return		string
	 */
	public static function get( $id )
	{
		$instance = self::getInstance();

		$id = $instance->key_prefix.$id;

		$data = $instance->redis->hmGet( $id, array( 'ttl', 'made', 'content' ) );

		return (isset($data['content'])) ? $data['content'] : NULL;
	}

	// --------------------------------------------------------------------

	/**
	 *	Delete Cache Item
	 *
	 *	@access		public
	 *	@param		string
	 *	@return		boolean
	 *  @link       http://redis.io/commands/del
	 */
	public static function delete( $id )
	{
		$instance = self::getInstance();

		$id = $instance->key_prefix.$id;

		return ( $instance->redis->del( $id ) === 1 );
	}

	// --------------------------------------------------------------------

	/**
	 *	Retrieve Cache Information About Item
	 *
	 *	@access		public
	 *	@param		string
	 *  @param      boolean
	 *	@return		array|boolean
	 */
	public static function meta( $id, $get_content = true )
	{
		$instance = self::getInstance();

		$id = $instance->key_prefix.$id;

		$data = $instance->redis->hmGet( $id, array( 'ttl', 'made', 'content' ) );

		if ( empty( $data ) OR ! is_array( $data ) OR count( $data ) != 3 )
		{
			return false;
		}

		$expiration_time = ( $data['ttl'] == 0 ) ? 0 : $data['made'] + $data['ttl'];

		$size = (function_exists('mb_strlen')) ? mb_strlen($data['content'], '8bit') : strlen($data['content']);

		$final = array(
			'expiration_time'   => $expiration_time,
			'made'              => $data['made'],
			'ttl'               => $data['ttl'],
			'ttl_remaining'     => ( $data['ttl'] == 0 ) ? 0 : ( $expiration_time - time() ),
			'size'              => self::convert_bytes( $size ),
			'size_raw'          => $size
		);

		if ( $get_content === true )
		{
			$final['content'] = $data['content'];
		}

		return $final;
	}

	// --------------------------------------------------------------------

	/**
	 *	Convert Bytes to More Readable Format
	 *
	 *	@access		public
	 *	@param		integer
	 *	@return		string
	 */

	public static function convert_bytes($size)
	{
		$unit = array('bytes','KB','MB','GB','TB','PB');
		return @round($size/pow(1024,($i=floor(log($size,1024)))),2).' '.(isset($unit[$i]) ? $unit[$i] : '');
	}

	// --------------------------------------------------------------------

	/**
	 *	Flush the Entire Cache
	 *
	 *	@access		public
	 *	@return		boolean
	 *  @link       http://redis.io/commands/flushall
	 */

	public static function flushall()
	{
		$instance = self::getInstance();

		return $instance->redis->flushAll();
	}

	// --------------------------------------------------------------------

	/**
	 *  Get all of the cached items with specified prefix
	 *
	 *	@access		public
	 *	@param		string
	 *	@return		array
	 *  @link       http://redis.io/commands/keys
	 */

	public static function get_prefixed_items( $prefix = '')
	{
		$instance = self::getInstance();

		$prefix = $instance->key_prefix.$prefix;

		$keys = $instance->redis->keys( $prefix . '*' );

		$items = array();

		foreach ( $keys as $key )
		{
			// Removes key_prefix
			$items[] = substr( $key, strlen( $instance->key_prefix ) );
		}

		sort( $items, SORT_STRING );

		return $items;
	}

	// --------------------------------------------------------------------

	/**
	 *	Cache Info
	 *
	 *	@access		public
	 *	@return		array|boolean
	 *  @link       http://redis.io/commands/info
	 */

	public static function info()
	{
		$instance = self::getInstance();

		return $instance->redis->info();
	}
}