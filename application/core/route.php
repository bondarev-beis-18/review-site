<?php

namespace application\core;
use application\core\Database;


class Route
{

	public $page;

	static function start()
	{
		
		$controller_name = 'main';
		$action_name = 'index';
		
		$routes = parse_url($_SERVER['REQUEST_URI']);
		//var_dump($routes);

		//  имя контроллера
		if ( !($routes["path"]=="/") )
		{	
			$controller_name = trim($routes["path"],"/");
		}
		
		// имя экшена
		if ( !empty($routes["query"]) )
		{
			parse_str($routes["query"],$output);
			$action_name = $output['action'];
		}

		// page №
		if ( !empty($routes["query"]) )
		{
			parse_str($routes["query"],$output);
			$page =$output['page'];
			// $page = (isset($output['page']))? $output['page'] : 1;
			Database::set('page',$page);
		}
		else 
		{
			$page = 1;
			Database::set('page',$page);
		}



		$model_name = 'model_'.$controller_name;
		$controller_name = 'Controller_'.ucfirst($controller_name);
		$action_name = 'action_'.$action_name;

		
		/*echo "Model: $model_name <br>";
		echo "Controller: $controller_name <br>";
		echo "Action: $action_name <br>";
		echo "<br>"; echo Database::get('page'); 
		*/
		


		$model_file = strtolower($model_name).'.php';
		$model_path = "application/models/".$model_file;
		//var_dump($model_path);
		if(file_exists($model_path))
		{
			include "application/models/".$model_file;
		}

		$controller_file = strtolower($controller_name).'.php';
		$controller_path = "application/controllers/".$controller_file;
		//var_dump($controller_path);
		if(file_exists($controller_path))
		{
			include "application/controllers/".$controller_file;
		}
		else
		{
			Route::ErrorPage404();
		}
		
		// создаем контроллер
		$controller_name="application\\controllers\\".str_replace("_","",$controller_name);
		$controller = new $controller_name;
		$action = $action_name;
		
		if(method_exists($controller, $action))
		{
			// вызываем действие контроллера
			$controller->$action();
		}
		else
		{
			Route::ErrorPage404();
		}
	
	}

	function ErrorPage404()
	{
        $host = 'http://'.$_SERVER['HTTP_HOST'].'/';
        header('HTTP/1.1 404 Not Found');
		header("Status: 404 Not Found");
		header('Location:'.$host.'404');
    }
	
    
}

?>