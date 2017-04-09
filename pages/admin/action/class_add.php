<?php

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

$department = $_POST['department'];
$number = $_POST['coursenumber'];
$name = $_POST['coursename'];
$description = $_POST['coursedesc'];

$sql = "INSERT INTO course (Acronym, Number, Name, Description) 
        VALUES ((SELECT Acronym FROM Department WHERE Acronym = '$department'),
            '$number', '$name', '$description')";
        
$result = mysqli_query($conn, $sql);

echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Succesfully Added the course')
    window.location.href='/pages/admin/admin_add.php';
    </SCRIPT>");
?>