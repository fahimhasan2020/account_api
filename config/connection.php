<?php
$servername = "127.0.0.1";
$username = "root";
$password = null;

try {
  $conn = new PDO("mysql:host=$servername;dbname=account_software", $username, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
} catch(PDOException $e) {
    //
}
?>