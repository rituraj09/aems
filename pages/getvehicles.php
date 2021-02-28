<?php

include("../config.php"); 
if(isset($_REQUEST['id']) )
{
    if($_REQUEST['id']==1)
    {
        $qry="select a.*, b.name as fuel, c.name as vtype,d.name as usedin from vehicles a inner join fuels b on a.fuel_type=b.id inner join vehicle_types c on a.vehicle_type=c.id inner join election_types d on a.used_type=d.id where a.status=1 order by a.id";
    }    
    else {
        $qry="select a.*, b.name as fuel, c.name as vtype,d.name as usedin from vehicles a inner join fuels b on a.fuel_type=b.id inner join vehicle_types c on a.vehicle_type=c.id inner join election_types d on a.used_type=d.id  order by a.id";
    }
}
$sl=0;

$s= mysqli_query($mysqli, $qry);  
while( $row = mysqli_fetch_array($s) ) {
     $sl=$sl+1;
    $data[] = [ 
        'sl'=>$sl,
        'id'=>$row["id"],
        'reg_no'=> $row["reg_no"],
        'model'=> $row["model"],
        'owner_name'=> $row["owner_name"],
        'owner_phone'=> $row["owner_phone"],
        'driver_name'=> $row["driver_name"],
        'driver_phone'=> $row["driver_phone"],
        'vtype'=> $row["vtype"],
        'usedin'=> $row["usedin"], 
        'fuel'=> $row["fuel"], 
    ];

} 
echo json_encode(array('data' => $data));
?>
