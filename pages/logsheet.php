<?php
include("../config.php"); 
include("../layout/header.php"); 
$officer = "";
$officer_err="";
$reg =""; 
$reg_err="";
$date_on ="";
$date_on_err="";
$fuelqty =""; 
$fuelqty_err =""; 
$cby="";
$ok = "1";
$msg="";  
if(isset($_POST['Submit']))
{

    $reg =  trim($_POST['reg']);
    $officer =   $_POST['officer']; 
    $date_on =  $_POST['date_on'];   
    $fuelqty =   $_POST['fuelqty'];   
    $cby=$_SESSION['user_id'];

    if(empty(trim($_POST["date_on"]))){
        $date_on_err = "Please enter Date.";
    }  
    elseif(empty(trim($_POST["reg"]))){
        $reg_err = "Please enter the Vehicle Registration Number.";
    } 
    elseif(empty($_POST["officer"])){  
        $officer_err = "Please enter Officer Name.";
    } 
   
    else
    {  
        

        $date = date('Y-m-d', strtotime($date_on));
        $s = "SELECT count(1) as cnt from vehicle_assign where reg_no = '$reg' and used_on= '$date' and status > 0";
        $sqlx = mysqli_query($mysqli, $s);         
        while($str = mysqli_fetch_array($sqlx))
        { 
           // if((int)$str["cnt"]<1)
            //{    
                
                $sql="Insert into vehicle_assign (reg_no,person_name,used_on,fuel_request,cby,status) values ('$reg','$officer','$date', '$fuelqty', '$cby',1)";
                $result=mysqli_query($mysqli,$sql);
                if($result=="1")
                {      
                    $id = mysqli_insert_id($mysqli);        
                    for($i=0; $i < count($_POST['distfrom']); $i++) {
                        $distfrom = addslashes($_POST['distfrom'][$i]);
                        $distto = addslashes($_POST['distto'][$i]);
                        $dist = addslashes($_POST['dist'][$i]); 
 
                        $sql="Insert into vehicle_trans(v_assigned_id, used_on,reg_no,loc_from,loc_to,distance) values('$id','$date','$reg','$distfrom','$distto','$dist')";
                        $rslt=mysqli_query($mysqli,$sql);
                        if($rslt!="1") 
                        {
                            $ok=="0";
                        } 
                    }      
                    if($ok==1) { 
                        header("Location: receipt.php?id=".$id);
                    }
                    else{
                        $msg="<span style='color:red'>Error in Trans DB!</span>";
                    }
                   
                } 
                else{
                    $msg="<span style='color:red'>Somthings went wrong!</span>";
                }
           // }
           // else
           // {
            //    $msg = "Fuel has been already given.";
          //  }
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
<form action="logsheet.php" method="POST" class="col-md-12"  name="form1" onsubmit="return confirm('Do you really want to submit the form?');">
    <div class="row">  
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                <strong>Enter Daywise Log Sheet</strong> 
                </div> 
                <div class="card-body"> 
                        <div class="form-group row <?php echo (!empty($date_on_err)) ? 'has-error' : ''; ?>">
                            <label class="col-md-3 col-form-label">Date</label>
                            <div class='col-md-5 input-group date'>
                                <input type="text" name="date_on" autocomplete="off" id="date_on"   required
                                class="form-control datepicker date-format"   placeholder="dd-mm-yyyy"  value="<?php echo $date_on; ?>"
                                onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                                    <span class="input-group-text">
                                            <span class="icon-calendar"></span>
                                    </span> 
                            </div>
                            <div class='col-md-4 input-group date'>
                                    <span class="text-danger"><?php echo $date_on_err; ?></span>
                            </div>
                        </div> 
                        <div class="form-group row <?php echo (!empty($reg_err)) ? 'has-error' : ''; ?>">
                            <label  class="col-md-3 col-form-label">Registration No.</label>
                            <div class='col-md-5'>
         
                                <input  list="brow" id="reg" name="reg" required class="form-control" autocomplete="off" maxlength="10"  onblur="return getdetails()"   style="text-transform: uppercase;"  value="<?php echo $reg; ?>">
                                <datalist id="brow" >
                                        <?php    $election_types = mysqli_query($mysqli, "SELECT * from vehicles"); ?> 
                                        <?php while($r= mysqli_fetch_array($election_types)) { ?>
                                             <option value="<?php echo $r["reg_no"]; ?>"  > 
                                        <?php } ?>  
                                </datalist> 
                            </div>    
                            <div class='col-md-4 input-group date'>
                                    <span class="text-danger"><?php echo $reg_err; ?></span>
                            </div>
                        </div> 
                        <div class="form-group row <?php echo (!empty($officer_err)) ? 'has-error' : ''; ?>">
                            <label  class="col-md-3 col-form-label">Officer Name</label>
                            <div class='col-md-5'> 
                            <input  list="namelist" id="officer" required name="officer"  class="form-control" autocomplete="off" value="<?php echo $officer; ?>">
                                <datalist id="namelist" >
                                        <?php    $election_types = mysqli_query($mysqli, "SELECT * from personnel"); ?> 
                                        <?php while($r= mysqli_fetch_array($election_types)) { ?>
                                             <option value="<?php echo $r["name"].', '.$r["designation"].', ['.$r["phone"].']'; ?>"  > </option>
                                        <?php } ?>  
                                </datalist> 
                            </div>    
                            <div class='col-md-4 input-group date'>
                                    <span class="text-danger"><?php echo $officer_err; ?></span>
                            </div>
                            <label id="desig" class="col-md-3 col-form-label"></label>
                        </div> 
                </div>
            </div> 
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                   <strong>Vehicle's Details</strong>
                </div> 
                <div class="card-body"> 
                        <div class="row"> 
                            <div class="col-12">
                                <strong><label class="col-sm-3  col-form-label">Driver Name</label></strong>
                                <label class="col-md-3" id="driver"></label>  
                            </div>
                            <div class="col-12"> 
                                <strong><label class="col-sm-3  col-form-label">Driver's Mobile</label></strong> 
                                <label  class="col-md-3" id="driver_phone"></label>   
                            </div>
                            <div class="col-12"> 
                                <strong><label class="col-sm-3  col-form-label">Vehicle Name</label></strong> 
                                <label  class="col-md-3" id="name"></label>   
                            </div>
                            <div class="col-12"> 
                                <strong><label class="col-sm-3  col-form-label">Fuel Type</label></strong> 
                                <label  class="col-md-3" id="fuel"></label>   
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
                            <th width="30%">
                                From
                            </th>   
                            <th width="30%">
                                To
                            </th> 
                            <th width="25%">
                                Distance (in KM)
                            </th>   
                            <th>
                                Action
                            </th>          
                        </tr>
                        </thead>
                       
                        <tbody>
                        <tr>
                            <td>
                            <input type="text" id="distfrom0" name="distfrom[]" required autocomplete="off"   class="form-control" value="">
                            </td>   
                            <td>
                            <input type="text" id="distto0" name="distto[]" required autocomplete="off"   class="form-control" value="">
                            </td>  
                            <td>
                                <input type="text" id="dist0" name="dist[]" required class="form-control txtCal"  autocomplete="off" onkeydown="return numeric(this, event.keyCode)"  maxlength="3" value="">
                            </td>    
                            <td>
                            <span id="btnfld0">
                                <a  id="addRowBtn0" onclick="addRow()" href="javascript:void(0)" class="btn btn-md btn-primary">Add</a>
                           </span>
                            </td>         
                        </tr>
                        </tbody>
                        <tbody id="logtab" >
                        </tbody>
                        <tfooter>
                        <tr>
                            <th colspan="2" width="35%">
                            <span class="pull-right"> Total</span> 
                            </th> 
                            <th width="20%">
                                <label id="total_val">0</label>
                            </th>   
                            <th>
                                
                            </th>          
                        </tr>
                        </tfooter>
                    </table>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row <?php echo (!empty($fuelqty_err)) ? 'has-error' : ''; ?>">
                            <label  class="col-md-3 col-form-label"><strong>Fuel (in Liter)</strong></label>
                                <div class='col-md-8'>
                                    <input type="text" id="fuelqty" name="fuelqty" required onkeydown="return numeric(this, event.keyCode)"  maxlength="2"  class="form-control" autocomplete="off"  value="<?php echo $fuelqty; ?>">
                                    <span class="text-danger"><?php echo $fuelqty_err; ?></span>
                                </div>    
                            </div> 
                        </div>
                         
                    </div>
                  
            </div>
            <div class="card-footer">
                  <span class="pull-right">
                   
                    <input type="submit" name="Submit" value="Submit" class="btn btn-primary"  >   
                    <a href="logsheet.php" tabindex="13"  class="btn btn-default">Reset</a> 
                  </span>
            </div> 
        </div>
    </div>
    
</div> 
</form>
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
    calculate();
});
 
function calculate()
{
    $("#myTab").on('input', '.txtCal', function () {
    var calculated_total_sum = 0;
    $("#myTab .txtCal").each(function () {
        var get_textbox_value = $(this).val();
        if ($.isNumeric(get_textbox_value)) {
        calculated_total_sum += parseFloat(get_textbox_value);
        }                  
    });
    $("#total_val").html(calculated_total_sum);
});

}
function numeric(txt, keyCode) {
    if (keyCode == 16)
        isShift = true;
    if ((((keyCode >= 48 && keyCode <= 57) || keyCode == 8) ||  keyCode == 9 ||
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
function addRow() { 
        var tbl = $("#logtab");
        var d= $('#logtab').find('tr').length; 
        n = Number(d);
        d = Number(d)+1;
        var trid="tr"+d;
        var tabid1="distfrom"+d;
        var tabid2="distto"+d;
        var tabidkm="dist"+d;
        var btnfldid="btnfld"+d; 
        $("<tr id='"+trid+"'><td><input type='text' required id='"+tabid1+"' name='distfrom[]' class='form-control ' autocomplete='off' value=''></td><td> <input type='text'  id='"+tabid2+"' name='distto[]' required class='form-control'  autocomplete='off' value=''></td><td>  <input type='text'  id='"+tabidkm+"' name='dist[]' class='form-control txtCal' required autocomplete='off'  onkeydown='return numeric(this, event.keyCode)'  maxlength='3'  value=''></td><td><span id='"+btnfldid+"'><a  onclick='addRow()' href='javascript:void(0)' class='btn btn-md btn-primary'>Add</a> <a onclick='deleteRow("+d+")' href='javascript:void(0)' class='btn btn-md btn-danger'>Delete</a></span></td></tr>").appendTo(tbl);        
        $('#btnfld'+n).hide();
    } 
 
function deleteRow(txt) { 
    var id= 'tr'+txt;
    n = Number(txt)-1;
        $('#'+id).remove();  
        $('#btnfld'+n).show();
        var btnfldid="btnfld"+d; 
        calculate();
    }  

function getdetails() {     
    var val= $('#reg').val();    
    $.ajax({   
        dataType:'json',  
        data: {'op': "1", 'reg': val},
        type: "GET",
        url: "getreg.php", 
        error: function (resp) {
            $('#driver').html("");   
            $('#driver_phone').html("");   
            $('#name').html("");   
            $('#fuel').html("");  
            $('#reg').val("");
        },                
        success: function(resp){     
            $('#driver').html(resp.driver);   
            $('#driver_phone').html(resp.driver_phone);   
            $('#name').html(resp.name);   
            $('#fuel').html(resp.fuel);              
        }, 
    });
} 
 
</script>
