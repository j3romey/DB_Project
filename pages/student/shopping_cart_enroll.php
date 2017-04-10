<?php
session_start();
error_reporting(E_ALL); ini_set('display_errors', 'On');
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);


$UCID = $_SESSION['student_id'];

if(!empty($_POST['check_list'])) {
    echo 'not empty <BR>';
    echo $_POST['check_list'] . "<BR>";
    foreach($_POST['check_list'] as $SID) {
            $sql = "INSERT INTO enroll_sec (UCID, SID) VALUES ('$UCID', '$SID')";
            $result = mysqli_query($conn, $sql);
            // should put a warning here.
    }
}
?>