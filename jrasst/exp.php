<?php


header("Content-Type: application/xls");    
$txt="exp";
$qry1 = "";
        if(isset($_REQUEST['cat']))
        {
            $cat=$_REQUEST['cat'];
            if($cat=='')
            {
                $qry1 = "SELECT  a.*, d.mark , c.mob ,c.dob, c.quali,  c.docs FROM  candidates a inner join cand_details c on c.sl=a.sl  inner join marks d on d.slno=a.sl  order by mark DESC";
          }
          else { 
 
                $qry1 = "SELECT  a.*, d.mark, c.mob ,c.dob, c.quali,  c.docs FROM  candidates a inner join cand_details c on c.sl=a.sl   inner join marks d on d.slno=a.sl where a.casteid='$cat' order by mark DESC";
   
             }
            if($cat==1)
                $txt="General_exp";
            elseif($cat==2)
                $txt="OBC_exp";
            elseif($cat==3)
                $txt="SC_exp";
            elseif($cat==4)
                $txt="ST_H_exp";
            elseif($cat==5)
                $txt="ST_P_exp";               
            elseif($cat==6)
                $txt="EWS_exp";   
            elseif($cat==7)
                $txt="PWD_exp";      
            else
                $txt="All_exp";
        }
        else {
            $qry1 = "SELECT  a.*, d.mark , c.mob ,c.dob, c.quali,  c.docs FROM  candidates a inner join cand_details c on c.sl=a.sl  inner join marks d on d.slno=a.sl  order by mark DESC";
   
            $txt="All_exp";
        }
        

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
                        <th>DOB</th> 
                        <th>Qualification</th> 
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
						<td>".$r['dob']."</td>
						<td>".$r['quali']."</td>
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