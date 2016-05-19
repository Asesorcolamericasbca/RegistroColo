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
	
	$counter=0;
	$statekey='state'.$counter;
	

	/*
	
	if(isset($_POST[$statekey]))
		echo "got value?".'<br>';
	else {
		echo "didn't work, try again".'<br>';
	}
	/*   */	
		
	$goodindex = 'no';

//	echo 'while loop: <br>{<br>';
	
	if(isset($_POST[$statekey])){
		$goodindex = $_POST[$statekey];
//		echo 'Found good index (on FIRST TRY)! ('.$goodindex.')';
/*		echo '<br> it was found at counter = '.$counter.' and therefore state'.$counter.'<br>
		which makes statekey = '.$statekey;
/**/		
		$indexkey = $counter;
	}
	else {
		while($goodindex=='no'){
			
		if(isset($_POST[$statekey])){
			$goodindex = $_POST[$statekey];
/*			echo 'Found good index! ('.$goodindex.')';
			echo '<br> it was found at counter = '.$counter.' and therefore state'.$counter.'<br>
			which makes statekey = '.$statekey;
/**/		break;
			}
					
		$statekey='state'.$counter;
		$indexkey = $counter;
		
//		echo 'state var = state'.$counter.'<br>';
	
//		echo 'statekey = '.$counter.'<br>';
	
/*		if(isset($_POST[$statekey]))		
			echo $_POST[$statekey].'<br>';
		
		echo 'counter = '.$counter.'<br><br>';	
/**/			
		$counter+=1;
		
//		echo 'counter = '.$counter.'<br><br>';
		}	
	
	}
		
//	echo '<br>}<br><br>';
	
	
	
/*	echo 'Demo: <br>{';

	/* For demo */
	
/*	echo '<br><br> demo of input: <br>';
	
	foreach($_POST as $key => $value)
	{
		echo $key.": ".$value.'<br>';
	} 
	
	echo '}<br><br>';
	
	/* */	
	
	$aidkey = 'aid'.$indexkey;
	$datekey = 'paydate'.$indexkey;
	$eidkey = 'eid'.$indexkey;
	
	
	$aid = $_POST[$aidkey];
	$eid = $_POST[$eidkey];
	$date = $_POST[$datekey];
	
	
	
	echo 'aid to use = '.$aid.'<br>';
	echo 'eid to use = '.$eid.'<br>';
	echo 'date to use = '.$date.'<br>';	
	
	/* */	
	
	
	$sqlbalance=" SELECT balance FROM ".$sta." WHERE aid = :aid";
	
	$exec=$dbh->prepare($sqlbalance);
	$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
	$exec->execute();
	
	$balance = $exec->fetchColumn();
	
	echo "Current balance: ".$balance.'<br><br><br>';
	
	
	$cols=columnlist("$stu.name",
			"$stu.lname",
			"$enr.grade",
			"$sta.aid",
			"$sta.num_talonario",
			"$tra.amount",
			"$tra.paydate",
			"$tra.regdate");
	$sql=" SELECT $cols
		FROM ".$tra.
		tjoin($sta, $tra, "aid").
		tjoin($enr, $sta, "eid").
		tjoin($stu, $enr, "id").
		" WHERE $tra.aid = :aid
		ORDER BY paydate ASC";
	echo $sql;
	/*$sql="
		SELECT sta.aid,stu.lname,stu.name,enr.grade,sta.num_talonario,tra.amount,tra.paydate,tra.regdate
		FROM ".$tra.
		$joinstatotra.
		$joinenrtosta.
		$joinstutoenr."
		WHERE tra.aid = :aid
		ORDER BY paydate ASC";*/
	
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
				<td style=font-weight:bold>'.$counter.'</td>
				<td>'.$row["aid"].'</td>
				<td>'.$row["lname"].'</td>
				<td>'.$row["name"].'</td>
				<td>'.$row["grade"].'</td>
				<td>'.$row["num_talonario"].'</td>
				<td>'.$row["amount"].'</td>
				<td>'.$row["paydate"].'</td>
				<td>'.$row["regdate"].'</td>
			</tr>';
			$counter+=1;
		}
	
	echo '</table>';
/**/

	$sqlgrade="SELECT grade FROM ".$enr.
	" WHERE eid = :eid";
	
	$exec=$dbh->prepare($sqlgrade);
	$exec->bindParam(':eid', $eid, PDO::PARAM_INT);
	$exec->execute();
	
	$grade = $exec->fetchColumn();
	
	$exec = null;
	
	
//	echo 'grade is: '.$grade.'<br>';
	
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
	
	
	$months=1;
	
//	echo 'amount is: '.$amount.'<br>';
	
	echo '<h3>Register Payment</h3>';

	
	
	$counter = 0;
	$stotal = 1;
	
	$gettransactiontotal = 'SELECT balance AS total FROM staccount as sta WHERE aid = :aid';
	$exec=$dbh->prepare($gettransactiontotal);
	$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
	$exec->execute();
	
	$currenttotal = $exec->fetchColumn();
	
	
	while ($stotal < $currenttotal) {
		if ($currenttotal == 0)
		{
			$total = 0;
			break;
		}
		$stotal = $amount*$counter;
		$counter += 1;
	}
	
	$counter -= 1;
	
	
	// payments made => current month due
	$monthspaid = array(
		0 => 11,
		1 => 10,
		2 => 9,
		3 => 8,
		4 => 7,
		5 => 6,
		6 => 5,
		7 => 4,
		8 => 3,
		9 => 2,
		10 => 0,
		
);
	//echo $counter;
	
	$shorten = $monthspaid[$counter];
	
	$dateObj=DateTime::createFromFormat('!m', $shorten);
	$mydate=$dateObj->format('M');
	
	if($shorten >= date('n'))
		$style='style="color:Blue;"';
	else
		$style='style="color:Red;"';
	
	if($shorten < date('n'))
		$msg2 = ' They are behind on their balance.';
	
	if($shorten == 0)
		$msg = '<strong '.$style.'>unpaid</strong>.';
	else if(isset($msg2))
		$msg = 'paid up to <strong '."$style".'>'.$mydate.'</strong>. '.$msg2;
	else 
		$msg = 'paid up to <strong '."$style".'>'.$mydate.'</strong>.';
	
	
		echo 'Account is currently '.$msg.'<br>';
	
	

	echo '<form id="form" action="Payregexecute.php" method="post">
			<input type="hidden" name="eid" value="'.$eid.'">
			<input type="hidden" name="aid" value="'.$aid.'">
			<input type="hidden" name="date" value="'.$date.'">
			<input type="hidden" name="grade" value="'.$grade.'">
			<input type="hidden" name="thelastmonthpaidfor" value="'.($shorten+1).'">
			<table>
			<tr><td>Amount</td><td>Months (Qty)</td></tr>
			<td><input type="number" name="amount" value="'.$amount.'"></td>
			<td><input type="number" name="months" value="'.$months.'" min="1" max="10"></td>
			</table>
			<br> <input id="next" type="submit">
			</form>
				
			<script>
			document.getElementById("next").focus();
			</script>';
	 
			
	  
	echo '<a href="payreg.php"> check another</a><br><br>';

	
	
	}
	
	/*  This is here to section off the comment box above, 
	just delete the top of this box to reactivate the section*/

	
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

