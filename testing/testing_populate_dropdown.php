<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Guest</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/guest.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet">

</head>

<body>
<select>
    <?
    $path = $_SERVER['DOCUMENT_ROOT'];
    $path .= "/php/db_login.php";
    include_once($path);    
    
    $sql = "SELECT Number from course"; 

    $result = mysqli_query($conn, $sql);    

    while($row = $result->fetch_assoc()){
        //echo $row['Number'] . "<BR>";
        echo "<option value=" . $row['Number'] . ">" . $row['Number'] . "</option>";
    }   

    ?>
</select>
</body>

</html>