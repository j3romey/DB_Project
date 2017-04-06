<?php
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);

    session_start();
    $UCID = $_SESSION['student_id'];

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

    // TRY TO INSERT IN DATABASE 

    $sql = "INSERT INTO shopping_cart (UCID, SID)  VALUES ('$UCID', 5)";
    $result = mysqli_query($conn, $sql); 

    echo "try to add to database <BR>";
 
    $sql = "SELECT * from shopping_cart"; 
    $result = mysqli_query($conn, $sql);    

    $row = $result->fetch_assoc();
    echo $row['UCID'] . " " . $row['SID'] . "<BR>";
    // Check enroll table if any time overlaps



    // IF passes show pass window

    // IF fails show fail window 
?>