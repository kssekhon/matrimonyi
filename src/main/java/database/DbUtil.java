package database;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	public static Connection getConnection(){
		Connection conn=null;
		 String dbUrl = System.getenv("JDBC_DATABASE_URL");
		    try {
		    	conn= DriverManager.getConnection(dbUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    return conn;
	}

}
