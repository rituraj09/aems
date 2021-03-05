<?php
include("../config.php");   
include("../layout/header.php");  
?>  
<style>
.table th, .table td 
{
    padding:6px !important;
}
</style>
<?php
if(isset($_REQUEST['id']) )
{
    
    $id= $_REQUEST['id']; 
        $user = "";
        $qry="select a.*,p.name as party, u.name as user from permission a inner join political p on a.political_party=p.id inner join users u on a.cby =u.id where a.status=1 and a.id=".$id;
        $s= mysqli_query($mysqli, $qry); 
        while( $row = mysqli_fetch_array($s) ) {
            $candname=$row["candname"];
            $politicalparty=$row["party"]; 
            $fdate = date('d-m-Y', strtotime($row["from_date"])); 
            $tdate = date('d-m-Y', strtotime($row["to_date"])); 
            $con = date('d-m-Y', strtotime($row["con"])); 
            $user = $row["user"]; 
            $q = "select a.*,v.name as vname from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id where a.status =1   and a.id=".$id;
            $rslt=mysqli_query($mysqli,$q);   
        }
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card-body">  
            <a href="report.php" class="btn btn-success btn-sm">Back</a>
                <input type="button" class="btn btn-danger btn-sm" onclick="printDiv('view-print')" value="Print" /> 
                <a href="permissionslip.php?id=<?php echo $id ?>" target="_blank" class="btn btn-info btn-sm">Print Slip</a>
            </div>
            <div id="view-print"  class="card"> 
                <div class="card-body">
                    <div class="row"> 
                        <div class="col-md-12">
                        <table class="table table-responsive-sm table-sm">
                            <tr>
                                <th>
                                Letter No.
                                </th>
                                <td>
                                ELE/2021/PER/<?php echo str_pad($id, 5, '0', STR_PAD_LEFT);  ?> 
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Issued On.
                                </th>
                                <td>
                                <?php echo $con ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Name of the Candidate/ Election Agent/ Leader of Political Party 
                                </th>
                                <td>
                                <?php echo $candname ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Political Party Name
                                </th>
                                <td>
                                <?php echo $politicalparty ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Date From
                                </th>
                                <td>
                                <?php echo $fdate ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Date To
                                </th>
                                <td>
                                <?php echo $tdate ?>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                Prepared By
                                </th>
                                <td>
                                <?php echo $user ?>
                                </td>
                            </tr>
                        </table>
                      
                        </div>
                    </div>
                    
                    <div class="row"> 
                        <div class="col-md-12">
                        <h5>      Details of the Vehicles</h5>
                            <table id="report" class="table table-bordered table-responsive-sm table-sm">
                         
                                <thead>
                                    <tr>
                                        <th width="60px">
                                        Sl No.
                                        </th>
                                        <th>
                                           Type of Vehicle
                                        </th>
                                        <th>
                                            Registration No 
                                        </th>
                                        <th>
                                         Name of Vehicle Owner
                                        </th>
                                        <th width="70px">
                                        Mobile No. of Vehicle Owner
                                        </th>
                                        <th width="130px">
                                        Name of Driver
                                        </th>
                                        <th width="130px">
                                        Mobile No. of Driver
                                        </th>
                                        <th >
                                           Driving Licence No.
                                        </th> 
                                    </tr>
                                </thead>
                                <?php  $sl = 0;
                                 while($rsult= mysqli_fetch_array($rslt)) {  $sl = $sl+1;?>
                                    <tr>
                                        <td>
                                        <?php echo $sl ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['vname'] ?>
                                        </td>
                                        <td>
                                        <?php echo strtoupper($rsult['reg_no']) ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['owner_name'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['owner_phone'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['driver_name'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['driver_phone'] ?>
                                        </td>
                                        <td>
                                        <?php echo $rsult['license'] ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                               
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
<script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}   
</script>
 
 