<?php
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);

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

    // IF passes show pass window

    // IF fails show fail window 
?>