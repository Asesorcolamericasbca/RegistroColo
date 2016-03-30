<?php

include('vars.php');

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

$stmt = null;


$dbh = null;

?>