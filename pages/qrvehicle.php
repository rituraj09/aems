<?php
if(isset($_REQUEST['id']))
{      
header('Content-type: image/png');
include( '../phpqrcode/qrlib.php' );
$id= $_REQUEST['id']; 
$text = "www.eoffice.techzizz.com/vehicledetails.php?id=".$id;  
QRcode::png($text); 
}

?>