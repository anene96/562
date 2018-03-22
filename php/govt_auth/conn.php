<?php
$servername = "hackathon.local";
$username = "root";
$password = "123456";

// Create connection
$conn = mysqli_connect($servername, $username, $password,"hackathon");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
?>