<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TE</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <!-- jQuery library -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

            <!-- Popper JS -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

            <!-- Latest compiled JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


            <link href="css/main.css" type="text/css" rel="stylesheet">
    </head>
<body>
    <!-- Navbar (sit on top) -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="studentHome.jsp">Student Panel</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Course Panel</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="instructor.jsp">Instructor Panel</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">[Admin Panel]</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">[Some other Panel]</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">[Modules]</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">[Computer Studies]</a>
                        <a class="dropdown-item" href="#">[SQL]</a>
                        <a class="dropdown-item" href="#">[Dummy Subjects]</a>
                        <a class="dropdown-item" href="#">[Digital Electroncs]</a>   
                    </div>              
            </li>
            <li>
                <a class="nav-link disabled" href="#">[ThisIsForTesting]</a>
            </li>            
        </ul>
    </nav>      
</body>
</html>