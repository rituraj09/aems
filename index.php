<?php
session_start();
include("layout/baseheader.php"); 
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: pages/dashboard.php");
    exit;
}
include("config.php");  
// Define variables and initialize with empty values
$name = $phone = $password =  $designation="";
$phone_err = $password_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Check if username is empty
    if(empty(trim($_POST["phone"]))){
        $phone_err = "Please enter phone.";
    } else{
        $phone = trim($_POST["phone"]);
    }
    
    // Check if password is empty
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter your password.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // Validate credentials
    if(empty($phone_err) && empty($password_err)){
        // Prepare a select statement
        $sql = "SELECT id, phone,name, password, user_type, designation FROM users WHERE status=1 and phone = ?";
        
        if($stmt = mysqli_prepare($mysqli, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_phone);
            
            // Set parameters
            $param_phone = $phone;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Store result
                mysqli_stmt_store_result($stmt);
                
                // Check if username exists, if yes then verify password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $id, $phone, $name, $hashed_password, $user_type,$designation);
                    if(mysqli_stmt_fetch($stmt)){ 
 
                       // if(password_verify($password, $hashed_password)){
                        if(md5($password) == $hashed_password){
                            // Password is correct, so start a new session
                             
                            // Store data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["user_id"] = $id;
                            $_SESSION["name"] = $name;   
                            $_SESSION["desig"] = $designation;   
                            $_SESSION["user_type"] = $user_type;                      
                            
                            // Redirect user to welcome page
                            header("location: pages/dashboard.php");
                        } else{
                            // Display an error message if password is not valid
                            $password_err = "The password you entered was not valid.";
                        }
                    }
                } else{
                    // Display an error message if username doesn't exist
                    $phone_err = "No account found with that username.";
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
        
        // Close statement
        mysqli_stmt_close($stmt);
    }
    
    // Close connection
    mysqli_close($mysqli);
}
 ?>
<style>   
    .app 
    {
        min-height:auto !important;
        margin-top:120px;
    }
    .logo_log{ width:20%; }
    @media (min-width: 1200px)
    {
        .app { margin-top:120px;}
    .logo_log{ width:20%; }
    }
    @media (max-width: 992px)
    {
        .app {margin-top:60px;}
        .logo_log{ width:40%; }
    }
    @media (max-width: 768px)
    {
        .app{margin-top:0px;}
        .logo_log{ width:50%; }
    }   
    @media (max-width: 576px)
    {
        .app { margin-top:0px;}
        .logo_log{ width:60%; }
    }
</style>
</head>
<body class="app flex-row align-items-center">
  <div class="container"> 
    <div class="row justify-content-center">
    <img src="../layout/img/logo.png"  class="logo_log" alt="#">
    </div> 
    <div class="row justify-content-center">
      <div class="col-md-5">
        <div class="card-group">
          <div class="card p-4">
          <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="card-body">
              <h1>Login</h1>
              <p class="text-muted">Sign In to your account</p>
              <div class="input-group mb-3 <?php echo (!empty($phone_err)) ? 'has-error' : ''; ?>">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-user"></i></span>
                </div>
                <input type="text" class="form-control" name="phone" placeholder="phone" value="<?php echo $phone; ?>">
              </div>
              <span class="help-block text-danger"><?php echo $phone_err; ?></span>
              <div class="input-group mb-4   <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-lock"></i></span>
                </div>
                <input type="password" class="form-control" name="password" placeholder="Password">
              </div>
              <span class="help-block text-danger"><?php echo $password_err; ?></span>
              <div class="row">
                <div class="col-6">
                <input type="submit" name="Submit"  class="btn btn-primary px-4" value="Login">
                </div>
              
              </div>
            </div>
            </form>
          </div>
        
        </div>
      </div>
    </div> 
<?php 
include("layout/basefooter.php"); 
?>