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
                                    <h5><b>External Criteria</b></h5>
                                        <div>
            
		 <form method="POST" action="">
			  <p>
      <input type="checkbox" name="type[]" value="Ext_Academics" id="Ext_Academics" />
      <label for="Ext_Academics"> Academics</label>
   &nbsp
   &nbsp
  
  
      <input type="checkbox" name="type[]" value="Ext_Cultural" id="Ext_Cultural" />
      <label for="Ext_Cultural">Cultural</label>
    &nbsp
   &nbsp
   
     <input type="checkbox" name="type[]" value="Ext_Sports" id="Ext_Sports" />
      <label for="Ext_Sports">Sports</label>
	 



	  <div class="input-field col s3">
				<input id="percentage" type="text" name="Percentage" class="validate">
				  <label for="Percentage">Enter Min Percentage</label>
		</div>
	
	 
     

	     
    
 
   
	 

	<div class="input-field col s3">
    <select name="Standard"  onchange="showUser1(this.value)"> 
      <option value="" disabled selected>Select Standard</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
    </select>
    
  </div> 

<br>

 


	 
	 
<br><br><br>
	 
	  <div style="margin-top: -5%;">
    <h5><b>Gender</b></h5>
   <input type="checkbox" name="gender" value="Male" id="Male" />
      <label for="Male"> Male</label>
      
    &nbsp
   &nbsp
 
   <input type="checkbox" name="gender" value="Female" id="Female" />
      <label for="Female"> Female</label>

   
	 </div>
						  <div class="input-field col s3">
						  <input id="percentage" type="text" name="Limit" class="validate">
						  <label for="Limit">Limit no. of Students.</label>
						</div>
						
						
   
		<br>	
			<input class="waves-effect waves-light btn blue" type="submit" name="submit" value="Submit" /> 
			
			</form>
              </p>
         <table id="getdata" class="table" class="scrollmenu" style="overflow-x:scroll;">
                  <thead>
                    <tr>
                     
                      
                      <th>Aadhar No.</th>
                      <th>Index No.</th>
                      <th>Student Name</th>
                      <th>Contact No</th>
                      <th>Email-Id</th>
                      <th>Gender</th>
                      <th>Standard</th>
                      <th>Percentage</th>
                      <th>CPA</th>
                      <th>Extetrnal Academics</th>
                      <th>External Sports</th>
                      <th>External Cultural</th>
                    </tr>
                  </thead>
                  <tbody>
		 <?php
 if(isset($_POST['submit']))
	{
		/*$type1 = $_POST['type'];
		foreach($type1 as $i)
		{
			echo $i;
		}
		*/
		$sql = "SELECT * FROM `Student` Where `Gr_No` IS NOT NULL ";
		   
				if(!empty($_POST['gender']))
				{
					$gender = $_POST['gender'];
					
					$sql .= " And  `Gender` = '$gender'" ;
					
				}
				
				if(!empty($_POST['Standard']))
				{
					$Standard = $_POST['Standard'];
					
					$sql .= " And  `Standard` = '$Standard'" ;
					
				}
				
				if(!empty($_POST['Percentage']))
				{
					$Percentage = $_POST['Percentage'];
					
					$sql .= " And  `Percentage` >= '$Percentage'" ;
					
				}
				/*if(!empty($_POST['gender']))
				{
					$gender = $_POST['gender'];
					
					foreach($gender as $gen)
					{
					   $sql .= " $gen+";
					}
					
					
				}*/
				
				
				if(!empty($_POST['type']))
				{
					$type1 = $_POST['type'];
					
					$sql .= " ORDER BY";
					foreach($type1 as $type)
					{
					   $sql .= " $type+";
					}
					$sql .= " 1 DESC  ";
					
				}
				
				if(!empty($_POST['Limit']))
				{
					$Limit = $_POST['Limit'];
					
					$sql .= " LIMIT $Limit" ;
					
				}
				
	 $sql;
	/*echo	$Academics = $_POST['Academics'];
	echo	$Cultural = $_POST['Cultural'];
	echo	$Sports = $_POST['Sports'];*/
	
	//echo	$Level = $_POST['Level'];
	
	//echo	$Region = $_POST['Region'];
	//echo	$District = $_POST['District'];
		
	/*	$School_type= $_POST['School_type'];
		foreach($School_type as $i)
		{
			echo $i;
		}
	*/	

	
$result = $conn->query($sql);
      while($row1 = $result->fetch_assoc())
	  {
	
	
?>
				  
                    <tr>
                    <!--<td><a class="waves-effect waves-light btn blue" href="updateStudent.php" style="margin-left:0%;">Update</a>
					<a class="waves-effect waves-light btn blue" href="deleteStudent.php" style="margin-left:0%;">Delete</a> </td>*/-->
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