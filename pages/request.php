<?php
include("../config.php"); 
$msg="";include("../layout/header.php"); 

 ?>
 <div class="container-fluid">
    <div class="row"> 
        <div class="col-md-10">
        <p><b><?php echo $msg ?></b></p>
        </div>
    </div>  
    <div class="row">  
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <strong>Logsheet Request</strong> 
                </div> 
                <div class="card-body"> 
                    <div class="row"> 
                             <table class="table table-responsive-sm table-bordered">
                                <tr>
                                    <th>Sl. No</th>
                                    <th>Vehicle Reg. No.</th> 
                                    <th>Date On</th>
                                    <th>Fuel Request (in Liter)</th> 
                                    <th>Action</th>
                                </tr>
                                <?php $qry = "SELECT * from vehicle_assign where status=9";
                                  $rslt=mysqli_query($mysqli,$qry);
                                  $sl =0;
                                  while($r= mysqli_fetch_array($rslt)) {  
                                    $sl =$sl+1;
                                ?>
                                <tr>
                                    <td> <?php echo $sl ?></td>
                                    <td> <?php echo $r['reg_no'] ?></td> 
                                    <td> <?php echo  date('d-m-Y', strtotime($r['used_on'])); ?></td>
                                    <td> <?php echo $r['fuel_request'] ?></td> 
                                    <td><a href="action.php?id=<?php echo $r['id'] ?>" class="btn btn-sm btn-warning"><i class="icon-check"></i></a></td>
                                </tr>
                                <?php
                                  }?>
                             </table>
                        </div> 
                        
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
