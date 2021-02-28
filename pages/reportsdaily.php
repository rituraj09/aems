<?php
include("../config.php");   
include("../layout/header.php");  
?>  


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card"> 
                <div class="card-body">  
                    <form action method="get" class="form-inline">
                      
                        <div class="form-group">
                            <label>From Date : </label>
                            <input type="text" name="fdate"  id="fdate" tabindex="1" class="form-control zdatepicker" autocomplete="off"  
                            placeholder="dd-mm-yyyy"   onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                            </div>  
                    
                        <div class="form-group" style="margin-left:80px;">
                            <label>To Date : </label>
                            <input type="text" name="tdate" id="tdate"   tabindex="1" class="form-control zdatepicker" autocomplete="off"   
                            placeholder="dd-mm-yyyy"   onblur="ValidateDate(this, event.keyCode);" onkeydown="return DateFormat(this, event.keyCode)" maxlength="10" onfocus="this.select();">
                    
                        </div>  
                        
                        <div class="form-group"  style="margin-left:80px;">
                            <label>Fuel Type : </label>
                            <select name="fuel"  id="fuel"  tabindex="9" class="form-control" >
                                    <?php    $fuels = mysqli_query($mysqli, "SELECT * from fuels"); ?>
                                    <option value="">All</option>
                                    <?php while($r= mysqli_fetch_array($fuels)) { ?>
                                            <option value="<?php echo $r["id"]; ?>"      > <?php echo  $r["name"]; ?></option>
                                    <?php } ?>  
                                </select>
                        </div>   
                        <div class="col-md-3"> 
                        <a href="javascript:void(0)"  class="btn btn-primary" onclick="getrep()" > Search</a>  
                                <a href="reportsdaily.php" class="btn btn-warning">Clear</a>
                            </div>
                    </form>
                </div>
            </div>
            <div id="view-print"  class="card"> 
                <div class="card-body">
                    <div class="row"> 
                        <div class="col-md-12">
                            <table id="report" class="table table-bordered ">
                                <thead>
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
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th colspan="4" style="text-align:right">Page Total:<br>All Total:</th>
                                        <th ></th>
                                        <th ></th>
                                    </tr>
                            </tfoot>
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
$(document).ready(function() { 
    getrep();
}); 
function getrep()
{
    var fdate= $("#fdate").val();
    var tdate= $("#tdate").val(); 
    var e = document.getElementById("fuel");
    var fuel = e.options[e.selectedIndex].value;
    $.fn.dataTable.ext.errMode = 'none';
    var table =$('#report').DataTable( {
        processing: true,
        serverSide: false,
        bDestroy: true,
        ajax: {
            url: "getreports.php",
            data: {rep: 1, fdate:fdate, tdate:tdate, fuel:fuel}, 
        },
        order: [[ 0, "asc" ]],
        columns: [
            { data: "sl", name: "sl",orderable: true, searchable: true, visible: true },
            { data: "date" , name: "date",orderable: true, searchable: false, visible: true },
            { data: "reg_no", name: "reg_no",orderable: true, searchable: true, visible: true },
            { data: "fname", name: "fname",orderable: true, searchable: false, visible: true },
            { data: "fuel_tot", name: "fuel_tot",orderable: true, searchable: true, visible: true }, 
            { data: "desig", render:function (data, type, row) {
                    let  out = '<a href="reportstrans.php?reg='+row.reg_no+'" class="btn btn-sm btn-success" title="View Details"><i class="fa fa-circle"></i></a>'
                     return out;
                    }
                },
        ],
        "footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data; 
            // Remove the formatting to get integer data for summation
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\$,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            }; 
            // Total over all pages
            total = api
                .column( 4 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 ); 
            // Total over this page
            pageTotal = api
                .column( 4, { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
 
            // Update footer
            $( api.column( 4 ).footer() ).html(
                pageTotal +'<br>'+ total 
            );
        }
    });
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
 
 