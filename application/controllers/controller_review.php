<?php

namespace application\controllers;

use application\core\Controller;
use application\core\View;
use application\models\Model_Review;
use application\core\Database;
class ControllerReview extends Controller
{


	function __construct()
	{
		
		$this->model = new Model_Review();
		$this->view = new view();
	}
	
	function action_index()
	{
		$idReview = (isset($_GET['id'])) ? (int)$_GET['id'] : false;
		//var_dump($idReview);
		$data=  $this->model->getReviewById($idReview);
		//var_dump($data);
		$this->view->generate('review_view.php', 'template_view.php', $data);
	}

}