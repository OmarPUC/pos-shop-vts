<?php

class Connection{

	public function connect(){

		$link1 = new PDO("mysql:host=localhost; dbname=pos-shop", "root", "");
		
		$link1 -> exec("set names utf8");

		return $link1; 
	}
	
	
	public function connect2(){
		
		$link2 = new PDO("mysql:host=localhost; dbname=pos-nbr", "root", "");

		$link2 -> exec("set names utf8");

		return $link2;
	}



}