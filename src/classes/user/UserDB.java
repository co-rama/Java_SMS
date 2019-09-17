package classes.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import classes.ErrorHandler;

public class UserDB {
	
	public static String message = null;
	
	private static final String USERNAME = "corama";
	private static final String PASSWORD = "corama";
	private static final String CONN_STRING = 
			"jdbc:mysql://localhost/sms";
	


	public static boolean login(UserBean bean) throws SQLException{
		
		String sql = "SELECT username, password, designation FROM users";
		
		ResultSet rs = null;
		String username = null;
		String password  = null;
		String designation = null;
		
		try {
			Connection conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			rs = stmt.executeQuery();
			
			
			
			while(rs.next()) {
				if(rs.getString("username").equals(bean.getUsername()) && 
						rs.getString("password").equals(bean.getPassword()) && 
						rs.getString("designation").equalsIgnoreCase(bean.getDesignation()))
				{
					username = rs.getString("username");
					password = rs.getString("password");
					designation = rs.getString("designation");
				}
	
			}
			
			if(username != null && password != null && 
					designation != null){
				return true;			
			}else {
				return false;
			}

		}catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return false;
		}
	}
	
	public static boolean registerUser(UserBean bean) {
		String sql = "INSERT into pendingusers (firstname, lastname, username, password, designation)" + 
				"VALUES (?, ?, ?, ?, ?)";

		ResultSet rs = null;



		try {
			Connection conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			stmt.setString(1, bean.getFirstName());
			stmt.setString(2, bean.getLastName());
			stmt.setString(3, bean.getUsername());
			stmt.setString(4, bean.getPassword());
			stmt.setString(5, bean.getDesignation());

			int affected = stmt.executeUpdate();

			if(affected == 1) {
				rs = stmt.getGeneratedKeys();
				rs.next();

				int keyId = rs.getInt(1);
				bean.setUserID(keyId);

			}else {
				return false;			
			}
		} catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return false;
		}
		return true;	
	}
	
	public static ResultSet displayPendingUsers() {

		String sql = "SELECT id, firstname, lastname, designation FROM pendingusers ORDER BY id DESC";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet set = null;
		try {
			conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			stmt = conn.prepareStatement(sql);

			set = stmt.executeQuery();
			
			return set;
		}catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return null;
		}


	}
	
	public static ResultSet getPendingUsers(int id) {
			
		String sql = "SELECT * FROM pendingusers WHERE id = ?";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet set = null;
		try {
			conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			stmt = conn.prepareStatement(sql);
			
			stmt.setInt(1, id);

			set = stmt.executeQuery();
			
			return set;
		}catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return null;
		}


	}
	
	public static boolean insertUsersLogIn(int id) {
		ResultSet rs = getPendingUsers(id);
		
		String sql = "INSERT into users (username, password, designation)" + 
				"VALUES (?, ?, ?)";

		ResultSet set = null;



		try {
			Connection conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			while(rs.next()) {
				stmt.setString(1, rs.getString("username"));
				stmt.setString(2,rs.getString("password"));
				stmt.setString(3, rs.getString("designation"));
			}


			int affected = stmt.executeUpdate();

			if(affected == 1) {
				set = stmt.getGeneratedKeys();
				set.next();

				int keyId = set.getInt(1);

			}else {
				return false;			
			}
		} catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return false;
		}
		
		return true;
		
	}



}
