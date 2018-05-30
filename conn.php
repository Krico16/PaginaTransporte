<?php
$servername = "fdb19.awardspace.net";
$username = "2615973_sistema";
$password = "soylapoia123";
$dbname = "2615973_sistema";
$port = "3306";

//2615973_sistema	2615973_sistema	

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}




