<?php
include('vars.php');

/*
$sql = 'UPDATE `carga-academica` as f 
		SET codmat = (
		SELECT cod 
		FROM `intensidad-horaria` as p 
		WHERE p.subject = :sub AND p.grade = :grade
				) 
		WHERE f.materia = :sub AND f.grado = :grade';

/*
	
$grade = 6;
$subs = array('Matematicas', 
		'Estadistica', 
		'Quimica', 
		'Biologia', 
		'Filosofia', 
		'Fisica', 
		'Educacion Fisica', 
		'Ciencias Sociales', 
		'Artistica', 
		'Ciencias Naturales',
		'Geometria',
		'Tecnologia e Informatica',
		'Administracion',
		'Mercadeo',
		'Laboratorio Contable',
		'Tecnicas y Gestion',
		'Lengua Castellana',
		'Educacion Etica y Valores',
		'Educacion Religiosa',
		'Contabilidad',
		'Ingles'
);


while ($grade < 9) {
	$counter = 0;
	while(isset($subs[$counter])){ 	
		$e = $dbh->prepare($sql);
		$e->bindParam(':grade', $grade, PDO::PARAM_INT);
		$e->bindParam(':sub', $subs[$counter], PDO::PARAM_STR);
		$e->execute();
		
		$counter += 1;
	}
	$grade = $grade + 1;
}

/**/






$e = null;

$dbh=null;


?>