package UserManagement.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider implements MyConnection {
static Connection con = null;
	
	
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //Connection Driver Info oracle.drive.oracleDriver
			
			con = DriverManager.getConnection(url,userName,password);
 		}catch(Exception e) {
			System.out.println(e);
		}
		
		return con;
		
	}
}
