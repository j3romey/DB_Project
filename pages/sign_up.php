<!DOCTYPE html>
<html>
<head>
<title>University of Calgary Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/index.css">

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

</head>
<body>
    
     <img id = "logo" src=/images/logo.png>

    <form method="post" action="/php/register.php">
        <div id="login-title" >
            <h1> Registration</h1>
        </div>
        <input type="text" name="firstname" placeholder="Firstname" required><br>
        <input type="text" name="middlename" placeholder="Middlename" required><br>
        <input type="text" name="lastname" placeholder="Lastname" required><br>
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="text" name="password" placeholder="Password" required><br>
        <button type="submit">Sign Up</button>

    </form>
   
    
</body>
</html>