<style>
ul, li {
    display:inline; 
margin:6px 8px;
}
li { 
    border:1px solid #888; 
    padding:4px 6px;

}
</style>

<?php
include("config.php"); 
if(isset($_REQUEST['search']))
{
   $search=$_REQUEST['search'];
   if($search==1)
      $txt="General";
   elseif($search==2)
      $txt="OBC";
   elseif($search==3)
      $txt="SC";
   elseif($search==4)
      $txt="ST(H)";
   elseif($search==5)
      $txt="ST(P)";               
   elseif($search==6)
      $txt="EWS";   
   elseif($search==7)
      $txt="PWD";      
   else
      $txt="All";

   if($search=='')
   {
      $qry1 = "SELECT  a.*, d.mob ,d.dob, d.quali, d.docs FROM  candidates a inner join cand_details d on d.sl=a.sl  order by sl";      
   }
   else { 
      $qry1 = "SELECT  a.*, d.mob ,d.dob, d.quali, d.docs FROM  candidates a  inner join cand_details d on d.sl=a.sl where a.casteid='$search' order by sl";
   
      }
}
else {
    $search="";
    $txt="All";
        $qry1 = "SELECT  a.*, d.mob ,d.dob, d.quali, d.docs FROM  candidates a inner join cand_details d on d.sl=a.sl  order by sl";
}
 $rslt1=mysqli_query($mysqli,$qry1);
 $rowcount=mysqli_num_rows($rslt1);
    ?>
    <div style="margin-bottom:12px;">
     
 
<ul >
    <li> <a href="cand.php">Candidate Lists</a>

    </li>
    <li> <a href="results.php">Results</a>

    </li>
</ul>
    </div>
<div>
<table width="100%">
<tr>
<td>
<form action="cand.php" method="get"  name="myform" > 
<select name="search"  tabindex="7"  class="form-control" >
      <?php    $cat = mysqli_query($mysqli, "SELECT * from castemaster"); ?>
      <option value="">All</option>
      <?php while($r= mysqli_fetch_array($cat)) { ?>
         <option value="<?php echo $r["id"]; ?>"   <?php if( $r["id"]==$search)  echo 'selected';?>  > <?php echo  $r["caste"]; ?></option>
      <?php } ?>  
</select>
<input type="submit"  class="btn btn-primary" value="Search"> 
</form>
</td>
 
</tr>
</table>

</div>
<div>
<h3><?php echo $txt ?> Candidates (Total: <?php echo $rowcount ?>)</h3>
</div>
 <table border="1" cellpadding = "0" cellspacing = "0">
 <tr>
 <th>
 Sl. No.
 </th>
 <th>
 Roll No.
 </th>
 <th>
 Candidate's Name
 </th>
 <th>
Father's Name
 </th>
 <th>
Gender
 </th>
 <th>
Address
 </th> 
 <th>
Category
 </th> 
 <th>
Mobile
 </th> 
 <th>
DOB
 </th> 
 <th>
Qualification
 </th> 
 <th>
Docs
 </th> 
 </tr>
 <?php 
   $sl =0;
while($r= mysqli_fetch_array($rslt1)) {  
    $sl =$sl+1;
    ?>
 <tr>
 <td>
 <?php echo $sl ?>
 </td>
 <td>
 <?php echo $r['sl']; ?>
 </td>
 <td>
 <?php echo $r['candname']; ?>
 </td>
 <td>
 <?php echo $r['fathername']; ?>
 </td>
 <td>
 <?php echo $r['gender']; ?>
 </td>
 <td>
 <?php echo $r['address']; ?>
 </td> 
 <td>
 <?php echo $r['caste']; ?>
 </td> 
 <td>
 <?php echo $r['mob']; ?>
 </td> 
 <td>
 <?php echo $r['dob']; ?>
 </td> 
 <td>
 <?php echo $r['quali']; ?>
 </td> 
 <td>
 <?php echo $r['docs']; ?>
 </td> 
 </tr>
 <?php
 } 
 ?>
 </table>

 