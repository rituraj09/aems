<?php
include("../config.php");   
include("../layout/header.php"); 
$srch =   $a1 = $a2 =$a3 ="";
if(isset($_REQUEST['fdate']) && isset($_REQUEST['tdate']) )
{
    if($_REQUEST['fdate']!="" && ($_REQUEST['tdate']!="") )
    {
        $fdate=$_REQUEST['fdate'];
        $tdate=$_REQUEST['tdate'];
        $a1= " and used_on between '".  date('Y-m-d',strtotime($fdate)) ."' and '".date('Y-m-d', strtotime($tdate))."'";
    }
    else {
        $fdate="";
        $tdate="";
        $a1="";
    }
   
}
else {
    $fdate="";
    $tdate="";
    $a1="";
} 
if(isset($_REQUEST['fuel']))
{
    if($_REQUEST['fuel']!="")
    {
        $fuel=$_REQUEST['fuel'];
        $a3= " and c.id=".  $fuel;
    }
    else {
        $fuel="";
        $a3="";
    }
}
else {
    $fuel="";
    $a3="";
} 
$srch =$a1.$a2.$a3;


$qry = "Select a.reg_no, sum(a.fuel_request) as fuel_tot, a.used_on, c.name as fname from vehicle_assign a inner join vehicles b on a.reg_no=b.reg_no inner join fuels c on b.fuel_type = c.id where a.status=1 ".$srch."  group by a.reg_no,a.used_on,a.fuel_type order by a.used_on";
 
$rslt=mysqli_query($mysqli,$qry); 

?>  


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card"> 
                <div class="card-body">  
                    <form action method="get" class="form-inline">
                      
                        <div class="form-group">
                            <label>From Date : </label>
                            <input type="text" name="fdate"  tabindex="1" class="form-control zdatepicker" autocomplete="off"  value="<?php echo $fdate ?>"  
                            placeholder="dd-mm-yyyy"   onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                            </div>  
                    
                        <div class="form-group" style="margin-left:80px;">
                            <label>To Date : </label>
                            <input type="text" name="tdate"  tabindex="1" class="form-control zdatepicker" autocomplete="off"  value="<?php echo $tdate ?>"  
                            placeholder="dd-mm-yyyy"   onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                    
                        </div>  
                        
                        <div class="form-group"  style="margin-left:80px;">
                            <label>Fuel Type : </label>
                            <select name="fuel"   tabindex="9" class="form-control" >
                                    <?php    $fuels = mysqli_query($mysqli, "SELECT * from fuels"); ?>
                                    <option value="">All</option>
                                    <?php while($r= mysqli_fetch_array($fuels)) { ?>
                                            <option value="<?php echo $r["id"]; ?>"  <?php if( $r["id"]==$fuel)  echo 'selected';?>     > <?php echo  $r["name"]; ?></option>
                                    <?php } ?>  
                                </select>
                        </div>   
                        <div class="col-md-3"> 
                                <input type="submit"  class="btn btn-primary" value="Search"> 
                                <a href="reportsdaily.php" class="btn btn-warning">Clear</a>
                            </div>
                    </form>
                </div>
            </div>
            <div id="view-print"  class="card"> 
                <div class="row"> 
                    <div class="col-md-12">
                        <table   class="table table-bordered ">
                            <tr>
                                <th width="60px">
                                Sl No.
                                </th>
                                <th>
                                    Date
                                </th>
                                <th>
                                    Vehicle No.
                                </th>
                                <th>
                                    Fuel Type
                                </th>
                                <th width="130px">
                                    Fuel Qty (in Lt).
                                </th>
                                <th width="80px">
                                    Action
                                </th>
                            </tr>
                            <?php
                            $sl = 0;
                            $tot= 0;
                            while($rsult= mysqli_fetch_array($rslt)) { 
                                $sl = $sl+1;
                                ?>
                            <tr>
                                <td>
                                <?php echo $sl; ?>
                                </td>
                                <td>
                                <?php echo date('d-m-Y', strtotime($rsult['used_on'])); ?>
                                </td>
                                <td>
                                <?php  echo $rsult['reg_no']; ?>
                                </td>
                                <td>
                                <?php  echo $rsult['fname']; ?>
                                </td>
                                <td>
                                <?php echo $rsult['fuel_tot']; 
                                   $tot=    $tot+ $rsult['fuel_tot'];
                                ?>
                                </td>
                                <td>
                                    <a href="reportstrans.php?reg=<?php echo $rsult['reg_no']?>" class="btn btn-sm btn-success"><i class="fa fa-circle-o"></i></a>
                                </td>
                            </tr>
                            <?php }?>
                            <tr>
                            <td colspan="4">
                                <b style="float:right;">Total</b>
                            </td>
                            <td colspan="2">
                                <?php echo  $tot ?>
                            </td>
                            </tr>
                        </table>
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
$(document).ready(function() {
        $('#userTable').DataTable();
    });
 
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