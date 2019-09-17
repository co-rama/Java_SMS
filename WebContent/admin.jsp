<%@page import="classes.user.UserDB"%>
<%@page import="java.sql.ResultSet"%>
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
                                <span class="navbar-brand">[Welcome to Admin Panel]</span>
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
                                    <button type="submit" class="btn btn-info btn-rounded" style="width: 80%">Confirm New Students</button>
                                </li>
                                <li>
                                        <button type="button" class="btn btn-info btn-rounded" style="width: 80%">Registered Students</button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-info btn-rounded" style="width: 80%; background: transparent">View Log File</button>
                                </li>
                            </ul>

                        </nav>
                            
                        <!-- End -->
                </div>
            </section>
            
            <section id="table-section">
            <!-- Pending users -->
            
              <%
        	Class.forName("com.mysql.cj.jdbc.Driver");
            
            ResultSet rs = UserDB.displayPendingUsers();
            
        	  %>
        	
        	   <div class="table">
            <table class="table">
            
                <tr>
                    <h3>Pending Requests</h3>
                    </tr>
                    <thead>
                    <tr>
                    	<th>Full name</th>
                    	<th>Role</th>
                    	<th>Action</th>
                    </tr>
                    </thead>
                	<%
                	while(rs.next()){
            			
                		
            			out.println("<tr><td>" + rs.getString("firstname") +
            			" " + rs.getString("lastname") + "</d>" + 
            					"<td>" + rs.getString("designation") + "</td><td>" +
            					"<form action=\"confirm_users.jsp\" method=\"get\">" +
            					"<input  type=\"hidden\" value="+  rs.getInt("id") +" name=\"id\"\">" +
            					
            					"<button type=\"submit\" class=\"btn btn-info btn-rounded\" style=\"width:60%, height:30%\">Add</button></form" +
            			
            					"</td></tr>");
            		}
                	
						
					%>

            </table>
        </div> 
        	  
            
            </section>
  
    
  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>