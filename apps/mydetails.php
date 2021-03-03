<?php
include("../config.php"); 
include("../layout/baseheader.php");
?> 

<div>

</div>
<div class="container-fluid">
    <br><br>
    <div class="row">  
        <div class="col-md-6 col-sm-6">
            <div class="card"> 
                <a href="training.php" style="text-decoration:none;">
                    <div class="card-body bg-success text-center"> 
                    <cneter><h1>Training INFO</h1></cneter> 
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-6 col-sm-6">
            <div class="card"> 
                <a href="psinfo.php" style="text-decoration:none;">
                    <div class="card-body bg-info text-center"> 
                        <cneter><h1>P.S. INFO</h1></cneter> 
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-6 col-sm-6">
            <div class="card"> 
                <a href="polling.php" style="text-decoration:none;">
                    <div class="card-body bg-danger text-center"> 
                        <cneter><h1>POLL DAY INFO</h1></cneter> 
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<?php 
include("../layout/basefooter.php"); 
?>