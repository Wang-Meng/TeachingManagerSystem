package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {
	public static void main(String[] args) throws SQLException {
		System.out.println("=========");
		System.out.println("++++++++"+JDBCtools.getConnection());
		Connection con = JDBCtools.getConnection();
		String sql = " select * from teacherinfo";
		ResultSet result = con.createStatement().executeQuery(sql);
		while(result.next()){
			System.out.println("number="+result.getString("teacherNo"));
		}
	}
}
