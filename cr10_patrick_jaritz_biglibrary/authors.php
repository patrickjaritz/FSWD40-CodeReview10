<?php require_once 'actions/db_connect.php'; ?>

 <?php
ob_start();
session_start();
require_once 'dbconnect.php';

// if session is not set this will redirect to login page
if( !isset($_SESSION['client']) ) {
 header("Location: index.php");
 exit;
}
// select logged-in users detail
$res=mysqli_query($conn, "SELECT * FROM user WHERE `user_id`=".$_SESSION['client']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
?>



<!DOCTYPE html>

<html>

<head>

  
    <title>Publishers requested by <?php echo $userRow['first_name']; ?></title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

<style type="text/css">
 

    <style type="text/css">

        .manageMedia {

            width: 50%;

            margin: auto;

        }

 

        table {

            width: 100%;

            margin-top: 20px;

        }

 

    </style>

 

</head>

<body class="container">

<div style="text-align: right;" class="alert alert-primary" role="alert">


           Hi <?php echo $userRow['first_name']."!" ; ?>
            
    <br>
    <a href="logout.php?logout">Sign out</a>
  
   
</div>

   <h2>Authors</h2>
 

<div class="manageMedia">

  
    <table border="2" cellspacing="0" cellpadding="5">

        <thead>

            <tr>

        

                <th>First Name</th>

                <th>Last Name</th>

        

                

            </tr>

        </thead>

        <tbody>


            <?php



            $sql = "SELECT * FROM author INNER JOIN media ON author.author_id = media.fk_author_id";

            $result = $connect->query($sql);

 

            if($result->num_rows > 0) {

                while($row = $result->fetch_assoc()) {

                    echo "<tr>

                        
                
                    <td>".$row['first_name']."</td>
                    <td> <a href='show.php?isbn=".$row['isbn']."'> ".$row['last_name']."</a></td>
                        
                    
                    </tr>";

                }
           

            } 
  
              
            else {

                echo "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";

            }
            ?>


             

        </tbody>

    </table>

</div>
<br>

<div style="text-align: right;" class="alert alert-primary" role="alert">

<a href="home.php">Back</a>
</div>
 

</body>

</html>