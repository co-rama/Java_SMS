<%@page import="classes.module.ModuleDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TE</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <!-- Font Awesome -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
            <!-- Bootstrap core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <!-- Material Design Bootstrap -->
            <link href="css/mdb.min.css" rel="stylesheet">
            <!-- Your custom styles (optional) -->
            <link href="css/style.css" rel="stylesheet">

            <!-- <link href="css/main.css" type="text/css" rel="stylesheet"> -->
            <link href="css/main-files.css" type="text/css" rel="stylesheet">
        </head>
    <body>
            <section>
                <div class="some-other">
                      <!-- As a heading -->
                        <nav class="navbar navbar-expand-lg navbar-dark secondary-color lighten-2">
                                <span class="navbar-brand">[Welcome to Instuctor Panel]</span>
                                <ul class="navbar-nav ml-auto nav-flex-icons">
                                        <li class="nav-item avatar">
                                          <a class="nav-link p-0" href="#">
                                                <i class="fas fa-user"></i>
                                          </a>
                                       </li>
                                </ul>
                        </nav>
                   </div>
            </section>
            <section>
                <div class="some-other-2">
                        <!-- Start -->
                        <nav class="sidenav-bg rgba-blue-strong"> 
                            <span class="navbar-brand" style="padding-left:2.5em">Quick Dashboard</span>
                            <hr>
                            <ul>
                                <li>
                                    <button type="button" class="btn btn-info btn-rounded" style="width: 80%">Profile</button>
                                </li>
                                <li>
                                    <button type="submit" class="btn btn-info btn-rounded" style="width: 80%">Registered Modules</button>
                                </li>
                                <li>
                                        <button type="button" class="btn btn-info btn-rounded" style="width: 80%">Register Modules</button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-info btn-rounded" style="width: 80%; background: transparent">Attachments</button>
                                </li>
                            </ul>

                        </nav>
                            
                        <!-- End -->
                </div>
            </section>
        <section class="instructor-form">
        <div class="form">
            <form class="module-register" action="module.jsp" method="POST">
                <h3 class="card-header info-color white-text text-center py-3">[Module DB]</h3>
                <h4>
                	<%
                		if(ModuleDB.message != null){
                			out.println(ModuleDB.message);
                		}
                	%>
                </h4>
                    <input type="text" name="code" class="form-control" placeholder="Module Code" required>                
                    <input type="text" name="module"  class="form-control" placeholder="Module Name" required>
                    <input type="text" name="date" class="form-control" placeholder="Registration date" required>
                    <select class="form-control" name="semester">
                            <option value="" disabled>Choose option</option>
                            <option value="semester 1" selected>Semester I</option>
                            <option value="semester 2">Semester II</option>
                        </select> 
                    <textarea name="report" class="form-control" placeholder="Message"
                        row="8" required></textarea>
                    <!-- <input type="submit" name="submit" class="form-control submit" value="Register">-->
                    <input type="file" name="file" class="form-control" placeholder="Attachements">
                    <!-- <input type="submit" name="submit" class="form-control submit" value="Register"> -->
                    <button class="btn btn-info submit" name="submit" value="register">Register!</button>
            </form>
        </div>
    </section>
</body>
</html>