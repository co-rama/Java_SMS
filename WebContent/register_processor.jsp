<%@page import="classes.user.UserDB"%>
<%@page import="classes.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	
	<%
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	UserBean bean = new UserBean();
	
	String message = "Corama";
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String designation = request.getParameter("designation");
	String lastName = request.getParameter("lastname");
	String firstName = request.getParameter("firstname");
	
		bean.setUsername(userName.trim());
		bean.setPassword(password.trim());
		bean.setDesignation(designation.trim());
		bean.setFirstName(firstName.trim());
		bean.setLastName(lastName.trim());
	
		boolean results = UserDB.registerUser(bean);

		
		if(results){
			//out.println("Hello from the if block");
			response.sendRedirect("login.jsp");
		
			
		}else{
			response.sendRedirect("login.jsp");
			message = "User registration failed";
			
		}
		
	
	%>
	

</body>
</html>