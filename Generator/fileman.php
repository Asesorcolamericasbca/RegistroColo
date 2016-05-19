<?php 
$cowpath = './howbrowncow.php';
$cowfile = fopen($cowpath, 'c+t', './');
$cowbig = filesize($cowpath); // *pun*
$cowthing = fread($cowfile, 28);
//echo $cowthing;
$cowseek= fseek($cowfile, 27);
$cowchar = fgetc($cowfile);
$cowchar2 = fgetc($cowfile);

echo $cowchar.$cowchar2.'<br>';



fseek($cowfile, 0);

while($cowchar)
{
	$cowchar = fgetc($cowfile);
	echo $cowchar;
}
//$cowptr = popen($cowpath, c+t);

//echo $cowthing.'<br>';
//echo $cowbig;
/*
$cowfile_in_array = file('./howbrowncow.php');
foreach($cowfile_in_array as $key => $char)
{
	//echo $key.' => '.$char.'<br>';
	echo $char.'<br>';
}
/**/
//pclose($cowptr);
fclose($cowfile);


?>
