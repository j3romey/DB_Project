<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

$department = $_POST['department'];
$number = $_POST['coursenumber'];


$sql = "SELECT Cid from course WHERE Acronym = '$department' and Number = '$number'"; 
$result = mysqli_query($conn, $sql);    
$row = $result->fetch_assoc();
$cid = $row['Cid'];

$sql = "SELECT Sid from section WHERE Cid = '$cid'";
$result = mysqli_query($conn, $sql);
$row = $result->fetch_assoc();

foreach($row as $sid){
    $sql = "DELETE FROM lecture 
            WHERE Sid = '$sid'";
    $result = mysqli_query($conn, $sql);
    $sql = "DELETE FROM lab 
            WHERE Sid = '$sid'";
    $result = mysqli_query($conn, $sql);
    $sql = "DELETE FROM tutorial 
            WHERE Sid = '$sid'";
    $result = mysqli_query($conn, $sql);
} 

$sql = "DELETE FROM section 
        WHERE Cid = '$cid'";
        
$result = mysqli_query($conn, $sql);    

$sql = "DELETE FROM course 
        WHERE Cid = '$cid'";
        
$result = mysqli_query($conn, $sql);

echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Succesfully deleted the course')
    window.location.href='/pages/admin/admin_del.php';
    </SCRIPT>");
?>