<?php
require "conn.php";
    if(isset($_POST['submit'])){
    
			
            $Index_No=$_POST['Index_No'];
            $Password=$_POST['Password'];
            $R_Name = $_POST["R_Name"];
            $Email_Id = $_POST["Email_Id"];
            $Mobile_No = $_POST["Mobile_No"];
            $R_Password=$_POST['R_Password'];

                    
                        if($conn->query($sql))
						{
							$sql3 = "INSERT INTO School_Representative (Index_No, R_Name, R_Email,R_Password,Phone_No) 
										VALUES ('$Index_No','$R_Name','$Email_Id','$R_Password','$Mobile_No')";
							$results = $conn->query($sql3); 
                            if ($results=== TRUE) {
                  
			
                                    alert("New record created successfully");
                                }
                            }
						else {
							alert("School Index not registered");
						}
						}


// if (($conn->query($query1)) ) {
//     echo "School Registered ";
// } else{
//     echo "School index or password did not match";
//     }
}
?>