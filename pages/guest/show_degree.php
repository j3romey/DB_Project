<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script type="text/javascript" src="show_degree_functions.js"></script>

//HTML CODE <BR> <BR>
Class :
<select class="degree">
    <option selected="selected">--Select Course--</option>
    <?php
        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/php/db_login.php";
        include_once($path);

        $sql = "SELECT Name, Deg_ID from degree"; 

        $result = mysqli_query($conn, $sql);

        while($row = $result->fetch_assoc()){
            echo "<option value=" . $row['Deg_ID'] . ">" . $row['Name'] . "</option>";
        }   
    ?>
</select> <br/><br/>


<p name="course" class="course">
COURSE NEEDED
</p>