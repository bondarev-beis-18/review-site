<?php

namespace application\controllers;

use application\core\Controller;
use application\core\View;
use application\models\Model_Company;
use application\core\Route;
use application\core\Database;
class ControllerMain extends Controller
{

	private $count_pages;
	

	function __construct()
	{
		
		$this->model = new Model_Company();
		$this->view = new view();
		
	}
	
	function action_index()
	{
		$data= $this->model->getNCompanies(5*(Database::get('page')-1),5);
		$count_pages=intval($this->getCountPagesCompanies());
		$this->view->generate('main_view.php', 'template_view.php', $data, $count_pages);
	}

	function getCountPagesCompanies()
	{
		ceil($this->model->getCountCompanies()/5);
		return ceil($this->model->getCountCompanies()/5);
	}
}