package classes;

import java.sql.SQLException;

public class ErrorHandler{
	
	public static String processDBException(SQLException e) {
		String message = e.getMessage();
		
		return message; 
	}
}