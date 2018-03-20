<!DOCTYPE html>
<?php
include "conn.php";	
?>

<html lang="en">
<head>
     <!--Import Google Icon Font-->
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <!--Import materialize.css-->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">

     <!--Let browser know website is optimized for mobile-->
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <title>View Students</title>
	 


   </head>
<body>

     <?php include("header.php");?>
        <div class="container" style="border:none;"> 
                
                <div class="row">
                    <div class="" style="margin-left:-18%;">
                        <div id="main" class="card">
                            <div class="card-content">
                                <span class="card-title"> 
                                    <h4><b>View Student Data</b></h4>
                                        <div>
            <form action="" method="GET">
		
			  <p>
      <input type="checkbox" name="type0" value="Aadhar_No" id="Academics" />
      <label for="Academics">Aadhar_No</label>
   &nbsp
   &nbsp
   &nbsp
  
      <input type="checkbox" name="type1" value="Percentage" id="Cultural" />
      <label for="Cultural">Percentage</label>
    &nbsp
   &nbsp
   &nbsp
     <input type="checkbox" name="type2" value="Sports" id="Sports" />
      <label for="Sports">Sports</label>
	  
	  <input type="checkbox" name="type3" value="Overall" id="overall" />
      <label for="overall">Overall</label>
    </p>
		<br>	
			<input class="waves-effect waves-light btn blue" type="submit" name="submit" value="Submit" /> 
			
			</form>
              
         <table id="getdata" class="table" class="scrollmenu" style="overflow-x:scroll;">
                  <thead>
                    <tr>
                     
                      
                      <th>Gr_No</th>
                      <th>Aadhar_No</th>
                      <th>Index_No</th>
                      <th>Student_Name</th>
                      <th>Father_Name</th>
                      <th>Contact_No</th>
                      <th>Email_Id</th>
                      <th>DOB</th>
                      <th>Gender</th>
                      <th>Standard</th>
                      <th>Percentage</th>
                      <th>C_Percentage</th>
                      <th>Ext_Academics</th>
                      <th>C_Ext_Academics</th>
                      <th>Ext_Sports</th>
                      <th>Ext_Cultural</th>
                      <th>C_Ext_Cultural</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tbody>
		  <?php 
		      
		   
		   
	  if(isset($_GET['type0']))
		$_SESSION['Aadhar_No'] =$_GET['type0'];
	if(isset($_SESSION['Aadhar_No']))
		$Aadhar_No = $_SESSION['Aadhar_No'];
	
	
	if(isset($_GET['type2']))
	  $_SESSION['Sports'] = $_GET['type2'];
	if(isset($_SESSION['Sports']))
		$Sports = $_SESSION['Sports'];
	
	if(isset($_GET['type1']))
	  $_SESSION['Percentage'] = $_GET['type1'];
	if(isset($_SESSION['Percentage']))
		$Percentage = $_SESSION['Percentage'];
	
	
	$sql = "SELECT * FROM `Student` WHERE `Gr_No` IS NOT NULL";
	if($_SESSION['Aadhar_No'])
	{
		$sql .= " ORDER BY $Aadhar_No ";
	}
	if ($_SESSION['Percentage'])
	{
	$sql .= "  $Percentage ";
	}
	echo $sql;
	$credit = $row['Aadhar_No']+$row2['Percentage'];
	echo $sql3 = "Select $credit from DUAL";
	
	$sql = "SELECT * FROM `Student` ORDER BY $Aadhar_No+$Percentage DESC";
	$result = $conn->query($sql);
      while($row1 = $result->fetch_assoc())
	  { 
	  
	  
  ?>
				  
                    <tr>
                    <!--<td><a class="waves-effect waves-light btn blue" href="updateStudent.php" style="margin-left:0%;">Update</a>
					<a class="waves-effect waves-light btn blue" href="deleteStudent.php" style="margin-left:0%;">Delete</a> </td>*/-->
                    
                    <td><?php echo $row1['Gr_No'];?></td>
					<td><?php echo $row1['Aadhar_No'];?></td>
					<td><?php echo $row1['Index_No'];?></td>
					<td><?php echo $row1['Student_Name'];?></td>
					<td><?php echo $row1['Father_Name'];?></td>
					<td><?php echo $row1['Contact_No'];?></td>
					<td><?php echo $row1['Email_Id'];?></td>
					<td><?php echo $row1['DOB'];?></td>
					<td><?php echo $row1['Gender'];?></td>
					<td><?php echo $row1['Standard'];?></td>
					<td><?php echo $row1['Percentage'];?></td>
					<td><?php echo $row1['C_Percentage'];?></td>
					<td><?php echo $row1['Ext_Academics'];?></td>
					<td><?php echo $row1['C_Ext_Academics'];?></td>
					
                      
                      <td><div class="col mdc-button" data-mdc-auto-init="MDCRipple"><i class="mdi mdi-heart text-blue"></i></div><div class="col mdc-button" data-mdc-auto-init="MDCRipple"><i class="mdi mdi-forum text-yellow"></i></div><div class="col mdc-button" data-mdc-auto-init="MDCRipple"><i class="mdi mdi-delete text-red"></i></div></td>
                    </tr>
                 
                     <?php
	  }
		  
  ?>
                    
                   
                    </tbody>
                  </table>  
                                                        </div>
                                                      </div>    
                                        </span>
                                </div>
                 
                            
                    </div>
                </div>
            </div> 
            </div> 

            

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
    <script src="app.js"></script>
    <script>
	 $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
  });

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