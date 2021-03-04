<?php
include("../config.php"); 
include("../layout/header.php"); 

?>  


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            
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
                                            Trans ID
                                        </th>
                                        <th>
                                            Date
                                        </th>
                                        <th>
                                            Vehicle No.
                                        </th>
                                        <th>
                                            Model
                                        </th>
                                        <th>
                                            Vehicel Type
                                        </th>
                                        <th>
                                            Driver Name
                                        </th>
                                        <th>
                                            Used In
                                        </th>
                                        <th>
                                            Fuel Type
                                        </th>
                                        <th>
                                            Distance Travelled
                                        </th>
                                        <th width="130px">
                                            Fuel Qty (in Lt).
                                        </th>
                                        <th>
                                            Issued By
                                        </th> 
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th colspan="10" style="text-align:right">Page Total:<br>All Total:</th>
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
$(document).ready(function() {  
    var qs = window.location.search.split('reg=')[1]
    getrep(qs);
})
function getrep()
{   
    $.fn.dataTable.ext.errMode = 'none';
    var table =$('#report').DataTable( {
        processing: true,
        serverSide: false,
        bDestroy: true,
        ajax: {
            url: "getreports.php",
            data: {rep: 3}, 
        },
        order: [[ 0, "asc" ]],
        columns: [
            { data: "sl", name: "sl",orderable: true, searchable: true, visible: true },
            { data: "transid" , name: "transid",orderable: true, searchable: true, visible: true },
            { data: "date" , name: "date",orderable: true, searchable: true, visible: true },
            { data: "reg_no", name: "reg_no",orderable: true, searchable: true, visible: true },
            { data: "model", name: "model",orderable: true, searchable: true, visible: true },
            { data: "v_type", name: "v_type",orderable: true, searchable: true, visible: true },
            { data: "dname", name: "dname",orderable: true, searchable: true, visible: true },
            { data: "used_in", name: "used_in",orderable: true, searchable: true, visible: true },
            { data: "fname", name: "fname",orderable: true, searchable: true, visible: true },
            { data: "dist", name: "dist",orderable: true, searchable: true, visible: true }, 
            { data: "fuel_tot", name: "fuel_tot",orderable: true, searchable: true, visible: true }, 
            { data: "cby", name: "cby",orderable: true, searchable: true, visible: true }, 
            
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
                .column( 10 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 ); 
            // Total over this page
            pageTotal = api
                .column( 10, { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
 
            // Update footer
            $( api.column( 10 ).footer() ).html(
                pageTotal +'<br>'+ total 
            );
        }
    });
}
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
</script>