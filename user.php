<?php
include('./config/connection.php');

if(isset($_POST['username'])){
$username = $_POST['username'];
$password = $_POST['password'];
$stmt = $conn->prepare("SELECT * FROM user WHERE name = '$username' AND password = '$password'");
$users = $stmt->execute();
if ($stmt->rowCount() == 1) {
    // $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $response = array("success"=>"Logged in successfully","user"=>$row);
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = array("error"=>"Invalid username or password");
    header('Content-Type: application/json');
    echo json_encode($response);
}
}
?>