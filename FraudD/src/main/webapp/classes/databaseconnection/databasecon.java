package databaseconnection;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class databasecon {

	public static Connection getconnection() throws Exception {
		static Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "Yashu@123");
		} catch (Exception e) {
			System.out.println("class error" + e);
		}
		return con;
	}

}
