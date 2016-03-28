<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';


if($_GET){
	$accountid = $_GET['aid'];
	$id=$_GET['id'];
	$eid=$_GET['eid'];
	$nt=$_GET['nt'];
	
	echo $accountid." ".$id." ".$eid." ".$nt.'<br />';
} else {
	$nt = NULL;
}



/* if(!$_POST){

	echo 'Nothing yet'.'<br />'.'<br />';

} else { */

	/*	$talonario_num = $_POST["talonario"];
	 $paydate = $_POST["paydate"];


	 echo $talonario_num . '<br / >';
	 echo $paydate . '<br / >';
	 */


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

	
	if(!$nt){
		/*
		$sqlgettalnum = "SELECT num_talonario FROM staccount AS sta
				WHERE aid = :aid" ;
	
		$exec=$dbh->prepare($sqlgettalnum);
		$exec->bindParam(':aid', $accountid, PDO::PARAM_STR);
		$exec->execute();
	
		$num_talonario = $exec->fetchColumn();
		*/
		
		if($_POST){
			
			
			$accountid = $_POST['accountid'];
				
			$num_talonario = $_POST['talonario'];
			
			$sqladdtalnumber = "UPDATE staccount
					SET num_talonario = :num_talonario
					WHERE aid = :aid";
			
			$exec=$dbh->prepare($sqladdtalnumber);
			$exec->bindParam(':aid', $accountid, PDO::PARAM_INT);
			$exec->bindParam(':num_talonario', $num_talonario, PDO::PARAM_INT);
			$exec->execute();
			
			
			echo "Talonario ".$num_talonario.
			" registered to account ".
			$accountid.
			" successfully.";
				
			echo '<br /><br />
			<a href="http://pensquick.local/PensQuick/talcheck.php" id="next">Check another student?</a>
			<script>
			document.getElementById("next").focus();
			</script>';
			
		} else {
			
			echo '<form action="talreg.php" method="post">';
			echo 'Talonario Number <input id="next" type="number" name="talonario" min="1" max="9999"> <br />';
			echo '<input type="hidden" name="accountid" min="1" max="9999" value="'.$accountid.'"> <br />';
			// echo '<br>';
			echo '<input type="submit">';
			echo '</form>';
			
			echo '<br /><br />
			<a href="http://pensquick.local/PensQuick/talcheck.php">Check another student?</a>
			<script>
			document.getElementById("next").focus();
			</script>';
							

		}
	}
	
	else {
		echo 'Error! this account already has a talonario number! ('.$nt.')<br />';
		echo 'Would you like to register a payment on this account instead? <br /><br />';
		echo '<a href=http://pensquick.local/PensQuick/payreg.php?num_talonario=$nt>Click here to register payment</a>';
		
		echo '<br /><br />
			<a href="http://pensquick.local/PensQuick/talcheck.php" id="next">Check another student?</a>
			<script>
			document.getElementById("next").focus();
			</script>';
	}
	
	
	$exec = null;
	
	$dhb = null;
	
	?>
	

<!-- 	
/*	
}
*/
?>
 -->