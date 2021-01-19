<?php
include("../config.php"); 
include("../layout/header.php"); 
$name = "";
$vehicle_name_err="";
$reg =""; 
$reg_err="";
$owner ="";
$owners_err="";
$owner_ph ="";
$owner_ph_err="";
$driver ="";
$driver_err="";
$driver_ph ="";
$driver_ph_err=""; 
$type =""; 
$type_err="";
$seat =""; 
$seat_err="";
$used_from =""; 
$date_on_err="";
$fuel="";
$fuel_err="";
$used_err="";
$used_type="";
$ok_username = "";
$msg="";  
if(isset($_POST['Submit']))
{

    $reg =  trim($_POST['reg']);
    $name =   $_POST['name']; 
    $owner =  $_POST['owner']; 
    $owner_ph =  $_POST['owner_ph']; 
    $driver =  $_POST['driver']; 
    $driver_ph =   $_POST['driver_ph']; 
    $type =  $_POST['type']; 
    $seat =  $_POST['seat']; 
    $used_from =  $_POST['used_from'];  
    $fuel =  $_POST['fuel'];  
    $used_from =  $_POST['used_from'];  
    $used_type =  $_POST['used_type'];  
  
  
    if(empty($_POST["name"])){  
        $vehicle_name_err = "Please enter Vehicle Name.";
    } 
    elseif(empty(trim($_POST["reg"]))){
        $reg_err = "Please enter the Vehicle Registration Number.";
    } 
    elseif(empty(trim($_POST["owner"]))){
        $owners_err = "Please enter Owner Name.";
    } 
    elseif(empty($_POST["owner_ph"])){
        $owner_ph_err = "Please enter Owner's Phone Number.";
    } 
    elseif(empty(trim($_POST["driver"]))){
        $driver_err = "Please enter driver Name.";
    } 
    elseif(empty($_POST["driver_ph"])){
        $driver_ph_err = "Please enter Drivers's Phone Number.";
    }  

    elseif(empty(trim($_POST["type"]))){
        $type_err = "Please select vehicle type.";
    } 
    
    elseif(empty($_POST["seat"])){
        $seat_err = "Please enter Seating capacity";
    } 
    elseif(empty($_POST["fuel"])){
        $fuel_err = "Please select Fuel Type";
    } 
    elseif(empty(trim($_POST["used_from"]))){
        $date_on_err = "Please enter the date used from";
    } 
    elseif(empty($_POST["used_type"])){
        $used_err = "Please select Used as";
    } 
   
    else
    {  
        $s = "SELECT count(1) as cnt from vehicles where reg_no = '$reg'";
        $sqlx = mysqli_query($mysqli, $s);         
        while($str = mysqli_fetch_array($sqlx))
        { 
            if((int)$str["cnt"]<1)
            {   
                $date_from = date('Y-m-d', strtotime($used_from));
                $reg = strtoupper($reg);
                $sql="Insert into vehicles (owner_name,owner_phone, driver_name, driver_phone, reg_no,vehicle_type,model,seat,used_type,fuel_type,used_from) values ('$owner','$owner_ph','$driver', '$driver_ph', '$reg', '$type','$name','$seat','$used_type','$fuel','$date_from')";
                $result=mysqli_query($mysqli,$sql);
                if($result=="1")
                {                   
                    $msg="<span style='color:green'>Successfully Save.</span>";
                    $reg = "";
                    $name =   "";
                    $owner =   "";
                    $owner_ph =  "";
                    $driver =   "";
                    $driver_ph =   "";
                    $type =  "";
                    $seat =  "";
                    $used_from =  "";
                    $fuel =   "";
                    $used_from =  "";  
                    $used_type =  "";
                } 
                else{
                    $msg="<span style='color:red'>Somthings went wrong!</span>";
                }
            }
            else
            {
                $phone_err = "User with this phone number is already available.";
            }
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
    <div class="row"> 
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    Enter Vehicle Details
                </div> 
                <div class="card-body">
                    <form action="vehicle.php" method="POST"  name="form1" onsubmit="return validation()">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group <?php echo (!empty($vehicle_name_err)) ? 'has-error' : ''; ?>">
                                    <label>Vehicle Name</label>
                                    <input type="text" name="name"  tabindex="1" class="form-control" autocomplete="off" value="<?php echo $name; ?>">
                                    <span class="text-danger"><?php echo $vehicle_name_err; ?></span>
                                </div> 
                               
                                <div class="form-group <?php echo (!empty($owners_err)) ? 'has-error' : ''; ?>">
                                    <label>Owner's Name</label>
                                    <input type="text" id="owner" name="owner" tabindex="3" class="form-control" autocomplete="off" value="<?php echo $owner; ?>">
                                    <span class="text-danger"><?php echo $owners_err; ?></span>
                                </div> 
                                <div class="form-group"> 
                                    <input type="checkbox" id="samename" name="samename">
                                    <label for="samename"> Owner and driver is same</label> 
                                </div> 
                                <div class="form-group <?php echo (!empty($driver_err)) ? 'has-error' : ''; ?>">
                                    <label>Driver's Name</label>
                                    <input type="text" name="driver" id="driver" tabindex="5" class="form-control" autocomplete="off" value="<?php echo $driver; ?>">
                                    <span class="text-danger"><?php echo $driver_err; ?></span>
                                </div>    
                                <div class="form-group <?php echo (!empty($type_err)) ? 'has-error' : ''; ?>">
                                    <label>Vehicle Type</label>
                                    <select name="type"  tabindex="7"  class="form-control" >
                                        <?php    $vehicle_types = mysqli_query($mysqli, "SELECT * from vehicle_types"); ?>
                                        <option value="">--Select--</option>
                                        <?php while($r= mysqli_fetch_array($vehicle_types)) { ?>
                                             <option value="<?php echo $r["id"]; ?>"   <?php if( $r["id"]==$type)  echo 'selected';?>   > <?php echo  $r["name"]; ?></option>
                                        <?php } ?>  
                                    </select>
                                    <span class="text-danger"><?php echo $type_err; ?></span>
                                </div>   
                                <div class="form-group <?php echo (!empty($fuel_err)) ? 'has-error' : ''; ?>">
                                    <label>Fuel Type</label>
                                    <select name="fuel"   tabindex="9" class="form-control" >
                                        <?php    $fuels = mysqli_query($mysqli, "SELECT * from fuels"); ?>
                                        <option value="">--Select--</option>
                                        <?php while($r= mysqli_fetch_array($fuels)) { ?>
                                             <option value="<?php echo $r["id"]; ?>"  <?php if( $r["id"]==$fuel)  echo 'selected';?>   > <?php echo  $r["name"]; ?></option>
                                        <?php } ?>  
                                    </select>
                                    <span class="text-danger"><?php echo $fuel_err; ?></span>
                                </div>
                                <div class="form-group <?php echo (!empty($used_err)) ? 'has-error' : ''; ?>">
                                    <label>Used as</label>
                                    <select name="used_type" tabindex="11"  class="form-control" >
                                        <?php    $election_types = mysqli_query($mysqli, "SELECT * from election_types"); ?>
                                        <option value="">--Select--</option>
                                        <?php while($r= mysqli_fetch_array($election_types)) { ?>
                                             <option value="<?php echo $r["id"]; ?>"  <?php if( $r["id"]==$used_type)  echo 'selected';?>  > <?php echo  $r["name"]; ?></option>
                                        <?php } ?>  
                                    </select>
                                    <span class="text-danger"><?php echo $used_err; ?></span>
                                </div>
                              
                            </div>
                            <div class="col-md-6">
                                    <div class="form-group <?php echo (!empty($reg_err)) ? 'has-error' : ''; ?>">
                                        <label>Vehicle Registration Number</label>
                                        <input type="text" id="reg" name="reg" tabindex="2" class="form-control" autocomplete="off" maxlength="10"   style="text-transform: uppercase;"  value="<?php echo $reg; ?>">
                                        <span class="text-danger"><?php echo $reg_err; ?></span>
                                    </div> 
                                    <div class="form-group <?php echo (!empty($owner_ph_err)) ? 'has-error' : ''; ?>">
                                        <label>Owner's Phone</label>
                                        <input type="text" id="owner_ph" name="owner_ph" tabindex="4" autocomplete="off" minlength="10" maxlength="10" class="form-control" onkeydown="return numeric(this, event.keyCode)" value="<?php echo $owner_ph; ?>">
                                        <span class="text-danger"><?php echo $owner_ph_err; ?></span>
                                    </div> 
                                    <div class="form-group">  
                                        <label style="visibility:hidden" for="vehicle1"> Owner and driver is same</label> 
                                    </div> 
                                    <div class="form-group <?php echo (!empty($driver_ph_err)) ? 'has-error' : ''; ?>">
                                        <label>Driver's Phone</label>
                                        <input type="text" id="driver_ph" name="driver_ph" autocomplete="off" tabindex="6" minlength="10" maxlength="10" class="form-control" onkeydown="return numeric(this, event.keyCode)" value="<?php echo $driver_ph; ?>">
                                        <span class="text-danger"><?php echo $driver_ph_err; ?></span>
                                    </div>    
                                    <div class="form-group <?php echo (!empty($seat_err)) ? 'has-error' : ''; ?>">
                                        <label>Seating Capacity</label>
                                        <input type="text" name="seat" tabindex="8" maxlength="2" autocomplete="off" class="form-control" onkeydown="return numeric(this, event.keyCode)" value="<?php echo $seat; ?>">
                                        <span class="text-danger"><?php echo $seat_err; ?></span>
                                    </div>   
                                    <div class="form-group <?php echo (!empty($date_on_err)) ? 'has-error' : ''; ?>">
                                        <label>Used From</label>
                                        <div class='input-group date' class='datetimepicker1'>
                                            <input type="text" name="used_from" autocomplete="off" id="used_from"  tabindex="10"
                                            class="form-control datepicker date-format"   placeholder="dd-mm-yyyy"  value="<?php echo $used_from; ?>"
                                          onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                                            <span class="input-group-text">
                                                <span class="icon-calendar"></span>
                                                <span class="text-danger"><?php echo $date_on_err; ?></span>
                                        </div>


 
                                        <span class="text-danger"><?php echo $date_on_err; ?></span>
                                    </div>
                                    <div class="form-group">
                                        <label style="visibility :hidden">Used From</label>
                                        <div class="form-group">
                                        <input type="submit" name="Submit" value="Submit" tabindex="12"  class="btn btn-primary"  > 
                                        <a href="vehicle.php" tabindex="13"  class="btn btn-default">Reset</a> 
                                        </div>
                                       
                                    </div>
                            </div>
                        </div>
                    </form> 
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
<script type="text/javascript" >
$(document).ready(function(){
    $('#reg').keydown(function (e) {
       
       var k = e.which;
        var ok = k >= 65 && k <= 90 || // A-Z
            k >= 96 && k <= 105 || // a-z
            k >= 35 && k <= 40 || // arrows
            k == 9 || // tab
            k == 8 || // Backspaces
            k >= 48 && k <= 57; // 0-9

        if (!ok){
            e.preventDefault();
        }     
    });

    $("#samename").on("click", function(){ 
         if (this.checked) {  
                var name= $("#owner").val()
                var phn= $("#owner_ph").val()
                $("#driver").val(name);
                $("#driver_ph").val(phn);                     
    }
    else {
        $("#driver").val('');
        $("#driver_ph").val('');      
    }
    });
});
function numeric(txt, keyCode) {
    if (keyCode == 16)
        isShift = true;
    //Validate that its Numeric
    if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 ||
         keyCode <= 37 || keyCode <= 39 ||
         (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
         
        return true;
    }
    else {
        return false;
    }
}
   
var isShift = false;
var seperator = "-";
function DateFormat(txt, keyCode) {
    if (keyCode == 16)
        isShift = true;
    //Validate that its Numeric
    if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 ||
         keyCode <= 37 || keyCode <= 39 ||
         (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
        if ((txt.value.length == 2 || txt.value.length == 5) && keyCode != 8) {
            txt.value += seperator;
        }
        return true;
    }
    else {
        return false;
    }
}
function ValidateDate(txt, keyCode) { 
        var dateString = txt.value;
        if (keyCode == 16) {
            isShift = false;
        }
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\-(0[1-9]|1[0-2])\-((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString) || dateString.length == 0) {
          return true; 
        } else {
          txt.value = "";
            alert("Invalid Date");
            return false;
        }
    };  
</script>
