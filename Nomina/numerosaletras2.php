<?php
echo time () . '<br>';
function getdigits($x) {
	$mod = 10;
	$digits = 1;
	while ( $x != fmod ( $x, $mod ) ) {
		$mod *= 10;
		;
		$digits ++;
	}
	echo "The number of digits is: $digits" . '<br>';
	return $digits;
}
function mkdigitlist($number) {
	$digits = getdigits ( $number );
	$digitlist = array ();
	for($counter = 1; $counter <= $digits; $counter ++) {
		if ($counter == 1) {
			$currdigit = fmod ( $number, pow ( 10, $counter ) );
			array_push ( $digitlist, $currdigit );
		} else {
			$last_digit = fmod ( $number, pow ( 10, $counter - 1 ) );
			$currdigit = fmod ( $number, pow ( 10, $counter ) ) - $last_digit;
			array_push ( $digitlist, $currdigit );
		}
	}
	return $digitlist;
}
function mknum2word($num) {
	$digitlist = mkdigitlist ( $num );
	
	// Datos para dar palabras a los numeros
	$numeros = array (
			"cero",
			"uno",
			"dos",
			"tres",
			"cuatro",
			"cinco",
			"seis",
			"siete",
			"ocho",
			"nueve",
			"diez",
			"once",
			"doce",
			"trece",
			"catorce",
			"quince" 
	);
	
	$decs = array (
			10 => "diez",
			20 => "veinte",
			30 => "treinta",
			40 => "cuarenta",
			50 => "cincuenta",
			60 => "sesenta",
			70 => "setenta",
			80 => "ochenta",
			90 => "noventa"
			
	);
	
	
	/*
	 * la manera en que esto funcione es que los
	 * digitos estan separados por multiplos de diez
	 * e.j. 9876 es:
	 * 9000 + 800 + 70 + 6
	 * los funciones anteriores los separan y guardan
	 * cada digito en un array, pero en orden reversa.
	 *
	 * getdigits halla el numero de digitos
	 * mkdigitlist los guarda en un array
	 * y mknum2word convierte el numero a palabras
	 */
	
	switch (sizeof ( $digitlist )) {
		case 1 : // si hay un solo digito
			echo $numeros [$digitlist [0]];
			break;
		
		case 2 : // si hay 2 digitos
			if ($digitlist [0] == 0 && $digitlist [1] == 10) {
				// si el numero en el digito 10^10 es 10 el numero es 10
				echo $decs [$digitlist [1]];
			} else if ($digitlist [1] == 10) {
				switch ($digitlist [0]) {
					// si no, entonces si el digito 10^0 es mas que 1 y menos que 6
					case ($digitlist [0] >= 1 && $digitlist [0] <= 5) :
						echo $numeros [$digitlist [1] + $digitlist [0]];
						break;
					// O si el digito 10^0 es mas que 5
					/*
					 * esto funciona porque los unicos valores posibles
					 * en el digito 10^0 son de 0 a 9
					 */
					case ($digitlist [0] >= 6) :
						echo "dieci" . $numeros [$digitlist [0]];
						break;
				}
			}
			break;
		
		case 3 :
			break;
		
		case 4 :
			break;
	}
}

// getdigits(65653653654);
$num1 = 1228554;
$num2 = 2447532;
$num3 = 15324790;
$num4 = 200000;
$num5 = 63;
$num6 = 7;
$num7 = 5568786423;
$num8 = 36987542314;
$num9 = 600500200;
$num10 = 604307106;

$test = 10;

// $special = mkdigitlist($test);

mknum2word ( $test );
// echo $special[0];

// mknum2word($special);

// cien, ciento, cientos, mil, millon, millones, billon, billones

?>