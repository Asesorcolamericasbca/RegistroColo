<?php

include('vars.php');

$grade = 1;

$total = 0;

$sql = 'SELECT rate * COUNT(enrollment.grade) as estimate
		FROM rate join enrollment 
		WHERE rate.grade = :grade AND enrollment.status = 1';

?> <table><tr>
		<td>Grade</td>
		<td>Estimate</td>
		</tr> <?php 

while ($grade < 12){
	$exec=$dbh->prepare($sql);
	$exec->bindParam(':grade', $grade, PDO::PARAM_INT);
	$exec->execute();
	
	foreach($exec as $row)
	{
	
		echo '<tr>
					<td style=font-weight:bold>'.$grade.'</td>';
		echo	'<td>'.$row["estimate"].'</td>
				</tr>';
		
		$total = $total + $row["estimate"];
	}
	
	$grade += 1;
	
	
}

?> </table>

<br><br><br>Total income = <?php echo $total; ?>