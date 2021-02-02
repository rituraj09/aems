<?php


header("Content-Type: application/xls");    
$qry1 = "";
        if(isset($_REQUEST['cat']))
        {
            $cat=$_REQUEST['cat'];
            if($cat=='')
            {
                $qry1 = "SELECT  a.*, c.caste, d.mark FROM  cand a inner join categories b on a.roll=b.rollno inner join castemaster c on b.caste=c.id   inner join marks d on d.slno=a.sl  order by mark DESC";
            }
            else {
                $qry1 = "SELECT  a.*, c.caste, d.mark FROM  cand a inner join categories b on a.roll=b.rollno inner join castemaster c on b.caste=c.id   inner join marks d on d.slno=a.sl where c.id='$cat' order by mark DESC";
            }
           
        }
        else {
            $qry1 = "SELECT  a.*, c.caste, d.mark FROM  cand a inner join categories b on a.roll=b.rollno inner join castemaster c on b.caste=c.id   inner join marks d on d.slno=a.sl  order by mark DESC";
        }
        if($_REQUEST['cat']==1)
      $txt="General_exp";
   elseif($_REQUEST==2)
      $txt="OBC_exp";
   elseif($_REQUEST==3)
      $txt="SC_exp";
   elseif($_REQUEST==4)
      $txt="ST_H_exp";
   elseif($_REQUEST==5)
      $txt="ST_P_exp";               
   elseif($_REQUEST==6)
      $txt="EWS_exp";   
   elseif($_REQUEST==7)
      $txt="PWD_exp";      
   else
      $txt="All_exp";

    $filename=$txt.".xls";
	header("Content-Disposition: attachment; filename=$filename");  
	header("Pragma: no-cache"); 
	header("Expires: 0");
 
	include("config.php"); 
 
	$output = "";
 
 
		$output .="
			<table  border='1' cellpadding = '0' cellspacing = '0'>
				<thead>
					<tr>
                    <th>Sl. No.</th>
						<th>Roll No.</th>
						<th>Candidate's Name</th>
						<th>Father's Name</th>
						<th>Gender</th>
						<th>Address</th>
                        <th>Category</th> 
						<th>Total Marks</th>
					</tr>
				<tbody>
        ";
        
		
        $rslt1=mysqli_query($mysqli,$qry1);
        
        $sl =0;
        while($r= mysqli_fetch_array($rslt1)){
            $sl =$sl+1;
		$output .= "
                    <tr>
                        <td>".$sl ."</td>
						<td>".$r['sl']."</td>
						<td>".$r['candname']."</td>
						<td>".$r['fathername']."</td>
						<td>".$r['gender']."</td>
						<td>".$r['address']."</td>
						<td>".$r['caste']."</td>
						<td>".$r['mark']."</td>
					</tr>
		";
		}
 
		$output .="
				</tbody>
 
			</table>
		";
 
		echo $output;
	 
 
?>