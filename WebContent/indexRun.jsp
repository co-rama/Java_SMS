<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="classes.module.ModuleBean"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="com.mysql.cj.xdevapi.SqlResult"%>
<%@page import="classes.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.ConnectorMySQL"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

final String USERNAME = "dbuser";
final String PASSWORD = "letscodeandcoffee";
final String CONN_STRING = 
		"jdbc:mysql://localhost/telecommunication";

	//Connection conn = null;
	//ResultSet set = null;
	//Statement stmt = null;
	
	//Class.forName("com.mysql.jdbc.Driver");
	
	//conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
	
	//stmt = conn.createStatement();
	
	//set = stmt.executeQuery("SELECT * From users");
	//set.last();
	
	
	ConnectorMySQL connector = new ConnectorMySQL();
	
	ResultSet rs = connector.getSet("SELECT * From users");
	
	out.println(rs.getRow());
//	out.println(set.getRow());
%>

</body>
</html>