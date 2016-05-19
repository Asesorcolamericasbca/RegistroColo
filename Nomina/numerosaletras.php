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



function unos ($un){
	$numeros = array (
			"cero",
			"un",
			"dos",
			"tres",
			"cuatro",
			"cinco",
			"seis",
			"siete",
			"ocho",
			"nueve",
			
	);
	
	echo $numeros[$un];
}



function decimos ($decimo){
	$numeros = array(
			"diez",
			"once",
			"doce",
			"trece",
			"catorce",
			"quince"
			
	);
	
	$escala = array(
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
	
	$digito_uno = $decimo % 10;
	
	if($digito_uno <= 5){
		echo $escala[$decimo];
	} else {
		switch ($decimo){
			case 10:
				echo "dieci".unos($digito_uno);
				break;
			case 20:
				echo "veinti".unos($digito_uno);
				break;
			case ($decimo >= 30 && $decimo <= 90):
				echo escala[$decimo].' y '.unos($digito_uno);
				break;			
		}
	}
}


function ciens ($cientos){
	$numeros = array (
			100 => "cien",
			500 => "quinientos",
			700 => "setecientos",
			900 => "novecientos"			
			
	);
	
}









function mknum2word($num) {
	$digitlist = mkdigitlist ( $num );
	
	// Datos para dar palabras a los numeros
	
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
	
	$nivel = array (
			4 => "mil",
			7 => "millon",
			10 => "billon",
			13 => "trillon",
			16 => "quadrillon" 
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
	
	/*
	 * use modulus to determine where in digit space you
	 * are. Only say "billion" or similar when x % 3 == 1
	 */
	for($digitsleft = sizeof ( $digitlist ); $digitsleft != 0; $digitsleft --) {
		switch ($digitsleft) {
			
			case ($digitsleft == 1) :
				echo "uno";
				break;
			case ($digitsleft == 2) :
				echo "diez";
				break;
			case ($digitsleft == 3) :
				echo "cien";
				break;
			case ($digitsleft <= 6 && $digitsleft >= 4) :
				// mil
				if ($digitsleft % 3 == 1) {
					echo $nivel [$digitsleft];
				}
				break;
			case ($digitsleft <= 9 && $digitsleft >= 7) :
				// millon
				if ($digitsleft % 3 == 1) {
					echo $nivel [$digitsleft];
				}
				break;
			case ($digitsleft <= 12 && $digitsleft >= 10) :
				// billon
				if ($digitsleft % 3 == 1) {
					echo $nivel [$digitsleft];
				}
				break;
			case ($digitsleft <= 15 && $digitsleft >= 13) :
				// trillon
				if ($digitsleft % 3 == 1) {
					echo $nivel [$digitsleft];
				}
				break;
			case ($digitsleft <= 18 && $digitsleft >= 16) :
				// quadrillon
				if ($digitsleft % 3 == 1) {
					echo $nivel [$digitsleft];
				}
				break;
		}
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

$test = 13000000;

// $special = mkdigitlist($test);

mknum2word ( $test );
// echo $special[0];

// mknum2word($special);

// cien, ciento, cientos, mil, millon, millones, billon, billones

?>