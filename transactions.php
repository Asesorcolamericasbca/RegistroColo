<?php
include ('vars.php');




$aid=$_GET['aid'];

$sql="SELECT balance FROM ".$sta.
"WHERE aid = :aid";

$exec=$dbh->prepare($sql);
$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
$exec->execute();

$balance = $exec->fetchColumn();

$exec = null;


echo 'Balance: '.$balance.'<br><br>';

$sql="  SELECT sta.aid,stu.lname,stu.name,enr.grade,sta.num_talonario,tra.amount,tra.paydate,tra.regdate
		FROM ".$tra.
		$joinstatotra.
		$joinenrtosta.
		$joinstutoenr."
		WHERE tra.aid = :aid";

		$exec=$dbh->prepare($sql);
		$exec->bindParam(':aid', $aid, PDO::PARAM_INT);
		$exec->execute();

		
		$counter = 1;

	
		echo '<table>';
		
		echo '<tr style=font-weight:bold>
			<td></td>
			<td> aid </td>
			<td> lname </td>
			<td> name </td>
			<td> grade </td>
			<td> num_talonario </td>
				<td> amount </td>
				<td> paydate </td>
				<td> regdate </td>
			</tr>';
		
		foreach($exec as $row)
		{
		
		
		
			echo '<tr> 
					<td style=font-weight:bold>'.$counter.'</td>';
			echo	'<td>'.$row["aid"].'</td>';
			echo	'<td>'.$row["lname"].'</td>
				<td>'.$row["name"].'</td>
				<td>'.$row["grade"].'</td>
				<td>'.$row["num_talonario"].'</td>
						<td>'.$row["amount"].'</td>
								<td>'.$row["paydate"].'</td>
										<td>'.$row["regdate"].'</td>
			</tr>';
			$counter+=1;
		
		}
		
		
		echo '</table>';
		
		
		echo '<a id="next" href="payreg.php">register another one</a> 
				<script>
			document.getElementById("next").focus();
			</script>';	
		
		?>