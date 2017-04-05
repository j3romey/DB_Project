<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="student_enroll.js"></script>

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
    </select> <br><br>

    <form method="post" class="sections" action="test.php">
        <input type="radio" name="gender" value="male"> Sections<br>
        <input type="radio" name="gender" value="female"> Go <br>
        <input type="radio" name="gender" value="other"> Here
    </form>


</body>
</html>
