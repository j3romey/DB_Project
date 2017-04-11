<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="action/admin_dd_menu.js"></script>

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">

</head>
<body>
    <!-- $page is the type of page to set 'active' in the navbar (admin_nav.php)-->
    <?php $page = 'home'; include("admin_nav.php");?>

    <br>
    <h1> ADD SECTIONS </h1>

    <form method="post" action="action/sect_add.php">
        <select class="courses" name="department">
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
        <select class="number" name="number">
            <option selected="selected">--Select Course--</option>
        </select><br>
        <input type="radio" name="secttype" value="lecture">Lecture 
        <input type="radio" name="secttype" value="lab">Laboratory 
        <input type="radio" name="secttype" value="tutorial">Tutorial
        <br>
        <select name="instructor">
            <option selected="selected">--Select Instructor--</option>
            <?php
                $path = $_SERVER['DOCUMENT_ROOT'];
                $path .= "/php/db_login.php";
                include_once($path);
            
                $sql = "SELECT * from Instructor ORDER BY Lname"; 
            
                $result = mysqli_query($conn, $sql);
            
                while($row = $result->fetch_assoc()){
                    echo "<option value=" . $row['Eid'] . ">" . $row['Lname'] . ", " . $row['Fname'] . " " . $row['Mname'] . "</option>";
                }   
            ?>
        </select> <br>
        <input type="text" name="wkday" placeholder="Weekdays" required><br>
        <Input type="text" name="room" placeholder="Room number" required><br>
        <input type="text" name="secttime" placeholder="Section Time" required><br>
        <input type="text" name="semester" placeholder="Semester" required><br>
        <button type="submit">Add Section</button>
    </form>
</body>
</html>