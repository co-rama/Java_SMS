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

            <link href="css/main.css" type="text/css" rel="stylesheet">
    </head>
<body>
    <div class="login-page">
        <div class="form">
            <form class="register-form" action="register_processor.jsp" method="post">
                <input type="text" name="firstname" placeholder="first name"/>
                <input type="text" name="lastname" placeholder="last name"/>
                <input type="text" placeholder="username" name="username">
                <input type="password" placeholder="password" name="password">
                <select id="designation" name="designation">
                    <option value="student">student</option>
                    <option value="instructor">instructor</option>
                    <option value="administrator">administrator</option>
                  </select>

                <button class="btn btn-info">create</button>
                <p class="message">Already registered? <a href="#">Sign in</a> </p>
            </form>

            <form class="login-form" action="login_processor.jsp" method="post">
            
          
                <input type="text" placeholder="username" name="username">
                <input type="password" placeholder="password" name="password">
                <!--  <input type="text" placeholder="designation" name="designation"> -->
               <select id="designation" name="designation">
                    <option value="student">student</option>
                    <option value="instructor">instructor</option>
                    <option value="administrator">administrator</option>
                  </select>
                <button class="btn btn-info" type="submit" name="submit">login</button>
                <p class="message">Not registered? <a href="#">Create an account</a></p>
            </form>

        </div> <!--End form div-->
    </div> <!--End login page-->
    <!-- SCRIPTS -->
    <!-- JQuery -->
<script src="javascript/main.js"></script>
</body>
</html>