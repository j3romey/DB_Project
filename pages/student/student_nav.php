<!-- header -->
<img id = "logo" src="/images/logo.png">

<?php 
    session_start();
    echo "<h1> Welcome " . $_SESSION['student_f_name'] . " " .$_SESSION['student_m_name']." ". $_SESSION['student_l_name'] . "</h1>"; 
?>

<!-- nav bar -->
<ul class = "nav">
   <li>
       <a <?php echo ($page == 'home') ? "class='active'" : ""; ?> 
              href="student_home.php">Home</a></li>
   <li>
       <a <?php echo ($page == 'degree') ? "class='active'" : ""; ?> 
               href="student_degree.php">Degree</a></li>
   <li>
       <a <?php echo ($page == 'schedule') ? "class='active'" : ""; ?> 
               href="student_schedule.php">View Schedule</a></li>
   <li>
       <a <?php echo ($page == 'enroll') ? "class='active'" : ""; ?> 
               href="student_enroll.php">Enroll Course</a></li>
   <li>
       <a <?php echo ($page == 'drop') ? "class='active'" : ""; ?> 
               href="student_drop.php">Drop Course</a></li>
</ul>
