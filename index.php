<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title> cookie nuts
		</title>
	</head>
	
	<body>

	hey there! <br />
	
	<a href="namereg.php">click here to add new people!</a> <br />
	
	<?php echo "hello, world!". ' <br />'. ' <br />'. ' <br />'. ' <br />'. ' <br />';
	
	echo date("Y-m-d").'<br />';
	$today = date("Y-m-d");
	echo $today .'<br />';
	echo ' <br />'. ' <br />'. ' <br />'. ' <br />';
	
	
	
	?>






	<?php




	$hostname = 'localhost';

	$username = 'talonariosadmin';

	$password = 'WinnersClub';

	
try{
	$dbh = new PDO("mysql:host=$hostname;dbname=talonarios", $username, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));

	echo 'connected to database';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}




	// $sql = "SELECT * FROM `nombre`";
	$sql = "SELECT * FROM student AS stu JOIN enrollment AS enr ON enr.id = stu.id JOIN staccount AS sta ON sta.eid = enr.eid ORDER BY stu.id";

	$stmt = $dbh->prepare($sql);

	$result = $stmt->fetch(PDO::FETCH_BOTH);
	
echo "<p> </p>";

/*	foreach($stmt as $row)
{
echo sizeof($row)."<br />";
echo "------------<br />";
echo $row["cod_nom"].' - '.$row["nombre"].'<br />';
echo "------------<br />";
}*/

$stmt->execute();

	foreach($stmt as $row)
{
echo sizeof($row)."<br />";
echo "------------<br />";
//echo $row["cod_nom"].' - '.$row["nombre"].'<br />';
echo $row["id"].' - '.$row["name"].' - '.$row["lname"].' - '.$row["grade"].' - '.$row["balance"].' - '.$row["num_talonario"].' - '.$row["eid"].' - '.$row["aid"].'<br />';
echo "------------<br />";
}

$dbh = null;




	 ?>





<!-- DB testing 



<table>
<tr>
	<td>
		Name
	</td> 
</tr>
<tr>
	<td>
		Second_Name
	</td> 
</tr>
<tr>
	<td>
		Last_Name
	</td> 
</tr>
<tr>
	<td>
		Second_Last_Name
	</td> 
</tr>
<tr>
	<td>
		Amount
	</td> 
</tr>
<tr>
	<td>
		Date of Transaction
	</td> 
</tr>
<tr>
	<td>
		Bank
	</td> 
</tr>
<tr>
	<td>
		Date of Registry
	</td> 
</tr>





</table>

-->


Calendar button on date bar <br />
Automatic date of registry on today by default <br />
Student profiles with registro civil scan associated <br />












	</body>
</html>