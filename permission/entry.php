<?php
include("../config.php"); 
include("../layout/header.php"); 
?>



<?php
function get_client_ip()
 {
      $ipaddress = '';
      if (getenv('HTTP_CLIENT_IP'))
          $ipaddress = getenv('HTTP_CLIENT_IP');
      else if(getenv('HTTP_X_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
      else if(getenv('HTTP_X_FORWARDED'))
          $ipaddress = getenv('HTTP_X_FORWARDED');
      else if(getenv('HTTP_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_FORWARDED_FOR');
      else if(getenv('HTTP_FORWARDED'))
          $ipaddress = getenv('HTTP_FORWARDED');
      else if(getenv('REMOTE_ADDR'))
          $ipaddress = getenv('REMOTE_ADDR');
      else
          $ipaddress = 'UNKNOWN';

      return $ipaddress;
 }
$ip = get_client_ip();
$candname = "";
$candname_err="";
$politicalparty =""; 
$political_party_err="";
$fromdate ="";
$from_date_err="";
$todate =""; 
$to_date_err =""; 
$cby="";
$ok = "1";
$msg="";  
if(isset($_POST['Submit']))
{

    $candname =  trim($_POST['candname']);
    $politicalparty =   $_POST['politicalparty']; 
    $fromdate =  $_POST['fromdate'];   
    $todate =   $_POST['todate'];   
    $cby=$_SESSION['user_id'];

    if(empty(trim($_POST["candname"]))){
        $date_on_err = "Please enter Candidate Name.";
    }  
    elseif(empty(trim($_POST["politicalparty"]))){
        $reg_err = "Please enter Political Party Name.";
    } 
    elseif(empty($_POST["fromdate"])){  
        $officer_err = "Please enter From Date";
    } 
    elseif(empty($_POST["todate"])){  
        $officer_err = "Please enter To Date";
    } 
    else
    {      
        $fdate = date('Y-m-d', strtotime($fromdate)); 
        $tdate = date('Y-m-d', strtotime($todate)); 
        $sql="Insert into permission (candname,political_party,from_date,to_date,cby,ip) values ('$candname','$politicalparty','$fdate', '$tdate', '$cby','$ip')";
            $result=mysqli_query($mysqli,$sql);
        if($result=="1")
        {      
            $id = mysqli_insert_id($mysqli);        
            for($i=0; $i < count($_POST['regno']); $i++) {
                $type = addslashes($_POST['type'][$i]);
                $regno = addslashes($_POST['regno'][$i]);
                $oname = addslashes($_POST['oname'][$i]); 
                $ophone = addslashes($_POST['ophone'][$i]); 
                $dname = addslashes($_POST['dname'][$i]); 
                $dphone = addslashes($_POST['dphone'][$i]); 
                $dlno = addslashes($_POST['dlno'][$i]); 

                $sql="Insert into perm_vehicles(per_id, vehicle_type,reg_no,owner_name,owner_phone,driver_name, driver_phone,license) values('$id','$type','$regno','$oname','$ophone','$dname','$dphone','$dlno')";
                $rslt=mysqli_query($mysqli,$sql);
                if($rslt!="1") 
                {
                    $ok=="0";
                } 
            }      
            if($ok==1) { 
                header("Location: permissionslip.php?id=".$id);
            }
            else{
                $msg="<span style='color:red'>Error in Trans DB!</span>";
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
<form action="entry.php" method="POST" class="col-md-12"  name="form1" onsubmit="return confirm('Do you really want to submit the form?');">
<div class="row">  
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
            <strong>Vehicle Permission Request</strong> 
            </div> 
            <div class="card-body"> 
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group <?php echo (!empty($candname_err)) ? 'has-error' : ''; ?>">
                            <label>Candidate Name</label>
                            <input type="text" name="candname"  tabindex="1" class="form-control" autocomplete="off" value="<?php echo $candname; ?>">
                            <span class="text-danger"><?php echo $candname_err; ?></span>
                        </div> 
                      
                        <div class="form-group <?php echo (!empty($from_date_err)) ? 'has-error' : ''; ?>">
                                <label>From Date</label>
                                <div class='input-group date' class='datetimepicker1'>
                                    <input type="text" name="fromdate" autocomplete="off" id="used_from"  tabindex="1"
                                    class="form-control datepicker date-format"   placeholder="dd-mm-yyyy"  value="<?php echo $fromdate; ?>"
                                    onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                                    <span class="input-group-text">
                                        <span class="icon-calendar"></span>
                                        <span class="text-danger"><?php echo $from_date_err; ?></span>
                                </div>  
                        </div>
                       
                    </div> 
                    <div class="col-md-6">
                        <div class="form-group <?php echo (!empty($political_party_err)) ? 'has-error' : ''; ?>">
                            <label>Political Party</label>
                            
                            <select name="politicalparty" tabindex="2" required class="form-control" >
                                        <?php    $election_types = mysqli_query($mysqli, "SELECT * from political order by sl"); ?>
                                        <option value="">--Select--</option>
                                        <?php while($r= mysqli_fetch_array($election_types)) { ?>
                                             <option value="<?php echo $r["id"]; ?>"  <?php if( $r["id"]==$politicalparty)  echo 'selected';?>  > <?php echo  $r["name"]; ?></option>
                                        <?php } ?>  
                                    </select>
                            <span class="text-danger"><?php echo $political_party_err; ?></span>
                        </div> 
                        <div class="form-group <?php echo (!empty($to_date_err)) ? 'has-error' : ''; ?>">
                                <label>To Date</label>
                                <div class='input-group date' class='datetimepicker1'>
                                    <input type="text" name="todate" autocomplete="off" id="used_from"  tabindex="10"
                                    class="form-control datepicker date-format"   placeholder="dd-mm-yyyy"  value="<?php echo $todate; ?>"
                                    onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                                    <span class="input-group-text">
                                        <span class="icon-calendar"></span>
                                        <span class="text-danger"><?php echo $to_date_err; ?></span>
                                </div>  
                        </div> 
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
                            <th>
                                #sl
                            </th> 
                            <th>
                                Vehicle Type
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
                            <th width="40px"> Is Owner & Driver Same</th> 
                            <th >
                                Driver Name
                            </th>    
                            <th >
                                Driver Mobile
                            </th> 
                            <th>
                               DL No.
                            </th> 
                            <th width="85px"> 
                            </th>          
                        </tr>
                        </thead>
                       
                        <tbody>
                        <tr>
                            <td>
                             1
                            </td>
                            <td>
                            <select  id="type0" name="type[]" required    class="form-control vtype">
                            </select>
                            </td>   
                            <td>
                            <input type="text" id="regno0" name="regno[]" required autocomplete="off"   class="form-control regno" value="">
                            </td>  
                            <td>
                                <input type="text" id="oname0" name="oname[]" required class="form-control oname"  autocomplete="off"  value="">
                            </td>  
                            <td>
                                <input type="text" id="ophone0" name="ophone[]" required class="form-control ophone"  minlength="10" maxlength="10"  onkeydown="return numeric(this, event.keyCode)"   autocomplete="off"  value="">
                            </td>
                            <td>
                            <input type="checkbox" id="samename0"  onchange="same(0)" name="samename[]">
                            </td>
                            <td>
                                <input type="text" id="dname0" name="dname[]" required class="form-control dname"  autocomplete="off"  value="">
                            </td>
                            <td>
                                <input type="text" id="dphone0" name="dphone[]" required class="form-control dphone" minlength="10" maxlength="10"  onkeydown="return numeric(this, event.keyCode)" autocomplete="off" value="">
                            </td>
                            <td>
                                <input type="text" id="dlno0" name="dlno[]" required class="form-control"  autocomplete="off" value="">
                            </td>  
                            <td>
                            <span id="btnfld0">
                                <a  id="addRowBtn0" onclick="addRow(); gettype(); regno();" href="javascript:void(0)" class="btn btn-sm btn-primary"><i class='fa fa-plus'></i></a>
                           </span>
                            </td>         
                        </tr>
                        </tbody>
                        <tbody id="logtab" >
                        </tbody> 
                    </table>
                   
                  
            </div>
            <div class="card-footer">
                  <span class="pull-right">
                   
                    <input type="submit" name="Submit" value="Submit" class="btn btn-primary"  >   
                    <a href="entry.php" tabindex="13"  class="btn btn-default">Reset</a> 
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
    gettype();
    regno();
});
function regno()
{
    $('.regno').keydown(function (e) { 
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
}
function same(n)
{ 
    var cb =   $("#samename"+n) 
    if( cb.is(':checked')) {
        var name= $("#oname"+n).val()
        var phn= $("#ophone"+n).val()
        $("#dname"+n).val(name);
        $("#dphone"+n).val(phn);                     
    }
    else {
        $("#dname"+n).val('');
        $("#dphone"+n).val('');      
    } 
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
    if(d<4)
    {
        n = Number(d);
    d = Number(d)+1;
    var sl =d+1;
    var trid="tr"+d; 
    var tabid1="type"+d;
    var tabid2="regno"+d;
    var tabid3="oname"+d;
    var tabid4="ophone"+d;
    var tabx="samename"+d;
    var tabid5="dname"+d;
    var tabid6="dphone"+d;
    var tabid7="dlno"+d;  
    var btnfldid="btnfld"+d; 
     $("<tr id='"+trid+"'><td><label id>"+sl+"</label></td><td><select  required id='"+tabid1+"' name='type[]' class='form-control vtype' ></select></select></td><td> <input type='text'  id='"+tabid2+"' name='regno[]' required class='form-control regno'  autocomplete='off' value=''></td><td>  <input type='text'  id='"+tabid3+"' name='oname[]' class='form-control oname' required autocomplete='off' value=''></td><td> <input type='text'  id='"+tabid4+"' name='ophone[]' class='form-control ophone'  minlength='10' maxlength='10'  onkeydown='return numeric(this, event.keyCode)' required autocomplete='off' value=''></td><td><input type='checkbox' id='"+tabx+"' class='samename' onchange='same("+d+")' name='samename[]'></td><td>  <input type='text'  id='"+tabid5+"' name='dname[]' class='form-control dname' required autocomplete='off' value=''></td>    <td>  <input type='text'  id='"+tabid6+"' name='dphone[]' class='form-control dphone' required autocomplete='off' minlength='10' maxlength='10'  onkeydown='return numeric(this, event.keyCode)' value=''></td>    <td>  <input type='text'  id='"+tabid7+"' name='dlno[]' class='form-control' required autocomplete='off' value=''></td><td><span id='"+btnfldid+"'><a  onclick='addRow(); gettype();  regno();' href='javascript:void(0)' class='btn btn-sm btn-primary'><i class='fa fa-plus'></i></a> <a onclick='deleteRow("+d+")' href='javascript:void(0)' class='btn btn-sm btn-danger' ><i class='fa fa-trash'></i></a></span></td></tr>").appendTo(tbl);        
    $('#btnfld'+n).hide();
    }
    else
    {
        alert("You cannot give permission more than 5 Vehicles");
    }
    
} 
 
function deleteRow(txt) { 
    var id= 'tr'+txt;
    n = Number(txt)-1;
        $('#'+id).remove();  
        $('#btnfld'+n).show();
        var btnfldid="btnfld"+d; 
        calculate();
    }  
 function gettype()
 {
    $.ajax({
        url: 'getrep.php',
        type: 'post',
        data: {rep: 3}, 
        dataType: 'json',
        success:function(response){ 
            var len = response.length; 
            $(".vtype").empty();
            $(".vtype").append("<option value=''>--Select--</option>");
            for( var i = 0; i<len; i++){
                var id = response[i]['id'];
                var name = response[i]['name']; 
                $(".vtype").append("<option value='"+id+"'>"+name+"</option>");

            }
        }
        });
 }
 
</script>


