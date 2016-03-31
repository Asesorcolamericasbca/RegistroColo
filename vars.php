<?php

include('dbcreds.php');

$sta=" staccount AS sta ";

$stu=" student AS stu ";

$enr=" enrollment AS enr ";

$tra=" `transaction` AS tra ";

$joinenrtosta=" JOIN ".$enr." ON enr.eid = sta.eid ";

$joinstutoenr=" JOIN ".$stu." ON stu.id = enr.id ";

$joinstatoenr=" JOIN ".$sta." ON sta.eid = enr.eid ";

$joinenrtostu=" JOIN ".$enr." ON enr.id = stu.id ";

$jointratosta=" JOIN ".$tra." ON tra.aid = sta.aid ";

$joinstatotra=" JOIN ".$sta." ON sta.aid = tra.aid ";







toaidfromid

toaidfromeid

toaidfromtid

toaidfromnumtal

totidfromid

totidfromeid

totidfromaid

totidfromnumtal

toaidfromid

toaidfromeid

toaidfromtid

toaidfromnumtal



// :op = {<,>,=,<=,>=,LIKE}

/*
matchid=" WHERE id :op :id ";

matcheid=" WHERE eid :op :eid ";

matchaid=" WHERE aid :op :aid ";

matchnumtal=" WHERE num_talonario :op :numtal ";

matchname=" WHERE regdate :op :name ";

matchlname=" WHERE regdate :op :lname ";

matchbalance=" WHERE regdate :op :balance ";

matchpaydate=" WHERE regdate :op :paydate ";

matchregdate=" WHERE regdate :op :regdate ";
*/



/* commonsqls

get name, lname, id, eid, num_talonario, balance, amount, aid, 

namefromid

namefromeid

namefromaid

fnamefromid

fnamefromeid

fnamefromaid

lnamefromid

lnamefromeid

lnamefromaid

transactionfromid

transactionfromaid

transactionfromeid

staccountfromid

staccountfromeid

staccountfromaid

yearfromid

yearfromeid

yearfromaid

gradefromid

gradefromeid

gradefromaid

balancefromid

balancefromeid

balancefromaid

talonariofromid

talonariofromeid

talonariofromaid




*/


//$sqltest="SELECT * FROM ".$stu;
/*
$sqltest1="SELECT * ".
	"FROM ".$sta.
	$joinenrtosta.
	$joinstutoenr;
	*/		
			
/*
$sqlgetaid="SELECT aid FROM".$sta;

$sqlgeteid="";

$sqlgetid="";

$sqlgetname="";
*/

?>