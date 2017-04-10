<?php
session_start();
error_reporting(E_ALL); ini_set('display_errors', 'On');
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);


$UCID = $_SESSION['student_id'];

if($_POST['action'] == 'enroll'){
    //echo'enroll';

    if(!empty($_POST['check_list'])) {
        //echo 'not empty <BR>';
        //echo $_POST['check_list'] . "<BR>";
        foreach($_POST['check_list'] as $SID) {
            // add sections to enroll
            $sql = "INSERT INTO enroll_sec (UCID, SID) VALUES ('$UCID', '$SID')";
            $result = mysqli_query($conn, $sql);
            // should put a warning here.

            // remove classes from shopping cart
            $sql = "DELETE FROM shopping_cart WHERE UCID = '$UCID' AND SID = '$SID' ";
            $result = mysqli_query($conn, $sql);

            //WARNING NO CHECKS CODED IN PLACE
        }

        echo ("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('Succesfully Enrolled')
        window.location.href='/pages/student/student_enroll.php';
        </SCRIPT>");
    }

}else if($_POST['action'] == 'delete'){
    //echo'delete';

    if(!empty($_POST['check_list'])) {

        foreach($_POST['check_list'] as $SID) {
            $sql = "DELETE FROM shopping_cart WHERE UCID = '$UCID' AND SID = '$SID' ";
            $result = mysqli_query($conn, $sql);
        }

        echo ("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('Succesfully Deleted')
        window.location.href='/pages/student/student_enroll.php';
        </SCRIPT>");
    }

}


?>