<?php

include ('vars.php');


$sql = 'SELECT enr.eid,sta.aid,enrollment_year,name,lname,enr.grade,balance,total
		FROM staccount AS sta 
		JOIN enrollment AS enr ON enr.eid = sta.eid 
		JOIN rate ON grade_id = enr.grade
        JOIN (SELECT SUM(amount) AS total,aid FROM `transaction` GROUP BY aid) as pay ON pay.aid = sta.aid
		JOIN student AS stu ON stu.id = enr.id
		WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1 AND balance > ((balance+total)-(rate*(MONTH(SYSDATE())-1)))
        ORDER BY sta.aid ASC';

$exec = $dbh->prepare($sql);
$exec->execute();


echo '<br><br><h3>Accounts that are one month or more behind in payment</h3> <br><br>';

?> 

<table>

<tr style="font-weight:bold">
<td>Aid</td>
<td>Name</td>
<td>Surname</td>
<td>Grade</td>
<td>Year</td>
<td>Balance</td>
</tr>

<?php 
foreach ($exec as $row) {
	
	echo '<tr><td>'.$row['aid'];
	echo '</td><td>'.$row['name'].
	'</td><td>'.$row['lname'].
	'</td><td>'.$row['grade'].
	'</td><td>'.$row['enrollment_year'].
	'</td><td>'.$row['balance'].
	'</td></tr>';
	
	
	
}

?>

</table>


<?php 

$exec = null;

$newsql = 'SELECT enr.eid,sta.aid,enrollment_year,name,lname,enr.grade,balance
		FROM staccount AS sta 
		JOIN enrollment AS enr ON enr.eid = sta.eid 
		JOIN rate ON grade_id = enr.grade
        JOIN student AS stu ON stu.id = enr.id
        WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1 AND balance = (rate*10)
';

$exec = $dbh->prepare($newsql);
$exec->execute();

echo '<br><br><h3>Accounts that do not yet have any registered transactions</h3> <br><br>';

?>

<table>

<tr style="font-weight:bold">
<td>Aid</td>
<td>Name</td>
<td>Surname</td>
<td>Grade</td>
<td>Year</td>
<td>Balance</td>
</tr>

<?php 
foreach ($exec as $row) {
	
	echo '<tr><td>'.$row['aid'];
	echo '</td><td>'.$row['name'].
	'</td><td>'.$row['lname'].
	'</td><td>'.$row['grade'].
	'</td><td>'.$row['enrollment_year'].
	'</td><td>'.$row['balance'].
	'</td></tr>';
	
	
	
}

?>



</table>

<a href='paystats.php'>check payment statistics</a>