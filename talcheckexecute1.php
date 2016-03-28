<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';


$namey = "%".$_POST['name']."%";
$lnamey = "%".$_POST['lname']."%";
$grade = $_POST['grade'];


if(!$_POST){

	echo 'Nothing yet'.'<br />'.'<br />';

} else {

/*	$talonario_num = $_POST["talonario"];
	$paydate = $_POST["paydate"];


	echo $talonario_num . '<br / >';
	echo $paydate . '<br / >';
	*/


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
	
	
	
	$sqlgetid = "SELECT student.id FROM student
			JOIN enrollment ON enrollment.id = student.id
			WHERE student.name LIKE :namey AND student.lname LIKE :lnamey AND enrollment.grade = :grade" ;
	
	$exec=$dbh->prepare($sqlgetid);
	$exec->bindParam(':namey', $namey, PDO::PARAM_STR);
	$exec->bindParam(':lnamey', $lnamey, PDO::PARAM_STR);
	$exec->bindParam(':grade', $grade, PDO::PARAM_INT);
	$exec->execute();
	
	$id = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	$sqlgetname = "SELECT name FROM student
			WHERE id = :id" ;
	
	$exec=$dbh->prepare($sqlgetname);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$names = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	$sqlgetlname = "SELECT lname FROM student
			WHERE id = :id" ;
	
	$exec=$dbh->prepare($sqlgetlname);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$lname = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	
	
	
	$sqlgetgrade = "SELECT grade FROM enrollment AS enr
JOIN student AS stu ON stu.id = enr.id
JOIN staccount AS sta ON sta.eid = enr.eid
WHERE stu.id = :id" ;
	
	$exec=$dbh->prepare($sqlgetgrade);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$grade = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	
	$sqlgeteid = "SELECT eid FROM enrollment
			JOIN student ON student.id = enrollment.id
			WHERE student.id = :id" ;
	
	$exec=$dbh->prepare($sqlgeteid);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$eid = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	
	$sqlgetaid = "SELECT sta.aid FROM staccount AS sta
			JOIN enrollment AS enr ON enr.eid = sta.eid 
			JOIN student AS stu ON stu.id = enr.id
			WHERE stu.id = :id" ;
	
	$exec=$dbh->prepare($sqlgetaid);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$aid = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	$sqlgettalnum = "SELECT num_talonario FROM staccount AS sta
			JOIN enrollment AS enr ON enr.eid = sta.eid
			JOIN student AS stu ON stu.id = enr.id
			WHERE stu.id = :id" ;
	
	$exec=$dbh->prepare($sqlgettalnum);
	$exec->bindParam(':id', $id, PDO::PARAM_STR);
	$exec->execute();
	
	$num_talonario = $exec->fetchColumn();
	
	$exec = null;
	
	
	$dbh = NULL;
	
	
	header("Location: http://pensquick.local/PensQuick/talcheck.php?aid=$aid&num_talonario=$num_talonario&id=$id&grade=$grade&eid=$eid&names=$names&lname=$lname");
	
	
	
}

?>

</html>