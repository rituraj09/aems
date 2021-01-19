<?php
include("../config.php"); 
include("../layout/baseheader.php");

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
            <div class="card-body">
              <h1>Login</h1>
              <p class="text-muted">Sign In to your account</p>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-user"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Phone Number">
              </div>
              <div class="input-group mb-4">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-lock"></i></span>
                </div>
                <input type="password" class="form-control" placeholder="Password">
              </div>
              <div class="row">
                <div class="col-6">
                  <button type="button" class="btn btn-primary px-4">Login</button>
                </div>
              
              </div>
            </div>
          </div>
        
        </div>
      </div>
    </div> 
<?php 
include("../layout/basefooter.php"); 
?>