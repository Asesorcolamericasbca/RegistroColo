<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host='localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

try{
	//$dbh = new PDO("mysql:host=$host;dbname:$db",$user,$pass);
	$dbh = new PDO("mysql:host=127.0.0.1;dbname=talonarios", 'talonariosadmin', 'WinnersClub', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$msg= 'connected to database <br />';
}
catch(PDOException $e)
{
	$dhb=null;
	$msg= $e->getMessage();
}

$sta=" staccount AS sta ";

$stu=" student AS stu ";

$enr=" enrollment AS enr ";

$tra=" `transaction` AS tra ";

$joinenrtosta=" JOIN ".$enr." ON enr.eid = sta.eid ";

$joinstutoenr=" JOIN ".$stu." ON stu.id = enr.id ";

$joinstatoenr=" JOIN ".$sta." ON sta.eid = enr.eid ";

$joinenrtostu=" JOIN ".$enr." ON enr.id = stu.id ";

$jointratosta=" JOIN ".$tra." ON tra.aid = sta.aid ";

$joinstatotra=" JOIN ".$sta." ON sta.aid = tra.aid ";



$sqltest="SELECT * FROM ".$stu;

$sqltest1="SELECT * ".
	"FROM ".$sta.
	$joinenrtosta.
	$joinstutoenr;
			
			
/*
$sqlgetaid="SELECT aid FROM".$sta;

$sqlgeteid="";

$sqlgetid="";

$sqlgetname="";
*/

?>