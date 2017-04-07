# DB_Project
*FEEL FREE TO UPDATE THIS IF ANYTHING IS MISSING*

DATABASE SETUP
  - DATABASE NAME MUST BE CALLED "test" in phpmyadmin
  - Make sure 'test' is selected in phpmyadmin
  - Then import the most current .sql file in the database folder from the repo
  - *Always make sure you are importing the current database*

HTDOCS
  - initialize git in the htdocs folder or
  - Add the rest of the files to the htdocs folders in MAMP

DATABASE
   - MAKE SURE THERE ARE 'ROWS' IN THE TABLE WHEN TESTING

# PROJECT STATUS

TASKS COMPLETED
  - Sign Up Fully Works
  - Guest Side
  	- View Courses
	- View Degrees
  - Student
  	- View Degree
	- Shopping Cart (Adding and Viewing)
	
TASK TO BE COMPLETED
  - Admin Access
    - commands (Add, Edit, Delete)
    	- Instructors
	- Courses

  - Student View
    - Enrolling
    - View Schedule
    - Edit profile?
    	- password and stuff
    
# TROUBLESHOOTING
  - when 'including' a php file please use the follwing code to use the absolute path: <br>
        $path = $_SERVER['DOCUMENT_ROOT'];  <br>
        $path .= "/yourpath/yourfile.php";  <br>
        include_once($path);  <br>
  - Use the Following code to connect to the database in PHP:<br>
  	$path = $_SERVER['DOCUMENT_ROOT'];<br>
    	$path .= "/php/db_login.php";<br>
    	include_once($path);<br>
  - Put this line in the top of the php to view errors: <br>
    ex: student_add_shopping_cart.php <br>
    error_reporting(E_ALL); ini_set('display_errors', 'On'); 
  - Make sure you have the proper files linked when doing javascript, php, css, etc.
  - Make sure you are referring to the proper path (ex: making sure a file is in the proper folder)
 
