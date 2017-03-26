<?php

include 'db_login.php';


$firstname = $_POST['firstname'];
$middlename = $_POST['middlename'];
$lastname = $_POST['lastname'];

if(!isset($firstname) || trim($firstname) == '')
{
   echo "You did not fill out the required fields.";
}

$username = $_POST['username'];
$password = $_POST['password'];
$uid = $_POST['UID'];


$sql = "INSERT INTO user (Username, Password) 
        VALUES ('$username', '$password')";
        
$result = mysqli_query($conn, $sql);

if($result){
    $sql = "SELECT UID FROM user WHERE Username = '$username'";
    $result = mysqli_query($conn, $sql);

    if($result){
        header("Location: /pages/status/success.html");
    }
    
    while($row = $result->fetch_assoc()){
        $uid = $row["UID"];
        $sql = "INSERT INTO student (UID, Fname, Mname, Lname) VALUES ( '$uid', '$firstname', '$middlename', '$lastname')";
        $result = mysqli_query($conn, $sql);
    }

    
}else{
    header("Location: /pages/status/failure.html");
}
?>