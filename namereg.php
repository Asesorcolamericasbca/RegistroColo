<html>
<head>

<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<meta charset="UTF-8">

</head>

<body>

</html>

<?php header("content-type: text/html; charset=UTF-8");

	$hostname = 'localhost';

	$username = 'root';

	$password = 'nutbuster';

	
try{
	$dbh = new PDO("mysql:host=$hostname;dbname=talonarios", $username, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));

	echo 'connected to database'.'<br>';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}



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



?>

Add a new student: <br>

name lastname grade talonario#

<form action="welcome.php" method="post">
Name: <input type="text" name="name"> <br>
E-mail: <input type="text" name="email"> <br>
<input type="submit">
</form>

</body>


<?php

sta.balance = rate WHERE rate.grade = enr.grade




$dbh = NULL;

?>

</body>