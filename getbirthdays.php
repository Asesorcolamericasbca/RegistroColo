<?php

include('vars.php');

echo 'Against which date do you want to evaluate? <br><br>';

?>

<form action="getbirthdays.php" method="post">
	day <input type="text" name="day" value="5" autofocus> <br>
	month <input type="text" name="month" value="2" min="0" max="12"> <br>
	year<input type="number" name="year" value="2016"> <br>
	<br>
	<input type="submit">
	</form>
	
<?php 

if(!$_POST){}
else
{
	
	$day = $_POST['day'];
	$month = $_POST['month'];
	$year = $_POST['year'];

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
							WHEN MONTH(DATE(stu.dob)) < :month THEN (SELECT :year - YEAR(stu.dob))
                    		WHEN MONTH(DATE(stu.dob)) = :month && DAY(DATE(stu.dob)) < :day THEN (SELECT (:year -1) - YEAR(stu.dob))
							ELSE (SELECT (:year - 1) - YEAR(stu.dob))
						END 
						) 
			) AS years_old 
		FROM Student AS stu 
		JOIN `enrollment` AS enr ON enr.id = stu.id 
		JOIN Gender ON gen_code = stu.gender 
		WHERE enr.grade = :grade AND YEAR(enr.enr_date) = 2016 AND stu.gender = :gender AND enr.status = 1
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
		<td>Gender</td>
		<td>Age</td>
		<td>Total</td>
		</tr>';

while($counter < 12) {
	
//	echo '<br>counter: '.$counter;
	$variable[$counter] = ($counter);
/*	echo '<br>variable[$counter]: '.$variable[$counter];
	echo '<br>';
/**/
	$fulltotal = 0;
	while ($gender < 3){
	
		$exec=$dbh->prepare($sql);
		$exec->bindParam(':grade', $variable[$counter], PDO::PARAM_INT);
		$exec->bindParam(':gender', $gender, PDO::PARAM_INT);
		$exec->bindParam(':month', $month, PDO::PARAM_INT);
		$exec->bindParam(':day', $day, PDO::PARAM_INT);
		$exec->bindParam(':year', $year, PDO::PARAM_INT);
		$exec->execute();
		
		//$val = $exec->fetchColumn();
		
		$total = 0;
		
		foreach($exec as $row)
		{
		
			echo '<tr>
					<td style=font-weight:bold>'.$counter.'</td>';
			echo	'<td>'.$row["gender"].'</td>';
			echo	'<td>'.$row["years_old"].'</td>
					<td>'.$row["Total"].'</td>
				</tr>';
			
			$total = $total +  $row["Total"];
		}
		$fulltotal = $fulltotal + $total;
		echo '<tr><td>Total: </td><td>'.$total.'</td><td></td><td></td></tr>';
		//$obtainedvals = array_push($obtainedvals, $val);
//		echo 'gender = '.$gender.'<br>';
		$gender += 1;
	
	}
	
	echo '<tr><td>Full Total: </td><td>'.$fulltotal.'</td><td></td><td></td></tr>';
	
	$gender = 1;
		
	
	$counter += 1;
	echo '<tr><td colspan="4">----------------------------------</td></tr>';
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

}

$exec = null;

$dbh = null;



?>