<?php


$host = 'localhost';
$user='talonarioadmin';
$pass='WinnersClub';
$db='talonarios';

try{
$dbc = new PDO("mysql:host=$host","dbname:$db",$user,$pass);

echo 'connected to database';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}

$sql="SELECT * FROM student
		JOIN enrollment AS enr ON enr.id = student.id
		JOIN staccount AS sta ON sta.eid = enr.eid";

$stmt = $dbc->prepare($sql);

$stmt->excecute();

foreach($stmt as $row)
{
	echo sizeof($row)."<br />";
	echo "------------<br />";
	echo $row["cod_nom"].' - '.$row["nombre"].'<br />';
	echo "------------<br />";
}

$dbh = null;

?>