<?php
//echo time () . "<br>\n\n";
function getdigits($x) {
	$mod = 10;
	$digits = 1;
	while ( $x != fmod ( $x, $mod ) ) {
		$mod *= 10;
		$digits ++;
	}
	// echo "The number of digits is: $digits" . '<br>';
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
function unos($un) {
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
			"nueve" 
	);
	
	// echo $numeros[$un];
	if ($un == 0) {
		return;
	} else {
		return $numeros [$un];
	}
}
function decimos($decimo) {
	$numeros = array (
			"diez",
			"once",
			"doce",
			"trece",
			"catorce",
			"quince" 
	);
	
	$escala = array (
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
	$diez = $decimo - $digito_uno;
	
	if ($decimo < 10) {
		return unos ( $digito_uno );
	} else {
		if ($digito_uno == 0) {
			if($diez == 10){
				$letra = $escala [$decimo];
			} else {
				$letra = $escala [$decimo] . ' ';
			}
		} else if ($diez == 10 && $digito_uno <= 5) {
			$letra = $numeros [$digito_uno] . ' ';
		} else {
			switch ($diez) {
				case 10 :
					$letra = "dieci" . unos ( $digito_uno ) . ' ';
					break;
				case 20 :
					$letra = "veinti" . unos ( $digito_uno ) . ' ';
					break;
				default :
					$letra = $escala [$diez] . ' y ' . unos ( $digito_uno ). ' ';
					break;
			}
		}
	}
	
	return $letra;
}
function ciens($cientos) {
	$numeros = array (
			100 => "cien",
			500 => "quinientos",
			700 => "setecientos",
			900 => "novecientos" 
	);
	
	$digito_uno = $cientos % 10;
	$digito_diez = ($cientos % 100) - $digito_uno;
	$centenas = $cientos - ($cientos % 100);
	
	switch ($cientos) {
		case ($cientos < 100 && $cientos > 9) :
			return decimos ( $cientos );
			break;
		case ($cientos < 10) :
			return unos ( $cientos );
	}
	/*
	 * echo $digito_uno."\n";
	 * echo $digito_diez."\n";
	 * echo $centenas."\n";
	 */
	switch ($centenas) {
		case ($centenas == 100) :
			if ($digito_diez != 0 || $digito_uno != 0) {
				$letra = 'ciento ';
			} else {
				$letra = $numeros [$centenas];// . ' ';
			}
			break;
		case ($centenas == 500 || $centenas == 700 || $centenas == 900) :
			if ($digito_diez != 0 || $digito_uno != 0) {
				$letra = $numeros [$centenas] . ' ';
			} else {
				$letra = $numeros [$centenas] . '';
			}
			break;
		default :
			if ($digito_diez != 0 || $digito_uno != 0) {
				$letra = unos ( $centenas / 100 ) . "cientos ";
			} else {
				$letra = unos ( $centenas / 100 ) . "cientos";
			}
			break;
	}
	
	if ($digito_diez > 0) {
		$letra = $letra . decimos ( $digito_diez + $digito_uno );
	} else if ($digito_uno > 0) {
		$letra = $letra . unos ( $digito_uno );
	}
	
	return $letra;
}
function mknum2word($num) {
	// This function only works if number is given as a string
	if (is_int ( $num ) && $num > 2000000000) {
		return "please enter number as string";
	}
	
	$num = bcadd ( $num, 0 );
	
	$digitlist = mkdigitlist ( $num );
	
	/*
	 * if($num > 2000000000){
	 * return "numero muy grande, estamos en en proceso de actualizacion.";
	 * }
	 */
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
	
	$digitsleft = sizeof ( $digitlist );
	
	$digitspace = fmod ( $digitsleft, 3 );
	
	if ($digitspace == 0) {
		$digitspace = 3;
	}
	$cleaner = bcmod ( $num, bcpow ( 10, ($digitsleft - $digitspace) ) );
	
	$currentset = bcdiv ( bcsub ( $num, $cleaner ), bcpow ( 10, ($digitsleft - $digitspace) ) );
	$newnum = $cleaner;
	/*
	echo "\n digitspace: " . $digitspace . "\n";
	echo " digitsleft: " . $digitsleft . "\n";
	echo bcadd ( $num, '0' ) . "\n";
	echo $cleaner . "\n";
	echo bcsub ( $num, $cleaner ) . "\n";
	echo $currentset . "\n";
	echo $newnum . "\n";
	
	echo ciens ( $currentset ) . "\n\n";
	*/
	
	
	switch ($digitsleft) {
		case ($digitsleft <= 6 && $digitsleft >= 4) :
			if (($currentset % 1000) == 1) {
				return 'mil '. mknum2word ( $newnum );
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' mil ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'mil ';
			} else {
				$puesto = ' mil ';
			}
			break;
		case ($digitsleft <= 9 && $digitsleft >= 7) :
			if (($currentset % 1000) == 1) {
				$puesto = ' millon ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' millones ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'millones ';
			} else {
				$puesto = ' millones ';
			}
			break;
		case ($digitsleft <= 12 && $digitsleft >= 10) :
			if (($currentset % 1000) == 1) {
				return 'mil millones '. mknum2word ( $newnum );
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' mil millones ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'mil millones ';
			} else {
				$puesto = ' mil millones ';
			}
			break;
		case ($digitsleft <= 15 && $digitsleft >= 13) :
			if ($currentset == 1) {
				$puesto = ' trillon ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' trillones ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'trillones ';
			} else {
				$puesto = ' trillones ';
			}
			break;
		case ($digitsleft <= 18 && $digitsleft >= 16) :
			if ($currentset == 1) {
				$puesto = ' quadrillon ';
			}else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' quadrillones ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'quadrillones ';
			} else {
				$puesto = ' quadrillones ';
			}
			break;
		case ($digitsleft <= 21 && $digitsleft >= 19) :
			if ($currentset == 1) {
				$puesto = ' quintillon ';
			}else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' quintillones ';
			}  else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'quintillones ';
			} else {
				$puesto = ' quintillones ';
			}
			break;
		case ($digitsleft <= 24 && $digitsleft >= 22) :
			if ($currentset == 1) {
				$puesto = ' sextillon ';
			}else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' sextillones ';
			}  else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'sextillones ';
			} else {
				$puesto = 'sextillones ';
			}
			break;
		case ($digitsleft <= 27 && $digitsleft >= 25) :
			if ($currentset == 1) {
				$puesto = ' septillon ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 10){
				$puesto = ' septillones ';
			} else if (($currentset % 10) > 0 && ($currentset % 100) < 30 || ($currentset % 100 >= 20)) {
				$puesto = 'septillones ';
			} else {
				$puesto = 'septillones ';
			}
			break;
	}
	
	$letra = ciens ( $currentset ) . $puesto;
	//echo $letra. "\n";
	if ($digitsleft > 3) {
		$letra = $letra . mknum2word ( $newnum );
	}
	
	return $letra;
	
}
function to_pesos($num){
	$result = mknum2word($num);
	$exploded = str_split($result);
	$val1 = end($exploded);
	$val2 = prev($exploded);
	$val3 = prev($exploded);
	$val4 = prev($exploded);
/*	echo 'val1 : '.$val1."\n val2 : ".$val2."\n val3 : ".$val3."\n val4 : ".$val4."\n";
	echo "\n".$result;
	*/
	if($val1 != ' '){
		$result = $result.' ';
	}
		
	if (($val2 == 'n' && $val3 == 'o') || ($val2 == 's' && $val3 == 'e' && $val4 == 'n')){
		return $result.'de pesos mc';
	} else {
		return $result.'pesos mc';
	}
	
}
 
// test numbers
/*
$num0 = '65653653654';
$num1 = '1228554';
$num2 = 2447532;
$num3 = '15324790';
$num4 = 200000;
$num5 = 63;
$num6 = 7;
$num7 = '5568786423';
$num8 = '36987542314';
$num9 = '600500200';
$num10 = '604307106';

$test = 13000000;

echo to_pesos($num0)."\n";
echo to_pesos($num1)."\n";
echo to_pesos($num2)."\n";
echo to_pesos($num3)."\n";
echo to_pesos($num4)."\n";
echo to_pesos($num5)."\n";
echo to_pesos($num6)."\n";
echo to_pesos($num7)."\n";
echo to_pesos($num8)."\n";
echo to_pesos($num9)."\n";
echo to_pesos($num10)."\n";
echo to_pesos($test)."\n";
*/


?>