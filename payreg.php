<html>

<body>


<?php


$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

try{
$dbc = new PDO("mysql:host=$host;dbname:$db",$user,$pass);

echo 'connected to database';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}


?>

<form action="payreg.php" method="post">
talonario #<input type="number" name="talonario" min="1" max="9999"> <br>
Pay Date<input type="date" name="paydate"> <br>
<input type="submit">
</form>

<?php 

$talonario_num = $_POST["talonario"];
$paydate = $_POST["paydate"];

echo $talonario_num;
echo $paydate;


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


$aidgetsql = "SELECT aid FROM staccount WHERE num_talonario = ?";
$transactionsql = "INSERT INTO transaction (aid,amount,paydate,regdate) VALUES (($aidgetsql),?,?)";
$exec=$dbh->prepare($transactionsql);
$exec->execute(array($talonario_num,$amount,$paydate));




/*


$sql="SELECT * FROM student AS stu
		JOIN enrollment AS enr ON enr.id = stu.id
		JOIN staccount AS sta ON sta.eid = enr.eid
		ORDER BY stu.id";

$stmt = $dbc->prepare($sql);

$stmt->execute();

foreach($stmt as $row)
{
	echo sizeof($row)."<br />";
	echo "------------<br />";
	echo $row["id"].' - '.$row["name"].' - '.$row["lname"].' - '.$row["grade"].' - '.$row["balance"].' - '.$row["num_talonario"].' - '.$row["eid"].' - '.$row["aid"].'<br />';
	echo "------------<br />";
}

*/

$dbh = null;

?>

<a href="namereg.php">Click here to register names</a>


</body>

</html>