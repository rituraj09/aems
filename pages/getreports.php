<?php

include("../config.php"); 
if(isset($_REQUEST['rep']) )
{
    if($_REQUEST['rep']=="1")
    {
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
        $sl = 0;
        $tot= 0;
        while($rsult= mysqli_fetch_array($rslt)) { 
            $sl = $sl+1;
            $data[] = [ 
                'sl'=>$sl, 
                'date'=> date('d-m-Y', strtotime($rsult['used_on'])),
                'reg_no'=> $rsult['reg_no'],
                'fname'=> $rsult['fname'],
                'fuel_tot'=> $rsult['fuel_tot'], 
            ];
            $tot=    $tot+ $rsult['fuel_tot'];

        } 
        echo json_encode(array('data' => $data, 'tot' => $tot));
    }



    if($_REQUEST['rep']=="2")
    {
        $reg=$_REQUEST['reg'];
        $qry = "Select a.id as id, a.reg_no,  a.fuel_request  as fuel_tot, a.used_on, c.name as fname from vehicle_assign a inner join vehicles b on a.reg_no=b.reg_no inner join fuels c on b.fuel_type = c.id where a.status=1  and a.reg_no='".$reg."'";
        $rslt=mysqli_query($mysqli,$qry); 
        $sl = 0;
        $tot= 0;
        while($rsult= mysqli_fetch_array($rslt)) { 
            $sl = $sl+1;
            $data[] = [ 
                'sl'=>$sl, 
                'id'=>$rsult['id'], 
                'transid'=>str_pad($rsult['id'], 4, "0", STR_PAD_LEFT),
                'date'=> date('d-m-Y', strtotime($rsult['used_on'])),
                'reg_no'=> $rsult['reg_no'],
                'fname'=> $rsult['fname'],
                'fuel_tot'=> $rsult['fuel_tot'], 
            ];
            $tot=    $tot+ $rsult['fuel_tot'];

        } 
        echo json_encode(array('data' => $data, 'tot' => $tot));
    }
}
 

?>
