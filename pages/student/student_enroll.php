<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="student_enroll.js"></script>
<link rel="stylesheet" type="text/css" href="/css/master.css">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">


</head>
<body>
     <?php $page = 'enroll'; include("student_nav.php");?>
    <div class = "half">
        <h3> PICK A COURSE </h3>
        <select class="courses">
            <option selected="selected">--Select Course--</option>
            <?php
                $path = $_SERVER['DOCUMENT_ROOT'];
                $path .= "/php/db_login.php";
                include_once($path);
            
                $sql = "SELECT DISTINCT Acronym from course GROUP BY Acronym"; 
            
                $result = mysqli_query($conn, $sql);
            
                while($row = $result->fetch_assoc()){
                    echo "<option value=" . $row['Acronym'] . ">" . $row['Acronym'] . "</option>";
                }   
            ?>
        </select> <br><br>
        <select class="number">
            <option selected="selected">--Select Course--</option>
        </select> <br><br>
    
        <form method="post" class="sections" action="student_add_shopping_cart.php">
            
        </form>
        
    </div>
    <div class = "half">
        <h3> SHOPPING CART</h3>

        <ul>
            <?php

                $path = $_SERVER['DOCUMENT_ROOT'];
                $path .= "/php/db_login.php";
                include_once($path);

                session_start();
                $UCID = $_SESSION['student_id'];

                $sql = "SELECT * FROM shopping_cart 
                        NATURAL JOIN section 
                        NATURAL JOIN course 
                        WHERE UCID = '$UCID' 
                        ORDER BY Acronym"; 

                $result = mysqli_query($conn, $sql); 

                while($row = $result->fetch_assoc()){
                    echo "<li>" . $row['Acronym'] . " " . $row['Number'] . " " . $row['Room'] . " " . $row['Time'] .  "</li>";
                }   

            ?>
        </ul>    
    </div>
    


</body>
</html>
