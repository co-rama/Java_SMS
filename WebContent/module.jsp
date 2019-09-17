<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.module.ModuleDB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="classes.module.ModuleBean"%>
<%@page import="java.util.Date"%>
<%@page import="classes.ConnectorMySQL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!DOCTYPE html>
   <html>
	  <%
	  	  
	  		String message = "";
	  
	  	  	String code = request.getParameter("code");
	  	  	String moduleName = request.getParameter("module");
	  	  	String report = request.getParameter("report");
	  	  	String date = request.getParameter("date");
	  	  	String semester = request.getParameter("semester");

	  	  	
	  	  	ModuleBean bean = new ModuleBean();
	  	  	
	  	  	bean.setModuleCode(code.trim());
	  	  	bean.setModuleName(moduleName.trim());
	  	  	bean.setReport(report.trim());
	  	  	bean.setSemester(semester);
	  	  	bean.setDateOfRegister(date.trim());
	  	  	
	   		
	  	  	//out.println(bean.getModuleName());
	  	  	//out.println(bean.getModuleCode());
		
			Class.forName("com.mysql.cj.jdbc.Driver");

			
			
			boolean result = ModuleDB.insertModule(bean);
			
			if(result){
				ModuleDB.getInsertMessage();
				response.sendRedirect("instructor.jsp");
			}else{	
				out.println(message = "Module Registration failed");
			}
			
			
		
	  %>

  </html>