<html>

<body>


<form action="PayregPrep.php" method="post">
talonario #<input id="next" type="number" name="talonario" min="1" max="9999"> <br>
Pay Date<input type="date" name="paydate"> <br>
<input type="submit">
</form>

<?php 



?>

<a href="namereg.php">Click here to register names</a> <br>
<a href="talcheck.php">Click here to search for talonario numbers</a><br><br>

[need to fix]<a href="ReviewPayments.php">Click here to check student accounts</a><br><br>
<a href="fillemptystudentinfo.php">Click here to update student info</a><br>
<a href="paystats.php">Click here to check stats on delincuent student accounts</a><br>
<a href="getbirthdays.php">Click here to check age stats on each grade</a><br>

<script>
			document.getElementById("next").focus();
			</script>	

</body>

</html>