<%@page import="java.sql.ResultSet"%>
<%@page import="classes.user.UserDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm</title>
</head>
<body>
	<%
	
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		String idString = request.getParameter("id");
		
		int id = Integer.parseInt(idString);
		
		boolean results = UserDB.insertUsersLogIn(id);
		
		
		if(results){
			response.sendRedirect("admin.jsp");
			
		}else{
			out.println("User was not added");
		}
		

	%>

</body>
</html>