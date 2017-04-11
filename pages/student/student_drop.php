<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="student_enroll.js"></script>
<link rel="stylesheet" type="text/css" href="/css/master.css">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">


</head>
<body>
     <?php $page = 'drop'; include("student_nav.php");?>
    <div class = "half">
        <h3> List of Enrolled Courses </h3>

        <form method="POST" class="shopping_cart" action="student_dropcourse.php">
            <?php
                $path = $_SERVER['DOCUMENT_ROOT'];
                $path .= "/php/db_login.php";
                include_once($path);

                session_start();
                $UCID = $_SESSION['student_id'];

                $sql = "SELECT * FROM enroll_sec 
                        NATURAL JOIN section 
                        NATURAL JOIN course 
                        WHERE UCID = '$UCID' 
                        ORDER BY Acronym"; 

                $result = mysqli_query($conn, $sql); 

                while($row = $result->fetch_assoc()){
                    $SID = $row['SID'];
                    echo "<input type='checkbox' name='check_list[]' value = '$SID'>" .$row['Acronym'] . " " . $row['Number'] . " " . $row['Room'] . " " . $row['Time'] . "<br>";
                }
                echo "<BR><button type='submit' name='action' value='drop'>Drop</button><BR>";

                
            ?>
        </form> 
    </div>
    
</body>
</html>
