<?php include "connection.php"; ?>
<?php include "index.php"; ?>
<?php

if(isset($_POST['savee'])){
   
    $title = $_POST['titlee'];
    $date = date('d-m-y');
    $query ="INSERT INTO topic(title,date)";
    $query.="VALUES('$title',now())";
    $insert_cat_query = mysqli_query($connection,$query);
    echo"<script>alert('Category added successfully')</script>";
    header('Location: index.php');
}
?>

