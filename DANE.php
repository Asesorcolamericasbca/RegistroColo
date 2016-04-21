<?php
include('vars.php');

$cols=columnlist("`codcar`",
"`codmat`",
"`grado`",
"`grupos`",
"`materia`",
"`prof-nom`",
"`prof-ap`",
"`intensidad-horaria`.`year`",
"`cod`",
"`subject`",
"`category`",
"`area`",
"`grade`",
"`weekly-hours`",
"(SUM(`weekly-hours` * grupos) + 1) as hours");

$pcols=array (
"cod",
"grado",
"grupos",
"prof-nom",
"prof-ap",
"year",
"hours");

$hourssql = "SELECT $cols 
FROM `carga-academica` 
JOIN `intensidad-horaria` ON cod = codmat 
GROUP BY `prof-nom` ORDER BY `prof-nom`";
echo $hourssql;
$hourstable= new sql($dbh, $hourssql);
$hourstable->ex();

$phours = new table($hourstable->exed);
$phours->pscolumns($pcols);

$divider = "<br>---------------------<br>"; 
echo $divider;

$gradehourstotalsql = "SELECT *,(SUM(`weekly-hours`)) as hours FROM `intensidad-horaria` GROUP BY `grade`";

$vars = array(
		':grade' => 1
);

$cols=columnlist("subject", "area", "category", "grade","`weekly-hours` as hours");
$pcols = array("subject", "area", "category","hours","grade");

$tehquer = "SELECT $cols FROM `intensidad-horaria` WHERE grade = :grade";
$getgrade = new sql($dbh, $tehquer);
$table = new table();
while ($vars[':grade'] < 12){
	$getgrade->ex($vars);
	$table->new_table($getgrade->exed);
	$table->pscolumns($pcols);
	$vars[':grade'] += 1;
}

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

// TODO query to find in which grade teacher spend the most hours, and then say that they teach in that grade.
