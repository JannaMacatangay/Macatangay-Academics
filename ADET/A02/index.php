<?php

$page = "fits";

if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "fits":
      $page = "fits";
      break;
    case "wardrobe":
      $page = "wardrobe";
      break;
    default:
      header("Location: ?page=fits");
      break;
  }
} else {
  header("Location: ?page=fits");
}
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Jannerch’s Favorites</title>
  <link rel="icon" type="image/x-icon" href="portfolio-assets/pictures/cute logo.png" />
  <link>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  <style>
    
    body {
      background-color: #fff0f5;
       font-family: 'Poppins', sans-serif;
    }

    .navbar {
      background-color: #ffe4e1;
    }

    .navbar-brand img {
      height: 50px;
    }

    .navbar-text {
      font-size: 1.5rem;
      font-weight: bold;
      text-align: center;
      color: #d63384;
    }

    .sidebar-column {
      display: flex;
      flex-direction: column;
      height: calc(100vh - 60px); 
    }

    .sidebar-card {
      flex: 1;
      overflow-y: auto;
      background-color: #fff;
      border: none;
      border-radius: 1.5rem;
      margin-bottom: 1rem;
    }

    .sidebar-card:last-child {
      margin-bottom: 0;
    }

    .sidebar-card .btn {
      background-color: #ffc0cb;
      border: none;
    }

    .sidebar-card .btn:hover {
      background-color: #ff69b4;
    }

    .content-card {
      height: 85vh;
      max-height: 85vh;
      overflow-y: auto;
      background-color: #ffffff;
      border: none;
      border-radius: 15px;
    }

    footer {
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
      color: #888;
    }
  </style>
</head>

<body>

<nav class="navbar navbar-expand-lg shadow-sm">
  <div class="container-fluid justify-content-center">
    <a class="navbar-brand" href="#">
      <img src="img/icon/cute logo.png" alt="Logo" class="d-inline-block align-middle">
    </a>
    <span class="navbar-text mx-3">Jannerch's Closet</span>
  </div>
</nav>

<div class="container-fluid mt-1 pt-3">
  <div class="row gx-3 gy-3">
    <div class="col-12 col-md-4 col-lg-3 d-flex flex-column">
      <div class="card sidebar-card shadow p-4">
        <h4 class="mb-3">Menu</h4>
        <a href="?page=fits" class="btn btn-lg w-100 mb-2">My Fits</a>
        <a href="?page=wardrobe" class="btn btn-lg w-100">Wardrobe</a>
      </div>

      <!-- Smaller Follow Me Card -->
      <div class="card sidebar-card shadow p-3 mt-1">
        <h4 class="mb-3">Follow Me</h4>
        <?php include("shared/info.php"); ?>
      </div>
    </div>

    <div class="col-12 col-md-8 col-lg-9 mt-3 mt-md-0">
      <div class="card content-card shadow p-4 mt-3">
        <?php include("shared/" . $page . ".php"); ?>
      </div>
    </div>
  </div>
</div>




  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous">
  </script>
</body>

</html>
