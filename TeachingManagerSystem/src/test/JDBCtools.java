package test;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCtools {

	public static Connection getConnection() {
		Connection connection = null;
		String driver = null;
		String url = null;
		String user = null;
		String password = null;

		InputStream is = new JDBCtools().getClass().getClassLoader().getResourceAsStream("resource/dbinfo.properties");
		System.out.println(is);
		Properties properties = new Properties();
		try {
			properties.load(is);
			driver = properties.getProperty("driver");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");

			// 1.创建连接
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
		} catch (Exception ex) {
			System.out.println("创建连接失败！");
		}
		System.out.println(connection);
		return connection;
	}

	public static void release(ResultSet resultSet, Statement statement, Connection connection) {
		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	}

	public static void releaseStaAndCon(Statement statement, Connection connection) {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	}

	public static void releaseRestultSet(ResultSet resultSet) {
		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	}
}