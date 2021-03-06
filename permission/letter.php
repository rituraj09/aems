<?php
include("../config.php");   
include("../layout/baseheader.php");  
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
        $id=   Encryption::decode($_REQUEST['id']);   
        $user = "";
        $qry="select a.*,p.name as party, u.name as user from permission a inner join political p on a.political_party=p.id inner join users u on a.cby =u.id where a.status=1 and a.id=".$id;
        $s= mysqli_query($mysqli, $qry); 
        while( $row = mysqli_fetch_array($s) ) {
            $candname=$row["candname"];
            $lac=$row["lac"];
            $politicalparty=$row["party"]; 
            $add=$row["address"];
            $mob=$row["mobile"];
            $fdate = date('d-m-Y', strtotime($row["from_date"])); 
            $tdate = date('d-m-Y', strtotime($row["to_date"])); 
            $con = date('d-m-Y', strtotime($row["con"])); 
            $user = $row["user"]; 
            $q = "select a.*,v.name as vname from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id where a.status =1   and a.per_id=".$row["id"];
            $rslt=mysqli_query($mysqli,$q);   
        }
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
             
            <div id="view-print"  class="card"> 
                <div class="card-body">
                    <div class="row"> 
                        <div class="col-md-12">
                        <table class="table table-responsive-sm table-sm">
                            <tr>
                                <th width="25%">
                                Letter No.
                                </th>
                                <td  width="25%">
                                ELE/2021/PER/<?php echo str_pad($id, 5, '0', STR_PAD_LEFT);  ?> 
                                </td>
                           
                                <th  width="25%">
                                Issued On.
                                </th>
                                <td>
                                <?php echo $con ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Name of the Candidate/ Election Agent/ Leader of Political Party 
                                </th>
                                <td>
                                <?php echo $candname ?>
                                </td>
                            
                                <th>
                                Political Party Name
                                </th>
                                <td>
                                <?php echo $politicalparty ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                               Candidate Address
                                </th>
                                <td>
                                <?php echo $add ?>
                                </td>
                            
                                <th>
                                Candidate Mobile
                                </th>
                                <td>
                                <?php echo $mob ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                               LAC
                                </th>
                                <td>
                                <?php 
                                if( $lac=95){
                                    echo "95-Golaghat";
                                }
                                else {
                                    echo "96-Khumtai";
                                } 
                                ?>
                                <td></td>
                                <td></td>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Date From
                                </th>
                                <td>
                                <?php echo $fdate ?>
                                </td>
                            
                                <th>
                                Date To
                                </th>
                                <td>
                                <?php echo $tdate ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Prepared By
                                </th>
                                <td>
                                <?php echo $user ?>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                      
                        </div>
                    </div>
                    
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
 
 