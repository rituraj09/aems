<?php 
include("../layout/baseheader.php"); 
session_start();
if( $_SESSION['user_id']=="")
{        
 header('Location: index.php');
}
?>

 
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
  <header class="app-header navbar">
    <button class="navbar-toggler mobile-sidebar-toggler d-lg-none" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>
   
    <ul class="nav navbar-nav ml-auto"> 
      <li class="nav-item dropdown">
        <a class="nav-link nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          <img src="../layout/img/avatars/21.png" class="img-avatar" alt="#">
        </a>
      
        <div class="dropdown-menu dropdown-menu-right">
        <div class="dropdown-item text-center"> 
        <div class="small text-truncate"><?php echo $_SESSION['name'] ?></div>
            <div class="small text-muted text-truncate"><?php echo $_SESSION['desig'] ?></div>
        </div>
          <div class="dropdown-header text-center">
            <strong>Settings</strong>
          </div> 
          <a class="dropdown-item" href="#"><i class="fa fa-wrench"></i> Settings</a> 
          <a class="dropdown-item" href="logout.php"><i class="fa fa-lock"></i> Logout</a>
        </div>
      </li>
      

    </ul>
  </header>
  <div class="app-body">
    <div class="sidebar">
      <nav class="sidebar-nav">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="dashboard.php"><i class="icon-speedometer"></i> Dashboard  </a>
          </li>

          <li class="nav-title">
            Masters
          </li>
         
          <li class="nav-item">
            <a href="vehicle.php" class="nav-link"><i class="fa fa-car"></i> Vehicle Master</a>
          </li> 
          <li class="nav-title">
            Data Entry
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link" href="logsheet.php"><i class="fa fa-calendar-plus-o"></i> Vehicle Log Sheet</a>
        
          </li>   
          <li class="nav-title">
            Reports
          </li> 
          <li class="nav-item nav-dropdown">
            <a class="nav-link" href="reportsdaily.php"><i class="fa fa-file"></i> Daily Fuel Reports</a>
        
          </li>   
        </ul>
      </nav>
      <button class="sidebar-minimizer brand-minimizer" type="button"></button>
    </div>

    <main class="main">