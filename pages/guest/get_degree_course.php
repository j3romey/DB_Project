<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/php/db_login.php";
include_once($path);



if($_POST['id']){
    $id=$_POST['id'];
    echo $id . "<BR>";
    $sql = "SELECT Acronym, Number, course.Name 
                FROM degree  
		        NATURAL JOIN major
                LEFT OUTER JOIN course
         	        ON course.Cid = major.Cid
                WHERE Deg_ID = $id
                ORDER BY Acronym";

    $result = mysqli_query($conn, $sql); 
    while($row = $result->fetch_assoc()){
        echo $row['Acronym'] . " " . $row['Number'] . " " . $row['Name'] . "<BR>";
    }   
}
?>