<?php
include("../config.php"); 
include("../layout/header.php"); 
if(isset($_REQUEST['id']))
{         
    $id=$_REQUEST['id']; 
    $userid=1;
    $fuelqty = ""; 
    $remarks ="";   
    $msg="";  
    $qry = "SELECT * from vehicle_assign where status=9 and id=".$id;
    $rslt=mysqli_query($mysqli,$qry);
    if ($rslt->num_rows > 0){
        while($rsult= mysqli_fetch_array($rslt)) {  
            $date = date('d-m-Y', strtotime($rsult['used_on']));
            $regno=$rsult['reg_no'];
            $officer=$rsult['person_name']; 
            $fuelqty=$rsult['fuel_request']; 
        } 
    } 
    else{
        header('Location: vehicle.php');
    } 

    $qry1 = "Select a.*,b.name as duty, c.name as fname from vehicles a inner join election_types b on a.used_type = b.id inner join fuels c on a.fuel_type=c.id where status=1 and reg_no='".$regno."'";
    $rslt1=mysqli_query($mysqli,$qry1);
     
        while($r= mysqli_fetch_array($rslt1)) {  
            $dutytype=$r['duty'];
            $driver_name=$r['driver_name']; 
            $driver_phone=$r['driver_phone']; 
            $model=$r['model']; 
            $fuel=$r['fname']; 
        } 
        $tdate = date('Y-m-d');
    if(isset($_POST['Submit']))
    {         
        $sql="UPDATE vehicle_assign set status= 1 , approved_by='".$userid."', approved_on='".$tdate."' where  id=$id";  
        $result=mysqli_query($mysqli,$sql);
        if($result=="1")
        {
            $msg="<span style='color:green'>Successfully Updated.</span>";
        }   
    }
    if(isset($_POST['Reject']))
    {         
        $remarks = $_POST['remarks']; 
        $sql="UPDATE vehicle_assign set status= 0, final_remarks='".$remarks."', approved_by='".$userid."', approved_on='".$tdate."' where id=$id";  
        $result=mysqli_query($mysqli,$sql);
        if($result=="1")
        {
            $msg="<span style='color:green'>Successfully Updated.</span>";
        }   
    }
}
?>

 <div class="container-fluid">
    <div class="row"> 
        <div class="col-md-10">
        <p><b><?php echo $msg ?></b></p>
        </div>
    </div> 
<form action="action.php?id=<?php echo $id ?>" method="POST" class="col-md-12"  name="form1" onsubmit="return validation()">
    <div class="row">  
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                <strong>Logsheet Details</strong> 
                </div> 
                <div class="card-body"> 
                <div class="row"> 
                        <div class="col-6">
                            <strong><label class="col-md-7 col-form-label">No. ELE/GLT/2021/FUEL/<?php echo str_pad($id, 5, '0', STR_PAD_LEFT);  ?></label></strong>
                        </div> 
                        <div class="col-6">
                        <strong><label class="col-md-12 col-form-label">Dated: <?php echo $date ?></label></strong>
                          
                        </div> 
                    </div> 
                    <div class="row">  
                         
                        <div class="col-6">
                            <strong><label  class="col-md-3 col-form-label">Vehicle Reg. No.</label></strong>
                            <label  class="col-md-7 col-form-label"><?php echo $regno ?></label> 
                        </div> 
                    </div>
                   
                    <div class="row"> 
                        <div class="col-6">
                            <strong><label  class="col-md-3 col-form-label">Officer Name</label></strong>
                            <label  class="col-md-7 col-form-label"><?php echo $officer ?></label> 
                        </div> 
                        <div class="col-6">
                            <strong><label  class="col-md-3 col-form-label">Duty Type</label></strong>
                            <label  class="col-md-7 col-form-label"><?php echo $dutytype ?></label> 
                        </div>   
                    </div>
                    <div class="row"> 
                        <div class="col-6">
                            <strong><label class="col-sm-3  col-form-label">Driver Name</label></strong>
                            <label class="col-md-3" id="driver"><?php echo $driver_name ?></label>  
                        </div>
                        <div class="col-6"> 
                            <strong><label class="col-sm-3  col-form-label">Driver's Mobile</label></strong> 
                            <label  class="col-md-3" id="driver_phone"><?php echo $driver_phone ?></label>   
                        </div>
                    </div>
                    <div class="row"> 
                        <div class="col-6"> 
                            <strong><label class="col-sm-3  col-form-label">Vehicle Name</label></strong> 
                            <label  class="col-md-3" id="name"><?php echo $model ?></label>   
                        </div>
                        <div class="col-6"> 
                            <strong><label class="col-sm-3  col-form-label">Fuel Type</label></strong> 
                            <label  class="col-md-3" id="fuel"><?php echo $fuel ?></label>   
                        </div>  
                    </div>
                </div> 
            </div>  
        </div>
    </div> 
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">     
                    <table id="myTab" class="table table-bordered">
                        <thead>
                        <tr>
                            <th width="8%">
                            Sl.
                            </th>
                            <th width="40%">
                                From
                            </th>   
                            <th width="40%">
                                To
                            </th> 
                            <th width="25%">
                                Distance (in KM)
                            </th>   
                                   
                        </tr>
                        </thead>
                       <?php $qry1 = "Select * from vehicle_trans where status=1 and v_assigned_id=".$id." order by id";
                        $rslt1=mysqli_query($mysqli,$qry1);?> 
                        <tbody>
                        <?php  
                        $sl =0;
                        $val=0;
                        while($r= mysqli_fetch_array($rslt1)) { 
                            $sl =$sl+1;
                            ?>
                        <tr>
                            <td>
                                <?php echo $sl ?>
                              </td> 
                            <td>
                                <?php echo $r['loc_from']; ?>
                             </td>   
                            <td>
                                <?php echo $r['loc_to']; ?>
                             </td>  
                            <td>
                                <?php echo $r['distance'];
                                $val = $val+$r['distance'];
                                ?>
                             </td>    
                                   
                        </tr>
                        <?php  } 
                        ?>
                        </tbody> 
                        <tfooter>
                        <tr>
                            <th colspan="3" width="35%">
                            <span class="pull-right"> Total</span> 
                            </th> 
                            <th width="20%">
                                <label id="total_val"><?php echo $val; ?></label>
                            </th>            
                        </tr>
                        </tfooter>
                    </table>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                            <label  class="col-md-3 col-form-label"><strong>Fuel (in Liter)</strong></label>
                                <div class='col-md-8'>
                                    <input type="text" id="fuelqty" name="fuelqty" required onkeydown="return numeric(this, event.keyCode)"  maxlength="2"  class="form-control" autocomplete="off"  value="<?php echo $fuelqty; ?>">
                                 </div>    
                            </div> 
                        </div>
                        
                    </div>
                  
            </div>
            <div class="card-footer">
                  <span class="pull-left">
                    <button type="button" class="btn btn-success" data-toggle="modal"  onclick="showApprove()"  data-target="#approveModal">
                        Approve
                    </button>
                    <button type="button" class="btn btn-danger" data-toggle="modal" onclick="showreject()" data-target="#rejectModal">
                        Reject
                    </button>
                    <a href="request.php" class="btn btn-outline-secondary text-primary">Back</a>
                    
                  </span>
            </div> 
            
        </div>
    </div> 
    <div class="modal fade" id="approveModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-success" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Do you want to approve this logsheet?</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div> 
            <div class="modal-footer">
            
            <input type="submit" name="Submit" value="Yes, Approve" class="btn btn-success"  >  
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        
            </div>
        </div>
        <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <div class="modal fade" id="rejectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-danger" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Do you want to reject this logsheet?</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
            <b>Reason of Rejection: </b>
                <textarea id="remarks" name="remarks" class="form-control"></textarea>
            </div>
            <div class="modal-footer"> 
            <input type="submit" name="Reject" value="Yes, Reject" class="btn btn-danger"  >  
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        
            </div>
        </div>
        <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</form>
</div> 
</div>
<?php 
include("../layout/footerhead.php"); 
 ?>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

 <?php
include("../layout/basefooter.php"); 
?>
<script type="text/javascript" > 
function numeric(txt, keyCode) {
    if (keyCode == 16)
        isShift = true;
    if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 ||
         (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
         
        return true;
    }
    else {
        return false;
    }
} 
function showreject()
{ 
    $('#remarks').attr('required','true'); 
}
function showApprove()
{
    $('#remarks').removeAttr('required'); 
}
</script>
