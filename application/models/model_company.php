<?php

namespace application\models;

use application\core\Model;

class Model_Company extends Model
{
	public function getNcompanies($start=0, $N=5)
	{
		
		return $this->bd->getData('SELECT * FROM companies
                                LIMIT ' . $start . ', ' . $N);
	}
	public function getCompanies()
	{
		return $this->bd->getData('SELECT * FROM companies');
	}

	public function getCompanyByName($companyName)
	{
		return $this->bd->getData('SELECT ID, Name, Logo, Description
								FROM companies
								WHERE Name=:$companyName',
							  [
								  '$companyName' => $companyName
							  ]);
	}

	public function getCompanyByID($id)
	{
		return $this->bd->getData('SELECT ID, Name, Logo, Description
								FROM companies
								WHERE ID=:id',
							  [
								  'id' => $id
							  ]);
	}

	
					

	public function deleteCompanyById($id)
	{

		$this->bd->getData('DELETE FROM companies-reviews WHERE Company_ID=:id',
					   [
						   'id' => $id
					   ]);
		$this->bd->getData('DELETE FROM companies WHERE ID=:id',
					   [
						   'id' => $id
					   ]);
	}

	public function update($id, $name, $logo, $dsc)
	{
		$this->bd->getData("UPDATE companies SET Name = :name, Logo = :logo, Description = :dsc
						WHERE ID = :id",
					   [
						   'id' => $id,
						   'name' => $name,
						   'logo' => $sh,
						   'dsc' => $fl
					   ]);
	}

	public function add($name, $logo, $dsc)
	{
		$this->bd->getData("INSERT INTO companies(Name, Logo, Description) 
						VALUES ('$name', '$logo', '$dsc')");
	}

	public function getCountCompanies()
	{
		return intval($this->bd->getData("SELECT COUNT(*) FROM companies")[0]['COUNT(*)']);
	}
}
?>