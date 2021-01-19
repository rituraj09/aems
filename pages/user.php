<?php
include("../config.php"); 
include("../layout/header.php"); 
$name = "";
$name_err="";
$desig =""; 
$desig_err="";
$phone ="";
$phone_err="";
$password_err ="";
$confirm_password_err =""; 
$confirm_password =""; 
$type =""; 
$ok_username = "";
$type_err="";
$msg="";  
if(isset($_POST['Submit']))
{
    $phone =  trim($_POST['phone']);
    $name =   $_POST['name']; 
    $desig =  $_POST['desig']; 
    $password =  $_POST['password']; 
    $type =  $_POST['type']; 
    $confirm_password =  $_POST['confirm_password']; 
    // Validate username 
    if(empty($_POST["name"])){
        $name_err = "Please enter Name.";
    } 
    elseif(empty(trim($_POST["desig"]))){
        $desig_err = "Please enter the Designation.";
    } 
    elseif(empty(trim($_POST["phone"]))){
        $phone_err = "Please enter a Phone Number.";
    } 
    elseif(empty($_POST["type"])){
        $type_err = "Please select the type.";
    } 
    elseif(empty($_POST["password"])){
        $password_err = "Please enter the password.";
    }    
    elseif(strlen(trim($_POST["password"])) < 6){
        $password_err = "Password must have atleast 6 characters.";
    }
    elseif(empty($_POST["confirm_password"])){
        $confirm_password_err = "Please confirm the password.";
    }
    elseif($_POST["password"]!=$_POST["confirm_password"]){
        $confirm_password_err = "Password not matching.";
    }
    else
    {  
        $s = "SELECT count(1) as cnt from users where phone = '$phone'";
        $sqlx = mysqli_query($mysqli, $s);         
        while($str = mysqli_fetch_array($sqlx))
        { 
            if((int)$str["cnt"]<1)
            {  
                $param_password = md5($password); 
                //$param_password = password_hash($password, PASSWORD_DEFAULT); 
                $sql="Insert into users (name,designation, phone, password, user_type) values ('$name','$desig','$phone', '$param_password', $type)";
                $result=mysqli_query($mysqli,$sql);
                if($result=="1")
                {                   
                    $msg="<span style='color:green'>Successfully Save.</span>";
                    $name_err="";
                    $phone="";
                    $phone_err="";
                    $desig="";
                    $desig_err="";
                    $password_err ="";
                    $confirm_password_err ="";
                    $name = "";
                    $password ="";
                    $confirm_password ="";
                    $user_name =""; 
                    $type =""; 
                    $ok_username = "";
                    $type_err="";
                } 
                else{
                    $msg="<span style='color:red'>Somthings went wrong!</span>";
                }
            }
            else
            {
                $phone_err = "User with this phone number is already available.";
            }
        }            
    }
          
} 
 ?>
 
 <div class="container-fluid">
 <div class="row"> 
    <div class="col-md-10">
    <p><b><?php echo $msg ?></b></p>
    </div>
</div> 
    <div class="row"> 
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    Please fill the form to create an User
                </div> 
                <div class="card-body">
                    <form action="user.php" method="POST"  name="form1" onsubmit="return validation()">
                        <div class="form-group <?php echo (!empty($name_err)) ? 'has-error' : ''; ?>">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" required value="<?php echo $name; ?>">
                            <span class="help-block"><?php echo $name_err; ?></span>
                        </div> 
                        <div class="form-group <?php echo (!empty($desig_err)) ? 'has-error' : ''; ?>">
                            <label>Designation</label>
                            <input type="text" name="desig" class="form-control" required value="<?php echo $desig; ?>">
                            <span class="help-block"><?php echo $desig_err; ?></span>
                        </div> 
                        <div class="form-group <?php echo (!empty($phone_err)) ? 'has-error' : ''; ?>">
                            <label>Phone</label>
                            <input type="text" name="phone" class="form-control" required value="<?php echo $phone; ?>">
                            <span class="help-block"><?php echo $phone_err; ?></span>
                        </div>    
                        <div class="form-group <?php echo (!empty($type_err)) ? 'has-error' : ''; ?>">
                            <label>User Type</label>
                            <select name="type" required   class="form-control" >
                                <option value="">--Select--</option>
                                <option value="2">Content Manager</option>
                                <option value="3">Viewer</option>
                            </select>
                            <span class="help-block"><?php echo $type_err; ?></span>
                        </div>   
                        <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control"  required value="<?php echo $password; ?>">
                            <span class="help-block"><?php echo $password_err; ?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($confirm_password_err)) ? 'has-error' : ''; ?>">
                            <label>Confirm Password</label>
                            <input type="password" name="confirm_password"   required class="form-control" value="<?php echo $confirm_password; ?>">
                            <span class="help-block"><?php echo $confirm_password_err; ?></span>
                        </div>
                        <div class="form-group">
                        <input type="submit" name="Submit" value="Submit" class="btn btn-primary"  > 
                        <a href="users.php" class="btn btn-default">Reset</a> 
                        </div>
                    </form> 
                </div> 
            </div>
        </div> 
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    User List
                </div> 
                <div class="card-body">
                    <table  class="table table-bordered" width="100%"  style="font-size:13px !important;">
                        <tr>
                        <th>
                        #Sl.
                        </th>
                        <th>
                        Name 
                        </th>
                        <th>
                        Designation 
                        </th>
                        <th>
                        User Name
                        </th> 
                        <th>
                        User Type
                        </th> 
                        <th></th>
                        </tr>
                        <?php 
                        $sql="SELECT * from users where status=1"; 
                        $rslt = mysqli_query($mysqli, $sql) ; 
                        $sno=1; while($r= mysqli_fetch_array($rslt))

                        { ?>
                        <tr>
                        <td>
                        <?php echo $sno; $sno ++; ?>
                        </td>
                        <td>
                        <?php echo  $r["name"]?>
                        </td>
                        <td>
                        <?php echo  $r["designation"]?>
                        </td>
                        <td>
                        <?php echo  $r["phone"]?>
                        </td>
                        <td>
                            <?php if( $r["user_type"] == "1" )
                                {
                                    echo "Admin";                
                                }
                                elseif( $r["user_type"] == "2" ) 
                                {
                                    echo "Content Manager";                
                                }
                                else
                                {
                                    echo "Viewer";                
                                } 
                            ?>
                        </td>
                        <td> 
                        <a class='btn btn-xs btn-info'  
                            href='user_pass.php?id=<?php echo $r["id"];  ?>' >change Password</a> 
                        </td>
                        </tr>
                        <?php } ?>
                    </table>    
                </div> 
            </div>
        </div>  
    </div> 
</div>

<?php 
include("../layout/footer.php"); 
?>