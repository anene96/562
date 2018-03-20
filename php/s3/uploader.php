<?php
require 'conn.php';
require 'app/start.php';
require 'app/config.php';   

use Aws\S3\S3Exception\S3Exception;

session_start();
$Index_No=$_SESSION['Index_No'];

 
if(isset($_FILES['file'])){
    $file = $_FILES['file'];

    //File Details
    $name = $file['name'];
    $tmp_name= $file['tmp_name'];

    $extension = explode('.',$name);
    $extension = strtolower(end($extension));
	
	echo $Gr_No=$_SESSION['Gr_No'];
	echo $Index_No=$_SESSION['Index_No'];
	echo $Standard=$_SESSION['Standard'];
			echo $type=$_SESSION['type'];
			echo $rank=$_SESSION['rank'];
			echo $category=$_SESSION['category'];
			echo $certi=$_SESSION['certi'];
	
    //Temp Details
    $key = md5(uniqid());
    $tmp_file_name = "{$key}.{$extension}";
    $tmp_file_path = "files/{$tmp_file_name}";

    //move the file
    move_uploaded_file($tmp_name,$tmp_file_path);
    
    try {
        $s3->putObject([
            'Bucket' => 'hackathoncertibucket',
            'Key' => "uploads/{$key}",
            'Body'=> fopen($tmp_file_path,'rb'),
            'ACL' => 'public-read'
        ]);
        
		$SMS="https://s3.ap-south-1.amazonaws.com/hackathoncertibucket/uploads/";
		$SMS.="$tmp_file_name";
		$X=strrpos($SMS,".");
		$Standard=$_SESSION['Standard'];
		$Z=substr($SMS,0,$X);
        $sql="INSERT INTO Extra_Cur(Index_No, Gr_No, Standard, Certi_Description, Rank, Category, Type,Link) VALUES ('$Index_No','$Gr_No','$Standard','$certi','$rank','$category','$type','$Z')";

        if ($conn->query($sql) === TRUE)
			{
            echo "New record created successfully";
			
			$sql1= "SELECT Credit_Points From `Credit_Mapping` WHERE Rank=$rank AND Category=$category";
			if($Standard<5)
				$sql1.=" AND Tier=1";
			else
				$sql1.=" AND Tier=2";
			$result=$conn->query($sql1);
				if($type == 'Academics'){
				$sql2="UPDATE `Student` SET Ext_Academics=Ext_Academics+$result";
				}
				else if($type == 'Cultural'){
					
					$sql2="UPDATE `Student` SET Ext_Cultural=Ext_Cultural+$result";
				}
				else
				{
					$sql2="UPDATE `Student` SET Ext_Sports=Ext_Sports+$result";
				}
				if ($conn->query($sql2) === TRUE)
				{
					echo "Sucessfull";
				}
			
			
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
        //Remoev file
       // unlink($tmp_file_path);

    }   catch(S3Exception $e) {
        die("There was an error uploading thatt file");
    }
}
header("location:..\..\stud_auth\index.php");  
?>