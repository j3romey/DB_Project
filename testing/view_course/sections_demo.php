<?
    /*
        source: http://www.9lessons.info/2010/08/dynamic-dependent-select-box-using.html

        USE WITH
            - ajax_city.php
            - section_demo.php
    */
?>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script type="text/javascript" src="course_dropdown_functions.js"></script>

    
//HTML Code <br> <br>
Class :

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
</select> <br/><br/>

Number :
<select class="number">
<option selected="selected">--Select Number--</option>
</select>



<p name="desc" class="desc">
 DESCRIPTION
</p>