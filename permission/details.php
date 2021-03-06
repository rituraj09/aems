<?php
include("../config.php");   
include("../layout/baseheader.php");  
class Encryption{

    public static function safe_b64encode($string='') {
        $data = base64_encode($string);
        $data = str_replace(['+','/','='],['-','_',''],$data);
        return $data;
    }

    public static function safe_b64decode($string='') {
        $data = str_replace(['-','_'],['+','/'],$string);
        $mod4 = strlen($data) % 4;
        if ($mod4) {
            $data .= substr('====', $mod4);
        }
        return base64_decode($data);
    }

    public static function encode($value=false){ 
        if(!$value) return false;
        $iv_size = openssl_cipher_iv_length('aes-256-cbc');
        $iv = openssl_random_pseudo_bytes($iv_size);
        $crypttext = openssl_encrypt($value, 'aes-256-cbc', 'your security cipherSeed', OPENSSL_RAW_DATA, $iv);
        return self::safe_b64encode($iv.$crypttext); 
    }

    public static function decode($value=false){
        if(!$value) return false;
        $crypttext = self::safe_b64decode($value);
        $iv_size = openssl_cipher_iv_length('aes-256-cbc');
        $iv = substr($crypttext, 0, $iv_size);
        $crypttext = substr($crypttext, $iv_size);
        if(!$crypttext) return false;
        $decrypttext = openssl_decrypt($crypttext, 'aes-256-cbc', 'your security cipherSeed', OPENSSL_RAW_DATA, $iv);
        return rtrim($decrypttext);
    }
}
?>  
<style>
.table th, .table td 
{
    padding:6px !important;
}
</style>
<?php
if(isset($_REQUEST['id']) )
{
    $id=   Encryption::decode($_REQUEST['id']);   
    $q = "select a.*,v.name as vname from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id where a.status =1   and a.id=".$id;
    $rslt=mysqli_query($mysqli,$q);    
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            
            <div id="view-print"  class="card"> 
                <div class="card-body"> 
                    <div class="row"> 
                        <div class="col-md-12">
                        <h5>      Details of the Vehicles</h5>
                            <table id="report" class="table table-bordered table-responsive-sm table-sm">
                         
                                <thead>
                                    <tr>
                                        <th width="60px">
                                        Sl No.
                                        </th>
                                        <th>
                                           Type of Vehicle
                                        </th>
                                        <th>
                                            Registration No 
                                        </th>
                                        <th>
                                         Name of Vehicle Owner
                                        </th>
                                        <th width="70px">
                                        Mobile No. of Vehicle Owner
                                        </th>
                                        <th width="130px">
                                        Name of Driver
                                        </th>
                                        <th width="130px">
                                        Mobile No. of Driver
                                        </th>
                                        <th >
                                           Driving Licence No.
                                        </th> 
                                    </tr>
                                </thead>
                                <?php  $sl = 0;
                                 while($rsult= mysqli_fetch_array($rslt)) {  $sl = $sl+1;?>
                                    <tr>
                                        <td>
                                        <?php echo $sl ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['vname'] ?>
                                        </td>
                                        <td>
                                        <?php echo strtoupper($rsult['reg_no']) ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['owner_name'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['owner_phone'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['driver_name'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['driver_phone'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['license'] ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                               
                            </table>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div> 
</div>
 
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

 <?php
include("../layout/basefooter.php"); 
?>
<script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}   
</script>
 
 