<?php

class Game {

	public $name;
	public $playerNum;
	public $userid;

	function __construct($name, $playerNum, $userid) {

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



		 
}

?>