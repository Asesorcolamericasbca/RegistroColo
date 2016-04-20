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
$stmt=$dbh->prepare($sqltest1);
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
$sql = $dbh->prepare($good);
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
$sqr = $dbh->prepare($sqg);
$sqr->bindParam(":yeara", $yeara, PDO::PARAM_INT);
$sqr->bindParam(":lname", $juan, PDO::PARAM_STR);
$sqr->execute();

$quick = new table($sqr);
$quick->pcolumns('id', 'name', 'lname');

/**/

##########################


################## also working

/*

$varsy = array(':yeara' => 2006,
		      ':lname' => '%meneses%');

$sqpg = "SELECT * FROM $stu WHERE year(dob) = :yeara AND lname like :lname";
$sqrl = $dbh->prepare($sqpg);
$sqrl->bindParam(":yeara", $varsy[':yeara'], PDO::PARAM_INT);
$sqrl->bindParam(":lname", $varsy[':lname'], PDO::PARAM_STR);
$sqrl->execute();

$quicky = new table($sqrl);
$quicky->pcolumns('id', 'name', 'lname');

/**/

##########################

$vars = array(':yeara' => 2006,
		':lname' => '%meneses%');

$sqn = "SELECT * FROM $stu WHERE year(dob) = :yeara AND lname like :lname";
$turd = new sql($dbh, $sqn);
$turd->bindval_exec($vars);

$quicky = new table($sqrl);
$quicky->pcolumns('id', 'name', 'lname');

/**/


/*
$keys = ['id', 'name', 'lname'];
foreach($sql as $hi){
	foreach($keys as $l){
		echo "$hi[$l] ";
	}
	echo "<br>";
}*/







$stmt = null;


$dbh = null;

?>