<html>

<body>


<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

/*
try{
$dbh = new PDO("mysql:host=$host;dbname:$db",$user,$pass);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

echo 'connected to database';
}
catch(PDOException $e)
{
	echo $e->getMessage();
}
*/

?>

<form action="payreg.php" method="post">
talonario #<input type="number" name="talonario" min="1" max="9999"> <br>
Pay Date<input type="date" name="paydate"> <br>
<input type="submit">
</form>

<?php 

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



/*

$gradesql = "SELECT grade FROM student AS stu 
JOIN enrollment AS enr ON enr.id = stu.id 
JOIN staccount AS sta ON sta.eid = enr.eid 
WHERE num_talonario = :thetalonario";
$ratesql = "SELECT rate FROM rate WHERE grade = ( $gradesql )";

$transactionsql = "INSERT INTO transaction (aid,amount,paydate,regdate) VALUES (
( $aidsql ),
( $ratesql ),
:thepaydate,
:regdate)";
*/

// ######################################


// ########## Common Queries to get vertain data #########
// * 
// $sqlgetaid = "SELECT aid FROM staccount WHERE num_talonario = :talnum";
// $sqlgetrate = "SELECT rate FROM rate WHERE grade = ( $sqlgetgrade )";
// *  
// ########## END Common Query Block #########


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


// ########################################


/*
print_r($dbh->errorInfo());
echo '<br /';
$exec->bindParam(':thetalonario', $talonario_num, PDO::PARAM_INT);
print_r($dbh->errorInfo());
echo '<br /';
$exec->bindParam(':thepaydate', $paydate, PDO::PARAM_STR);
print_r($dbh->errorInfo());
echo '<br /';
$exec->bindParam(':regdate', $today, PDO::PARAM_STR);
print_r($dbh->errorInfo());
echo '<br /';
*/

// $exec->execute(array($talonario_num,$talonario_num,$paydate,$today));


//print_r($dbh->errorInfo());


/* FULL SQL */
/*
"INSERT INTO transaction (aid,amount,paydate,regdate) VALUES (
(SELECT aid FROM staccount WHERE num_talonario = :thetalonario),
(SELECT rate FROM rate WHERE grade = ( SELECT grade FROM student AS stu 
JOIN enrollment AS enr ON enr.id = stu.id 
JOIN staccount AS sta ON sta.eid = enr.eid 
WHERE num_talonario = :thetalonario )),:thepaydate,:regdate)"
*/
/* END FULL SQL */





/*
$getgradesql = "SELECT grade FROM student AS stu 
JOIN enrollment AS enr ON enr.id = stu.id 
JOIN staccount AS sta ON sta.eid = enr.eid 
WHERE num_talonario = ? INTO @var";
*/

// $getamountsql = "SELECT rate FROM rate WHERE grade = @var INTO @graderate";
/*
$sqlgradequery = "SELECT rate FROM rate WHERE grade = ( SELECT grade FROM student AS stu 
JOIN enrollment AS enr ON enr.id = stu.id 
JOIN staccount AS sta ON sta.eid = enr.eid 
WHERE num_talonario = :thetalonario )";


$stmt = $dbh->prepare($sqlgradequery);

$stmt->bindParam(':thetalonario', $talonario_num, PDO::PARAM_INT);

$stmt->execute()); // the grade rate

$grade = $stmt->fetchColumn();
*/
/*
INSERT INTO transaction (aid,amount,paydate,regdate) VALUES (
(SELECT aid FROM staccount WHERE num_talonario = 5654),
(SELECT rate FROM rate WHERE grade = ( SELECT grade FROM student AS stu 
JOIN enrollment AS enr ON enr.id = stu.id 
JOIN staccount AS sta ON sta.eid = enr.eid 
WHERE num_talonario = 5654 )),'2016-02-02','2016-02-05');
*/

/*
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
*/


//$aidgetsql = "SELECT aid FROM staccount WHERE num_talonario = :thetalonario ";
//$transactionsql = "INSERT INTO transaction (aid,amount,paydate) VALUES (($aidgetsql),($sqlgradequery),:thepaydate)";


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

}

?>

<a href="namereg.php">Click here to register names</a> <br>
<a href="talcheck.php">Click here to search for talonario numbers</a><br><br>

<a href="ReviewPayments.php">Click here to check student accounts</a>


</body>

</html>