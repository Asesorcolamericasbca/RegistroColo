<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host='127.0.0.1';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

try{
	//$dbh = new PDO("mysql:host=$host;dbname:$db",$user,$pass);
	//$dbh = new PDO("mysql:host=127.0.0.1;dbname=talonarios", 'talonariosadmin', 'WinnersClub', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
	//$dbh = new PDO("mysql:host=$host;dbname=$db", $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
	
	$dbh = new PDO("mysql:host=$host;dbname=$db", $user, $pass); //charset gives funny results when trying to mix utf8 with windows-1252
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$msg= 'connected to database <br />';
}
catch(PDOException $e)
{
	$dbh=null;
	$msg= $e->getMessage();
}






?>