<?
    /*
        source: http://www.9lessons.info/2010/08/dynamic-dependent-select-box-using.html

        USE WITH
            - ajax_city.php
            - section_demo.php
    */
?>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".country").change(function(){
            var id=$(this).val();
            var dataString = 'id='+ id;

            $.ajax({
                type: "POST",
                url: "ajax_city.php",
                data: dataString,
                cache: false,
                success: function(html){
                    $(".city").html(html);
                } 
            });

        });
    });

</script>
//HTML Code
Class :
<select name="country" class="country">
<option selected="selected">--Select Course--</option>
<?php
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);

    $sql = "SELECT DISTINCT Acronym from course"; 

    $result = mysqli_query($conn, $sql);    

    while($row = $result->fetch_assoc()){
        $id = $row['Acronym'];
        echo "<option value=" . $row['Acronym'] . ">" . $row['Acronym'] . "</option>";
    }   
?>
</select> <br/><br/>

Number :
<select name="city" class="city">
<option selected="selected">--Select Number--</option>
</select>