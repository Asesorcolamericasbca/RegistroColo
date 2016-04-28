<?php

include('vars.php');

$bigsql = 'FROM staccount AS sta
		JOIN enrollment AS enr ON enr.eid = sta.eid
		JOIN rate ON grade_id = enr.grade
        JOIN (SELECT SUM(amount) AS total,aid FROM `transaction` GROUP BY aid) as pay ON pay.aid = sta.aid
		JOIN student AS stu ON stu.id = enr.id
		WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1 AND balance > ((balance+total)-(rate*(MONTH(SYSDATE())-1)))
        ORDER BY sta.aid ASC';

$sql = 'SELECT enr.eid,sta.aid,enrollment_year,name,lname,enr.grade,balance,total '
		.$bigsql;


$counthalfpaid = 'SELECT COUNT(*) '.$bigsql;
		
$exec = $dbh->prepare($sql);
$exec->execute();


$halfpaycountquery = $dbh->prepare($counthalfpaid);
$halfpaycountquery->execute();
$bigcount = $halfpaycountquery->fetchColumn();


$lessbigsql = 'FROM staccount AS sta
		JOIN enrollment AS enr ON enr.eid = sta.eid
		JOIN rate ON grade_id = enr.grade
        JOIN student AS stu ON stu.id = enr.id
        WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1 AND balance = (rate*10)';

$newsql = 'SELECT enr.eid,sta.aid,enrollment_year,name,lname,enr.grade,balance '.$lessbigsql;

$countnopaid = 'SELECT COUNT(*) '.$lessbigsql;

$newexec = $dbh->prepare($newsql);
$newexec->execute();


$nopaycountquery = $dbh->prepare($countnopaid);
$nopaycountquery->execute();
$lessbigcount = $nopaycountquery->fetchColumn();



?>
<table>
<tr>
<td>Total sin pagar: </td><td><?php echo ($lessbigcount); ?></td>
</tr>
<tr>
<td>Total atrasado: </td><td><?php echo ($bigcount); ?></td>
</tr>
<tr>
<td>Total delincuente: </td><td><?php echo ($bigcount+$lessbigcount); ?></td>
</tr>
<tr>
</tr>
<tr>
</tr>
</table>

<a href='http://pensquick.local/PensQuick/DelinquentAccounts.php'>See Delincuent Accounts</a>