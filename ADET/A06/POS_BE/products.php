<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

include("connect.php");

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'), true);

switch ($method) {
  case 'POST':
    handleGet($pdo, $input);
    break;
  default:
    echo json_encode(['message' => 'Invalid request method']);
    break;
}

function handleGet($pdo, $input)
{
  $sql = "SELECT * FROM products WHERE categoryID = :categoryID";
  $stmt = $pdo->prepare($sql);
  $stmt->execute(['categoryID' => $input['categoryID']]);
  $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

  foreach ($products as &$product) {
    if ($product['categoryID'] == 1 || $product['categoryID'] == 2 || $product['categoryID'] == 3) {
      $stmt2 = $pdo->prepare("SELECT code, price FROM sizes WHERE productID = :productID");
      $stmt2->execute(['productID' => $product['productID']]);
      $product['sizes'] = $stmt2->fetchAll(PDO::FETCH_ASSOC);
    }

    if ($product['categoryID'] == 4) {
      $stmt3 = $pdo->prepare("SELECT price FROM shoesprices WHERE productID = :productID");
      $stmt3->execute(['productID' => $product['productID']]);
      $shoePrice = $stmt3->fetch(PDO::FETCH_ASSOC);
      $product['price'] = $shoePrice ? $shoePrice['price'] : 0;
    }
  }

  echo json_encode($products);
}
?>