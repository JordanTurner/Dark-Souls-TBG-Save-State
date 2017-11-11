<?php

class Game {

	public $name;
	public $playerNum;
	public $userid;
	public $pdo;

	function __construct($name, $playerNum, $userid, $pdo) {	

		$this->pdo = $pdo;
		$this->name = $name;
		$this->playerNum = $playerNum;
		$this->userid = $userid;
	}

		function set_name($name) {
		 	 $this->name = $name;
		}	

		function set_playerNum($playerNum) {
		 	 $this->playerNum = $playerNum;
		}	

		function set_userid($userid) {
		 	 $this->name = $userid;
		}

						


 
		function get_name() {		
		 	 return $this->name;		
		 }	

		function get_playerNum() {		
		 	 return $this->playerNum;		
		 }			 

		function get_userid() {		
		 	 return $this->userid;		
		 }



	//add new game to database
	public function createGame() {
		$stmt = $this->pdo->prepare("INSERT INTO game (name, user_id, num_of_players) VALUES (?, ?, ?)");
        $stmt->execute([$this->name, $this->userid, $this->playerNum]); 
	}
}

?>