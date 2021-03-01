
 <?php
include("../config.php");   
include("../layout/header.php"); 
if(isset($_REQUEST['id']) )
{
    
    $id= $_REQUEST['id'];
        $reg = "";
        $driver="";
        $phone="";
        $qry="select a.*, b.name as fuel, c.name as vtype,d.name as usedin from vehicles a inner join fuels b on a.fuel_type=b.id inner join vehicle_types c on a.vehicle_type=c.id inner join election_types d on a.used_type=d.id where a.status=1 and a.id=".$_REQUEST['id'];
        $s= mysqli_query($mysqli, $qry); 
        while( $row = mysqli_fetch_array($s) ) {
            $reg=$row["reg_no"];
            $driver=$row["driver_name"];
            $phone=$row["driver_phone"];
        }
}
?>  
 <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
        <div class="card"> 
            <div class="card-body text-center">  
                <input type="button" class="btn btn-md btn-danger" onclick="printDiv('view-print')" value="Print" /> 
                <a href="vehicle.php" class="btn btn-outline-primary" >New Entry</a> 
                <a href="vehiclelist.php" class="btn btn-outline-danger" >Vehicle List</a> 
            </div>
        </div>
        <div id="view-print"  class="card"> 
            <div class="row" style="font-size:10px !important;"> 
                <div class="col-md-12"  >
                    <center>
                        <img src="ashokstambh.png" width="80px">
                        <h5>ASSEMBLY ELECTION, 2021 ::: GOLAGHAT ELECTION DISTRICT</h5>
                        <h1 style="font-size:70px">ON ELECTION DUTY</h1> 
                        <h2 style="font-size:40px">Vehicle No : <?php echo $reg ?></h2> 
                        <img  width="250px" src="qrvehicle.php?id=<?php echo $id ?>">   
                        <h2>Driver Name : <?php echo $driver ?></h2>
                        <h2>Driver's Mobile : <?php echo $phone ?></h2>
                        
                        <div class="row">
                            <div class="col-md-3" >
                            </div>
                            <div class="col-md-7 ">
                                <h6><span class="pull-right"><b><br> 
                                <img src="sign.jpg" width="120px"><br>
                                    Nodal Officer, Transport Cell, <br>
                                    Assembly Election, 2021, Golaghat
                                </b></span></h6>
                            </div>
                           
                        </div>
                    </center>
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
</script>