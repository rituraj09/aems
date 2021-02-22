<?php
include("../config.php"); 
include("../layout/header.php"); 
$name = "";
$password="";
if(isset($_REQUEST['id']))
{  
    $id=$_REQUEST['id'];
    if(isset($_POST['Submit']))
    {
        $password =  trim($_POST['password']); 
        $param_password = md5($password); 
        $sql="update users set  password = '$param_password' where id='$id'";
        $result=mysqli_query($mysqli,$sql);
        echo "success";
    }
}
?>

<div class="col-md-6 col-sm-12">
            <div class="card">
              
                <div class="card-body">
<form action="changes.php?id=<?php echo $id ?>" method="post"> 
<input type="password" class="form-control"  name="password" placeholder="Password">  

<input type="submit" name="Submit" value="Submit" class="btn btn-primary"  > 
</form>
</div>
</div>
</div>


<?php 
include("../layout/footerhead.php"); 
 ?>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

 <?php
include("../layout/basefooter.php"); 
?> 
