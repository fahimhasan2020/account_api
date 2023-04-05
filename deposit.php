<?php
include('./config/connection.php');

if(isset($_POST['title'])){
  $title = $_POST['title'];
  $details = $_POST['details'];
  $amount = $_POST['amount'];
  $category = $_POST['category'];
  $user = $_POST['user'];
  $date = $_POST['date'];
  $stmt = $conn->prepare("INSERT INTO deposit (title, details, amount, category, user, date) VALUES ('$title', '$details', '$amount', '$category', '$user','$date')");
  $stmt->execute();
  $response = array("success"=>"Deposite saved");
  header('Content-Type: application/json');
  echo json_encode($response);
}


if(isset($_GET['values'])){
    
    $stmt = $conn->prepare("SELECT * FROM user");
    $users = $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    header('Content-Type: application/json');
    echo json_encode($rows);
}
?>