<?php
namespace application\core;
use application\core\Database;
abstract class Model
{
    public $bd;
	public function __construct()
    {
        $this->bd=Database::get('bd');
    }

  
}
?>