<?php
include("../config.php"); 
include("../layout/baseheader.php");
?>
<style>
    .table th,
  .table td {
    padding: 6px !important; 
    }
</style>
<?php
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
                <center><a  href="mydetails.php" class="btn btn-warning">Back</a></center><br>
                <form action="training.php" method="get"  name="myform" >  
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">Polling ID.</span>
                        </div>
                            <input type="text" id="psno"  name="search"   value="<?php echo $search ?>"  onfocus="this.select();" class="form-control">
                             
                      </div>
                      <br>
                        <div class="form-group"> 
                             <center> <input type="submit"  class="btn btn-primary" value="Search">  
                                <a   class="btn btn-outline-secondary" href="training.php" >Clear</a></center>  
                           
                        </div>
                    </div>
                </form>
               
                <?php
                if(isset($_REQUEST['search']))
                {
                    $psno=$psname=$locality=$lac=$sector=$sectorofficer=$sphone=$sdesig=$zonal=$zonalofficer=$zdesig=$zphone=$asttname=$aphone=$adesig="";
                    $groupno=$name=$phone=$desig="";
                    $id=$_REQUEST['search'];  
                    $qry1 = "SELECT a.*,b.groupno,b.lac,b.psno  FROM polling a inner join grouptbl b on a.pollid=b.person_id where pollid='".$search."'";
                    $rslt1=mysqli_query($mysqli,$qry1);
                    if ($rslt1->num_rows > 0){
                        while($r= mysqli_fetch_array($rslt1)) {  
                            $groupno=$r["groupno"];
                            $lac=$r["lac"];
                            $psno=$r["psno"];
                        }
                        $qry2 = "SELECT a.*,b.groupno,b.lac,b.psno  FROM polling a inner join grouptbl b on a.pollid=b.person_id where  b.groupno=".$groupno." and lac=".$lac;
                        $rslt2=mysqli_query($mysqli,$qry2);  

                        if($psno!="")
                        {
                            $ps = "SELECT * from polling_station where  ps_no='".$psno."' and lac=".$lac;
                            $rslt3=mysqli_query($mysqli,$ps);  


                            $sect = "SELECT * from  sector_tbl where ps='".$psno."'  and lac=".$lac;
                            $rslt4=mysqli_query($mysqli,$sect);  
                            while($r= mysqli_fetch_array($rslt4)) {
                                $zonal= $r["zonal_name"];
                                $zonalofficer=$r["zonal_officer"];
                                $zdesig=$r["zdesig"];
                                $zphone=$r["zphone"];
                                $sector= $r["sector_name"];
                                $sectorofficer=$r["sector_officer"];
                                $sdesig=$r["sdesig"];
                                $sphone=$r["sphone"];
                            }
                        }
                    
                    
                        ?> 
        <?php  
           if($search!="")
           { ?>
                    <div class="row">
                        <div  class="col-md-12 col-sm-12" style="font-size:11px !important;" >
                        <h6>Group No: <?php echo $groupno ?></h6>
                        <table class="table table-bordered" >
                        <tr>
                            <th>
                                #SL
                            </th>
                            <th>
                                Poll ID
                            </th>
                            <th>
                                Name
                            </th>
                            <th>
                                Designation
                            </th>
                            <th>
                                Contact No.
                            </th> 
                        </tr>
                        <?php
                        $sl=0;
                        if ($rslt2->num_rows > 0){
                        while($r= mysqli_fetch_array($rslt2)) { $sl=$sl+1; ?> 
                           <tr style="<?php if($r['pollid']==$search){ echo 'font-weight: bold;'; } ?>" >
                           <td><?php echo $sl; ?></td>
                           <td><?php echo $r["pollid"]; ?></td>
                           <td><?php echo $r["name"]; ?></td>
                           <td><?php if($sl==1) {echo"Preseiding"; }else { echo "First Polling";} ?></td>
                           <td><?php echo $r["phone"]; ?></td>
                           </tr>   
                        <?php }
                        }
                        ?>
                            <tr>
                           <td>3</td>
                           <td>1541</td>
                           <td>Diganta Chetia</td>
                           <td>Second Polling</td>
                           <td>7002274743</td>
                           </tr>   
                           <tr>
                           <td>4</td>
                           <td>144</td>
                           <td>Madan Sharma</td>
                           <td>Thrid Polling</td>
                           <td>9706786200</td>
                           </tr> 
                        </table>
                       
                        </div>
                    </div> 
           <?php //PS DETAILS START HERE
           if($psno!="")
           { ?>
                    <div class="row"> 
                        <div class="col-md-12 col-sm-12"  style="font-size:11px !important;">
                        <h6>TRAINING DETAILS</h6>
                        <table class="table table-bordered" >
                        <tr>
                          
                            <th>
                                Training Venue
                            </th>
                            <th>
                               Date
                            </th>
                            <th>
                                Time
                            </th>
                            <th>
                                Hall
                            </th> 
                        </tr>
                        
                           <tr >
                           <td>DR College, Golaghat</td>
                           <td>06-03-2021</td>
                           <td>9:00 AM Onwards</td>
                           <td> Hall 5</td> 
                           </tr>   
                         
                        </table>
                        </div>
                    </div>  
                    
           <?php //SECTOR/ZONAL DETAILS START HERE ?>
                     
            <?php }
                else
                {
                    echo "<label class='text-danger'><b>FOR RESERVE</b></label>";
                }
            } 
        }
        else
        {
            echo "No Details Found!";
        }?>



                <?php } ?>
                 
                </div>
            </div>
        </div>
    </div>
</div>

<?php 
include("../layout/basefooter.php"); 
?>