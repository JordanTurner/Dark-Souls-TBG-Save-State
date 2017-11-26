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

		$gameid_stmt = $pdo->prepare("SELECT id FROM game WHERE user_id = ? AND name = ?");
		$gameid_stmt->execute([$this->userid, $this->name]);
		$fetchid = $gameid_stmt->fetch();

		$this->gameid = $fetchid['id'];
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

		 function get_gameid()
		 {
		 	return $this->gameid;
		 }



	//add new game to database
	public function createGame() {

		$stmt = $this->pdo->prepare("SELECT user_id, name, id FROM game WHERE user_id = ? AND name = ?");
		$stmt->execute([$this->userid, $this->name]);
		$gameExists = $stmt->fetchColumn();

		if($gameExists)
		{
			
			return false;
		}

		else
		{

			$stmt = $this->pdo->prepare("INSERT INTO game (name, user_id, num_of_players) VALUES (?, ?, ?)");
	        $stmt->execute([$this->name, $this->userid, $this->playerNum]); 
	        //$fetch = $stmt->fetch();
	        //$gameid = $fetch['id'];

	        return true;
		}



	}
}

?>