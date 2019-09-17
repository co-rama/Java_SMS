
<%@page import="classes.module.ModuleDB"%>
<%@page import="java.sql.ResultSet"%>
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
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <!-- Material Design Bootstrap -->
            
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            
                        <!-- jQuery library -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

            <!-- Popper JS -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
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
                                <span class="navbar-brand">[Welcome to Student Panel]</span>
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
                                        <button type="button" class="btn btn-info btn-rounded" style="width: 80%">More</button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-info btn-rounded" style="width: 80%; background: transparent">More</button>
                                </li>
                            </ul>

                        </nav>
                            
                        <!-- End -->
                </div>
            </section>
      <!-- Nav bar for the search button -->
      <section class="search-button">
              <ul class="nav-search">
                      <li id="settings">
                          <a href="#"><span class="fas fa-cog"></span></a>
                      </li>
                      <li>
                          <a href="#">Modules</a>
                      </li>
                      <li>
                          <a href="studentHome.jsp">Home</a>
                      </li>
                      <li id="search">
                          <form action="moduleSearch.jsp" method="POST">
                              <input type="text" name="search_text" id="search_text" placeholder="Search"/>
                              <input type="submit" name="search_button" id="search_button" value="">
                          </form>
                      </li>
                      <li id="options">
                          <a href="#">Options</a>
                          <ul class="subnav">
                              <li><a href="#">Settings</a></li>
                              <li><a href="studentHome.jsp">Modules</a></li>
                              <li><a href="studentHome.jsp">Home</a></li>
                              <li><a href="#">More</a></li>
                          </ul>
                      </li>
                  </ul>
        </section>
                    <!-- Table for the modules available -->
        <%
        	Class.forName("com.mysql.cj.jdbc.Driver");
            
            ResultSet rs = ModuleDB.displayAllRows();
        %>
                    
    <section id="table-section">
        <div class="table">
            <table class="table">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Module name</th>
                    <th>Short Report</th>
                  </tr>
                  </thead>
                	<%
                		while(rs.next()){
                			
                			out.println("<tr><td>" + rs.getString("code") + "</td>" +
                					"<td>" + rs.getString("module_name") + "</td>" + 
                					"<td>" + rs.getString("report") + "</td></tr>");
                		}
						
					%>

            </table>
        </div>
    </section>
    

</body>
</html>