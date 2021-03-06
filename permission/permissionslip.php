
 <?php
include("../config.php");   
include("../layout/baseheader.php"); 
?>
<style> 
@media print {
  .divfooter {page-break-after: always; page-break-inside: avoid;}
}
</style>
<?php
if(isset($_REQUEST['id']) )
{   
    $id= $_REQUEST['id'];
        $reg = "";
        $driver="";
        $phone="";
        $qry="select a.*,p.name as party, u.name as user from permission a inner join political p on a.political_party=p.id  inner join users u on a.cby =u.id where a.status=1 and a.id=".$id;
        $s= mysqli_query($mysqli, $qry); 
        while( $row = mysqli_fetch_array($s) ) {
            $candname=$row["candname"];
            $politicalparty=$row["party"]; 
            $add=$row["address"]; 
            $mob=$row["mobile"]; 
            $lac=$row["lac"]; 
            $fdate = date('d-m-Y', strtotime($row["from_date"])); 
            $tdate = date('d-m-Y', strtotime($row["to_date"])); 
            $con = date('d-m-Y', strtotime($row["con"]));  
            $user = $row["user"]; 
        }
}
?>  
 <div class="container-fluid">
    <div class="row ">
        <div class="col-md-12">
            <div class="card"> 
                <div class="card-body text-center">  
                    <input type="button" class="btn btn-md btn-danger" onclick="printDiv('view-print')" value="Print" /> 
                    <a href="entry.php" class="btn btn-outline-info btn-md">New Entry</a>
                </div>
            </div>
            <div id="view-print"  class="card"> 
                <div class="row divfooter" > 
                    <div class="col-md-12" style=" width:100%" >
                        <center>
                            <img src="../pages/ashokstambh.png" width="50px">
                            <h6>GOVT. OF ASSAM</h6>
                            <h6>OFFICE OF THE DEPUTY COMMISSIONER:: ::GOLAGHAT</h6>
                            <h7>ASSEMBLY ELECTION, 2021 </h7>
                        </center>
                        <div class="row">
                            <div class="col-md-12">
                                <div  class="card-body">
                                <div  width="100%">
                                <b>No. ELE/2021/PER/<?php echo str_pad($id, 5, '0', STR_PAD_LEFT);  ?> </b>
                                <span class="pull-right">Dated: <?php echo $con ?></span> 
                                </div>
                                <br>
                                
                                    To<br>
                                    <span style="margin-left:50px;"> <?php echo $candname ?></span>,<br> 
                                    <span style="margin-left:50px;"> <?php echo $add ?></span>,<br>
                                    <span style="margin-left:50px;"> <?php echo "Cont-".$mob ?></span>,<br>
                                    <span style="margin-left:50px;"> <?php echo $politicalparty ?>, <?php if($lac==95) {echo "Golaghat"; }else{echo "Khumtai";} ?></span><br>
                                    <br>

                                    Sub:   <span style="margin-left:30px;"> Permission of Vehicles</span><br>
                                    <br>
                            
                                    Sir/Madam <br>
                                    <span style="margin-left:50px;">Permit has been issued for the folowing vehicle/vehicles, to be used in the election campaign for Assembly Election, 2021 from 
                                    <?php echo $fdate. " to " .$tdate ?></span>
                                    <br><br>
                                    <b>Details of the vehicle/vehicles</b><br>
                                    <table class="table table-bordered table-sm">
                                        <tr>
                                            <th>
                                            Sl. No.
                                            </th>
                                            <th>
                                            Type of Vehicle
                                            </th>
                                            <th>
                                            Reg. No.
                                            </th>
                                            <th>
                                            Owner Name
                                            </th>
                                            <th>
                                            Owner's Mobile No.
                                            </th>
                                            <th>
                                        Driver Name
                                            </th>
                                            <th>
                                            Driver's Mobile No.
                                            </th>
                                            <th>
                                            Dl. No.
                                            </th>
                                            <th>
                                            Remarks
                                            </th>
                                        </tr>
                                        <?php 
                                        $sl=0;
                                        $s= "select a.*,v.name as vname from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id where a.status=1 and a.per_id=".$id;
                                    
                                        $sf= mysqli_query($mysqli, $s); 
                                        while( $r = mysqli_fetch_array($sf) ) {
                                            $sl = $sl+1;
                                            ?>
                                        <tr>
                                            <td>
                                        <?php echo $sl ?>
                                            </td>
                                            <td>
                                            <?php echo $r["vname"] ?>
                                            </td>
                                            <td>
                                            <?php echo $r["reg_no"] ?>
                                            </td>
                                            <td>
                                            <?php echo $r["owner_name"]  ?>
                                            </td>
                                            <td>
                                            <?php echo $r["owner_phone"] ?>
                                            </td>
                                            <td>
                                            <?php echo $r["driver_name"] ?>
                                            </td>
                                            <td>
                                            <?php echo $r["driver_phone"] ?>
                                            </td>
                                            <td>
                                            <?php echo $r["license"] ?>
                                            </td>
                                            <td>
                                            Granted
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        <div class="row"> 
                            <div class="col-md-12 ">
                            <center>
                                <h6><span class="pull-right"><b><br> 
                                <img src="signgogoi.jpg" width="80px"><br>
                                    Nodal Officer, Permission Cell, <br>
                                    Assembly Election, 2021, Golaghat
                                </b></span>
                                
                                <img  width="100px" style="float:left; position relative; margin-top:80px;" src="qrvehicle.php?id=<?php echo $id ?>&sec=2"> 
                           
                                </h6>
                                </center>
                              
                            </div>
                            
                        </div> 
                    </div>
                </div>                
                <?php $sql="select a.*,v.name as vname from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id  where a.status=1 and a.per_id=".$id;
                $sf= mysqli_query($mysqli, $sql); 
                while( $r = mysqli_fetch_array($sf) ) {?>
                <div class="row divfooter" > 
                    <div class="col-md-12"  style=" width:100%">
                        <center>
                            <img src="../pages/ashokstambh.png" width="50px">
                            <h6>GOVT. OF ASSAM</h6>
                            <h6>OFFICE OF THE DEPUTY COMMISSIONER:: ::GOLAGHAT</h6>
                            <h7>ASSEMBLY ELECTION, 2021 </h7>
                        </center>
                        <div class="row">
                            <div class="col-md-12">
                                <div  class="card-body">
                                <center><h5>ELECTION CAMPAIGN PERMISSION OF VEHICLE</h5>   </center>
                                <b>Issue No.: ELE/2021/PER/<?php echo str_pad($id, 5, '0', STR_PAD_LEFT);  ?>/<?php echo str_pad($r["id"], 3, '0', STR_PAD_LEFT);  ?> <span style="float:right">Dated: <?php echo $con ?></span></b><br>
                              <br>
                                <h3>Permission From  <?php echo $fdate. " to " .$tdate ?></h3>
                              

                                    <table width="100%">
                                    <tr>
                                        <td>
                                      
                                        <h3>REG. NO. : <?php echo $r["reg_no"] ?></h3> 
                                        <h5>Vehicle Type : <?php echo $r["vname"] ?></h5> 
                                        <h5>Driver Name : <?php echo $r["driver_name"] ?></h5> 
                                        <h5>Driver Mobile No. : <?php echo $r["driver_phone"] ?></h5>
                                        <h5>Driving Licence No. : <?php echo $r["license"] ?></h5>
                                        </td>
                                        <td>
                                        <img  width="150px" style="float:right; position relative; margin-right:0px;"  src="qrvehicle.php?id=<?php echo $r["id"]  ?>&sec=1"> 
                                        </td>
                                    </tr> 
                                    </table>
                                </div>
                            </div> 
                        </div> 
                        <div class="row">
                            <div class="col-md-3" >
                            </div>
                            <div class="col-md-7 ">
                            <center>
                                <h6><span class="pull-right"><b><br> 
                                <img src="signgogoi.jpg" width="60px"><br>
                                    Nodal Officer, Permission Cell, <br>
                                    Assembly Election, 2021, Golaghat
                                </b></span></h6>
                                </center>
                            </div> 
                        </div> 
                        <div  class="row">
                            <div class="col-md-12" ><br>
                           <b style="text-decoration:underline !important"> Restriction imposed under Rule 10.5.4 of Modal Code of Conduct for use of vehicles for electioneering purpose:-</b>
<ol><li>
	If a vehicle for which permission is given to a particular candidate is found being used for another candidate, then the permission shall be withdrawn and such vehicle seized by/under the authority of District Election Officer
</li><li>If a candidate, after obtaining permission, does not intend to use the campaign vehicle(s), for any period of more than two days, he/she shall intimate to District Election Officer, to withdraw the permission for such vehicle(s). If the candidate fails to do so, it will be presumed that the candidate has used the permitted vehicles for campaign purpose and accordingly, the expenditure as per the notified rates on use of such vehicles shall be added to his/her account of election expenses.
</li><li>On a request from recognized political party, the District Election Officer would issue permit for one vehicle to be used by the district level office bearer of the party (other than the star campaigner) for his electioneering in multiple ACs within the district.
</li><li>With a view to check possible misuse of private vehicles by the candidate/party leaders/party workers for carting anti-social elements or to smuggle illicit arms and ammunition etc., with a view to create disturbances during elections, the District Administration shall keep a close watch on the vehicles being used by them. If a vehicle is found to be involved in any such mischief or illegal activity, the local administration shall impound the said vehicle and not release it till the completion o elections. Besides, suitable action shall be taken against the owner using it and the occupant(s) of the vehicle and the candidate/political party using it.
</li><li>The convoy of vehicles should be broken after 5(five) vehicles. The interval between two sets of convoy of vehicles should be half and hour.
</li></ol>                        </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
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