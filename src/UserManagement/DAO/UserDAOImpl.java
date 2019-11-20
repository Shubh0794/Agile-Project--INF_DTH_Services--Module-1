package UserManagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		User user = new User();
		try {
			con = ConnectionProvider.getConnection();
			String query = "SELECT * FROM USERS WHERE userId=? and password=?";
			ps = con.prepareStatement(query);
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				user.setUserId(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setType(rs.getInt(4));
			}
			
			rs.close();
			rs.close();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		// TODO Auto-generated method stub
		return user;
	}


}
