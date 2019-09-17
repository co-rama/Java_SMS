package classes.module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import classes.ErrorHandler;

public class ModuleDB {

	public static String message = null;

	private static final String USERNAME = "corama";
	private static final String PASSWORD = "corama";
	private static final String CONN_STRING = 
			"jdbc:mysql://localhost/sms";


	public static boolean insertModule(ModuleBean bean){

		String sql = "INSERT into module (code, module_name, date_of_register, report, semester)" + 
				"VALUES (?, ?, ?, ?, ?)";

		ResultSet rs = null;



		try {
			Connection conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			stmt.setString(1, bean.getModuleCode());
			stmt.setString(2, bean.getModuleName());
			stmt.setString(3, bean.getDateOfRegister());
			stmt.setString(4, bean.getReport());
			stmt.setString(5, bean.getSemester());

			int affected = stmt.executeUpdate();

			if(affected == 1) {
				rs = stmt.getGeneratedKeys();
				rs.next();

				int keyId = rs.getInt(1);
				bean.setMouduleID(keyId);

			}else {
				return false;			
			}
		} catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return false;
		}
		return true;

	}
	public static String getInsertMessage() {
		return "The module registration was successfull";
	}

	public static ResultSet displayAllRows() {

		String sql = "SELECT code, module_name, report FROM module ORDER BY id DESC " +
						"LIMIT 9";

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

	public static ResultSet getRows(String code) {

		String sql = "SELECT code, module_name, report FROM module WHERE code = ?";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet set = null;
		try {
			conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
			stmt = conn.prepareStatement(sql);

			stmt.setString(1, code);
			set = stmt.executeQuery();
			
			return set;
		}catch (SQLException e) {
			ErrorHandler.processDBException(e);
			return null;
		}


	}


}


