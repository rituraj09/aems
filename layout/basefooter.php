<!-- Bootstrap and necessary plugins --> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  <script src="../layout/vendors/js/popper.min.js"></script>
  <script src="../layout/vendors/js/bootstrap.min.js"></script> 

  
  <!-- Plugins and scripts required by all views -->
 

  <!-- CoreUI Pro main scripts -->

  <script src="../layout/js/app.js"></script>

  <!-- Plugins and scripts required by this views --> 
  <script src="../layout/vendors/js/moment.min.js"></script> 
  <!-- Custom scripts required by this view --> 
  
  <!-- Plugins and scripts required by this views -->
  <script src="../layout/vendors/js/jquery.dataTables.min.js"></script>
  <script src="../layout/vendors/js/dataTables.bootstrap4.min.js"></script>

  <!-- Custom scripts required by this view -->
  <script src="../layout/js/views/datatables.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Zebra_datepicker/1.9.13/zebra_datepicker.min.js"></script>
  <script>
 $( ".datepicker" ).Zebra_DatePicker({  
  format: 'd-m-Y',
  show_icon: false,
});

$( ".zdatepicker" ).Zebra_DatePicker({  
  format: 'd-m-Y',
  show_icon: true,
});
</script>
</body>
</html>