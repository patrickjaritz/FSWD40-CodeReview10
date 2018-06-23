

<?php require_once 'actions/db_connect.php'; ?>

<?php
ob_start();
session_start();
require_once 'dbconnect.php';


if( !isset($_SESSION['client']) ) {
header("Location: index.php");
exit;
}

$res=mysqli_query($conn, "SELECT * FROM user WHERE `user_id`=".$_SESSION['client']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);



if($_GET['isbn']) {

    $isbn = $_GET['isbn'];

 

    $sql = "SELECT * FROM media WHERE isbn = '$isbn'";
   
    $result = $connect->query($sql);

 

    $data = $result->fetch_assoc();

 

    $connect->close();

 

?>

 

<!DOCTYPE html>

<html>

<head>

     <title>Show ISBN <?php echo $isbn; ?></title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

 

    <style type="text/css">

        fieldset {

            margin: auto;

            margin-top: 100px;

            width: 50%;

        }

 

        table tr th {

            padding-top: 20px;

        }

    </style>

 

</head>

<body class="container">

<div style="text-align: right;" class="alert alert-info" role="alert">


           Hi <?php echo $userRow['first_name']."!" ; ?>
            
    <br>
    <a href="logout.php?logout">Sign out</a>
  
   
</div>

<div class="manageMedia">


<!-- The following part of the code is not mine -->

 <?php
              $sql2 = "SELECT * FROM media WHERE isbn = '$isbn'";
    
                $result = $conn->query($sql2);
                if (!$result) {
                  echo "sql query failed";
              } 

              $rows=$result->fetch_all(MYSQLI_ASSOC);
              echo "<div class='container'><h1>Media Info</h1>
              <table class='table table-striped'><thead>
              <tr><th>ISBN</th><th>Title</th><th>Type</th><th>Image</th><th>Description</th><th>Publish Date</th><th>Status</th></tr>
              </thead><tbody>";
            foreach($rows as $row){
              echo "<tr><td>";
                echo $row['isbn'];
                echo "</td><td>";
                echo $row['title'];
                echo "</td><td>";
                echo $row['type'];
                echo "</td><td>";
                echo "<img src='";
                echo $row['image'];
                echo "' width='75'></td>";
                echo "<td>";
                echo $row['short_desc'];
                echo "</td><td>";
                echo $row['publish_date'];
                echo "</td><td>";
                echo $row['media_status'];
                echo "</td></tr>";

            }
              echo "</tbody></table></div>";
              ?>


         


</div>
 <br>


</body>

<br>
<footer>
<div style="text-align: right;" class="alert alert-info" role="alert">
<a href="home.php">Back</a>
</div>


    </footer>

</html>

 

<?php

}

?>