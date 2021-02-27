<?php
include("../config.php");   
include("../layout/baseheader.php"); 

$qry = "SELECT head, office,depcode, branch FROM `polling` group by depcode";
$rslt=mysqli_query($mysqli,$qry);
?>
<style> 
@media print {
  .divfooter {page-break-after: always; page-break-inside: avoid;}
}
</style>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
        <div class="card"> 
            <div class="card-body text-center">  
                <input type="button" class="btn btn-md btn-danger" onclick="printDiv('view-print')" value="Print" /> 
                
            </div>
        </div>
        <div id="view-print"  class="card"> 
   <?php     while($r= mysqli_fetch_array($rslt)) {  ?>
            <div class="row divfooter" style="font-size:11px !important;"> 
                <div class="col-md-12"  style=" width:100%">
                <table  width="100%" >
                    <tr>
                        <td colspan="2" >
                
                        <div  style="text-align: center; width:100%;">  
                        <h6> <b style=" text-decoration: underline; float:right">ELECTION URGENT</b></h6>  <br>
                            <div style="line-height:3px;">
                                <h4><b>Govt. of Assam</b> <br>
                                 <b>Office of the Deputy Commissioner, Golaghat</b></h4>
                            </div>
                            <b>(PERSONNEL CELL,ASSEMBLY ELECTION/2021)</b><br>
                            
                        </div>
                      
                      <p>No.GLT/GEN.Elec/P.Cell/02/2021/8			<span style="float:right">Dated Golaghat the 23rd Feb.’2021</span></p>  
                    
                        To,<br>
                        <div style=" text-indent: 40px;" > The <?php echo $r["head"] ?> </div>
                        <div style=" text-indent: 40px;" >  <?php echo $r["office"] ?>, <?php echo $r["branch"] ?> </div>
                        <br>      
                            Sub:-	  <span style=" margin-left: 12px;" > Regarding verification of Polling officials in connection with forthcoming Assembly Election,2021.</span>
                            <br><br>
                          <p> Sir/Madam, </p>  
                            <p style=" text-indent: 40px;  text-align: justify;" > With reference to the above, this is to inform you that the following employees under your establishment have been drafted for poll duty (Presiding Officer) for the forthcoming Assembly Election,2021. You are directed to verify these details and revert back with updated list in both <b>hard and soft copy (Prescribed Excel format)on or before 1st March’2021to the Personnel Cell (Shri Prayas Boruah, Cont: 9401911280), Assembly Election/2021,D.C’s Office, Golaghat (mail to golaghatelection@gmail.com)</b>without fail. </p>
                         <table style="width:100%;" border="1">
                                <tr>
                                <th>
                                Sl.
                                </th>
                                <th>
                                Polling <br> Id 
                                </th>
                                <th>
                                Name 
                                </th>
                                <th>
                                Designation
                                </th>
                                <th>
                                Office
                                </th>
                                <th>
                                PAN No.<br> (To be provided)
                                </th>
                                <th>
                                Date of Birth<br> (DD/MM/YYYY)<br> (To be provided)
                                </th>
                                <th>
                                Mobile No.
                                </th>
                                <th>
                                Corrected<br> Mobile No.<br> (To be provided in <br>case of any changes)
                                </th>
                                <th>
                                Remarks
                                </th>
                                </tr>
                                     <?php
                                    $oid=$r["depcode"];
                                    $qy = "SELECT * FROM `polling` where depcode = '$oid'";
                                    $rt=mysqli_query($mysqli,$qy); 
                                    $sl =0; 
                                    while($s= mysqli_fetch_array($rt)){  $sl =$sl+1;
                                    ?>
                                <tr>
                                <td>
                                <?php echo $sl ?>
                                </td>
                                <td>
                                <?php echo $s['pollid']; ?>
                                </td>
                                <td>
                                <?php echo $s['name']; ?>
                                </td>
                                <td>
                                <?php echo $s['desig']; ?>
                                </td>
                                <td>
                                <?php echo $s['office']; ?>
                                </td>
                                <td>
                      
                                </td>
                                <td>
                           
                                </td>
                                
                                <td>
                                <?php echo $s['phone']; ?>
                                </td>
                                <td>
                         
                                </td>
                                <td>
                         
                                </td>
                                </tr>
                             <?php }?>
                            </table>

                            <p style=" text-indent: 40px;" >  You are also requested to take a note of following points:-<br></p>

                    
                    <div style=" text-indent: 60px;" >  1.	Correct Mobile number. (Please updae in case of any changes)    </div>  
                    <div style=" text-indent: 60px;" >    2.	Provide <b> PAN number</b> and<b>  Date of Birth</b> (in DD/MM/YYYY format) for all the above mentioned officials.    </div>  
                    <div style=" margin-left: 60px;" >    3.	Any health related exemption request should be made to the District Election Officer through HOD and the same will be forwarded to the medical board for examination.<br><br>
                            </div> </div>       
                         
                            <div class="row"> 
                            <div  class="col-md-12">
                                <div  style="text-align: center; width:30%; float:right;">  
                                Yours Faithfully<br>
                                <img src="signature.jpg" alt="Signature" style="width:40%"> 
<br>
                                    Deputy Commmissioner, Golaghat<br>
                                    &<br>
                                    District Election Officer,
                                    Golaghat<br>
                                    </div> 
                            </div> 
                            </div>  
                            
                    </td>
                    </tr>
                 
                    </table>
                </div>
            </div>
<?php } ?>
        </div>
    </div> 
</div>

  
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
</script>