<?php

namespace application\core;

abstract class Controller
{
	public $model;
	public $view;
	
	function __construct()
	{
		$this->view = new View();
	}
	
}
?>