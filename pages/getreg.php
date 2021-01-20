<?php
include("../config.php"); 
if($_GET['op']=="1")
{
     $reg = $_GET['reg']; 
     $vehicles = mysqli_query($mysqli, "SELECT a.*, b.name as fname from vehicles a inner join fuels b on a.fuel_type=b.id where a.reg_no='".$reg."'"); 
     while($r= mysqli_fetch_array($vehicles)) {
          $name = $r["model"];
          $driver = $r["driver_name"];
           $driver_phone = $r["driver_phone"];
          $fuel = $r["fname"];
     }
     echo json_encode(array("name" => $name, "driver" => $driver, "driver_phone" => $driver_phone, "fuel" => $fuel)); 
  
}
elseif($_GET['op']=="2")
{
     $name = $_GET['name']; 
     $person = mysqli_query($mysqli, "SELECT * from personnel where name='".$name."'"); 
     while($r= mysqli_fetch_array($person)) {
          $phone = $r["phone"];
          $desig = $r["designation"]; 
     }
     echo json_encode(array("phone" => $phone, "desig" => $desig));
}
 
?>
