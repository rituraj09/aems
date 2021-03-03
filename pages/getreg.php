<?php
include("../config.php"); 
if($_GET['op']=="1")
{
     $reg = $_GET['reg'];    
     $date = date('Y-m-d', strtotime($_GET['date'])); 
     $cnt=0;
     $vehicles = mysqli_query($mysqli, "SELECT a.*, b.name as fname from vehicles a inner join fuels b on a.fuel_type=b.id where a.reg_no='".$reg."'"); 
 	 $name ="";
     $driver="";
     $driver_phone ="";
     $fuel ="";
     $cnt = "0";  
	 while($r= mysqli_fetch_array($vehicles)) {
          $name = $r["model"];
          $driver = $r["driver_name"];
           $driver_phone = $r["driver_phone"];
          $fuel = $r["fname"];

          $qry =  mysqli_query($mysqli, "SELECT count(1) as cnt from vehicle_assign where used_on='".$date."' and  reg_no='".$reg."' group by used_on, reg_no"); 
          while($s1= mysqli_fetch_array($qry)) {
               $cnt = $s1["cnt"];
          }
     }
     echo json_encode(array("name" => $name, "driver" => $driver, "driver_phone" => $driver_phone, "fuel" => $fuel, "cnt" => $cnt)); 
  
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
