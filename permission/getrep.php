<?php

include("../config.php"); 
if(isset($_REQUEST['rep']) )
{
    if($_REQUEST['rep']=="1")
    { 
         
    
        $qry = "select a.*,p.name as party, u.name as user from permission a inner join political p on a.political_party=p.id inner join users u on a.cby=u.id  where a.status=1 order by from_date desc";
        $rslt=mysqli_query($mysqli,$qry); 
        $sl = 0;
        $tot= 0;
        $cnt=0;
        while($rsult= mysqli_fetch_array($rslt)) { 
            $lac="";
                $q = "select count(1) as cnt from perm_vehicles where status=1 and per_id=".$rsult['id'];
                $rs=mysqli_query($mysqli,$q); 
                while($r= mysqli_fetch_array($rs)) { 
                    $cnt= $r['cnt'];
                }
                if($rsult['lac']==95)
                {
                    $lac="95-Golaghat";
                }
                else {
                    $lac="96-Khumtai";
                }
            $sl = $sl+1;
            $data[] = [ 
                'sl'=>$sl, 
                'id'=> $rsult['id'], 
                'letterno'=>"ELE/2021/PER/".str_pad($rsult['id'], 5, "0", STR_PAD_LEFT),
                'datefrom'=> date('d-m-Y', strtotime($rsult['from_date'])),
                'dateto'=> date('d-m-Y', strtotime($rsult['to_date'])),
                'name'=> $rsult['candname'],
                'lac'=> $lac,
                'party'=> $rsult['party'], 
                'user'=> $rsult['user'], 
                'cnt'=> $cnt, 
            ]; 

        } 
        echo json_encode(array('data' => $data));
    }
    if($_REQUEST['rep']=="2")
    {
        $id=$_REQUEST['id'];
        $qry = "Select a.*,v.name from perm_vehicles a inner join vehicle_types v on a.vehicle_type=v.id where a.status =1   and a.id=".$id;
        $rslt=mysqli_query($mysqli,$qry); 
        $sl = 0;
        $tot= 0;
        while($rsult= mysqli_fetch_array($rslt)) { 
            $sl = $sl+1;
            $data[] = [ 
                'sl'=>$sl, 
                'id'=>$rsult['id'],  
                'type'=>   $rsult['vehicle_type'],
                'regno'=>  strtoupper($rsult['reg_no']),
                'oname'=> $rsult['owner_name'],
                'ophone'=> $rsult['owner_phone'],
                'dname'=> $rsult['driver_name'],
                'dphone'=> $rsult['driver_phone'],
                'dlno'=> $rsult['license'], 
            ]; 
        } 
        echo json_encode(array('data' => $data));
    }
    if($_REQUEST['rep']=="3")
    { 
        $sql = "Select * from vehicle_types";
        $result = mysqli_query($mysqli,$sql);
        while( $row = mysqli_fetch_array($result) ){
            $userid = $row['id'];
            $name = $row['name']; 
            $users_arr[] = array("id" => $userid, "name" => $name);
        } 
      echo json_encode($users_arr);
    }
     
}
?>
