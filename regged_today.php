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
		JOIN `transaction` AS tra ON tra.aid = sta.aid
		JOIN enrollment AS enr ON enr.eid = sta.eid
		JOIN rate ON grade_id = enr.grade
        JOIN (SELECT SUM(amount) AS total,aid FROM `transaction` GROUP BY aid) as pay ON pay.aid = sta.aid
		JOIN student AS stu ON stu.id = enr.id
		WHERE enrollment_year = YEAR(SYSDATE()) AND enr.status = 1 AND regdate = CURRENT_DATE()
		GROUP BY sta.aid
        ORDER BY enr.grade, stu.lname ASC';


$exec = $dbh->prepare($sql);
$exec->execute();

$language = array ('English', 'Spanish');
$selectedlanguage = 1;

if($language[$selectedlanguage] == 'English')
	echo '<h3>Accounts that have had their payments registered in the database today</h3>';
else if($language[$selectedlanguage] == 'Spanish')
	echo '<h3>Cuentas que han registrado pagos en la base de datos hoy</h3>';

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
			<td>Año</td>
			<td>Balance</td>
			<td>Ult Mes</td>
			<td># Falta</td>
			</tr>';

$gradetotalowed = 0;
$numberregistered = 0;
	
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
	$mydateinEnglish=$dateObj->format('M'); // for month in 3 letters in English (vanilla PHP locale)
	//$mydate=$dateObj->format('m'); // for month in digits
	
	$mydate = ucfirst(gmstrftime('%b', gmmktime(0,0,0,$shorten+1,0,0)));
	
	
	
	//works fine, no changes needed
	
	$u = function(){
		global $row, $style, $shorten, $mydate, $unpaidmonths, $currentbalance, $currentaid, $numberregistered;
	
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
		$numberregistered++;
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
		if($shorten < idate('m')){	
		$gradetotalowed += $totalowed;
	
		$schooltotalowed += $totalowed;
		}
	};
	
	$gay = function($x){
				
		return $x;
	};
	
	
	/**/ // set switch to 1 to enable listing only students that owe 2 or more payments
		// unset switch, or set it = to null, to list all late accounts
	$switch = 0;
	if(isset($_GET['setting']))
		$switch = $_GET['setting'];
	
	if($switch == 1)
	{
		if($shorten < idate('m')-1)
		{
		$gay($u());
		$gay($newgay());
		}
	}
	else if($switch == 2)
	{
		if($shorten < idate('m'))
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
echo '<tr><td style="border:none; height: 10px;"></td></tr>';

$textbolder = 'style="font-weight: bold;"';

if($language[$selectedlanguage] == 'English')
	echo '<tr '.$textbolder.'><td colspan=2>Total registered:</td><td>'.$numberregistered.'</td></tr>';
else if($language[$selectedlanguage] == 'Spanish')
	echo '<tr '.$textbolder.'><td colspan=2>Total registrado:</td><td>'.$numberregistered.'</td></tr>';


$schooltotalowed = 0;

$grade = null;
?>

</table>





