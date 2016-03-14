<html>
<head>

<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<meta charset="UTF-8">

</head>

<body>

</html>

<?php header("content-type: text/html; charset=UTF-8");

	$hostname = 'localhost';

	$username = 'talonariosadmin';

	$password = 'WinnersClub';

	
try{
	$dbh = new PDO("mysql:host=$hostname;dbname=talonarios", $username, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));

	echo 'connected to database'.'<br>';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}


/*
$sql="SELECT * FROM student
		JOIN enrollment AS enr ON enr.id = student.id
		JOIN staccount AS sta ON sta.eid = enr.eid";

$stmt = $dbh->prepare($sql);

$stmt->execute();



foreach($stmt as $row)
{
	echo sizeof($row)."<br />"; 
	echo "------------<br />"; 
	echo $row["name"].' - '.$row["lname"].' - '.$row["grade"].' - '.$row["id"].' - '.$row["eid"].' - '.$row["aid"].' - '.$row["balance"].' - '.$row["num_talonario"].'<br />';
	echo "------------<br />";
}


*/

?>

Add a new student: <br>

name lastname grade talonario#

<form action="namereg.php" method="post">
Name <input type="text" name="name"> <br>
Lname <input type="text" name="lname"> <br>
talonario #<input type="number" name="talonario" min="1" max="9999"> <br>
grade<input type="number" name="grade" min="0" max="12"> <br>
<input type="submit">
</form>

</body>


<?php

$name = $_POST["name"];
$lname = $_POST["lname"];
$talonario = $_POST["talonario"];

$grade = $_POST["grade"];
$balance = 1; 


if ($grade == 1){
	$balance = 176025*10;
}elseif ($grade == 2){
	$balance = 169437*10;
}elseif ($grade > 2 && $grade < 5){
	$balance = 166260*10;
}elseif ($grade > 4 && $grade < 10){
	$balance = 200638*10;
}elseif ($grade > 9 && $grade < 12){
	$balance = 211499*10;	
}




//$studentquery="INSERT INTO student (name, lname) VALUES (?,?)";
$studentquery="INSERT INTO student (name, lname) VALUES (:namey,:lnamey)";
$push=$dbh->prepare($studentquery);
$push->bindParam(':namey', $name, PDO::PARAM_STR);
$push->bindParam(':lnamey', $lname, PDO::PARAM_STR, 255);
$push->execute();

$push=NULL;

$idquery="SELECT id FROM student WHERE name = ? AND lname = ?";
$insertenrollment="INSERT INTO enrollment (id,grade) VALUES (($idquery),?)";
$push=$dbh->prepare($insertenrollment);
$push->execute(array($name,$lname,$grade));

$push=NULL;

$eidquery="SELECT eid FROM enrollment WHERE id = ($idquery) AND grade = ?";
$insertstaccount="INSERT INTO staccount (eid,num_talonario,balance) VALUES (($eidquery),?,?)";
$push=$dbh->prepare($insertstaccount);
$push->execute(array($name,$lname,$grade,$talonario,$balance));

$push = NULL;
		


echo $balance . ' ' . $grade;

$balance = NULL;

$grade = NULL;


$dbh = NULL;

?>


<a href="payreg.php">Click here to register payments</a> <br/>

<a href="talcheck.php">Click here to check if talonarios exist</a> <br/>



</body>