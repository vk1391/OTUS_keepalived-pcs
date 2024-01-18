<?php
$dbServerName = "192.168.56.205";
$dbUsername = "pcs";
$dbPassword = "password";
$dbName = "cluster";

// create connection
$conn = new mysqli($dbServerName, $dbUsername, $dbPassword, $dbName);

// check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>