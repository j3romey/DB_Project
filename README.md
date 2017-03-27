# DB_Project
CPSC 471

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
  
Project Status
  - Sign Up fully works
  
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
