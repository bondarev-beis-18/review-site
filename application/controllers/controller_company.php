<?php

namespace application\controllers;

use application\core\Controller;
use application\core\View;
use application\models\Model_Review;
use application\core\Database;
class ControllerCompany extends Controller
{

	private $count_pages;

	function __construct()
	{
		
		$this->model = new Model_Review();
		$this->view = new view();
	}
	
	function action_index()
	{
		$idCompany = (isset($_GET['id'])) ? (int)$_GET['id'] : false;
		//var_dump($idCompany);
		$data= ($idCompany) ? $this->model->getReviewsByCompany($idCompany,5*(Database::get('page')-1),5) : $this->model->getNreviews();
		//var_dump($data);
		$count_pages=intval($this->getCountPagesReviews($idCompany));
		$this->view->generate('company_view.php', 'template_view.php', $data, $count_pages);
	}

	function getCountPagesReviews($id)
	{
		ceil($this->model->getCountReviewsByCompanyID($id)/5);
		return ceil($this->model->getCountReviewsByCompanyID($id)/5);
	}
}