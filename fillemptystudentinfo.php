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
	$sql = 'SELECT stu.id,name,lname,rate.grade,dob,exp_ciudad,stu.rh,stu.eps
		FROM student as stu
		JOIN enrollment enr ON enr.id = stu.id
		JOIN rate ON grade_id = enr.grade
		JOIN eps ON eps_code = stu.eps
		JOIN ciudades ON cod_ciu = stu.exp_ciudad
		JOIN rh ON rh_code = stu.rh
		WHERE dob = 0 AND enr.status = 1 AND YEAR(enr.enr_date) = 2016 AND rate.grade = 3
		ORDER BY stu.id ASC
		'
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
	
	//echo '<form action="PayregPrep.php?date='.$_POST['paydate'].'" method="post">'; //Demo version
	
	echo '<form id="form" action="ReviewPayments.php" method="post">';
	
	$counter=0;
	
	echo $counter;
	
	foreach($exec as $row)
	{
	
	
	
		echo '<tr>
				<td> <input id="next" type="radio" name="state'.$counter.'">
						</td>
				<td>'.$row["aid"].'<input type="hidden" name="aid'.$counter.'" value="'.$row["aid"].'">
						</td>
				<td>'.$row["lname"].'<input type="hidden" name="paydate'.$counter.'" value="'.$_POST['paydate'].'">
						</td>
				<td>'.$row["name"].'<input type="hidden" name="eid'.$counter.'" value="'.$row["eid"].'">
						</td>
				<td>'.$row["grade"].'
						</td>
				<td>'.$row["eid"].'
						</td>
				<td>'.$row["num_talonario"].'
						</td>
			</tr>';
		$counter+=1;
	
	}
	
	
	echo '</table>';
	
	echo $counter;
	
	if($counter > 0 ) {
	
		echo ' <br> <input type="submit">
			</form>';
	
	
	
	} else {
		echo 'that talonario doesn\'t seem registered yet, would you like to
				<a id="next" href="talcheck.php">fix that</a> now?';
	}
}


?>