<?php 
    $host = "localhost";
    $db_username = "root";
    $db_password = "root";
    $db_name = "test";
    $tablename = "user";
    // username and password sent from form 
    $username=$_POST['username']; 
    $password=$_POST['password'];

    // ip-server, username, password, name-of-database
    $conn = mysqli_connect($host, $db_username, $db_password, $db_name);
    if($conn->connect_error){
        die("failed: " . $conn->connect_error);
    }

    session_start();

    $sql = "SELECT * FROM user WHERE Username = '$username' AND Password = '$password' ";
    $result = $conn->query($sql);

    if($result->num_rows == 1){
        while($row = $result->fetch_assoc()){
            $user_id = $row['UID'];
        }   
    
        $sql = "SELECT * FROM student WHERE UID = '$user_id' ";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc()){
            $_SESSION['student_f_name'] = $row['Fname'];
            $_SESSION['student_m_name'] = $row['Mname'];
            $_SESSION['student_l_name'] = $row['Lname'];
            $_SESSION['student_id'] = $row['UCID'];
        }  

        header("Location: /pages/student/student_home.php");
    }else{
        
    }
?>