<html>
	<head></head>
	<body>
<?php

include('vars.php');

if(!$_POST){

	echo 'Nothing yet'.'<br />'.'<br />';

} else {
	
	$amount = $_POST['amount']*$_POST['months'];
	$_POST['amount'] = $amount;
	
	$counter=0;
	$date=$_POST['date'];
	
	foreach($_POST as $key => $value)
	{
		echo $key.": ".$value.'<br>';
	}
/*	echo "date = ". $date  . '<br / >';
	
	
	$sqlgrade="SELECT grade FROM ".$enr.
	"WHERE eid = :eid";
	
	$exec=$dbh->prepare($sqlgrade);
	$exec->bindParam(':eid', $_POST['eid'], PDO::PARAM_INT);
	$exec->execute();
	
	$grade = $exec->fetchColumn();
	
	$exec = null;
/**/	
	
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

/**/
	
//	echo "grade = ". $_POST['grade'] . '<br / >';
	
//	echo "amount = ". $amount . '<br / >';
	
	$today = date("Y-m-d");
	
	echo "today = ". $today  . '<br / >';
	
	
	$sqlinsert="INSERT INTO `transaction` (aid,amount,paydate,regdate) 
			VALUES (:staaid, :transamount,:paydate, :regdate)";

	$exec=$dbh->prepare($sqlinsert);
	$exec->bindParam(':staaid', $_POST['aid'], PDO::PARAM_INT);
	$exec->bindParam(':transamount', $amount, PDO::PARAM_INT);
	$exec->bindParam(':paydate', $_POST['date'], PDO::PARAM_STR);
	$exec->bindParam(':regdate', $today, PDO::PARAM_STR);
	$exec->execute();
/**/	
	
	$exec = null;
	
	
	$dbh = null;
	
	$aid=$_POST['aid'];
	echo "Payment successfully registered to account $aid".'<br>';
	
	$_POST['thelastmonthpaidfor'];
	
	echo '<a id="next" href="transactions.php?aid='.$aid.'&thelastmonthpaidfor='.$_POST['thelastmonthpaidfor'].'"> check account</a><br><br>
			
			<script>
			document.getElementById("next").focus();
			</script>';
	
}
	
	?>
	
<!-- 	<iframe src=payreg.php></iframe> -->
	</body>
 </html>