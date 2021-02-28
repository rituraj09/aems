<?php
include("../config.php"); 
include("../layout/baseheader.php");
if(isset($_REQUEST['search']))
{
    $search=$_REQUEST['search'];
}
else {
    $search="";
}
?>

<div>

</div>
<div class="container-fluid">
    <div class="row"> 
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                <form action="mydetails.php" method="get"  name="myform" >  
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">Enter Your Polling ID.</span>
                        </div>
                            <input type="text" id="psno"  name="search" value="<?php echo $search ?>"  onfocus="this.select();" class="form-control">
                            <div class="input-group-append">
                                <input type="submit"  class="btn btn-primary" value="Search"> 
                            </div>
                            <div class="input-group-append">
                                <a   class="btn btn-outline-secondary" href="mydetails.php" >Clear</a>
                            </div>
                      </div>
                    </div>
                </form>
               
                <?php
                if(isset($_REQUEST['search']))
                {
                    $id=$_REQUEST['search'];  
                    $qry = "SELECT * from polling_station where status=1 and ps_no='".$search."'";
                    $rslt=mysqli_query($mysqli,$qry);
                    
               
                 if ($rslt->num_rows > 0){
                    while($r= mysqli_fetch_array($rslt)) {  
                
                ?>
               
                    <div class="row"> 
                        <div class="col-md-12 col-sm-12">
                        <div class="col-md-6"><strong>P.S No: <?php echo $r["ps_no"]; ?></strong></div>
                            <div class="col-md-6"><strong>P.S Name: <?php echo $r["psname"]; ?></strong></div>
                            <div class="col-md-6">LAC: <?php echo $r["lac"]; 
                                if($r["lac"]=="95")
                                {
                                   echo "-Golaghat";
                                }else {
                                   echo "-khumtai";
                                }
                                
                            ?></div>
                            <div class="col-md-6">Add: <?php echo $r["address"]; ?> <strong><?php echo $r["pin"]; ?> </strong></div>
                            <div class="col-md-6">Police Station: <?php echo $r["police"]; ?> </div> 
                        </div>
                    </div>  
           
                
                <?php 
                        }
                    }
                    else {
                 
                        echo "<label class='text-danger'><b>You are not assigning yet!!</b></label>";
                       
                    }
                }
                ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php 
include("../layout/basefooter.php"); 
?>