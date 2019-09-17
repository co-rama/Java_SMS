<%@page import="java.sql.Date"%>
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
	

	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String designation = request.getParameter("designation");
		bean.setUsername(userName.trim());
		bean.setPassword(password.trim());
		bean.setDesignation(designation.trim());
	
		boolean results = UserDB.login(bean);

		
		if(results){
			//out.println("Hello from the if block");
			if(bean.getDesignation().equalsIgnoreCase("Instructor"))
			{
				response.sendRedirect("instructor.jsp");
			}
			else if(bean.getDesignation().equalsIgnoreCase("administrator"))
			{
				response.sendRedirect("admin.jsp");
			}
			else{
				response.sendRedirect("studentHome.jsp");
			}
			
		}else{
			response.sendRedirect("login.jsp");
			String message = "username/password incorrect";
		}
		
	
	%>
	

</body>
</html>