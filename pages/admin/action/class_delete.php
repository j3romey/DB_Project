<?php

    error_reporting(E_ALL); ini_set('display_errors', 'On'); 
    
    ob_start();
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);

    session_start();
    $UCID = $_SESSION['student_id'];

    // THESE ARE THE SECTION ID's
    $lecture = $_POST['lecture'];
    $tutorial = $_POST['tutorial'];
    $lab = $_POST['lab'];

    echo $lecture . " " . $lab . " " . $tutorial . "<BR>";

    echo '<h1>selected</h1>';

    // grabs the selected LECTURE
    $sql = "SELECT * from section WHERE Sid = '$lecture' "; 
    $result = mysqli_query($conn, $sql);    
    $row = $result->fetch_assoc();
    echo $row['Room'] . " " . $row['Day'] . " " . $row['Time'] . "<BR>";

    // grabs the selected TUTORIAL
    $sql = "SELECT * from section WHERE Sid = '$tutorial' "; 
    $result = mysqli_query($conn, $sql);    
    $row = $result->fetch_assoc();
    echo $row['Room'] . " " . $row['Day'] . " " . $row['Time'] . "<BR>";

    // grabs the selected LAB
    $sql = "SELECT * from section WHERE Sid = '$lab' "; 
    $result = mysqli_query($conn, $sql);    
    $row = $result->fetch_assoc();
    echo $row['Room'] . " " . $row['Day'] . " " . $row['Time'] . "<BR>";

    // INSERT LECTURE
    if(isset($lecture)){
        $sql = "INSERT INTO shopping_cart (UCID, SID)  VALUES ('$UCID', '$lecture')";
        $result = mysqli_query($conn, $sql); 
        echo "there is lecture <BR>";
        if(!$result){
            // pop up errorr
            echo ("<SCRIPT LANGUAGE='JavaScript'>
            window.alert('Something Went Wrong')
            window.location.href='/pages/student/student_enroll.php';
            </SCRIPT>");
            exit();
        }
    }
    // INSERT LECTURE
    if(isset($tutorial)){
        $sql = "INSERT INTO shopping_cart (UCID, SID)  VALUES ('$UCID', '$tutorial')";
        $result = mysqli_query($conn, $sql); 
        echo "there is tutorial <BR>";

        if(!$result){
            echo ("<SCRIPT LANGUAGE='JavaScript'>
            window.alert('Something Went Wrong')
            window.location.href='/pages/student/student_enroll.php';
            </SCRIPT>");
            exit();
        }
    }
    // INSERT LECTURE
    if(isset($lab)){
        $sql = "INSERT INTO shopping_cart (UCID, SID)  VALUES ('$UCID', '$lab')";
        $result = mysqli_query($conn, $sql); 
        echo "there is lab <BR>";
        if(!$result){
            echo ("<SCRIPT LANGUAGE='JavaScript'>
            window.alert('Something Went Wrong')
            window.location.href='/pages/student/student_enroll.php';
            </SCRIPT>");
            exit();
        }
    }

    // pop up when everything query's properly
    echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Succesfully Updated')
    window.location.href='/pages/student/student_enroll.php';
    </SCRIPT>");
?>