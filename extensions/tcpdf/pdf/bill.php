<?php

require_once "../../../controllers/sales.controller.php";
require_once "../../../models/sales.model.php";

require_once "../../../controllers/customers.controller.php";
require_once "../../../models/customers.model.php";

require_once "../../../controllers/users.controller.php";
require_once "../../../models/users.model.php";

require_once "../../../controllers/products.controller.php";
require_once "../../../models/products.model.php";

class printBill{

public $code;

public function getBillPrinting(){

//WE BRING THE INFORMATION OF THE SALE

$itemSale = "code";
$valueSale = $this->code;

$answerSale = ControllerSales::ctrShowSales($itemSale, $valueSale);

$saledate = substr($answerSale["saledate"],0,-8);
$products = json_decode($answerSale["products"], true);
$netPrice = number_format($answerSale["netPrice"],2);
$tax = number_format($answerSale["tax"],2);
$totalPrice = number_format($answerSale["totalPrice"],2);
//$total = number_format($answerSale["total"],2);

//WE BRING THE INFORMATION FROM Customer

$itemCustomer = "id";
$valueCustomer = $answerSale["idCustomer"];
// $phoneCustomer = $answerSale["phone"];

$answerCustomer = ControllerCustomers::ctrShowCustomers($itemCustomer, $valueCustomer);

//WE BRING THE INFORMATION FROM Seller

$itemSeller = "id";
$valueSeller = $answerSale["idSeller"];

$answerSeller = ControllerUsers::ctrShowUsers($itemSeller, $valueSeller);

//WE REQUIRE THE CLASS TCPDF

require_once('tcpdf_include.php');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->startPageGroup();

$pdf->AddPage();

// ---------------------------------------------------------

$block1 = <<<EOF

	<table>
		
		<tr>
			
			<td style="width:140px; font-size:16px"><img src="images/logo-vts-login.png" alt="Super-shop"></td>

			<td style="background-color:white; width:130px">
				
				<div style="font-size:8px; text-align:left; line-height:15px;">
					
					<br>
			 VAT Reg No: 1254152

					<br>
					Address: CDA Avenue, Chattogram

				</div>

			</td>

			<td style="background-color:white; width:130px">

				<div style="font-size:8px; text-align:right; line-height:15px;">
					
					<br>
					Phone: +880-0000000000
					
					<br>
					Email: sales@pos-vts.com

				</div>
				
			</td>

			<td style="background-color:white; width:130px; text-align:center; color:red"><br><br>Invoice No.<br>$valueSale</td>

		</tr>

	</table>

EOF;

$pdf->writeHTML($block1, false, false, false, false, '');

// ---------------------------------------------------------

$block2 = <<<EOF

	<table>
		
		<tr>
			
			<td style="width:540px"><img src="images/back.jpg"></td>
		
		</tr>

	</table>

	<table style="font-size:10px; padding:5px 10px;">
	
		<tr>
		
			<td style="border: 1px solid #666; background-color:white; width:170px">

				Customer: $answerCustomer[name]

			</td>

			<td style="border: 1px solid #666; background-color:white; width:140px">
			
				Phone: $answerCustomer[phone]

			</td>

			<td style="border: 1px solid #666; background-color:white; width:230px">
			
				Address: $answerCustomer[address]

			</td>

		</tr>

		<tr>
		
			<td style="border: 1px solid #666; background-color:white; width:390px">

				Sold by: $answerSeller[name]

			</td>

			<td style="border: 1px solid #666; background-color:white; width:150px; text-align:right">
			
				Sale Date: $saledate

			</td>

		</tr>

		<tr>
		
		<td style="border-bottom: 1px solid #666; background-color:white; width:540px"></td>

		</tr>

	</table>

EOF;

$pdf->writeHTML($block2, false, false, false, false, '');

// ---------------------------------------------------------

$block3 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>
		
		<td style="border: 1px solid #666; background-color:white; width:260px; text-align:center">Product</td>
		<td style="border: 1px solid #666; background-color:white; width:80px; text-align:center">Quantity</td>
		<td style="border: 1px solid #666; background-color:white; width:100px; text-align:center">Unit Price</td>
		<td style="border: 1px solid #666; background-color:white; width:100px; text-align:center">Total</td>

		</tr>

	</table>

EOF;

$pdf->writeHTML($block3, false, false, false, false, '');

// ---------------------------------------------------------

foreach ($products as $key => $item) {

$itemProduct = "description";
$valueProduct = $item["description"];
$orden = null;

$answerProduct = ControllerProducts::ctrShowProducts($itemProduct, $valueProduct, $orden);

$valueUnit = number_format($answerProduct["sellingPrice"], 2);

$netTotalPrice = number_format($item["totalPrice"], 2);

$block4 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>
			
			<td style="border: 1px solid #666; color:#333; background-color:white; width:260px; text-align:left">
				$item[description]
			</td>

			<td style="border: 1px solid #666; color:#333; background-color:white; width:80px; text-align:center">
				$item[quantity]
			</td>

			<td style="border: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center">
				$valueUnit
			</td>

			<td style="border: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center">
				$netTotalPrice
			</td>


		</tr>

	</table>


EOF;

$pdf->writeHTML($block4, false, false, false, false, '');

}

// ---------------------------------------------------------

$block5 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>

			<td style="color:#333; background-color:white; width:340px; text-align:center"></td>

			<td style="border-bottom: 1px solid #666; background-color:white; width:100px; text-align:center"></td>

			<td style="border-bottom: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center"></td>

		</tr>
		
		<tr>
		
			<td style="border-right: 1px solid #666; color:#333; background-color:white; width:340px; text-align:center"></td>

			<td style="border: 1px solid #666;  background-color:white; width:100px; text-align:center">
				Sub Total:
			</td>

			<td style="border: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center">
				 $netPrice
			</td>

		</tr>

		<tr>

			<td style="border-right: 1px solid #666; color:#333; background-color:white; width:340px; text-align:center"></td>

			<td style="border: 1px solid #666; background-color:white; width:100px; text-align:center">
				VAT(5%):
			</td>
		
			<td style="border: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center">
				 $tax
			</td>

		</tr>

		<tr>
			<td style="border-right: 1px solid #666; color:#333; background-color:white; width:340px; text-align:center"></td>

			<td style="border: 1px solid #666; background-color:white; width:100px; text-align:center">
				Total Payable:
			</td>
			
			<td style="border: 1px solid #666; color:#333; background-color:white; width:100px; text-align:center">
				 $totalPrice
			</td> 

		</tr>

		<tr style="text-align:bottomleft">
	
		<td style="width:100%">
			<br>
			<br>
			*Thank you for your purchase!
		</td>

		</tr>


	</table>

EOF;

$pdf->writeHTML($block5, false, false, false, false, '');



// ---------------------------------------------------------
//FILE OUTPUT 

$pdf->Output('bill.pdf', 'D');

}

}

$bill = new printBill();
$bill -> code = $_GET["code"];
$bill -> getBillPrinting();

?>