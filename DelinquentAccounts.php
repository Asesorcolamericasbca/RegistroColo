<?php

include('vars.php');

function getAmount($grade){
	
	if ($grade == 1){
		$amount = 176025;
	}elseif ($grade == 2){
		$amount = 169437;
	}elseif ($grade > 2 && $grade < 5){
		$amount = 166260;
	}elseif ($grade > 4 && $grade < 10){
		$amount = 200638;
	}elseif ($grade > 9 && $grade < 12){
		$amount = 211499;
	}
	
	return $amount;
}

$monthspaid = array(
		0 => 11,
		1 => 10,
		2 => 9,
		3 => 8,
		4 => 7,
		5 => 6,
		6 => 5,
		7 => 4,
		8 => 3,
		9 => 2,
		10 => 0,

);


$sql = 'SELECT enr.eid,sta.aid,enrollment_year,name,lname,enr.grade,balance,total
		FROM staccount AS sta 
		JOIN enrollment AS enr ON enr.eid = sta.eid 
		JOIN rate ON grade_id = enr.grade
        JOIN (SELECT SUM(amount) AS total,aid FROM `transaction` GROUP BY aid) as pay ON pay.aid = sta.aid
		JOIN student AS stu ON stu.id = enr.id
		WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1
        ORDER BY enr.grade, stu.lname ASC';


$exec = $dbh->prepare($sql);
$exec->execute();

$language = array ('English', 'Spanish');
$selectedlanguage = 1;

if($language[$selectedlanguage] == 'English')
	echo '<h3>Accounts that are one month or more behind in payment</h3>';
else if($language[$selectedlanguage] == 'Spanish')
	echo '<h3>Cuentas que estsan atrasados uno o mas meses</h3>';

?> 

<style>

table, td {
border: grey dotted 1px;

}

.boldy {
font-weight: bold;
}

.righty {
text-align: right;
}

</style>

<table>

<?php

if($language[$selectedlanguage] == 'English')
	echo '<tr style="font-weight:bold">
			<td>Aid</td>
			<td>Name</td>
			<td>Surname</td>
			<td>Grade</td>
			<td>Year</td>
			<td>Balance</td>
			<td>Ult Mes</td>
			<td># Falta</td>
			</tr>';
else if($language[$selectedlanguage] == 'Spanish')
	echo '<tr style="font-weight:bold">
			<td>Aid</td>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Grado</td>
			<td>A�o</td>
			<td>Balance</td>
			<td>Ult Mes</td>
			<td># Falta</td>
			</tr>';

	
$schooltotalowed = 0;
$gradetotalowed = 0;
$totalpaid = 0;

$switch = 1;

foreach ($exec as $row) {
	// (SUm of transactions) - (what they should've paid) == $totalpaid - $amountowed
	
	if(isset($grade)){
		if($grade != $row['grade']){
			/*if(isset($unpaidmonths))
				echo '<tr><td>'.$unpaidmonths.'</td><td> '.$stotal.' </td><td> '.($currentbalance - $stotal).' </td><td> '.$totalpaid.' </td></tr>';
			*/
			if(isset($gradetotalowed))
				echo '<tr><td colspan=6 class="boldy">Monto total faltante en el grado</td><td class="boldy righty" colspan= 2>'.$grade_owed.'</td></tr>';
			
			echo '<tr><td colspan=8 style="text-align:center">---------------------------------------------------------------------------------------------------------------------</td></tr>';
			$grade = $row['grade'];
			$gradetotalowed = 0;
			
		}
        		
	}
		
	$grade = $row['grade'];
	$amount = getAmount($grade);
	
	$currenttotal = $row['balance'];
	$counter = 0;
	$stotal = 1;
	
	while ($stotal < $currenttotal) {
		if ($currenttotal == 0)
		{
			$total = 0;
			break;
		}
		$stotal = $amount*$counter;
		$counter += 1;
	}
	
	if($counter <= 0)
	{
		$counter = 0;
	}
	else
	{
		$counter -= 1;
	}
	
	$shorten = $monthspaid[$counter]; // howmany months 
	
	$dateObj=DateTime::createFromFormat('!m', $shorten);
	$mydateinEnglish=$dateObj->format('M');
	
	
	$mydate = ucfirst(gmstrftime('%b', gmmktime(0,0,0,$shorten+1,0,0))); // in Colombia locale time (locale+charset defined in vars.php)
	
	

	//works fine, no changes needed
	
	$u = function(){
		global $row, $style, $shorten, $mydate, $unpaidmonths, $currentbalance, $currentaid;
	
		echo '<tr><td>'.$row['aid'];
		echo '</td><td>'.$row['name'].
		'</td><td>'.$row['lname'].
		'</td><td style="text-align:center;">'.$row['grade'].
		'</td><td>'.$row['enrollment_year'].
		'</td><td>'.$row['balance'].
		'</td><td style="text-align:center;">';
	
	
		if($shorten >= date('n'))
			$style='style="color:Blue;"';
		else
			$style='style="color:Red;"';
	
		if($shorten == 0)
			$msg = '<strong '.$style.'>No Hay</strong>';
		else if(isset($msg2))
				$msg = '<strong '."$style".'>'.$mydate.'</strong>'.$msg2;
			else
				$msg = '<strong '."$style".'>'.$mydate.'</strong>';
	
		echo $msg.'</td>
		<td style="text-align:center;">'.(idate('m')-$shorten).'</td>
		</tr>';
	
		$unpaidmonths = (idate('m')-$shorten);
		$currentbalance = $row['balance'];
		$currentaid = $row['aid'];
	};
	
	
	
	$newgay = function(){
		
		global $dbh, $amount, $shorten, $currentaid, $amountdue, $gradetotalowed, $schooltotalowed, $totalpaid, $totalowed;
		
		// get how much they've paid
		$secky = $dbh->prepare('SELECT SUM(amount) FROM `transaction` WHERE aid = :a');
		$secky->bindParam(':a', $currentaid, PDO::PARAM_INT);
		$secky->execute();
		$totalpaid = $secky->fetchColumn();
		
		// we start on February, hence, the '-1'
		// how much they should've paid
		$amountdue = ((idate('m')-1) * $amount);
		
		$totalowed = $amountdue - $totalpaid;
		
		// echo '<tr><td colspan=2>Monto total faltante</td><td>'.$totalowed.'</td></tr>';
		
		$gradetotalowed += $totalowed;
		
		$schooltotalowed += $totalowed;
		
	};
	
	$gay = function($x){
			
		return $x;
	};

	
	/**/ // set switch to 1 to enable listing only students that owe 2 or more payments
	     // unset switch, or set it = to null, to list all late accounts
	
	/*
	switch ($switch){
		case $_GET['setting'] == null:
			$switch = 1;
			break;
		case $_GET['setting'] == 1  || $_GET['setting'] == 'on':
			$switch = 1;
			break;
		case $_GET['setting'] == 0 || $_GET['setting'] == 'off':
			$switch = 0;
			break;
		default:
			$switch = 1;
			break;
	}
	*/
	/*
	if(!isset($_GET['setting']))
	{
		$switch = 1;
	}
	else if ($_GET['setting'] == 'on' )
	{
		$switch = 1;
	}
	else if ($_GET['setting'] == 'off' )
	{
		$switch = 0;
	}
	else
	{
		$switch = 1;
	}
		*/
	
	if($switch == 1)
	{
		if($shorten < idate('m')-1)
		{
		$gay($u()); 
		$gay($newgay());
		} 
	}
	else
	{
		$gay($u());
		$gay($newgay());
	}
	
	
	$grade_owed = number_format($gradetotalowed, 2, ',', ".");
		
	unset($u);
	unset($gay);
	unset($newgay);
	
}
$school_owed = number_format($schooltotalowed, 2, ',', ".");

echo '<tr><td class="boldy" colspan=6; >Monto total faltante en el grado</td><td class="boldy righty" colspan= 2>'.$grade_owed.'</td></tr>';
echo '<tr><td colspan=8 style="text-align:center">---------------------------------------------------------------------------------------------------------------------</td></tr>';
echo '<tr><td class="boldy" colspan=6>Monto total faltante en el colegio </td><td class="boldy righty" colspan= 2>'.$school_owed.'</td></tr>';

$schooltotalowed = 0;

$grade = null;
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


if($language[$selectedlanguage] == 'English')
	echo '<br><br><h3>Accounts that do not yet have any registered transactions</h3> <br><br>';
else if($language[$selectedlanguage] == 'Spanish')
	echo '<br><br><h3>Cuentas que no llevan pago registrado</h3> <br><br>';

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

$gradetotalowed = 0;

foreach ($exec as $row) {
	
	if(isset($grade)){
		if($grade != $row['grade']){
			
			echo '<tr><td colspan=4 class="boldy">Monto total faltante en el grado</td><td class="boldy righty" colspan= 2>'.$grade_owed.'</td></tr>';
			echo '<tr><td colspan=4 style="text-align:center">-------------------------------------------------------------------------------------------------------</td></tr>';
			$grade = $row['grade'];
			$gradetotalowed = 0;
		}
	
	}
	
	$grade = $row['grade'];
	
	echo '<tr><td>'.$row['aid'];
	echo '</td><td>'.$row['name'].
	'</td><td>'.$row['lname'].
	'</td><td>'.$row['grade'].
	'</td><td>'.$row['enrollment_year'].
	'</td><td>'.$row['balance'].
	'</td></tr>';
	
	$gradetotalowed += (getAmount($grade) * idate('m'));
	$grade_owed = number_format($gradetotalowed, 2, ',', ".");
	$schooltotalowed += (getAmount($grade) * idate('m'));
	
}
$school_owed = number_format($schooltotalowed, 2, ',', ".");

echo '<tr><td class="boldy" colspan=4; >Monto total faltante en el grado</td><td class="boldy righty" colspan= 2>'.$grade_owed.'</td></tr>';
echo '<tr><td colspan=8 style="text-align:center">---------------------------------------------------------------------------------------------------------------------</td></tr>';
echo '<tr><td class="boldy" colspan=4>Monto total faltante en el colegio </td><td class="boldy righty" colspan= 2>'.$school_owed.'</td></tr>';

?>



</table>

<a href='paystats.php'>check payment statistics</a>