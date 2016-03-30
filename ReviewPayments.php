<?php

include ('vars.php');
/*
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

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
*/
?>
<!--
<form action="ReviewPayments.php" method="post">
Talonario <input type="text" name="Talonario" autofocus> <br>
Grade <input type="text" name="Grade"> <br>
<br>
<input type="submit">
</form>

<br><br>

<a href="payreg.php">Register Payments</a>

<br><br>

 -->

<?php 

if($_POST){
	
	$aid = $_POST['aid'];
	
	$sqlbalance="
			SELECT balance FROM ".$sta."WHERE aid = :aid";
	
	$exec=$dbh->prepare($sqlbalance);
	$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
	$exec->execute();
	
	$balance = $exec->fetchColumn();
	
	echo "Current balance: ".$balance.'<br><br><br>';
	
	
	$sql="
		SELECT sta.aid,stu.lname,stu.name,enr.grade,sta.num_talonario,tra.amount,tra.paydate,tra.regdate
		FROM ".$tra.
		$joinstatotra.
		$joinenrtosta.
		$joinstutoenr."
		WHERE tra.aid = :aid";
	
	$exec=$dbh->prepare($sql);
	$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
	$exec->execute();
	
	
	$counter = 1;
	
	echo '<table>';
		
		echo '<tr style=font-weight:bold>
			<td></td>
			<td> aid </td>
			<td> lname </td>
			<td> name </td>
			<td> grade </td>
			<td> num_talonario </td>
				<td> amount </td>
				<td> paydate </td>
				<td> regdate </td>
			</tr>';
		
		foreach($exec as $row)
		{
			
			echo '<tr>
					<td style=font-weight:bold>'.$counter.'</td>';
			echo	'<td>'.$row["aid"].'</td>';
			echo	'<td>'.$row["lname"].'</td>
				<td>'.$row["name"].'</td>
				<td>'.$row["grade"].'</td>
				<td>'.$row["num_talonario"].'</td>
						<td>'.$row["amount"].'</td>
								<td>'.$row["paydate"].'</td>
										<td>'.$row["regdate"].'</td>
			</tr>';
			$counter+=1;
		}
	
	echo '<h3>Register Payment</h3>';
	echo '<form id="form" action="Payregexecute.php" method="post">
			<input type="hidden" name="eid" value="'.$_POST['eid'].'">
			<input type="hidden" name="aid" value="'.$_POST['aid'].'">
			<input type="hidden" name="date" value="'.$_POST['date'].'">
			<br> <input id="next" type="submit">
			</form>
				
			<script>
			document.getElementById("next").focus();
			</script>';	
	  
	
	echo '<a href="payreg.php"> check another</a><br><br>';
	
	
	}

	
	/*
	$num_talonario = $_POST['Talonario'];
	$grade = $_POST['Grade'];
	
	$sqlgetaid = "
		SELECT aid
		FROM staccount AS sta
		JOIN enrollment AS enr ON enr.eid = sta.eid
		WHERE sta.num_talonario = :talonario AND enr.grade = :grade";
	
	$exec=$dbh->prepare($sqlgetaid);
	$exec->bindParam(':talonario', $num_talonario, PDO::PARAM_INT);
	$exec->bindParam(':grade', $grade, PDO::PARAM_INT);
	$exec->execute();
	
	$aid = $exec->fetchColumn();
	
	$exec = null;
	
	
	
	$sqlgetbalance = "SELECT balance
			FROM staccount AS sta
			WHERE sta.aid = :aid";
			
	$super=$dbh->prepare($sqlgetbalance);
	$super->bindParam(':aid', $aid, PDO::PARAM_INT);
	$super->execute();
	
	$balance = $super->fetchColumn();
	
	echo $balance.'<br><br>';
	
	$super = NULL;
	
	
	$sqlgettransaction = "
		SELECT sta.aid,stu.lname,stu.name,enr.grade,sta.num_talonario,tra.amount,tra.paydate,tra.regdate
		FROM `transaction` AS tra
		JOIN staccount AS sta ON sta.aid = tra.aid
		JOIN enrollment AS enr ON enr.eid = sta.eid
		JOIN student AS stu ON stu.id = enr.id
		WHERE tra.aid = :aid";
	
	$exec=$dbh->prepare($sqlgettransaction);
	$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
	$exec->execute();
	
	
	
	
	
	
	foreach($exec as $row)
	{
		//echo sizeof($row)."<br />";
		//echo "------------<br />";
		echo $row["aid"].' - '.$row["lname"].' - '.$row["name"].' - '.$row["grade"].' - '.$row["num_talonario"].' - '.$row["amount"].' - '.$row["paydate"].' - '.$row["regdate"].'<br />';
		echo "------------<br />";
	}
	
	*/
	
	$exec = null;
	
	
	$dbh = null;
	
	
//}
	
	
	?>

