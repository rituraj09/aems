
 <?php
include("../config.php");   
include("../layout/header.php"); 
if(isset($_REQUEST['id']) )
{
    
    $id= $_REQUEST['id']; 
        $qry="select a.*, b.name as fuel, c.name as vtype,d.name as usedin from vehicles a inner join fuels b on a.fuel_type=b.id inner join vehicle_types c on a.vehicle_type=c.id inner join election_types d on a.used_type=d.id where  a.status in (1,9)  and a.id=".$_REQUEST['id'];
        $s= mysqli_query($mysqli, $qry); 
        while( $row = mysqli_fetch_array($s) ) {
            $reg=$row["reg_no"];
            $owner=$row["owner_name"];
            $ophone=$row["owner_phone"];
            $driver=$row["driver_name"];
            $dphone=$row["driver_phone"];
            $vtype=$row["vtype"];
            $model=$row["model"];
            $usedin=$row["usedin"];
            $fuel=$row["fuel"];
            $status=$row["status"];
            $fdate=  date('d-m-Y', strtotime($row["used_from"])) ; 
            $tdate="";
            if($row["used_to"]!="")
            {
                $tdate=  date('d-m-Y', strtotime($row["used_to"])) ; 
            }
        }
}
?>  
 <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
       
        <div  class="card"> 
        <div class="card-header text-right">   
              <b><span class="pull-left" style="font-size:21px"><?php echo $reg ?></span></b>  <a href="vehiclelist.php" class="btn btn-sm btn-warning" >Back</a> 
            </div>
            <div id="view-print"  class="card-body" > 
               <table class="table">
               <tr>
                <th>Model:</th>
                <td>
                <?php echo $model ?>
                </td>
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
               </tr>
               <tr>
                <th>Owner's Name:</th>
                <td> 
                <?php echo  $owner ?>
                </td>
                <th>Owner's Phone:</th>  
                <td> 
                <?php echo $ophone ?>
                </td>
               
                <th>Driver's Name:</th>
                <td>
                <?php echo $driver ?>
                </td>
                <th>Driver's Phone:</th>  
                <td>
                <?php echo $dphone ?>
                </td>
               </tr>
               <tr>
                <th>Vehicle Type:</th>
                <td>
                <?php echo $vtype ?>
                </td>
                <th>Used In:</th>  
                <td>
                <?php echo  $usedin?>
                </td>
                <th>Fuel Type:</th>
                <td>
                <?php echo $fuel ?>
                </td>
                <td></td>
                <td></td>
               </tr>
               <tr>
                
                <th>Used From:</th>  
                <td>
                <?php echo $fdate ?>
                </td>
                <th>Used To:</th>  
                <td>
                <?php echo $tdate ?>
                </td>
                <th>Status</th>
                <td>
                <?php if($status==1){
                    echo "On Election Duty";
                }
                elseif($status=2)
                {
                    echo "Discharge";
                }
                ?>
                </td>
                <td></td>
                <td></td>
               </tr>
               </table>
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
</script>