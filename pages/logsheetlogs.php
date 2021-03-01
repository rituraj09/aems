<?php
include("../config.php");   
include("../layout/baseheader.php"); 
?>  
<?php 
 
if(isset($_REQUEST['id']))
{         
$id=$_REQUEST['id']; 
$qry = "SELECT a.*,a.id as vid, c.name as fname   from vehicle_assign a inner join vehicles b on a.reg_no=b.reg_no  inner join fuels c on b.fuel_type=c.id  where a.status=1 and a.id=".$id;
$rslt=mysqli_query($mysqli,$qry); 
while($rsult= mysqli_fetch_array($rslt)) {  
    $date = date('d-m-Y', strtotime($rsult['used_on']));
    $v_id=$rsult['vid'];
    $regno=$rsult['reg_no'];
    $officer=$rsult['person_name']; 
    $fuelqty=$rsult['fuel_request']; 
    $fname=$rsult['fname']; 
}  
?>
 <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
        <div class="card"> 
            <div class="card-body text-center">  
                <input type="button" class="btn btn-md btn-danger" onclick="printDiv('view-print')" value="Print" />  
            </div>
        </div>
        <div id="view-print"  class="card">  
            
                <div   style="font-size:10px !important;">                 
                    <table  class="table table-bordered table-sm" width="100%" >
                        <tr>
                            <td colspan="2" style="text-align:center; line-height:6px; ">
                                <h6>Govt. of Assam</h6>
                                <h6>Office of the Deputy Commissioner, Golaghat</h5>
                                <h6>Fuel Receipt</h6>                    
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            <b>No. ELE/GLT/2021/FUEL/<?php echo str_pad($v_id, 5, '0', STR_PAD_LEFT);  ?></b>
                            </td> 
                        </tr>
                        <tr> 
                            <td>
                            <b>Dated :</b> 
                            </td>
                            <td>
                            <?php echo $date ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <b>Vehicle Reg. No. :</b>
                            </td>
                            <td>
                            <?php echo $regno ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <b> Fuel Quantity :</b>
                            </td>
                            <td>
                            <b> <?php echo $fuelqty ?> Lt.   <?php echo $fname ?></b>
                            </td>
                        </tr> 
                        <tr> 
                        <td colspan="2"> 
                                <img class="pull-left" width="80px" src="qrcode.php?reg=<?php echo $regno ?>&id=<?php echo $v_id ?>">                            
                                
                                
                            </td>
                        </tr>
                    </table>                  
                </div>
                
       
        </div>
    </div> 
</div>

 <?php } ?>
 <?php 
include("../layout/basefooter.php"); 
 ?>
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