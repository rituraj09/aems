
 <?php
include("../config.php");   
include("../layout/baseheader.php"); 
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
     
        <div id="view-print"  class="card"> 
            <div class="row" style="font-size:10px !important;"> 
                <div class="col-md-12"  >
                    <center>
                        <img src="ashokstambh.png" width="80px">
                        <h1 style="font-size:80px">ON ELECTION DUTY</h1> 
                        <div class="row">
                            <div class="col-md-3" >
                            </div>
                            <div class="col-md-8 text-left">
                                <h2 style="font-size:60px">Vehicle No : <?php echo $reg ?></h2>  
                            </div>
                            
                        </div>
                       <div class="row">
                           <div  class="col-md-12" >
                                <center>
                                    <img  width="250px" src="qrvehicle.php?id=<?php echo $id ?>">   
                                </center>
                           </div>
                       </div>
                       <div class="row">
                            <div class="col-md-3" >
                            </div>
                            <div class="col-md-8 text-left"> 
                                <h2>Driver Name : <?php echo $driver ?></h2>
                                <h2>Driver's Contact No : <?php echo $phone ?></h2>
                            
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-3" >
                            </div>
                            <div class="col-md-7 ">
                                <h6><span class="pull-right"><b><br><br>
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
include("../layout/basefooter.php"); 
?>
 