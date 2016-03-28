<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 

</head>


<body>


<?php

// header("Content-Type: text/plain; charset=ISO-8859-1");


if(!$_GET){

	?>
	<!--  <form action="talcheckexecute.php" method="post">  -->
	<form action="talcheckexecute1.php" method="post">
	Name <input type="text" name="name" autofocus> <br>
	Lname <input type="text" name="lname"> <br>
	grade<input type="number" name="grade" min="0" max="12"> <br>
	<br>
	NOTE: ADD TALONARIO NUMBER REGISTRATION
	<br>
	<br>
	<input type="submit">
	</form>
	
	
	<p><a href="payreg.php">Click Here to Register Payments</a></p>
	<p><a id="next" href="http://pensquick.local/PensQuick/Talreg.php?aid=<?PHP echo $accountid?>&amp;id=<?PHP echo $_GET['id']?>&amp;eid=<?PHP echo $_GET['eid']?>&amp;nt=<?PHP echo $num_talonario?>&amp;">Click Here to Register Talonarios</a></p>
	
	
	<?php 
} else {
	
	$accountid = $_GET['aid'];
	$name = utf8_decode(urldecode($_GET['names']));
	$lname = utf8_decode(urldecode($_GET['lname']));
	$grade = $_GET['grade'];
	$num_talonario = $_GET['num_talonario'];
	
	
	if(!$num_talonario && $name){
	
	echo'<!--  <form action="talcheckexecute.php" method="post">  -->
	<form action="talcheckexecute1.php" method="post">
	Name <input type="text" name="name"> <br>
	Lname <input type="text" name="lname"> <br>
	grade<input type="number" name="grade" min="0" max="12"> <br>
	<br>
	NOTE: ADD TALONARIO NUMBER REGISTRATION
	<br>
	<br>
	<input type="submit">
	</form>';
	
	


echo "<table border>
<tr>
	<td>Last Name</td> <td>Name</td> <td>Grade</td> <td>Talonario</td> <td>Account ID</td>
</tr>
<tr>
	<td>$lname</td> <td>$name</td> <td>$grade</td> <td>$num_talonario</td> <td>$accountid</td>
</tr>
</table>";

?>

	<p><a href="payreg.php">Click Here to Register Payments</a></p>
	<p><a id="next" href="http://pensquick.local/PensQuick/Talreg.php?aid=<?PHP echo $accountid?>&amp;id=<?PHP echo $_GET['id']?>&amp;eid=<?PHP echo $_GET['eid']?>&amp;nt=<?PHP echo $num_talonario?>&amp;">Click Here to Register Talonarios</a></p>
			<script>
			document.getElementById("next").focus();
			</script>
	<?php 
	} else {
		
		echo'<!--  <form action="talcheckexecute.php" method="post">  -->
	<form action="talcheckexecute1.php" method="post">
	Name <input type="text" name="name" autofocus> <br>
	Lname <input type="text" name="lname"> <br>
	grade<input type="number" name="grade" min="0" max="12"> <br>
	<br>
	NOTE: ADD TALONARIO NUMBER REGISTRATION
	<br>
	<br>
	<input type="submit">
	</form>';
		
		
		
		
		echo "<table border>
		<tr>
		<td>Last Name</td> <td>Name</td> <td>Grade</td> <td>Talonario</td> <td>Account ID</td>
		</tr>
		<tr>
		<td>$lname</td> <td>$name</td> <td>$grade</td> <td>$num_talonario</td> <td>$accountid</td>
		</tr>
		</table>";
		
		?>
		
		<p><a href="payreg.php">Click Here to Register Payments</a></p>
		
	<p><a href="http://pensquick.local/PensQuick/Talreg.php?aid=<?PHP echo $accountid?>&amp;id=<?PHP echo $_GET['id']?>&amp;eid=<?PHP echo $_GET['eid']?>&amp;nt=<?PHP echo $num_talonario?>&amp;">Click Here to Register Talonarios</a></p>
<?php 
}
	


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

?>


</body>


</html>