<?php
include("conn.php");
	session_start();
 
?>
              
         <table class="responsive">
        <thead>
          <tr>
              <th>School_Name</th>
             
              <th>Index_No</th>
              <th>Address</th>
              <th>District</th>
            <!--  <th>Registration no.</th>-->
              <th>Email_Id</th>
              <th>Phone_No</th>
             
              <th>Type</th>
              
			  
              <th></th>
          </tr>
        </thead>

        <tbody>
		 <?php 
		  $sql = "SELECT * FROM `School_Registration` WHERE ";
		 
		if(isset($_GET['School_Type'])){
		$School_Type =   $_GET['School_Type'];
		
		$sql .= "`School_Type` = '$School_Type'";
		
		}
		else if(isset($_GET['District']))
		{
			$District = $_GET['District'];
			$sql .= "`District` = '$District'";
		}
		else if(isset($_GET['School_Type']) && isset($_GET['District']))
		{
			$sql .= "`School_Type` = '$School_Type' AND `District` = '$District'";
		}
		  $sql;
	  
$result = $conn->query($sql);
      while($row1 = $result->fetch_assoc())
	  { 
	  
	  
  ?>
          <tr>
            
            <td><?php echo $row1['School_Name'];?></td>
			<td><?php echo $row1['Index_No'];?></td>
			<td><?php echo $row1['School_Address'];?></td>
			<td><?php echo $row1['District'];?></td>
			<td><?php echo $row1['Email_Id'];?></td>
			<td><?php echo $row1['Phone_No'];?></td>
			
			<td><?php echo $row1['School_Type'];?></td>
			
          </tr>
          
		  
		  <?php
		  
	  
		}
	  ?>
        </tbody>
		
		
      </table>  
                                </div>
                 
                            
                    </div>
                </div>
            </div> 
            </div> 

            

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>

    <script>
	
	$(document).ready(function() {
    $('select').material_select();
  });
       $(".button-collapse").sideNav();

        // Init Sidenav
        $('.button-collapse').sideNav();
    </script>
    <script>
         $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  });
    </script>
</body>
</html>