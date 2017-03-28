<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

session_start();

if($_POST['id']){
    $id=$_POST['id'];

    $_SESSION['Acronym'] = $id;

    $sql = "SELECT Number, Description from course WHERE Acronym = '$id' "; 

    $result = mysqli_query($conn, $sql);    

    echo '<option selected="selected">--Select Number--</option>';
    while($row = $result->fetch_assoc()){
        echo "<option value=" . $row['Number'] . ">" . $row['Number'] . "</option>";
    }

}
?>