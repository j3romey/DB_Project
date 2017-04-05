<!-- header -->
<img id = "logo" src="/images/logo.png">

<?php 
    session_start();
    echo "<h1> Welcome " . $_SESSION['admin_f_name'] . " " .$_SESSION['admin_m_name']." ". $_SESSION['admin_l_name'] . "</h1>"; 
?>

<!-- nav bar -->
<ul class = "nav">
    <li>
        <a <?php echo ($page == 'Home') ? "class='active'" : ""; ?> 
            href="admin_home.php">Home</a></li>
    <li>
        <a <?php echo ($page == 'Add Courses') ? "class='active'" : ""; ?> 
            href="admin_add.php">Add Courses</a></li>
    <li>
        <a <?php echo ($page == 'Modify Courses') ? "class='active'" : ""; ?> 
            href="admin_mod.php">Modify Courses</a></li>
    <li>
        <a <?php echo ($page == 'Delete Courses') ? "class='active'" : ""; ?> 
            href="admin_del.php">Delete Courses</a></li>
    <li>
        <a <?php echo ($page == 'Logout') ? "class='active'" : ""; ?> 
            href="/admin.php">Logout</a></li>
</ul>
