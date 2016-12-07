<?php

create matricula and other costs table which must be paid by the student in order for their enrollment to be valid
Set new matricula, other costs, and pension values with which the accounts will be initialized and paid to

if $grade == 11 set enr_status == 3 // 3 == graduado :: make sure it really is that in the DB
else if $enr_status == 1 
{
	create new enrollment id with grade incremented by 1 from the previous enrollment and create a corresponding staccount for the new year
	append the student id to the new enr and set the new enr to the new student account id
	initalize staccount balance with new matricula and pension values
}
	
?>