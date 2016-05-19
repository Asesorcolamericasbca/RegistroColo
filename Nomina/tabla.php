<?php
header("Content-Type: text/html; charset=WINDOWS-1252");
?>


<style>

	@page {
	
		size: 8.5" 13";
		margin: 1.91cm 0.64cm 1.91cm 0.64cm
	
	}
	
	div.page {
		page-break-after: always;
	}	
	

	.demo {/*
		width:25%;
		height:25%;*/
		border:1px solid #C0C0C0;
		border-collapse:collapse;
		border-spacing:2px;
		padding:5px;
	}
	.demo caption {
		caption-side:top;
		text-align:center;
	}
	.demo th {
		border:1px solid #C0C0C0;
		padding:5px;
		background:#F0F0F0;
	}
		
	.demo td {
		border:1px solid black;
		text-align:left;
		padding:0px;
		background:#FFFFFF;
		font-family: Arial;
		font-size: 10;	
	}
	
	
	/* .demo td {
		/* border:1px solid #C0C0C0; */
		/*border:1px solid black;
		text-align:left;
		padding:5px;
		background:#FFFFFF;
		font-family: Arial;
		font-size: 10;
	}*/
</style>

<!--  <table class="demo">  -->
<table class="demo" style="border: 2px solid black; table-layout: fixed; margin: auto; width: 75%;">
	<tbody>
	<tr>
		<td style="width: 11%; border-right: 0px;">&nbsp;</td>
		<td style="width: 11%; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 5%; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 19%; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 11%; border-bottom: 0px; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 10%; border-bottom: 0px; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 8%; border-bottom: 0px; border-left: 0px; border-right: 0px;"></td>
		<td style="width: 26%; border-bottom: 0px; border-left: 0px;"></td>
	</tr>
	<tr>
		<td style="text-align: center;" colspan="4">Fundación Educativa Alice de Pérez</td>
		<td colspan="4" rowspan="2" 
		
		style="border-radius: 50px 50px 50px 50px; 
		border-top: none; 
		border-bottom: none; 
		background-color: #cccccc;
		padding: 4px;
        color: black;
		-webkit-print-color-adjust:exact;
		font-weight: bold;
		font-size: 14;
		text-align: center;">Comprobante de Egreso</td>
	</tr>
	<tr>
		<td
		style="font-family: Monotype Corsiva; 
		font-weight: bold; 
		font-size: 20; 
		text-align: center;"
		
		rowspan="3" colspan="4">Colegio de las Américas</td>
	</tr>
	<tr>
		<td rowspan="3" colspan="4" valign="bottom"
		style="font-weight: bold; 
		text-align: center; 
		padding-bottom: 4px;">Pepsi</td>
	</tr>
	<tr>
	</tr>
	<tr>
		<td style="border-right: none; font-weight: bold; text-align:left" colspan="2">Barrancabermeja</td>
		<td style="border-left: none; font-weight: bold; text-align:right" colspan="2">NIT. 900312893-4</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td style="text-align: center;">D</td>
		<td style="text-align: center;">M</td>
		<td style="text-align: center;">A</td>
		<td style="text-align: center;">Valor</td>
	</tr>
	<tr>
		<td style="font-weight: bold;">Ciudad</td>
		<td style="text-align: center;" colspan="2">B/Bja</td>
		<td style="background-color: #cccccc; 
		color: black;
		-webkit-print-color-adjust:exact;
		text-align: center; 
		font-weight: bold;">Fecha</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td style="font-weight: bold;">Pagado a</td>
		<td colspan="7"></td>
	</tr>
	<tr>
		<td style="font-weight: bold;" colspan="2">Por concepto de</td>
		<td colspan="5"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
		<td colspan="5"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
		<td colspan="5"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
		<td colspan="5"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
		<td colspan="5"></td>
		<td></td>
	</tr>
	<tr>
		<td  colspan="8">La suma de: (en letras)</td>
	</tr>
	<tr>
		<td  colspan="8">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="6"></td>
		<td>Banco</td>
		<td></td>
	</tr>
	<tr>
		<td style="background-color: #cccccc; 
		color: black;
		-webkit-print-color-adjust:exact;"></td>
		
		<td style="background-color: #cccccc; 
		color: black;
		-webkit-print-color-adjust:exact;
		text-align: center; 
		font-weight: bold;" 
		
		colspan="2">Cuenta</td>
		
		<td style="background-color: #cccccc; 
		text-align: center; 
		font-weight: bold;
		color: black;
		-webkit-print-color-adjust:exact;" >Débitos</td>
		
		<td style="background-color: #cccccc; 
		text-align: center; 
		font-weight: bold;
		color: black;
		-webkit-print-color-adjust:exact;" 
		
		colspan="2">Créditos</td>
		
		
		<td colspan="2">Efectivo</td>
	</tr>
	<tr>
		<td></td>
		<td colspan="2">&nbsp;</td>
		<td></td>
		<td colspan="2"></td>
		<td style="padding: 2px; font-weight: bold;" rowspan="6" colspan="2" valign="top">Firma y sello del benficiario</td>
	</tr>
	<tr>
		<td></td>
		<td style="text-align: center;" colspan="2">BANCO</td>
		<td></td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<td></td>
		<td style="text-align: center;" colspan="2">DESC AUT</td>
		<td></td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<td></td>
		<td style="text-align: center;" colspan="2">&nbsp;</td>
		<td></td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<td></td>
		<td colspan="2">&nbsp;</td>
		<td></td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<td></td>
		<td colspan="2">&nbsp;</td>
		<td></td>
		<td colspan="2"></td>
	</tr>
	<tr style="font-weight: bold; text-align: center;">
		<td style="text-align: center;" rowspan="4" colspan="2">Ir</td>
		<td style="text-align: center;" rowspan="4" colspan="2">am</td>
		<td style="text-align: center;" rowspan="4" colspan="2">Centrocontab</td>
		<td>&nbsp;</td>
		<td style="border-right: 2px solid black;"></td>
	</tr>
	<tr>
		<td style="font-size: 10;" colspan="2">Fecha de Recibido</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
	</tr>
	<tbody>
</table>

<?php 

?>