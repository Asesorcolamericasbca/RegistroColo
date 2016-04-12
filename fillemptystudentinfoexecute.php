<?php

include ('vars.php');

if(!$_POST){
	
}
else {
	
	$nl = ' <br> ';
	
	/*
	echo 'finalcounter = '.$_POST['finalcounter'].$nl;
	
	foreach($_POST as $key => $value)
	{
		echo $key.": ".$value.'<br>';
	}
	/**/
	$finalcounter = $_POST['finalcounter'];
	$counter=0;
	$statekey='state'.$counter;
	
	$goodindex = 'no';
	
	
	while($counter < $finalcounter){
		$statekey='state'.$counter;
		
		if(isset($_POST[$statekey])){
			$goodindex = $_POST[$statekey];
			$indexkey = $counter;
			
			$idindex = 'id'.$counter;
			$stuid = $_POST[$idindex];
			
			$epsindex = 'eps'.$counter;
			$rhindex = 'rh'.$counter;
			$ciuindex = 'exp_ciudad'.$counter;
			$dobindex = 'dob'.$counter;
			$idindex = 'id'.$counter;
			
			$eps=$_POST[$epsindex];
			$rh=$_POST[$rhindex];
			$ciu=$_POST[$ciuindex];
			$dob = $_POST[$dobindex];
			$id = $_POST[$idindex];
			
			echo "id: $id $nl dob: $dob $nl ciu: $ciu $nl rh: $rh $nl eps: $eps $nl";
			
			############# Test block
			/*
			
			$testquer = 'SELECT * FROM student WHERE id = :id';
			$testprep = $dbh->prepare($testquer);
			$testprep->bindParam(':id',$stuid,PDO::PARAM_INT);
			$testprep->execute();
			
			foreach($testprep as $key){
				echo $key['id'].' '.$key['name'].' '.$key['lname'].' '.$key['dob'].' '.$key['exp_ciudad'].' '.$key['rh'].' '.$key['eps'].' <br>';			
			}
			
			/**/
			####### End test block
			
			$quer = 'SELECT eps_code FROM eps WHERE eps = :eps'; // Get eps id
			$exec = $dbh->prepare($quer);
			$exec->bindParam(':eps', $eps, PDO::PARAM_STR);
			$exec->execute();
			$epskey = $exec->fetchColumn();
			echo "epskey: $epskey".$nl;
			
			$quer = 'SELECT rh_code FROM rh WHERE rh = :rh';
			$exec = $dbh->prepare($quer);
			$exec->bindParam(':rh', $rh, PDO::PARAM_STR);
			$exec->execute();
			$rhkey = $exec->fetchColumn();
			echo "rhkey: $rhkey".$nl;
			
			$quer = 'SELECT cod_ciu FROM ciudades WHERE ciudad = :ciu';
			$exec = $dbh->prepare($quer);
			$exec->bindParam(':ciu', $ciu, PDO::PARAM_STR);
			$exec->execute();
			$ciukey = $exec->fetchColumn();
			echo "ciukey: $ciukey $nl $nl"; 
			
			$updatequer = 'UPDATE `student` 
					SET `exp_ciudad` = :ciu, `dob` = :dob, `rh` = :rh, `eps` = :eps 
							WHERE `student`.`id` = :id';
			$exec = $dbh->prepare($updatequer);
			$exec->bindParam(':id', $id, PDO::PARAM_INT);
			$exec->bindParam(':ciu', $ciukey, PDO::PARAM_INT);
			$exec->bindParam(':rh', $rhkey, PDO::PARAM_INT);
			$exec->bindParam(':dob', $dob, PDO::PARAM_INT);
			$exec->bindParam(':eps', $epskey, PDO::PARAM_INT);
			$exec->execute();
			/**/
			/*
			$checkquer = 'SELECT * FROM student WHERE id = :id';
			$exec = $dbh->prepare($checkquer);
			$exec->bindParam(':id', $id, PDO::PARAM_INT);
			$exec->execute();
			
			foreach($exec as $i){
				echo $i['id'].' '.$i['lname'].' '.$i['name'].' '.$i['dob'].' '.$i['rh'].' '.$i['exp_ciudad'].' '.$i['eps'].$nl.$nl.$nl;
			}
			/**/
		}
			
			$counter += 1;
	}
		//echo $counter;
	
}




?>

<form action="fillemptystudentinfo.php">
<input type="submit" value="done" autofocus/>
</form>