<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);

if($_POST['id']){
    $id=$_POST['id'];
    $sql = "SELECT Number from course WHERE Acronym = '$id' "; 

    $result = mysqli_query($conn, $sql);    
    
    while($row = $result->fetch_assoc()){
        echo $row['Number'] . "<BR>";
        echo "<option value=" . $row['Number'] . ">" . $row['Number'] . "</option>";
    }   
}
?>