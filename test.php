<?php

include('vars.php');


// echo date('Y');

/*
$tester = array(
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

echo $tester[1];


/*
$counter = 10;
$dateObj=DateTime::createFromFormat('!m', $counter);
$mydate=$dateObj->format('F');
echo $mydate;

/*
$stmt=$dbh->exedare($sqltest1);
$stmt->execute();

echo '<table>';

echo '<tr style=font-weight:bold> <td> aid </td>
		<td> lname </td>
		<td> name </td>
		<td> grade </td>
		<td> num_talonario </td>
		</tr>';
foreach($stmt as $row)
{
	
	//echo sizeof($row)."<br />";
	//echo "------------<br />";
	echo '<tr>';
	//echo '<td>'.$row["aid"].'</td>'.' - '.'<td>'.$row["lname"].'</td>'.' - '.'<td>'.$row["name"].'</td>'.' - '.'<td>'.$row["grade"].'</td>'.' - '.'<td>'.$row["num_talonario"].'</td>'.'<br />';
	echo '<td>'.$row["aid"].'</td>
			<td>'.$row["lname"].'</td>
		  	<td>'.$row["name"].'</td>
			<td>'.$row["grade"].'</td>
			<td>'.$row["num_talonario"].'</td>';
	echo '</tr>';
	//echo "------------<br />";
}

echo '</table>';


/* doesn't show anything, probably doesn't work because obj type
foreach($stmt as $row => $value)
{
	echo $row.": ".$value;
}
*/

/*
function test () {
	echo func_num_args()."<br>";
	foreach (func_get_args() as $arg){
		echo ''.$arg.' ';
		
	}
}

test(3, 5, 'chicky');
*/

############### working

/*

$good = "SELECT * FROM $stu";
$sql = $dbh->exedare($good);
$sql->execute();

$quick = new table($sql);
$quick->pcolumns('id', 'name', 'lname');

/**/
####################### 

############# also working

/*

$yeara = 2006;
$juan = "%meneses%";
$stud = ' student ';

$sqg = "SELECT * FROM $stu WHERE year(dob) = :yeara AND lname like :lname";
$sqr = $dbh->exedare($sqg);
$sqr->bindParam(":yeara", $yeara, PDO::PARAM_INT);
$sqr->bindParam(":lname", $juan, PDO::PARAM_STR);
$sqr->execute();

$quick = new table($sqr);
$quick->pcolumns('id', 'name', 'lname');

/**/

##########################


################## also working


/*
$varsy = array(':yeara' => 2005,
':mon' => 7);
		//':lname' => '%MENESES%');

$sqpg = "SELECT * FROM $stu WHERE year(dob) = :yeara AND MONTH(dob) = :mon";
$sqrl = $dbh->exedare($sqpg);
$jick = $sqrl->bindParam(":yeara", $varsy[':yeara'], PDO::PARAM_INT);
$jock = $sqrl->bindParam(":mon", $varsy[':mon'], PDO::PARAM_STR);
$sqrl->execute();

$quicky = new table($sqrl);
$quicky->pcolumns('id', 'name', 'lname', 'dob');

/**/

##########################
#######################################
#######################################
#######################################
############# BEGIN GOOD BLOCK ########
#######################################
#######################################
#######################################

// IT WORKS!!! This is also the block that is currently being used

/*
$vars = array(
':year' => 2005,
':month' => 7,
':lname' => '%MENESES%');

//echo 'this time for sure! <br>'; 
$sqn = "SELECT * FROM $stu WHERE YEAR(dob) = :year AND MONTH(dob) = :month AND lname LIKE :lname";
$turd = new sql($dbh, $sqn);
$turd->ex($vars);

$quicky = new table($turd->exed);
$quicky->pcolumns('id', 'name', 'lname', 'dob');

/**/

/*
$xa = array (
		'Administracion' => 0,
		'Algebra' => 0,
		'Artistica' => 0,
		'Biologia' => 0,
		'Calculo' => 0,
		'Ciencias Economicas y Politicas' => 0,
		'Ciencias Naturales' => 0,
		'Ciencias Sociales' => 0,
		'Contabilidad' => 0,
		'Educacion Etica y Valores' => 0,
		'Educacion Fisica' => 0,
		'Educacion Religiosa' => 0,
		'Estadistica' => 10,
		'Filosofia' => 0,
		'Fisica' => 0,
		'Geometria' => 0,
		'Ingles' => 0,
		'Laboratorio Contable' => 0,
		'Lengua Castellana' => 0,
		'Matematicas' => 0,
		'Mercadeo' => 0,
		'Quimica' => 0,
		'Tecnicas y Gestion' => 0,
		'Tecnologia e Informatica' => 20,
		'Trigonometria' => 0

);

$x = max($xa);

echo $x;

echo " <-- max value, and its key is: ";
foreach(array_keys($xa, $x) as $v){
	echo $v;
}
*/

/*

$q = $dbh->query('SELECT * FROM student');

$n = $q->fetchAll(PDO::FETCH_ASSOC);

foreach($n as $h)
	echo $h;
*/
/*
$quark = 66;

$set = function(){
	global $quark, $typo;
	$quark = 4;
	$typo = 'sqwuat';
};

$set();
echo $quark;
echo $typo;
*/
/*
$shorten = 5;
$dateObj=DateTime::createFromFormat('!m', $shorten);
$mydate=$dateObj->format('m');
if(is_int($mydate))
	echo "it's an int".'<br>';
else if(is_string($mydate))
	echo "it's a string".'<br>';
else
	echo "it's neither".'<br>';

echo $mydate.'<br>';
echo gmstrftime('%b', gmmktime(0,0,0,$mydate,0,0));
*/


/* Report a day-by-day total of money that came in within the specified month and day range
*/

function qdate($month){
	return mktime(0,0,0,2,0,idate('y'));
}





echo gmdate('O'), "<br>";
echo date('O'), "<br>";
echo date('t', mktime(0,0,0,2,0,idate('y')));


$sql = 'SELECT SUM(amount) AS monto FROM `transaction` AS tra WHERE MONTH(paydate) = :month AND DAY(paydate) = :day';

$pickedmonth = 10;
$firstday = 6;

$limit_month = 11;
$limit_day_of_limit_month = 8;

echo '<h2>Montos totales de '.ucfirst(gmstrftime('%b', gmmktime(0,0,0,$pickedmonth+1,0,0))).' '.$firstday.' a '.ucfirst(gmstrftime('%b', gmmktime(0,0,0,idate('m')+1,0,0))).' '.date('d').'</h2>';

// echo idate('m');

$hookk = new DateTime(""); 

if (isset($vill)) {
	if(is_int($vill))
		echo 'an int';
	else 
		echo 'is not';
}

$total = 0;

if(isset($_GET['setting'])){
	$switch = $_GET['setting'];
	//echo $switch;
}



echo '<style>
		table, tr, td{
		border: grey dotted 1px;
		}
		</style>
		
		<table>';

for($month = $pickedmonth; $month <= ($pickedmonth + 1); $month++)
{
	if($month == (idate('m') - 1))
	{
		echo idate('t', mktime(0,0,0,$pickedmonth+1,0,0));
		for($day = 1; $day <= idate('t', mktime(0,0,0,$pickedmonth+1,0,0)); $day++)
		{
			$exec = $dbh->prepare($sql);
			$exec->bindParam(':month', $month, PDO::PARAM_INT);
			$exec->bindParam(':day', $day, PDO::PARAM_INT);
			$exec->execute();
			foreach($exec as $r)
			{
				echo '<tr>';
				echo '<td>'."dia $day "."de ".'</td><td>'.gmstrftime('%b', gmmktime(0,0,0,$month+1,0,0)).' = </td><td>';
				echo number_format($r['monto'], 2, ',', ".").'</td>';
				echo '<tr>';
				$total += $r['monto']; 
			}
		}
		for($day = 1; $day <= $limit_day_of_limit_month; $day++)// because the last for loop would just stop after reaching the end of the first month
		{
			$exec = $dbh->prepare('SELECT SUM(amount) AS monto FROM `transaction` AS tra WHERE MONTH(paydate) = :month AND DAY(paydate) = :day');
			$exec->bindParam(':month', $limit_month, PDO::PARAM_INT);
			$exec->bindParam(':day', $day, PDO::PARAM_INT);
			$exec->execute();
			foreach($exec as $r)
			{
				echo '<tr>';
				echo '<td>'."dia $day "."de ".'</td><td>'.gmstrftime('%b', gmmktime(0,0,0,$limit_month+1,0,0)).' = </td><td>';
				echo number_format($r['monto'], 2, ',', ".").'</td>';
				echo '<tr>';
				$total += $r['monto'];
			}
		}
	}
	
	if (isset($switch))
	{
		if($month == ($pickedmonth+1) && $switch == 1)
		{
			for($day = 1; $day <= 5; $day++)
			{
				$exec = $dbh->prepare($sql);
				$exec->bindParam(':month', $month, PDO::PARAM_INT);
				$exec->bindParam(':day', $day, PDO::PARAM_INT);
				$exec->execute();
				foreach($exec as $r)
				{
					echo '<tr>';
					echo '<td>'."dia $day "."de ".'</td><td>'.gmstrftime('%b', gmmktime(0,0,0,$month+1,0,0)).' = </td><td>';
					echo number_format($r['monto'], 2, ',', ".").'</td>';
					echo '<tr>';
					$total += $r['monto']; 
				}
			}
		}
}
}

echo "<tr><td style='border: none;' colspan=3></td></tr>
		<tr style='font-weight: bold;'><td>Total :</td><td style='text-align: right;' colspan = 2>".number_format($total, 2, ',', ".").'</td>';

echo '<table>';




#######################################
#######################################
#######################################
############# END GOOD BLOCK ########## 
#######################################
#######################################
#######################################
#######################################


// Maybe I'm overcomplicating this (this block is not being used)
/*
$var = array(
':year' => 2005,
':month' => 7,
':lname' => '%MENESES%');

$datak = array();
$datav = array();

foreach($var as $k => $v){
	array_push($datak, $k);
	array_push($datav, $v);
}



//echo 'this time for sure! <br>'; 
$sqn = "SELECT * FROM $stu WHERE YEAR(dob) = $datak[0] AND MONTH(dob) = $datak[1] AND lname LIKE $datak[2]";
$turd = new sql($dbh, $sqn);
$turd->ex($var);

$quicky = new table($turd->exed);
$quicky->pcolumns('id', 'name', 'lname', 'dob');
*/





#### sql test (and it works)

/*
$cols = columnlist("$stu.id","name","lname","dob","eid","eps");
$sql = "SELECT $cols FROM $stu ".tjoin($enr,$stu,'id');
$qui = new sql($dbh, $sql);
$qui->ex();

$obj = $qui->exed;
$arr = array('id','name','lname','dob','eid','eps');

echo '<table> <tr style="font-weight:bold">';
		foreach($arr as $col){
			echo '<td>'.$col.'</td>';
			}
echo '</tr>';
		
		foreach($obj as $val){
			echo '<tr>';
			foreach($arr as $col){
				echo '<td>'.$val[$col].'</td>';
			}
			echo '</tr>';
		}
echo '</tr> </table>';

/**/

#############

################
## Another test, but with included objects and functions
## (This also works)


/*
$cols = columnlist("$stu.id","name","lname","dob","eid","eps");
$pcols = array ("id","name","lname","eid");
$sql = "SELECT $cols FROM $stu ".tjoin($enr,$stu,'id');
$qui = new sql($dbh, $sql);
$qui->ex();

$obj = $qui->exed;

$result = new table($obj);
$result->pscolumns($pcols);
/**/

##############

/* current attempt at making it all happen in one object (doesn't work)

$cols = columnlist("$stu.id","name","lname","dob","eid","eps");
$pcols = array ("id","name","lname","eid");
$sql = "SELECT $cols FROM $stu ".tjoin($enr,$stu,'id');
$qui = new sql($dbh, $sql);
$qui->ex();
$obj = $qui->exed;

$qui->pcolumns($obj);
/**/





#########
// Better for picking columns in queries

/*
$data = array('hi', 'hello', 'whatsapp');
$counter = 0;

while($counter < sizeof($data)){
	if(!isset($var))
		$var = $data[$counter];
	else 
		$var = $var.', '.$data[$counter];
	$counter+=1;
}

echo $var;
*/

################3



$stmt = null;


$dbh = null;

?>