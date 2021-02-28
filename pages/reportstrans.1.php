
<?php
include("../config.php");   
include("../layout/header.php");  
if(isset($_REQUEST['reg']) )
{ 
    $reg=$_REQUEST['reg']; 
} 


$qry = "Select a.id as id, a.reg_no,  a.fuel_request  as fuel_tot, a.used_on, c.name as fname from vehicle_assign a inner join vehicles b on a.reg_no=b.reg_no inner join fuels c on b.fuel_type = c.id where a.status=1  and a.reg_no='".$reg."'";
 
$rslt=mysqli_query($mysqli,$qry); 

?>  


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card"> 
                <div class="card-body">   
                        <div class="col-md-3"> 
                             
                                <a href="reportsdaily.php" class="btn btn-warning">Back</a>
                            </div> 
                </div>
            </div>
            <div id="view-print"  class="card"> 
                <div class="row"> 
                    <div class="col-md-12">
                        <table   class="table table-bordered  datatable dataTable">
                            <tr>
                                <th width="60px">
                                Sl No.
                                </th>
                                <th>
                                   Trans ID
                                </th>
                                <th>
                                    Date
                                </th>
                                <th>
                                    Vehicle No.
                                </th>
                                <th>
                                    Fuel Type
                                </th>
                                <th>
                                    Fuel Qty (in Lt).
                                </th>
                                <th>
                                    Action
                                </th>
                            </tr>
                            <?php
                            $sl = 0;
                            $tot= 0;
                            while($rsult= mysqli_fetch_array($rslt)) { 
                                $sl = $sl+1;
                                ?>
                            <tr>
                                <td>
                                <?php echo $sl; ?>
                                </td>
                                <td>
                                <?php echo str_pad($rsult['id'], 4, "0", STR_PAD_LEFT); ?>
                                </td>
                                <td>
                                <?php echo date('d-m-Y', strtotime($rsult['used_on'])); ?>
                                </td>
                                <td>
                                <?php  echo $rsult['reg_no']; ?>
                                </td>
                                <td>
                                <?php  echo $rsult['fname']; ?>
                                </td>
                                <td>
                                <?php echo $rsult['fuel_tot']; 
                                   $tot=    $tot+ $rsult['fuel_tot'];
                                ?>
                                </td>
                                <td>
                                    <a href="receipt.php?id=<?php echo $rsult['id'] ?>" class="btn btn-sm btn-success"><i class="fa fa-circle-o"></i></a>
                                </td>
                            </tr>
                            <?php }?>
                            <tr>
                            <td colspan="5">
                                <b style="float:right;">Total</b>
                            </td>
                            <td colspan="2">
                                <?php echo  $tot ?>
                            </td>
                            </tr>
                        </table>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
</div>
 
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
$(document).ready(function() {
        $('#userTable').DataTable();
    });
 
var isShift = false;
var seperator = "-";
function DateFormat(txt, keyCode) {
    if (keyCode == 16)
        isShift = true;
    //Validate that its Numeric
    if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 ||
         keyCode <= 37 || keyCode <= 39 ||
         (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
        if ((txt.value.length == 2 || txt.value.length == 5) && keyCode != 8) {
            txt.value += seperator;
        }
        return true;
    }
    else {
        return false;
    }
} 
</script>