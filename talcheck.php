<html>

<head>
</head>


<body>

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

?>


<form action="talcheck.php" method="post">
Name <input type="text" name="name"> <br>
Lname <input type="text" name="lname"> <br>
grade<input type="number" name="grade" min="0" max="12"> <br>
<br>
NOTE: ADD TALONARIO NUMBER REGISTRATION
<br>
<br>
<input type="submit">
</form>


<?php

if(!$_POST){
	
	echo"Nothing yet".'<br />';

} else {

$name = $_POST["name"];
$lname = $_POST["lname"];
$grade = $_POST["grade"];

$name = "%$name%";
$lname = "%$lname%";

//echo $name;

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



	$studentidquery = "SELECT id,name,lname 
	FROM student 
	WHERE name LIKE :namey AND lname LIKE :lnamey";
	
	$push = $dbh->prepare($studentidquery);
	$push->bindParam(':namey', $name, PDO::PARAM_STR);
	$push->bindParam(':lnamey', $lname, PDO::PARAM_STR, 255);
	$push->execute();
	$studentid = $push->fetchColumn();
	
	
	$push=NULL;	
	
	
	$sql = "SELECT name 
	FROM student 
	WHERE id = :id";
	$push = $dbh->prepare($sql);
	$push->bindParam(':id', $studentid, PDO::PARAM_STR);
	$push->execute();
	$name = $push->fetchColumn();
	
	$push = NULL;
	
	$sql = "SELECT lname 
	FROM student 
	WHERE id = :id";
	$push = $dbh->prepare($sql);
	$push->bindParam(':id', $studentid, PDO::PARAM_STR);
	$push->execute();
	$lname = $push->fetchColumn();
	
	
	$push = NULL;	
	
	
	$enrollmentidquery = "SELECT eid 
	FROM enrollment 
	WHERE id = :studentid AND grade = :grade";
	
	$push = $dbh->prepare($enrollmentidquery);
	$push->bindParam(':studentid', $studentid, PDO::PARAM_INT);
	$push->bindParam(':grade', $grade, PDO::PARAM_INT);
	$push->execute();
	$enrollmentid = $push->fetchColumn();

	$push=NULL;	

	$num_talonarioquery = "SELECT num_talonario 
	FROM staccount WHERE eid = :enrollmentid";
	$push = $dbh->prepare($num_talonarioquery);
	$push->bindParam(':enrollmentid', $enrollmentid, PDO::PARAM_INT);
	$push->execute();
	$num_talonario = $push->fetchColumn();

	$push=NULL;
	
	$sql = "SELECT aid 
	FROM staccount WHERE eid = :enrollmentid";
	$push = $dbh->prepare($sql);
	$push->bindParam(':enrollmentid', $enrollmentid, PDO::PARAM_INT);
	$push->execute();
	$accountid = $push->fetchColumn();

	$push=NULL;
	
//	if(!$num_talonario){
//		echo 'no talonario for this account found'.'<br />';
//} else {
	
//}

}

echo "<table border>
<tr>
	<td>Last Name</td> <td>Name</td> <td>Grade</td> <td>Talonario</td> <td>Account ID</td>
</tr>
<tr>
	<td>$lname</td> <td>$name</td> <td>$grade</td> <td>$num_talonario</td> <td>$accountid</td>
</tr>
</table>";


echo "".'<br />';
echo "".'<br />';

echo "<p> </p>";

/*
	foreach($stmt as $row)
{
//echo sizeof($row)."<br />";
//echo "------------<br />";
//echo $row["cod_nom"].' - '.$row["nombre"].'<br />';
echo $row["name"].' - '.$row["lname"].' - '.$row["grade"].' - '.$row["num_talonario"].'<br />';
echo "------------<br />";
}
*/

$name = NULL;
$lname = NULL;
$grade = NULL;

$dbh = null;


?>

<a href="payreg.php">Click Here to Register Payments</a>

</body>


</html>