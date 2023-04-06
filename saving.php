<?php
include('./config/connection.php');

if(isset($_POST['title'])){
  $title = $_POST['title'];
  $amount = $_POST['amount'];
  $user = $_POST['user'];
  $date = $_POST['date'];
  $stmt = $conn->prepare("INSERT INTO saving (title, amount, user, date) VALUES ('$title','$amount', '$user','$date')");
  $stmt->execute();
  $response = array("success"=>"Savings data saved");
  header('Content-Type: application/json');
  echo json_encode($response);
}


if(isset($_GET['values'])){
    $stmt = $conn->prepare("SELECT * FROM saving");
    $users = $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    header('Content-Type: application/json');
    echo json_encode($rows);
}

if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
  $id = $_GET['id'];
  $stmt = $conn->prepare("DELETE FROM saving WHERE id=:id");
  $stmt->bindParam(':id', $id);
  $stmt->execute();
  header('Content-Type: application/json');
  echo json_encode(array("success" => "Row deleted successfully."));
}
?>