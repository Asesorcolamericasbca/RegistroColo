<?php

include ('vars.php');

if(!$_POST){
	
}
else {
	
	$nl = ' <br> ';
	
	
	echo 'finalcounter = '.$_POST['finalcounter'].$nl;
	
	foreach($_POST as $key => $value)
	{
		echo $key.": ".$value.'<br>';
	}
	
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
			
			$getepsidquer = 'SELECT eps_code FROM eps WHERE eps = :eps';
			
			$getrhidquer = 'SELECT rh_code FROM rh WHERE rh = :rh';
			
			$getciuidquer = 'SELECT code_ciu FROM ciudades WHERE ciudad = :ciu';
			
			$updatequer = 'UPDATE `student` SET `exp_ciudad` = '.'1'.' WHERE `student`.`id` = 137'; 
		}
			
			$counter += 1;
	}
		//echo $counter;
	
}


?>