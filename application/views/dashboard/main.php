<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard Dark Edition by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  
  <link href="assets/css/material-dashboard.css" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>
<body class="dark-edition">
  <div class="wrapper ">
    <?php $this->load->view("_partials/sidebar.php") ?>  
    <div class="main-panel">
      <?php $this->load->view("_partials/navbar.php") ?>  
      <div class="content">
        <div class="container-fluid">
               
        </div>
      </div>
      <?php $this->load->view("_partials/footer.php") ?>
    </div>
  </div>
  <div class="fixed-plugin">
  <?php $this->load->view("_partials/dropdown.php") ?>
  </div>
  <?php $this->load->view("_partials/js.php") ?>
</body>

</html>