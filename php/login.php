<?php 
    $host = "localhost";
    $db_username = "root";
    $db_password = "root";
    $db_name = "test";
    $tablename = "user";
    // username and password sent from form 
    $username=$_POST['username']; 
    $password=$_POST['password']; 
    echo $username. " " . $password . "<BR>";
    // ip-server, username, password, name-of-database
    $conn = mysqli_connect($host, $db_username, $db_password, $db_name);
    if($conn->connect_error){
        die("failed: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM user WHERE Username = '$username' AND Password = '$password' ";
    $result = $conn->query($sql);
    if($result->num_rows == 1){
        include('pages/student_home.php');
    }else{
        
    }
?>