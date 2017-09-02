<?php
include_once 'inc/db_connect.php';

class addElement {

	public $element;
	public $query;
	private $mysqli;

	function __construct($newElement, $mysqli){

		$this->element = $newElement;
		$this ->conn = $mysqli;
	}

	function setElement (){

		$this->query = "INSERT INTO elements (elementname) VALUES (?)";

			if ($stmt = $this->conn->prepare($this->query)){

				$stmt->bind_param('s', $this->element);
				$stmt->execute(); 
			}
		
	}


	function getElement (){

		
	}



	
}


?>