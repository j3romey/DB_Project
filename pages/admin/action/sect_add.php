<?php
#error_reporting(E_ALL); ini_set('display_errors', 'On'); 
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

$department = $_POST['department'];
$number = $_POST['number'];
$secttype = $_POST['secttype'];
$instructor = $_POST['instructor'];
$wkday = $_POST['wkday'];
$room = $_POST['room'];
$secttime = $_POST['secttime'];
$semester = $_POST['semester'];

# Retrieve course ID (cid)
$sql = "SELECT Cid FROM course WHERE Acronym = '$department' AND Number = '$number'";
$result = mysqli_query($conn, $sql);

$cid = reset($result->fetch_assoc());

# Add Section
$sql = "INSERT INTO section (Cid, Room, Day, Time, Semester)
    VALUES ('$cid', '$room', '$wkday', '$secttime', '$semester')";
$result = mysqli_query($conn, $sql);
$last_id = $conn->insert_id;

# Add to lecture/lab/tutorial table
$sql = "INSERT INTO $secttype (Sid, Eid)
    VALUES ('$last_id', '$instructor')";
$result = mysqli_query($conn, $sql);

echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Succesfully Added the section')
    window.location.href='/pages/admin/admin_sect_add.php';
    </SCRIPT>");
    
?>