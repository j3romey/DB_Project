<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="index.css">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">

</head>

<body>

    <?php $page = 'degree'; include("student_nav.php");?>

    <!-- some php crap i need to clean later-->
    <p>
    <?php
        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/php/db_login.php";
        include_once($path);

        $UCID = $_SESSION['student_id'];

        $sql = "SELECT * FROM enroll_deg WHERE UCID = $UCID ";

        $result = mysqli_query($conn, $sql); 
        while($row = $result->fetch_assoc()){
            $DEG_ID = $row['Deg_ID'];
        }
        $sql = "SELECT Acronym, Number, course.Name ,degree.Name AS DEG_NAME
                    FROM degree  
        	        NATURAL JOIN major
                    LEFT OUTER JOIN course
             	        ON course.Cid = major.Cid
                    WHERE Deg_ID = $DEG_ID
                    ORDER BY Acronym, Number";
                
        $result = mysqli_query($conn, $sql);

        $row = $result->fetch_assoc();
        echo "<h1>" . $row['DEG_NAME'] . "</h1> <BR>";
        
        echo "<table style='width:100%' >";
        while($row = $result->fetch_assoc()){
            echo "<tr>";
            echo "<th align='left'>" . $row['Acronym'] . " " . $row['Number'] . "</th><th align='left'>" . $row['Name'] . "</th>";
            echo "</tr>";
        }   
        echo "</table>";
        
    ?>
    </p>
</body>
</html>