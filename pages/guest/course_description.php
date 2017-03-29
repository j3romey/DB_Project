<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

session_start();

if($_POST['id']){

    $Acronym = $_SESSION['Acronym'];

    $id=$_POST['id'];
    $sql = "SELECT Description from course WHERE Acronym = '$Acronym' AND Number = '$id' "; 

    $result = mysqli_query($conn, $sql);    

    while($row = $result->fetch_assoc()){
        echo $row['Description'];
    }   
}
?>