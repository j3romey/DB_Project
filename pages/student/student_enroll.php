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
     <?php $page = 'enroll'; include("student_nav.php");?>

    <!-- need to clean up later-->
    <select class="courses">
    <option selected="selected">--Select Course--</option>
        <?php
            $path = $_SERVER['DOCUMENT_ROOT'];
            $path .= "/php/db_login.php";
            include_once($path);

            $sql = "SELECT DISTINCT Acronym from course"; 

            $result = mysqli_query($conn, $sql);

            while($row = $result->fetch_assoc()){
                echo "<option value=" . $row['Acronym'] . ">" . $row['Acronym'] . "</option>";
            }   
        ?>
    </select> <br><br>

    <select class="number">
    <option selected="selected">--Select Course--</option>
        <?php
            $path = $_SERVER['DOCUMENT_ROOT'];
            $path .= "/php/db_login.php";
            include_once($path);

            $sql = "SELECT Number from course"; 

            $result = mysqli_query($conn, $sql);

            while($row = $result->fetch_assoc()){
                echo "<option value=" . $row['Number'] . ">" . $row['Number'] . "</option>";
            }   
        ?>
    </select> <br><br>


</body>
</html>