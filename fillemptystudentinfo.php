<?php

include('vars.php');

?>

<form action="fillemptystudentinfo.php" method="post">
grade<input type="number" name="grade" min="0" max="12"> <br>
<br>
<br>
<input type="submit">
</form>

<?php 

if(!$_POST){}
else{
	// this sql is broken
	
	$cityautosuggestsql = 'SELECT cod_ciu,ciudad,departamento,pais.pais 
		FROM ciudades as ciu
		JOIN pais ON cod_pais = ciu.pais';
	
	$cityautosuggestprep = $dbh->prepare($cityautosuggestsql);
	$cityautosuggestprep->execute();
	
	
	$rhautosuggestsql = 'SELECT rh_code,rh
		FROM rh
			';
	
	$rhautosuggestprep = $dbh->prepare($rhautosuggestsql);
	$rhautosuggestprep->execute();
	
	
	$rhautosuggestsql = 'SELECT rh_code,rh
		FROM rh
			';
	
	$rhautosuggestprep = $dbh->prepare($rhautosuggestsql);
	$rhautosuggestprep->execute();
	
	
	$epsautosuggestsql = 'SELECT eps_code,eps 
			FROM eps
				';
	
	$epsautosuggestprep = $dbh->prepare($epsautosuggestsql);
	$epsautosuggestprep->execute();
	
	
	$grade = $_POST['grade'];
	
	$grtest = ' AND rate.grade = :grade ';
	
	$sql = 'SELECT stu.id,name,lname,dob,exp_ciudad,rh,eps,rate.grade 
		FROM student as stu 
		JOIN enrollment enr ON enr.id = stu.id 
		JOIN rate ON rate.grade_id = enr.grade 
		WHERE dob = "0000-00-00" '.$grtest.'
			OR eps is null '.$grtest.'
			OR eps = 0 '.$grtest.'
			OR rh is null '.$grtest.'
			OR rh = 0 '.$grtest.'
		';
		
	$sqlprep = $dbh->prepare($sql);
	$sqlprep->bindParam(':grade', $grade, PDO::PARAM_INT);
	$sqlprep->execute();
	
	
	$counter=0;
	
	echo $counter;
	
	
	echo '<table>';
	
	echo '<tr style=font-weight:bold>
			<td></td>
			<td> id </td>
			<td> lname </td>
			<td> name </td>
			<td> grade </td>
			<td> dob </td>
			<td> exp_ciudad </td>
			<td> rh </td>
			<td> eps </td>
			</tr>';
	
	echo '<form id="form" action="fillemptystudentinfoexecute.php" method="post">';
	
	
	foreach($sqlprep as $row)
		{
			
		
			echo '<tr>
				<td> <input id="next" type="checkbox" name="state'.$counter.'">
						</td>
				<td>'.$row["id"].'<input type="hidden" name="id'.$counter.'" value="'.$row["id"].'">
						</td>
				<td>'.$row["lname"].'
						</td>
				<td>'.$row["name"].'
						</td>
				<td>'.$row["grade"].'
						</td>
				<td>'.'<input type="date" name="dob'.$counter.'" value="'.$row["dob"].'">
						</td>
				<td>'.'<input type="text" name="exp_ciudad'.$counter.'" value="'.$row["exp_ciudad"].'" list="ciudades">
						<datalist id="ciudades">';
						
						foreach($cityautosuggestprep as $crow){
							echo '<option value="'.$crow["ciudad"].'" label="'.$crow["departamento"].', '.$crow["pais"].'"/>';
						}
						echo '
						</datalist>
						</td>
				<td>'.'<input type="text" name="rh'.$counter.'" value="'.$row["rh"].'" list="sangre">
						<datalist id="sangre">';
						
						foreach($rhautosuggestprep as $rrow){
							echo '<option value="'.$rrow["rh"].'" />';
						}
						echo '
						</datalist>
						</td>
				<td>'.'<input type="text" name="eps'.$counter.'" value="'.$row["eps"].'" list="salud">
						<datalist id="salud">';
						
						foreach($epsautosuggestprep as $erps){
							echo '<option value="'.$erps["eps"].'"  />';
						}
						echo '
						</datalist>
								
						</td>
			</tr>';
			$counter+=1;
		
		}
		
		echo '<input type="hidden" name="finalcounter" value="'.$counter.'">';
		
		
		echo '</table>';
		
		
		echo $counter;
		
		if($counter > 0 ) {
		
			echo ' <br> <input type="submit">
			</form>';
		}
	
	
	}


?>