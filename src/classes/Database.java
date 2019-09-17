package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
	private static final String PASSWORD = "corama";
	private static final String USERNAME = "corama";
	private static final String CONN_STRING = 
			"jdbc:mysql://localhost/sms";
	
		private Connection conn = null;
		private Statement stmt = null;
		private ResultSet set = null;
		private int numberOfRows = 2;
	
	public int getNumberOfRows() {
			return numberOfRows;
		}

		public void setNumberOfRows(int numberOfRows) {
			this.numberOfRows = numberOfRows;
		}

	private Connection getConnection() throws SQLException{
		conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
		return conn;
	}
	
	private Statement createStatement() throws SQLException{
		//getConnection();
		 stmt = getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
				 ResultSet.CONCUR_READ_ONLY); 
		 return stmt;
	}
	
	public ResultSet getSet() throws SQLException{
		//createStatement();
		set = createStatement().executeQuery("SELECT * from users");
		set.last();
		numberOfRows = set.getRow();
		setNumberOfRows(numberOfRows);
		return set;
	}
	
	public String getSetString(String query) {	
		return query;
	}

}
