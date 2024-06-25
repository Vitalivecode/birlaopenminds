<?php
$servername = "localhost";
$username = "vitasoft_bomis";
$password = "Bomis@2024";
$db = "vitasoft_bomis";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
