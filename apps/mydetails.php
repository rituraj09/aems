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
                           <td> </td>
                           <td><?php echo $r["phone"]; ?></td>
                           </tr>   
                        <?php }
                        }
                        ?>

                        </table>
                       
                        </div>
                    </div> 
           <?php //PS DETAILS START HERE
           if($psno!="")
           { ?>
                    <div class="row"> 
                        <div class="col-md-12 col-sm-12"  style="font-size:11px !important;">
                        <h6>POLLING STATION DETAILS</h6>
                            <table class="table table-bordered" >
                            <tr>
                                <th>
                                    PS No.
                                </th> 
                                <th>
                                    Name
                                </th>
                                <th>
                                   Locality
                                </th>
                                <th>
                                    LAC
                                </th> 
                            </tr>
                            <?php 
                            while($r= mysqli_fetch_array($rslt3)) {   ?> 
                            <tr>
                            <td><?php echo $psno; ?></td>
                            <td><?php echo $r["psname"]; ?></td>
                            <td><?php echo $r["locality"]; ?></td> 
                            <td><?php echo $r["lac"];  
                            if($r["lac"]=="95")
                                {
                                   echo "-Golaghat";
                                }else {
                                   echo "-khumtai";
                                }?></td>
                            </tr>   
                            <?php }
                            ?>

                            </table>
                        </div>
                    </div>  
                    
           <?php //SECTOR/ZONAL DETAILS START HERE ?>
                    <div class="row"> 
                        <div class="col-md-12 col-sm-12"  style="font-size:11px !important;">
                        <h6>DETAILS OF ZONAL/SECTOR/ASSISTING OFFICALS</h6>
                            <table class="table table-bordered" >
                            <tr>
                                <td>
                                    <b>ZONE : </b> <?php echo $zonal ;?>
                                </td>  
                                <td>
                                <b>OFFICER NAME : </b> <?php echo $zonalofficer ;?>
                                </td>  
                                <td>
                                <b>DESIGNATION & PHONE NO. : </b> <?php echo $zdesig ;?>, Cont : <?php echo $zphone ;?>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <b>SECTOR : </b> <?php echo $sector ;?>
                                </td>  
                                <td>
                                <b>OFFICER NAME : </b> <?php echo $sectorofficer ;?>
                                </td>  
                                <td>
                                <b>DESIGNATION & PHONE NO. : </b> <?php echo $sdesig ;?>, Cont : <?php echo $sphone ;?>
                                </td> 
                            </tr> 
                            <?php 
                             $sect1 = "SELECT * from  sector_tbl where ps='".$psno."'  and lac=".$lac;
                             $rslt5=mysqli_query($mysqli,$sect1);  
                              while($r= mysqli_fetch_array($rslt5)) {?>
                                <tr>
                                       
                                    <td colspan="2">
                                    <b>ASSTT. OFFICER NAME : </b> <?php echo $r['asst_officer'] ;?>
                                    </td>  
                                    <td>
                                    <b>DESIGNATION & PHONE NO. : </b> <?php echo $r['adesig'] ;?>, Cont : <?php echo $r['aphone'] ;?>
                                    </td> 
                                </tr> 
                              <?php } ?>
                            </table>
                        </div>
                    </div>  
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