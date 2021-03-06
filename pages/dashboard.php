<?php
include("../config.php"); 
include("../layout/header.php");
if($_SESSION["user_type"]== 4){
    header("location: ../permission/dashboard.php");
    exit;
}
$vehicleCOunt=0;
$qry1 = "select count(1) as cnt from vehicles where status=1";
$s1 = mysqli_query($mysqli, $qry1);         
while($r = mysqli_fetch_array($s1))
{
    $vehicleCOunt=$r["cnt"];
}

$qry2 = "select sum(distance) as cnt from vehicle_trans where status=1";
$s2= mysqli_query($mysqli, $qry2);         

$date =date('Y-m-d');
   
 

?>
 <div class="container-fluid">
    <div class="row"> 
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="icon-speedometer"></i> Dashboard</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <div class="card text-white bg-success">
                        <div class="card-body text-center">
                            <div class="small text-uppercase font-weight-bold">Total Vehicle Registered</div>
                            <div class="h1 py-3">
                            <h1><?php echo $vehicleCOunt ?></h1>
                            </div>
                        </div>
                    </div>
                </div>
               
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body text-center">
                            <div class="small text-uppercase font-weight-bold">Fuel Issued on Today</div>
                            <?php 
                            $fl=0;
                            $qry3 = "SELECT sum(fuel_request) as lt, c.name FROM vehicle_assign a inner join vehicles b on a.reg_no = b.reg_no inner join fuels c on b.fuel_type=c.id where a.status=1 and used_on = '".$date."' group by b.fuel_type";
                            $s3= mysqli_query($mysqli, $qry3);  
                            while($r3 = mysqli_fetch_array($s3)) 
                            {
                                $fl = $fl+ $r3["lt"];
                            }
                            ?>
                            <div class="small text-uppercase font-weight-bold"><?php echo $fl; ?> LT.</div>
                           
                        </div>
                        <div class="card-body py-0 px-4 b-t-1">
                                <div class="row">
                                <?php 
                                    $sl=0;
                                    $qry3 = "SELECT sum(fuel_request) as lt, c.name FROM vehicle_assign a inner join vehicles b on a.reg_no = b.reg_no inner join fuels c on b.fuel_type=c.id where a.status=1 and used_on = '".$date."' group by b.fuel_type";
                                    $s3= mysqli_query($mysqli, $qry3);  
                                    while($r3 = mysqli_fetch_array($s3)) 
                                        {
                                        $sl =$sl+1;  
                                            ?>
                                            <?php if( $sl==1) {?>
                                                <div class="col-6 b-r-1 py-3 text-center">
                                            <?php } 
                                            else { ?>
                                                <div class='col-6 py-3 text-center'>
                                            <?php }
                                            ?>
                                                <div class="font-weight-bold"> <?php echo $r3["lt"]; ?> LT. </div>
                                                <div class="font-weight-bold "> <?php echo $r3["name"]; ?> </div>
                                            </div>
                                        <?php }?> 
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-info">
                        <div class="card-body text-center">
                            <div class="small text-uppercase font-weight-bold">Total Fuel Issued </div>
                           <?php 
                            $fl=0;
                            $qry4 = "SELECT sum(fuel_request) as lt, c.name FROM vehicle_assign a inner join vehicles b on a.reg_no = b.reg_no inner join fuels c on b.fuel_type=c.id where a.status=1  group by b.fuel_type";
                            $s4= mysqli_query($mysqli, $qry4);  
                            while($r4 = mysqli_fetch_array($s4)) 
                            {
                                $fl = $fl+ $r4["lt"];
                            }
                            ?>
                            <div class="small text-uppercase font-weight-bold"><?php echo  $fl ?> Lt </div>
                          
                        </div>
                        <div class="card-body py-0 px-4 b-t-1">
                                <div class="row">
                                <?php 
                                    $sl=0;
                                    $petrol=0;
                                    $desiel=0;
                                    $qry4 = "SELECT sum(fuel_request) as lt, c.name FROM vehicle_assign a inner join vehicles b on a.reg_no = b.reg_no inner join fuels c on b.fuel_type=c.id where a.status=1  group by b.fuel_type";
                                    $s4= mysqli_query($mysqli, $qry4);
                                    if ($s4->num_rows > 0){
                                    while($r4 = mysqli_fetch_array($s4)) 
                                        {
                                        $sl =$sl+1;  
                                            ?>
                                            <?php if( $sl==1) {?>
                                                <div class="col-6 b-r-1 py-3 text-center">
                                            <?php } 
                                            else { ?>
                                                <div class='col-6 py-3 text-center'>
                                            <?php }
                                            ?>
                                                <div class="font-weight-bold"> <?php echo $r4["lt"]; ?> LT. </div>
                                                <div class="font-weight-bold "> <?php echo $r4["name"]; ?> </div>
                                                
                                                <?php 
                                                if( $sl==1){
                                                    $petrol=$r4["lt"]*85;
                                                }
                                                else {
                                                    $desiel=$r4["lt"]*85;
                                                }?>
                                            </div>
                                        <?php }
                                }
                                                else
                                                {?> 
                                                  <div class='col-12  text-center'>
                                                  <div class="font-weight-bold"><span style="visibility:hidden">Hello</span> </div>  
                                                  <div class="font-weight-bold"><span style="visibility:hidden">Hello</span> </div> 
                                                </div>
                                                <?php } ?>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card text-white bg-danger">
                        <div class="card-body text-center">
                            <div class="small text-uppercase font-weight-bold">Aprox. Cost.</div>
                            <div class="small text-uppercase font-weight-bold">INR. <?php echo $petrol+$desiel; ?></div>
                        </div>
                        <div class="card-body py-0 px-4 b-t-1">
                            <div class="row">
                                <div class="col-6 b-r-1 py-3 text-center">
                                <div class="small">INR. <?php echo $petrol; ?></div>
                                    <div class="font-weight-bold "> Petrol </div>
                                </div>
                                <div class='col-6 py-3 text-center'>
                                <div class="small   ">INR.  <?php echo $desiel; ?></div>
                                    <div class="font-weight-bold ">Diesel</div>
                                </div>
                            </div>  
                        </div> 
                    </div>
                </div>
            </div>
              
           
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>Vehicle on Election Duty</h5>
                </div>
                <div class="card-body">
                    <table id="vehicles" class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Sl. No</th>
                                <th>Reg. No.</th>
                                <th>Vehicle Name</th> 
                                <th>Driver Name</th>
                                <th>Driver Phone</th>
                                <th>Vehicle Type</th>
                                <th>Used In</th>
                                <th>Fuel</th>
                                <th>Action</th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
 </div>

<?php 
include("../layout/footer.php"); 
?>
<script>
$('document').ready(function()
{
$.fn.dataTable.ext.errMode = 'none';
        $('#vehicles').DataTable( {
            processing: true,
            serverSide: false,
            bDestroy: true,
            ajax: {
                url: "getvehicles.php",
                data: {id: 1},
            },
            order: [[ 0, "asc" ]],
            columns: [
                { data: "sl", name: "sl",orderable: true, searchable: true, visible: true },
                { data: "reg_no" , name: "reg_no",orderable: true, searchable: true, visible: true },
                { data: "model", name: "model",orderable: true, searchable: true, visible: true },
                { data: "driver_name", name: "driver_name",orderable: true, searchable: true, visible: true },
                { data: "driver_phone", name: "driver_phone",orderable: true, searchable: true, visible: true },
                { data: "vtype", name: "vtype",orderable: true, searchable: true, visible: true },
                { data: "usedin", name: "usedin",orderable: true, searchable: true, visible: true },
                { data: "fuel", name: "fuel",orderable: true, searchable: true, visible: true },
                { data: "desig", render:function (data, type, row) {
                    let  out = '<a href="vehicleinfo.php?id='+row.id+'" class="btn btn-sm btn-success" title="View Details"><i class="fa fa-circle-o"></i></a> '
                    return out;
                    }
                },
            ]
        });
});
</script>