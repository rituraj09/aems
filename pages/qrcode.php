<?php
if(isset($_REQUEST['id']))
{      
header('Content-type: image/png');
include( '../phpqrcode/qrlib.php' );
$id= $_REQUEST['id'];
$reg= $_REQUEST['reg'];
$text = "www.eleglt.online/pages/qrcode.php?reg=".$reg."&id=".$id;  
QRcode::png($text); 
}

?>