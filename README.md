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

 TABLES THAT CONTAIN DATA
  - Course
  - Department
  - User (root, root)
  - Reigstrar
  - Instructors
  - Sections
  - Lecture
  - Tutorials
  - Lab
  - Degree (1 only so far)
	- Courses with the same GroupBy means you only need to take 1 of them
	- Student must finish all GroupBy to graduate on that degree
  - Major
  
Project Status
  - Sign Up Fully Works
  - Guest Side is Completed (Jerome)
  	- Please check over to make sure I didn't miss anything
  
TASK TO BE COMPLETED
  - Admin Access
    - commands (Add, Edit, Delete)
  - Scheduling
    - timetable
    - Fetch data from database and format it for HTML
  - Student View
    - Shopping Cart
    - Enrolling
    - Current Schedule
    
TROUBLESHOOTING
  - when 'including' a php file please use the follwing code to use the absolute path <br>
        $path = $_SERVER['DOCUMENT_ROOT'];  <br>
        $path .= "/yourpath/yourfile.php";  <br>
        include_once($path);  <br>
  - Make sure you have the proper files linked when doing javascript, php, css, etc.
  - Make sure you are referring to the proper path (ex: making sure a file is in the proper folder)
 
