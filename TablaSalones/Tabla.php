<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-yw4l{vertical-align:top}

#tdright {text-align: right;}
</style>

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header("Content-Type: text/html; charset=WINDOWS-1252");
setlocale(LC_TIME, 'Spanish_Colombia.1252');

$host='127.0.0.1';
$user='talonariosadmin';
$pass='WinnersClub';
$db='talonarios';

try{
	$dbh = new PDO("mysql:host=$host;dbname=$db", $user, $pass); //charset gives funny results when trying to mix utf8 with windows-1252
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$msg= 'connected to database <br />';
}
catch(PDOException $e)
{
	$dbh=null;
	$msg= $e->getMessage();
}


// Generate the table from mysql database

$studentNumber = 0;
$year = 2016;
$grupo = 1;

$sql = 'SELECT lname,name 
		FROM student AS s 
		JOIN enrollment AS e ON e.id = s.id 
		WHERE year = :year AND grupo = :grupo 
		ORDER BY lname ASC';

$exec = $dbh->prepare($sql);
$exec->bindParam(':year', $year, PDO::PARAM_INT);
$exec->bindParam(':grupo', $grupo, PDO::PARAM_INT);
$exec->execute();

// FUNCTIONS TO GET DATA AND ASSIGN THEM TO VARIABLES

/*
<tr>
<th class="tg-yw4l"></th>		<th class="tg-yw4l"></th>		<th class="tg-yw4l"></th>		<th class="tg-yw4l"></th>		<th class="tg-yw4l"></th>
</tr>
*/


// BEGIN PRINTING TABLE
echo '<table class="tg">';
foreach ($exec as $row){
	echo '
		<tr>
		<td id="tdright">'.$studentNumber.'</td> <td class="tg-yw4l">'.$row['lname'].' '.$row['name'].'</td>    <td class="tg-yw4l"></td>    <td class="tg-yw4l"></td>    <td class="tg-yw4l"></td>    <td class="tg-yw4l"></td>
		</tr>
		';
	$studentNumber++;
}
echo '</table>';

?>