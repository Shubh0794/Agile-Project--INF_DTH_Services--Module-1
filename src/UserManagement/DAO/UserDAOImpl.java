package UserManagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import UserManagement.Connection.ConnectionProvider;
import UserManagement.Entities.User;


public class UserDAOImpl implements UserDAO {


	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertCustomer(User user) {
		try {
			
			con = ConnectionProvider.getConnection();
			String query = "";
			ps = con.prepareStatement(query);
			
		}catch(Exception e) {
			System.out.println(e);
		}
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUser(String username, String password) {
		try {
			
		}catch(Exception e) {
			System.out.println(e);
		}
		// TODO Auto-generated method stub
		return null;
	}


}
