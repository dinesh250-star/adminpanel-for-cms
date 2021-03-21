<?php include "connection.php"; ?>
<?php include "index.php"; ?>
<?php
if(isset($_POST['sav'])){
  
    $title        = $_POST['titlee'];
    $date = date('d-m-y');
    
    $option       = $_POST['optionn'];

    $post_image        = $_FILES['image']['name'];
    $post_image_temp   = $_FILES['image']['tmp_name'];

    $body         = $_POST['editor1'];


move_uploaded_file($post_image_temp, "./img/$post_image" );

$query = "INSERT INTO post(title,category,image,body,date) ";
     
$query .= "VALUES('$title','$option','$post_image','$body',now()) "; 
     
$create_post_query = mysqli_query($connection, $query);  
echo"<script>alert('Post added successfully')</script>";

header('Location: index.php');
}
?>