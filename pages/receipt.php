<?php
include("../config.php");   
include("../layout/header.php"); 
?>
 
<style> 
</style>
 

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
                <a href="logsheet.php" class="btn btn-outline-primary" >New Entry</a> 
            </div>
        </div>
        <div id="view-print"  class="card"> 
            <div class="row" style="font-size:10px !important;"> 
                <div class="col-md-7"  style=" width:60%">
                <table class="table table-bordered table-sm" width="100%" >
                    <tr>
                        <td colspan="2" style="text-align:center; line-height:6px;">
                        
                            <h6>Govt. of Assam</h6>
                            <h6>Office of the Deputy Commissioner, Golaghat</h5>
                            <h6>Fuel Receipt</h6>
                            <b>Original</b>
                        
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
                        <b> <?php echo $fuelqty ?> Lt. <?php echo $fname ?></b>   
                        </td>
                    </tr>
                    
                    <tr> 
                        <td colspan="2"> 
                                <img class="pull-left" width="80px" src="qrcode.php?reg=<?php echo $regno ?>&id=<?php echo $v_id ?>">                            
                                <span style="float:right;">
                                <br><br><br>
                                <b>Officer Sign & Seal</b></span> 
                            </td>
                    </tr>
                </table>
                </div>
                <div class="col-md-5" style=" width:40%">
                    <table  class="table table-bordered table-sm">
                        <tr>
                            <th colspan="4">
                            Log Sheet
                            </th>
                        </tr>
                        <tr>
                            <th colspan="4">
                                Officer Details: <?php echo $officer ?>
                            </th> 
                        </tr>
                        <tr>
                            <th colspan="4">
                                Route Details
                            </th> 
                        </tr>
                        <tr>
                        <th>Sl.</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Distance</th>
                        </tr>
                        <?php $qry1 = "Select * from vehicle_trans where status=1 and v_assigned_id=".$id." order by id";
                        $rslt1=mysqli_query($mysqli,$qry1);?> 
                        <tbody>
                        <?php  
                        $sl =0;
                        $val=0;
                        while($r= mysqli_fetch_array($rslt1)) { 
                            $sl =$sl+1;
                            ?>
                        <tr>
                            <td>
                            <?php echo $sl ?>
                            </td>
                            <td>
                            <?php echo $r['loc_from']; ?>
                            </td>
                            <td>
                            <?php echo $r['loc_to']; ?>
                           </td>
                           <td>
                           <?php echo $r['distance'];
                                $val = $val+$r['distance'];
                                ?>
                           </td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
             </div>
             <span style="width:100%; border-top:1px dashed black;"></span>
                <br>
                <div   style="font-size:10px !important;">                 
                    <table  class="table table-bordered table-sm" width="100%" >
                        <tr>
                            <td colspan="2" style="text-align:center; line-height:6px; ">
                                <h6>Govt. of Assam</h6>
                                <h6>Office of the Deputy Commissioner, Golaghat</h5>
                                <h6>Fuel Receipt</h6>
                                <b>Duplicate</b>                        
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
                                <span style="float:right;">
                                <br><br><br>
                                <b>Officer Sign & Seal</b></span> 
                            </td>
                        </tr>
                    </table>                  
                </div>
                <span style="width:100%; border-top:1px dashed black;"></span><br>
            <div  style="font-size:10px !important;"> 
                <table  class="table table-bordered table-sm"  width="100%">
                    <tr>
                        <td colspan="2" style="text-align:center; line-height:6px;">
                        <h6>Govt. of Assam</h6>
                        <h6>Office of the Deputy Commissioner, Golaghat</h5>
                        <h6>Fuel Receipt</h6>
                        <b>Triplicate</b>
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
                            <b> <?php echo $fuelqty ?> Lt.  <?php echo $fname ?></b>
                            </td>
                        </tr> 
                        <tr> 
                            <td colspan="2"> 
                                <img class="pull-left" width="80px" src="qrcode.php?reg=<?php echo $regno ?>&id=<?php echo $v_id ?>">                            
                                <span style="float:right;">
                                <br><br><br>
                                <b>Officer Sign & Seal</b></span> 
                            </td>
                        </tr>
                </table>
            </div> 
        </div>
        </div>
    </div> 
</div>

 <?php } ?>
 <?php 
include("../layout/footerhead.php"); 
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