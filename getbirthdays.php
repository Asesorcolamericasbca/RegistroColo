<?php

include('vars.php');

$counter = 1;
$variable = array();
$boundvars = array();
$grade = 1;
$gender = 1;


$obtainedvals = array();

$sql = '
		SELECT 
			COUNT(*) AS Total, 
			gender.gender, 
			(
				SELECT ( 
						CASE 
							WHEN MONTH(DATE(stu.dob)) > 2 && DAY(DATE(stu.dob)) > 1 THEN 2016 - YEAR(stu.dob) - 1 
							ELSE (SELECT 2016 - YEAR(stu.dob)) 
						END 
						) 
			) AS years_old 
		FROM Student AS stu 
		JOIN `enrollment` AS enr ON enr.id = stu.id 
		JOIN Gender ON gen_code = stu.gender 
		WHERE enr.grade = :grade AND YEAR(enr.enr_date) = 2016 AND stu.gender = :gender 
		GROUP BY years_old
		';
/**/

//$variable[] = array_push($variable, $counter);

/*

echo $variable[$counter];
echo $grade;

$exec=$dbh->prepare($sql);
$exec->bindParam(':grade', $variable[$counter], PDO::PARAM_INT);
$exec->bindParam(':gender', $gender, PDO::PARAM_INT);
$exec->execute();
*/
echo '<br>';


/*
foreach($exec as $row)
		{
		
			echo '<tr> 
					<td style=font-weight:bold>'.$counter.'</td>';
			echo	'<td>'.$row["Total"].'</td>';
			echo	'<td>'.$row["years_old"].'</td>
					<td>'.$row["gender"].'</td>
				</tr>';	
			
		}
		

/**/

echo '<table>
		<tr>
		<td>Grade</td>
		<td>Total</td>
		<td>Age</td>
		<td>Gender</td>
		</tr>';

while($counter < 12) {
	
//	echo '<br>counter: '.$counter;
	$variable[$counter] = ($counter);
/*	echo '<br>variable[$counter]: '.$variable[$counter];
	echo '<br>';
/**/	
	while ($gender < 3){
	
		$exec=$dbh->prepare($sql);
		$exec->bindParam(':grade', $variable[$counter], PDO::PARAM_INT);
		$exec->bindParam(':gender', $gender, PDO::PARAM_INT);
		$exec->execute();
		
		//$val = $exec->fetchColumn();
		
		foreach($exec as $row)
		{
		
			echo '<tr>
					<td style=font-weight:bold>'.$counter.'</td>';
			echo	'<td>'.$row["Total"].'</td>';
			echo	'<td>'.$row["years_old"].'</td>
					<td>'.$row["gender"].'</td>
				</tr>';
				
		}
		
		
		//$obtainedvals = array_push($obtainedvals, $val);
//		echo 'gender = '.$gender.'<br>';
		$gender += 1;
	
	}
	
	$gender = 1;
		
	
	$counter += 1;
}

echo '</table>';
/*
$counter = 0;

while ($counter < 23){
	$grade = $counter / 2;
	$secondindex = $counter + 1;
	echo '<table>
			<tr>
			<td>Grade</td><td>Boys</td><td>Girls</td>
			</tr><tr>
			<td>'.$grade.'</td><td>'.$obtainedvals[$counter].'</td><td>'.$obtainedvals[$secondindex].'</td>
			</tr>
			</table>';
	$counter +=2;
}
/**/

$exec = null;

$dbh = null;

?>