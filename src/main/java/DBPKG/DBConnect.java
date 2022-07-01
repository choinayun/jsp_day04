package DBPKG;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	public static Connection getConnection()throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		// static 이 없으면 new라는 연산자로 객체를 만들어서 사용해야함 
		
		Connection con = DriverManager.getConnection(
			"jdbc:oracle:thin:@//localhost:1521/xe", "java2", "1234");

		return con; 
	}
	
}
