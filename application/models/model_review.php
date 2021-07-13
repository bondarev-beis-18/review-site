<?php


namespace application\models;

use application\core\Model;

class Model_Review extends Model
{
	public function getNreviews($start=0, $N=5)
	{
		return $this->bd->getData('SELECT * FROM reviews
                                LIMIT ' . $start . ', ' . $N);
	}

	public function getReviewById($id)
	{
		return $this->bd->getData('SELECT ID, User_name, Photo, Review_text
								FROM reviews
								WHERE ID=:id',
							  [
								  'id' => $id
							  ]);
	}



	public function getReviewsByCompany($companyID, $start=0, $take=5)
	{
		return $this->bd->getData("SELECT companies.Name, companies.Logo,companies.Description, reviews.ID, reviews.User_name, reviews.Photo, reviews.Review_text
								FROM reviews
                                LEFT JOIN `companies-reviews`
                                on reviews.ID = `companies-reviews`.Review_ID   
                                LEFT JOIN companies
                                    on `companies-reviews`.Company_ID = companies.ID
                                WHERE companies.ID = :companyID
								
                                LIMIT " . $start . ', ' . $take,
							  [
								  'companyID' => $companyID,
							  ]);
	}
	 

	public function deleteReviewByID($id)
	{
		return $this->bd->getData("DELETE FROM companies-reviews WHERE Review_ID=:id",
					   [
						   'id' => $id
					   ]);

		return $this->bd->getData("DELETE FROM reviews WHERE ID=:id",
					   [
						   'id' => $id
					   ]);
	}

	public function add($name, $photo, $txt, $company)
	{
		$this->bd->getData("INSERT INTO reviews (ID, User_name, Photo, Review_text)
						VALUES ('$name', '$photo', '$txt')");

		$id = $this->bd->lastInsertId();
			
		$this->bd->getData("INSERT INTO companies-reviews (Company_ID, Review_ID) 
							VALUES ('$company', '$id')");
		
	}

	public function update($id, $name, $photo, $txt, $company)
	{
		$this->bd->getData("UPDATE reviews SET User_name = :name, Photo = :photo, Review_text = :txt
						WHERE ID = :id",
					   [
						   'id' => $id,
						   'User_name' => $name,
						   'Photo' => $photo,
						   'Review_text' => $txt						
					   ]);

		$this->bd->getData("DELETE FROM companies-reviews WHERE Review_ID=:id",
					   [
						   'id' => $id
					   ]);

		
		$this->bd->getData("INSERT INTO companies-reviews (Company_ID, Review_ID) 
							VALUES ('$company', '$id')");
		
	}

	public function getCountReviewsByCompanyID($id)
	{
		return intval($this->bd->getData("SELECT COUNT(*) FROM reviews as r 
								left join `companies-reviews` as cr 
								    on r.ID = cr.Review_ID
								left join companies as c 
								    on c.ID = cr.Company_ID
								WHERE c.ID = :id",
									 [
										 'id' => $id,
									 ])[0]['COUNT(*)']);
	}
}
?>