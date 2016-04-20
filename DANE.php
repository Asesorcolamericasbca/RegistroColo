<?php
include('vars.php');

$hourssql = "SELECT *,(SUM(`weekly-hours` * grupos) + 1) as hours FROM `carga-academica` JOIN `intensidad-horaria` ON cod = codmat GROUP BY `prof-nom` ORDER BY `prof-nom`";

$gradehourstotalsql = "SELECT *,(SUM(`weekly-hours`)) as hours FROM `intensidad-horaria` GROUP BY `grade`";


// TODO query to find in which grade teacher spend the most hours, and then say that they teach in that grade.
