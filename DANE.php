<?php
include('vars.php');

$divider = "<hr><hr>";


function important_info(){
	
	
}






function school_data($dbh = null){
	
	global $divider;

	echo "<h1>School Data</h1>";
	
$cols=columnlist('datacode','datatype','value');
$pcols=array ('datacode','datatype','value');

$campusql = "SELECT $cols FROM campus";
$campustable = new sql($dbh, $campusql);
$campustable->ex();

$campusprint = new table($campustable->exed);
$campusprint->pscolumns($pcols);

echo $divider;

}



$msg = "Required: <br>use plataformaintegra to get stats on last year's failures<br>categories and jobs of workers (missing cafeteria lady,
		watchman, and accountant)yearly tuition payrates<br>table that shows which grades and
		subjects teachers spend most of their time with (caracter academico)<br>separate table
		to do the same thing, only for comercio (caracter tecnico)<br><br>";


function print_ages($dbh = null) {
	
	echo "<h1>Ages</h1>";
	
	global $divider;
	
	$day = idate('d');
	$month = 4;
	$year = 2016;
	
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
	
	echo $divider;
}



function grade_hours($dbh = null){

	global $divider;
	
	
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

	echo $divider;

}



function escalafones($dbh = null){
	
	echo "<h1>Escalafones</h1>";
	
	global $divider;

	echo "<table><tr><td><h3>profesores<br>hombres</h3></td><td>";
	
$vars = array(
		':gender' => 1
);
//echo 'this time for sure! <br>';
$sqn = "SELECT escalafon, COUNT(escalafon) as total FROM `profesores-listado` WHERE gender = :gender AND incluir = 'SI' GROUP BY escalafon";
$turd = new sql($dbh, $sqn);
$turd->ex($vars);

$quicky = new table($turd->exed);
$quicky->pcolumns('escalafon', 'total');

echo "</tr></td>";
echo '<tr><td>Hombres total</td><td colspan = "2">';
$sqn = "SELECT COUNT(escalafon) as total FROM `profesores-listado` WHERE gender = :gender AND incluir = 'SI' ";
$turd = new sql($dbh, $sqn);
$turd->ex($vars);

$quicky = new table($turd->exed);
$quicky->pcolumns('total');
echo "</td></tr>";		
echo "</table>";


echo "----------";


echo "<table><tr><td><h3>profesores<br>mujeres</h3></td><td>";

$vars = array(
		':gender' => 2
);
//echo 'this time for sure! <br>';
$sqn = "SELECT escalafon, COUNT(escalafon) as total FROM `profesores-listado` WHERE gender = :gender AND incluir = 'SI'  GROUP BY escalafon";
$turd = new sql($dbh, $sqn);
$turd->ex($vars);

$quicky = new table($turd->exed);
$quicky->pcolumns('escalafon', 'total');


echo "</tr></td>";
echo '<tr><td>Mujeres total</td><td colspan = "2">';

$sqn = "SELECT COUNT(escalafon) as total FROM `profesores-listado` WHERE gender = :gender AND incluir = 'SI' ";
$turd = new sql($dbh, $sqn);
$turd->ex($vars);

$quicky = new table($turd->exed);
$quicky->pcolumns('total');

echo "</td></tr>";
echo "</table>";

		/**/
echo $divider;

}




school_data($dbh);
echo $divider . $divider;
echo $msg;
escalafones($dbh);
print_ages($dbh);
grade_hours($dbh);

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
