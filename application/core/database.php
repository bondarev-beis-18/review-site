<?php
namespace application\core;

use PDO;

class Database
{
	protected $bd;
    private static $_storage = array();

	public function __construct()
	{
		$this->bd = new PDO('mysql:host=review-site;dbname=review-site; charset=utf8;','root','');					
	}

    public function getData($q, $prmt = [])
    {
       $sth = $this->bd->prepare($q);
       if (!empty($prmt)) {
			foreach ($prmt as $key => $val) {
				$sth->bindParam(':' . $key, $val);
			}
		}
		$sth->execute();
		return $sth->fetchAll(PDO::FETCH_ASSOC);
	}
	
    public static function set($key, $value)
    {
        return self::$_storage[$key] = $value;
    }

    public static function get($key, $default = null)
    {
        return (isset(self::$_storage[$key])) ? self::$_storage[$key] : $default;
    }
 }

?>