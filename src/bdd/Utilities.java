package bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Utilities {

	
	public static Connection openConnection() {
		// Attention URL pour une base de donnée de type MySql
		String url = "jdbc:mysql://localhost/siteprojet";
		String login = "root";
		String pass = "";
		Connection cn = null;

		try {
			// chargement du driver
			Class.forName("com.mysql.jdbc.Driver");
			// ouverture de la connection
			cn = DriverManager.getConnection(url, login, pass);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return cn;
	}

	public static  void closeConnection(Connection cn, PreparedStatement ps, ResultSet rs) {
		try {

			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}

			if (cn != null) {
				cn.close();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
