<?php

include('dbcreds.php');



class sql{
	
	private $sqr, $obj, $bindings;
	
	function __construct($obj, $sql){
		$this->obj = $obj;
		$this->sql = $sql;
		$this->prep = $obj->prepare($sql);
	}
	
	function bindval_exec($x){
		foreach($x as $key => $value){
			echo "binding $value to $key ";
			if(is_int($value)){
				echo 'as int<br>';
				$this->prep->bindParam("$key", $value, PDO::PARAM_INT); //missing original table object
			}
			else{
				echo 'as str<br>';
				$this->prep->bindParam("$key", $value, PDO::PARAM_STR);
			}
		}
	}	
	/*
	function bindval_as_array(){
		if(is_array())
	}*/
}



class table{
	
	private $result;
	function __construct($x){
		$this->result = $x; 
	}
	
	function new_result($x){
		$this->result = $x;
	}
	
	function get_table(){
		return $this->result;
	}
	
	function pcolumns(){
		
		echo '<table> <tr style="font-weight:bold">';
		foreach(func_get_args() as $col){
			echo '<td>'.$col.'</td>';
			}
			echo '</tr>';
		
		foreach($this->result as $val){
			echo '<tr>';
			foreach(func_get_args() as $col){
				echo '<td>'.$val[$col].'</td>';
			}
			echo '</tr>';
		}
		echo '</tr> </table>';
	}
	
}


$sta=" staccount AS sta ";
$stu=" student AS stu ";
$enr=" enrollment AS enr ";
$tra=" `transaction` AS tra ";

function tjoin($table1, $table2, $key){
	return ' JOIN '.$table1.' ON '.$table1.'.'.$key.' = '.$table2.'.'.$key.' ';
}





/*




$joinenrtosta=" JOIN ".$enr." ON enr.eid = sta.eid ";

$joinstutoenr=" JOIN ".$stu." ON stu.id = enr.id ";

$joinstatoenr=" JOIN ".$sta." ON sta.eid = enr.eid ";

$joinenrtostu=" JOIN ".$enr." ON enr.id = stu.id ";

$jointratosta=" JOIN ".$tra." ON tra.aid = sta.aid ";

$joinstatotra=" JOIN ".$sta." ON sta.aid = tra.aid ";




/*


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

*/

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




/* */


//$sqltest="SELECT * FROM ".$stu;
/*
$sqltest1="SELECT * ".
	"FROM ".$sta.
	$joinenrtosta.
	$joinstutoenr;
		
/* */		
/*
$sqlgetaid="SELECT aid FROM".$sta;

$sqlgeteid="";

$sqlgetid="";

$sqlgetname="";
*/

?>
