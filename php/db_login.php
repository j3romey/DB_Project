<!-- Standard database login info, include everytime accessing database-->
<!-- Ecample file is the top of register.php -->

<?php
    $host = "localhost";
    $db_username = "root";
    $db_password = "root";
    $db_name = "test";

    $conn = mysqli_connect($host, $db_username, $db_password, $db_name);

    if(!$conn){
        die("Connection Failed: " . mysqli_connect_error());
    }
?>