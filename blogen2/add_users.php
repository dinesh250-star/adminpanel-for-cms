<?php include "connection.php"; ?>
<?php include "index.php"; ?>
<?php 

if(isset($_POST['submitt'])){
   
    $name = $_POST['namee'];
    $email = $_POST['emaill'];
    $password = $_POST['passwordd'];
    $confirm_password = $_POST['confirmm'];
    if($password != $confirm_password){
    
    echo"<script>alert('Passwords do not match')</script>";
    
    }else {
        $query ="INSERT INTO admin_panel(name,email,password)";
        $query.="VALUES('$name','$email','$password')";
        $insert_query = mysqli_query($connection,$query);
        echo"<script>alert('User added successfully')</script>";
        header('Location: index.php');
    }
}

?>