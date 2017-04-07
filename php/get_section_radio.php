<?php
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);

    session_start();

    if($_POST['id']){

        $ACRONYM = $_SESSION['Acronym'];
        $NUMBER = $_POST['id'];


        $sql = "SELECT Cid from course WHERE Acronym = '$ACRONYM' AND Number = '$NUMBER' "; 

        $result = mysqli_query($conn, $sql);    
        $row = $result->fetch_assoc();

        $CID = $row['Cid'];

        // GET lecture
        echo "<h1>LECTURES</h1>";
        $sql = "SELECT * FROM (SELECT * from section WHERE section.Cid = '$CID') section JOIN lecture ON section.Sid = lecture.Sid ORDER BY Room";
        $result = mysqli_query($conn, $sql);   
        while($row = $result->fetch_assoc()){
            $ROOM = $row['Room'];
            $SID = $row['Sid'];
            $DAY = $row['Day'];
            $TIME = $row['Time'];
            //<input type="radio" name="gender" value="male"> Sections<br>;
            echo "<input type = 'radio' class = 'lecture' name = 'lecture' value = '$SID'>" . $ROOM ." " . $DAY . " ". $TIME . "<br>";
        }

        // GET tutorial
        echo "<h1>TUTORIALS</h1>";
        $sql = "SELECT * FROM (SELECT * from section WHERE section.Cid = '$CID') section JOIN tutorial ON section.Sid = tutorial.Sid ORDER BY Room";
        $result = mysqli_query($conn, $sql);   
        while($row = $result->fetch_assoc()){
            $ROOM = $row['Room'];
            $SID = $row['Sid'];
            $DAY = $row['Day'];
            $TIME = $row['Time'];
            //<input type="radio" name="gender" value="male"> Sections<br>;
            echo "<input type = 'radio' class = 'tutorial' name = 'tutorial' value = '$SID'>" . $ROOM ." " . $DAY . " ". $TIME . "<br>";
        }

        // GET tutorial
        echo "<h1>LABS</h1>";
        $sql = "SELECT * FROM (SELECT * from section WHERE section.Cid = '$CID') section JOIN lab ON section.Sid = lab.Sid ORDER BY Room";
        $result = mysqli_query($conn, $sql);   
        while($row = $result->fetch_assoc()){
            $ROOM = $row['Room'];
            $SID = $row['Sid'];
            $DAY = $row['Day'];
            $TIME = $row['Time'];
            //<input type="radio" name="gender" value="male"> Sections<br>;
            echo "<input type = 'radio' name = 'lab' value = '$SID'>" . $ROOM ." " . $DAY . " ". $TIME . "<br>";
        }

        
        echo "<input type='submit' value='Submit'>";
        
    }
?>