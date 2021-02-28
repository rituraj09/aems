<?php
include("../config.php"); 
include("../layout/header.php");
?>
 <div class="container-fluid">
    <div class="row"> 
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fa fa-car"></i> Vehicle List <span class="pull-right"><a href="vehicle.php" class="btn btn-sm btn-warning">New Entry</a></span></h3>
                </div>
                <div class="card-body">
                    <table id="vehicles" class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Sl. No</th>
                                <th>Reg. No.</th>
                                <th>Vehicle Name</th> 
                                <th>Driver Name</th>
                                <th>Driver Phone</th>
                                <th>Vehicle Type</th>
                                <th>Used In</th>
                                <th>Fuel</th>
                                <th>
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
 <?php 
include("../layout/footer.php"); 
?>
<script>
$('document').ready(function()
{
$.fn.dataTable.ext.errMode = 'none';
        $('#vehicles').DataTable( {
            processing: true,
            serverSide: false,
            bDestroy: true,
            ajax: {
                url: "getvehicles.php",
                data: {id: 2},
            },
            order: [[ 0, "asc" ]],
            columns: [
                { data: "sl", name: "sl",orderable: true, searchable: true, visible: true },
                { data: "reg_no" , name: "reg_no",orderable: true, searchable: true, visible: true },
                { data: "model", name: "model",orderable: true, searchable: true, visible: true },
                { data: "driver_name", name: "driver_name",orderable: true, searchable: true, visible: true },
                { data: "driver_phone", name: "driver_phone",orderable: true, searchable: true, visible: true },
                { data: "vtype", name: "vtype",orderable: true, searchable: true, visible: true },
                { data: "usedin", name: "usedin",orderable: true, searchable: true, visible: true },
                { data: "fuel", name: "fuel",orderable: true, searchable: true, visible: true },
                { data: "desig", render:function (data, type, row) {
                    let  out = '<a href="vehicleslip.php?id='+row.id+'" class="btn btn-sm btn-success" title="View Details"><i class="fa fa-circle-o"></i></a> <a href="#" class="btn btn-sm btn-warning" title="Edit"  ><i class="fa fa-pencil"></i></a> '
                    out +=' <a href="vehicleslip.php?id='+row.id+'" class="btn btn-sm btn-primary" title="Print Slip"><i class="fa fa-print"></i></a> <a href="vehicleslip.php?id='+row.id+'" class="btn btn-sm btn-danger" title="Discharge Vehicle"><i class="fa fa-times-rectangle-o"></i></a>'
                         
                    return out;
                    }
                },
                
            ]
        });
});
</script>