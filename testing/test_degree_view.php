 <?php
        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/php/db_login.php";
        include_once($path);

        $sql = "SELECT Acronym, Number, course.Name 
                FROM degree  
		        NATURAL JOIN major
                LEFT OUTER JOIN course
         	        ON course.Cid = major.Cid
                ORDER BY Acronym";

        $result = mysqli_query($conn, $sql);    

        while($row = $result->fetch_assoc()){
            echo $row['Acronym'] . " " . $row['Number'] . " " . $row['Name'] . "<BR>";
        }   
?>