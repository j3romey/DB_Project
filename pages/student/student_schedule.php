<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="student_enroll.js"></script>
<link rel="stylesheet" type="text/css" href="/css/master.css">

<!-- CHANGE CSS SOURCE LATER-->
<link href="/testing/test.css" rel="stylesheet">


</head>
<body>
    <?php $page = 'schedule'; include("student_nav.php");?>
    <h2> SCHEDULE </h2> 
    <!-- PUT SCHEDULE HERE -->
    <?php

        function multiexplode ($delimiters,$string) {
                $ready = str_replace($delimiters, $delimiters[0], $string);
                $launch = explode($delimiters[0], $ready);
                return  $launch;
        }

        function to_time($string){
            // split[0] = before :, split[1] = after :
            $split = explode(':', $string);
            $front = $split[0];
            $back = $split[1];
            // am or pm
            $period = substr($back, -2);
            $back = substr($back, 0,2);

            if($period == 'PM' and $front != '12'){
                $front +=  12;
            }

            return ((string)$front . ":" . (string)$back . ":00");
        }

        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/php/db_login.php";
        include_once($path);
        
        $days = array("Monday", "Tuesday" , "Wednesday", "Thursday", "Friday");

        foreach($days as $day){

            echo "<h3>" . $day . "</h3><BR>";

            $day_acronym = substr($day, 0,2);

            $sql = "SELECT Acronym, Number, Room, Time , Day
                    FROM enroll_sec 
                    NATURAL JOIN section
                    NATURAL JOIN course
                    WHERE Day LIKE '%$day_acronym%'
                    ORDER BY Time ";

            $result = mysqli_query($conn, $sql);
            while($row = $result->fetch_assoc()){
                echo $row['Acronym'] . $row['Number'] .$row['Room'] . " " . $row['Time']  . "<BR>";
            }
        }

        
        // 
        


            /*$exploded = multiexplode(array("-"),$row['Time']);
                
            echo $exploded[0] . "<BR>";
            echo $exploded[1] . "<BR>";


            echo to_time('11:30AM') . "<BR>";
            echo to_time('2:30PM') . "<BR>";

            $time1 = date('H:i', strtotime('11:30AM'));
            $time2 = date('H:i', strtotime('2:30PM'));

            if($time1 < $time2){
                echo 'good';
            }else{
                echo 'bad';
            }*/ 
    ?>
</body>
</html>
