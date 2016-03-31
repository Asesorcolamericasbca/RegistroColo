<html>

<head>
</head>


<body>


<form action="talcheckexecute.php" method="post">
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

if(!$_GET){

} else {

$accountid = $_GET['aid'];
$name = $_GET['names'];
$lname = $_GET['lname'];
$grade = $_GET['grade'];
$num_talonario = $_GET['num_talonario'];


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

}

$name = NULL;
$lname = NULL;
$grade = NULL;
$num_talonario = NULL;
?>

<p><a href="payreg.php">Click Here to Register Payments</a></p>

<p><a href="Talreg.php?aid=$accountid&id=$_GET['studentid']&eid=$_GET['enrollmentid']&nt=$num_talonario">Click Here to Register Talonarios</a></p>

</body>


</html>