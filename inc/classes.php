<?php 

class Map {

	public $name;
	public $numOfAreas;
	public $hazard;

	function __construct($name, $numOfAreas, $hazard) {

		$this->name = $name;
		$this->areas = $numOfAreas;
		$this->hazard = $hazard;

		if ($stmt = $mysqli->prepare("INSERT INTO maps (name, number_of_areas, hazard) VALUES (:name, :numOfAreas, :hazard)")){
			$stmt->bind_param('s', $this->name);
			$stmt->bind_param('i', $this->areas);
			$stmt->bind_param('s', $this->hazard);
			$stmt->execute();
		}
	}

}



?>