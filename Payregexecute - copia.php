<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

if(!$_POST){

	echo 'Nothing yet'.'<br />'.'<br />';

} else {
	if($_GET){

	} else {
		$talonario_num = $_POST["talonario"];
	}
	$paydate = $_POST["paydate"];


	echo $talonario_num . '<br / >';
	echo $paydate . '<br / >';


	try{
		//$dbh = new PDO("mysql:host=$host;dbname:$db",$user,$pass);
		$dbh = new PDO("mysql:host=127.0.0.1;dbname=talonarios", 'talonariosadmin', 'WinnersClub', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
		$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		echo 'connected to database <br />';
	}
	catch(PDOException $e)
	{
		echo $e->getMessage();
	}


	// ################ Block to get transaction amount ###########

	$sqlgetgrade = "SELECT grade FROM student AS stu
JOIN enrollment AS enr ON enr.id = stu.id
JOIN staccount AS sta ON sta.eid = enr.eid
WHERE num_talonario = :talnum";

	$exec=$dbh->prepare($sqlgetgrade);
	$exec->bindParam(':talnum', $talonario_num, PDO::PARAM_INT);
	$exec->execute();

	$grade = $exec->fetchColumn();

	$exec = null;

	// ############## End block #####################


	print("grade = $grade");
	echo '<br />';


	// ############# Block to get sta.aid #############

	$aidsql = "SELECT aid FROM staccount WHERE num_talonario = :talnum";
	$exec=$dbh->prepare($aidsql);
	$exec->bindParam(':talnum', $talonario_num, PDO::PARAM_INT);
	$exec->execute();

	$aid = $exec->fetchColumn();

	############## End block #####################

	print("aid = $aid");
	echo '<br />';



	$amount = 1;

	if ($grade == 1){
		$amount = 176025;
	}elseif ($grade == 2){
		$amount = 169437;
	}elseif ($grade > 2 && $grade < 5){
		$amount = 166260;
	}elseif ($grade > 4 && $grade < 10){
		$amount = 200638;
	}elseif ($grade > 9 && $grade < 12){
		$amount = 211499;
	}

	echo "amount = ". $amount . '<br / >';

	$today = date("Y-m-d");

	echo $today  . '<br / >';



	// ######################################





	$transactionsql = "INSERT INTO transaction (aid,amount,paydate,regdate) VALUES (
:staaid,
:transamount,:paydate ,:regdate )";

	$exec=$dbh->prepare($transactionsql);
	$exec->bindParam(':staaid', $aid, PDO::PARAM_INT);
	$exec->bindParam(':transamount', $amount, PDO::PARAM_INT);
	$exec->bindParam(':paydate', $paydate, PDO::PARAM_STR);
	$exec->bindParam(':regdate', $today, PDO::PARAM_STR);
	$exec->execute();



	// ######################
	// ## Null out values ###

	$talonario_num = NULL;
	$paydate = NULL;

	// ######################
	// ######################


	/* END OF SCRIPT */




	$dbh = null;

}

?>
