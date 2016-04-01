<?php

include('vars.php');

$testval=1255;

if(!$_POST){
	
	echo 'no post';
	
} else {
	
	// student name, grade, aid, eid
	$sql="SELECT stu.name,stu.lname,enr.grade,sta.aid,sta.eid,sta.num_talonario ".
	" FROM ".$sta.
	$joinenrtosta.
	$joinstutoenr.
	"WHERE num_talonario = :talonario";
	$exec=$dbh->prepare($sql);
	$exec->bindParam(":talonario", $_POST['talonario'], PDO::PARAM_INT);
	//$exec->bindParam(":talonario", $testval, PDO::PARAM_INT);
	$exec->execute();
	
	
	##############
	
	echo '<table>';
	
	echo '<tr style=font-weight:bold>
			<td></td>
			<td> aid </td>
			<td> lname </td>
			<td> name </td>
			<td> grade </td>
			<td> eid </td>
			<td> num_talonario </td>
			</tr>';

	//echo '<form action="PayregPrep.php?date='.$_POST['paydate'].'" method="post">'; //Demo version
	
	echo '<form id="form" action="ReviewPayments.php" method="post">';
	
	$counter=0;
	
	echo $counter;
	
	foreach($exec as $row)
	{
		
		
	
		echo '<tr>
				<td> <input id="next" type="radio" name="state'.$counter.'">
						</td>
				<td>'.$row["aid"].'<input type="hidden" name="aid'.$counter.'" value="'.$row["aid"].'">
						</td>
				<td>'.$row["lname"].'<input type="hidden" name="paydate'.$counter.'" value="'.$_POST['paydate'].'">
						</td>
				<td>'.$row["name"].'<input type="hidden" name="eid'.$counter.'" value="'.$row["eid"].'">
						</td>
				<td>'.$row["grade"].'
						</td>
				<td>'.$row["eid"].'
						</td>
				<td>'.$row["num_talonario"].'
						</td>
			</tr>';
		 $counter+=1;
		
	} 
		
	
	echo '</table>';
	
	echo $counter;
	
	if($counter > 0 ) {
	
	echo ' <br> <input type="submit">
			</form>';
	
	
	
	} else {
		echo 'that talonario doesn\'t seem registered yet, would you like to
				<a id="next" href="talcheck.php">fix that</a> now?';
	}
	
	
	//echo $exec[1]["COUNT(*)"];
	echo '<br> <br> current year is: '.date('Y').'<br>';
	
	
	
	// Unfinished, requires a script to automatically set the form value to 'on'
	/*
	if($counter==1){
		echo '<script type="text/javascript">
		document.getElementById("form").submit(); // SUBMIT FORM
		</script>';
	} else {*/
		echo '<br /><br />
			<script>
			document.getElementById("next").focus();
			</script>';			
	/*}
	
	*/
	
	
	
	/* For demo */
	
	/*
	echo '<br><br> demo of input: <br>';
	
	foreach($_POST as $key => $value)
	{
		echo $key.": ".$value.'<br>';
	} 
	
	echo $_GET['date'];
	*/
	
	/* doesn't work yet, a conditional to warn user of duplicate talonario numbers
	
	if(sizeof($exec)==1){
		echo "There is only one person with this number";
	} else {
		echo "Watch out!";
	}
	*/
	
	
	
	
	$exec = null;
	
	
	$dbh = null;
	
}

?>
