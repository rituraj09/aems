<?php
include("../config.php"); 
include("../layout/header.php"); 

$qry = "Select count(1) as cnt, b.name from vehicles a inner join election_types b on a.used_type=b.id where a.status=1 group by used_type order by used_type";
$rslt=mysqli_query($mysqli,$qry); 

$qry1= "Select count(1) as cnt, b.name from vehicles a inner join vehicle_types b on a.vehicle_type=b.id where a.status=1 group by vehicle_type order by vehicle_type";
$rslt1 =mysqli_query($mysqli,$qry1); 
?>
 
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Vehicle Report</li>
    </ol> 
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Cwell Wise Report
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>
                                    #sl
                                </th>
                                <th>
                                    Used In
                                </th>
                                <th>
                                    Total Numbers
                                </th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php   $sl = 0;
                            $tot= 0;
                            while($r= mysqli_fetch_array($rslt)) { 
                                $sl = $sl+1;
                                ?>
                            <tr>
                            <td>
                                <?php echo  $sl ?>
                            </td>
                            <td>
                                <?php echo  $r["name"] ?>
                            </td>
                            <td>
                                <?php echo  $r["cnt"];
                                $tot = $tot + $r["cnt"] ;
                                ?>
                            </td>
                            </tr>
                                <?php } ?>

                        </tbody>
                        <tfoot>
                                <tr>
                                    <th>
                                    
                                    </th>
                                    <th>
                                    Total
                                    </th>
                                    <th>
                                    <?php echo   $tot   ?>
                                    </th>
                                </tr>
                        </tfoot>
                    </table>
                </div>
            </div>     
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Vehicle Type wise Report
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>
                                    #sl
                                </th>
                                <th>
                                    Vehicle Type
                                </th>
                                <th>
                                    Total Numbers
                                </th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php   $sl = 0;
                            $tot= 0;
                            while($r= mysqli_fetch_array($rslt1)) { 
                                $sl = $sl+1;
                                ?>
                            <tr>
                            <td>
                                <?php echo  $sl ?>
                            </td>
                            <td>
                                <?php echo  $r["name"] ?>
                            </td>
                            <td>
                                <?php echo  $r["cnt"];
                                $tot = $tot + $r["cnt"] ;
                                ?>
                            </td>
                            </tr>
                                <?php } ?>

                        </tbody>
                        <tfoot>
                                <tr>
                                    <th>
                                    
                                    </th>
                                    <th>
                                    Total
                                    </th>
                                    <th>
                                    <?php echo   $tot   ?>
                                    </th>
                                </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include("../layout/footerhead.php"); 
 ?>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

 <?php
include("../layout/basefooter.php"); 
?>