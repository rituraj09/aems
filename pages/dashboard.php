<?php
include("../config.php"); 
include("../layout/header.php");

?>
 <div class="container-fluid">
    <div class="row"> 
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="icon-speedometer"></i> Dashboard</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-muted small text-uppercase font-weight-bold">Total Vehicle Registered</div>
                            <div class="h2 py-3">
                            12
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-muted small text-uppercase font-weight-bold">Fuel Issued on Today</div>
                          
                        </div>
                        <div class="card-body py-0 px-4 b-t-1">
                                <div class="row">
                                    <div class="col-6 b-r-1 py-3 text-center">
                                        <div class="font-weight-bold"> 173 LT.  </div>
                                        <div class="font-weight-bold text-muted"> Desiel </div>
                                    </div>
                                    <div class="col-6 py-3 text-right text-center">
                                        <div class="font-weight-bold"> 317 LT.</div>
                                        <div class="font-weight-bold text-muted"> Petrol </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-muted small text-uppercase font-weight-bold">Total Fuel Issued </div>
                          
                        </div>
                        <div class="card-body py-0 px-4 b-t-1">
                                <div class="row">
                                    <div class="col-6 b-r-1 py-3 text-center">
                                        <div class="font-weight-bold"> 443 LT.  </div>
                                        <div class="font-weight-bold text-muted"> Desiel </div>
                                    </div>
                                    <div class="col-6 py-3 text-right text-center">
                                        <div class="font-weight-bold"> 513 LT.</div>
                                        <div class="font-weight-bold text-muted"> Petrol </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
              
           
        </div>
    </div>
 </div>

<?php 
include("../layout/footer.php"); 
?>