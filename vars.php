<?php

include('dbcreds.php');



class sql{
	
	private $sqr, $obj, $result;
	
	function __construct($obj, $sql){
		$this->obj = $obj;
		$this->sql = $sql;
		$this->prep = $obj->prepare($sql);
		$this->exed = null;
		$this->result = null;
	}
		
	
	function ex($x = null){
		if($x != null){
			$arraykey = array();
			$arrayval = array();
			$counter = 0;
			
			foreach($x as $k => $v){
				array_push($arraykey, $k);
				array_push($arrayval, $v);
			}
			
			###### working function
			/*
			while($counter < sizeof($arraykey)){
				//echo $counter.' '.sizeof($arraykey).' '.$arraykey[$counter].' '.$arrayval[$counter]." <br>";
				$this->prep->bindParam($arraykey[$counter], $arrayval[$counter], PDO::PARAM_STR);
				$counter += 1;
			}
			/**/
			########
			
			while($counter < sizeof($arraykey)){
				//echo $counter.' '.sizeof($arraykey).' '.$arraykey[$counter].' '.$arrayval[$counter]." <br>";
				if(is_int($arrayval[$counter])){
					//echo 'as int<br>';
					$this->prep->bindParam($arraykey[$counter], $arrayval[$counter], PDO::PARAM_INT);
				}
				else{
					//echo 'as str<br>';
					$this->prep->bindParam($arraykey[$counter], $arrayval[$counter], PDO::PARAM_STR);
				}
				$counter += 1;
			}

		}
		$this->exed = $this->prep;
		$this->exed->execute();
	}
	
	#### Trying to make it print the tables from within a single object
	/*
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
	
	
	function pscolumns($list){
		echo '<table> <tr style="font-weight:bold">';
		foreach($list as $col){
			echo '<td>'.$col.'</td>';
		}
		echo '</tr>';
	
		foreach($this->result as $val){
			echo '<tr>';
			foreach($list as $col){
				echo '<td>'.$val[$col].'</td>';
			}
			echo '</tr>';
		}
		echo '</tr> </table>';
	}
	/**/
	
}



class table{
	
	private $result;
	function __construct($x = null){
		$this->result = $x; 
	}
	
	function new_table($x){
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
	
	
	function pscolumns($list){
		echo '<table> <tr style="font-weight:bold">';
		foreach($list as $col){
			echo '<td>'.$col.'</td>';
			}
			echo '</tr>';
		
		foreach($this->result as $val){
			echo '<tr>';
			foreach($list as $col){
				echo '<td>'.$val[$col].'</td>';
			}
			echo '</tr>';
		}
		echo '</tr> </table>';
	}
	
}




$sta="staccount";
$stu="student";
$enr="enrollment";
$tra="`transaction`";


function tjoin($table1, $table2, $key){
	return ' JOIN '.$table1.' ON '.$table1.'.'.$key.' = '.$table2.'.'.$key.' ';
}


function columnlist(){
	$data = array();
	foreach(func_get_args() as $val){
		array_push($data, $val);	
	}
	
	$counter = 0;
	while($counter < sizeof($data)){
		if(!isset($var))
			$var = $data[$counter];
		else 
			$var = $var.', '.$data[$counter];
		$counter+=1;
	}
	return $var;
}
/**/








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
