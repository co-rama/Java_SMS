package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectorMySQL {
	
	private static final String USERNAME = "corama";
	private static final String PASSWORD = "corama";
	private static final String CONN_STRING = 
			"jdbc:mysql://localhost/sms";
	
		private Connection conn = null;
		private ResultSet set = null;
		private Statement stmt = null;
	
	public Connection connection(){
				try {
					//Class.forName("com.mysql.cj.jdbc.Driver");
					
					conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
					return conn;
					
				} catch (SQLException e) {
					return null;
				}
	}
	
	public Statement statement(){
		try {
			stmt = connection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			return stmt;
		} catch (SQLException e) {
			return null;
		}
		
	}
	
	public ResultSet getSet(String query){
			//set = statement().executeQuery("SELECT * FROM users");
			try {
				set = statement().executeQuery(query);
				set.last();
				return set;
			} catch (SQLException e) {
				return null;
			}	
				
	}

}
