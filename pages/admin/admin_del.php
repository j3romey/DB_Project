<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/index.css">
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
    <h1> DELETE COURSES </h1>
    <div class = "del">
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
    
        <form method="post" class="sections" action="action/class_delete.php">
            
        </form>
    </div>
</body>
</html>