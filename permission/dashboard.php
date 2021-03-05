<?php
include("../config.php");   
include("../layout/header.php");  
    $cnt1=0;
    $cnt2=0;
    $sql1= "select count(1) as cnt from permission where status=1";
    $s= mysqli_query($mysqli, $sql1); 
    while( $r = mysqli_fetch_array($s) ) {
        $cnt1=$r["cnt"];
    }

    $sql1= "select count(1) as cnt from perm_vehicles where status=1";
    $s= mysqli_query($mysqli, $sql1); 
    while( $r = mysqli_fetch_array($s) ) {
        $cnt2=$r["cnt"];
    }
?>  


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="icon-speedometer"></i> Dashboard</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card text-white bg-info"> 
                <div class="card-body text-center">
                <h1>Total No of Permission Given</h1>
                <h1><?php echo $cnt1 ?></h1>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-white bg-success"> 
                <div class="card-body text-center">
                <h1>Total No of Vehicles Registered</h1>
                <h1><?php echo $cnt2 ?></h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            
            <div class="card"> 
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
                                            Letter No
                                        </th>
                                        <th>
                                            Candidate/ Election Agent/ Leader of Political Party 
                                        </th>
                                        <th>
                                            Political Party Name
                                        </th>
                                        <th width="70px">
                                            No.(s) of Vehicles 
                                        </th>
                                        <th width="130px">
                                           Date from
                                        </th>
                                        <th width="130px">
                                            Date to
                                        </th>
                                        <th >
                                            Prepared By
                                        </th>
                                        <th width="40px">
                                            Action
                                        </th>
                                    </tr>
                                </thead>
                               
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
     
    $.fn.dataTable.ext.errMode = 'none';
    var table =$('#report').DataTable( {
        processing: true,
        serverSide: false,
        bDestroy: true,
        ajax: {
            url: "getrep.php",
            data: {rep: 1}, 
        },
        order: [[ 0, "asc" ]],
        columns: [
            { data: "sl", name: "sl",orderable: true, searchable: true, visible: true },
            { data: "letterno" , name: "letterno",orderable: true, searchable: true, visible: true },
            { data: "name" , name: "name",orderable: true, searchable: true, visible: true },
            { data: "party", name: "party",orderable: true, searchable: true, visible: true }, 
            { data: "cnt", name: "cnt",orderable: true, searchable: true, visible: true },
            { data: "datefrom", name: "datefrom",orderable: true, searchable: true, visible: true },
            { data: "dateto", name: "dateto",orderable: true, searchable: true, visible: true }, 
            { data: "user", name: "user",orderable: true, searchable: true, visible: true }, 
            { data: "dateto", render:function (data, type, row) {
                    let  out = '<a href="reportstrans.php?id='+row.id+'" class="btn btn-sm btn-success" title="View Details"><i class="fa fa-circle"></i></a>'
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
 
 