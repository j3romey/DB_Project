<?php
session_start();
error_reporting(E_ALL); ini_set('display_errors', 'On');
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);


$UCID = $_SESSION['student_id'];

if($_POST['action'] == 'drop'){
    //echo'delete';

    if(!empty($_POST['check_list'])) {
        foreach($_POST['check_list'] as $SID) {
            $sql = "DELETE FROM enroll_sec WHERE UCID = '$UCID' AND SID = '$SID' ";
            $result = mysqli_query($conn, $sql);
        }

        echo ("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('Course Dropped')
        window.location.href='/pages/student/student_drop.php';
        </SCRIPT>");
        exit();
    }
}

echo 'derp';
echo ("<SCRIPT LANGUAGE='JavaScript'>
window.alert('Something went Wrong')
window.location.href='/pages/student/student_drop.php';
</SCRIPT>");

?>