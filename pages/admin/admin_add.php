<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/index.css">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">

</head>
<body>
    <!-- $page is the type of page to set 'active' in the navbar (admin_nav.php)-->
    <?php $page = 'home'; include("admin_nav.php");?>

    <br>
    <h1> ADD COURSES </h1>

    <form method="post" action="action/class_add.php">
        <select name="department">
            <option selected="selected">--Select Department--</option>
            <?php
                $path = $_SERVER['DOCUMENT_ROOT'];
                $path .= "/php/db_login.php";
                include_once($path);
            
                $sql = "SELECT DISTINCT Acronym from department GROUP BY Acronym"; 
            
                $result = mysqli_query($conn, $sql);
            
                while($row = $result->fetch_assoc()){
                    echo "<option value=" . $row['Acronym'] . ">" . $row['Acronym'] . "</option>";
                }   
            ?>
        </select><br>
        <input type="text" name="coursenumber" placeholder="Course Number" required><br>
        <input type="text" name="coursename" placeholder="Course Name" required><br>
        <input type="text" name="coursedesc" placeholder="Course Description" required><br>
        <button type="submit">Add Course</button>
    </form>
</body>
</html>