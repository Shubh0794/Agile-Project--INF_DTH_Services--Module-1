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
	public User insertUser(String firstName, String lastName, int type) {
		User user = new User();
		try {
			
			con = ConnectionProvider.getConnection();
			String query = "INSERT INTO USERS VALUES(?,?,?,?)";
			ps = con.prepareStatement(query);
			String value = firstName.substring(0,2).concat(lastName.substring(lastName.length() - 2)) + Math.round(Math.random()*1000);
			ps.setInt(1, 0);
			ps.setString(2, value);
			ps.setString(3, value);
			ps.setInt(4, type);
			
			int i = ps.executeUpdate();
			ps.close();
			con.close();
		
			if(i > 0) {
				user.setUserId(value);
				user.setPassword(value);
				user.setType(type);
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		// TODO Auto-generated method stub
		return user;
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
	
	@Override
	public String authentication(User u) {
		User user = new User();
		try {
			con = ConnectionProvider.getConnection();
			String query = "SELECT * FROM USERS WHERE userId=? and password=?";
			ps = con.prepareStatement(query);
			
			ps.setString(1, u.getUserId());
			ps.setString(2, u.getPassword());
			 
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				user.setUserId(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setType(rs.getInt(4));
				
				if(user.getType() == 0)
					return "Admin";
				else if(user.getType() == 1)
					return "Operator";
				else if(user.getType() == 2)
					return "Retailor";
				else if(user.getType() == 3)
					return "Customer";
				else if(user.getType() == 4)
					return "New";
				else 
					return null;
			}
			
			rs.close();
			rs.close();
		
			
		}catch(Exception e) {
			System.out.println(e);
		}
		// TODO Auto-generated method stub
		return "Invalid User Credintials";		
	}

	@Override
	public int changePwd(String userId, String password) {
		int i = 0;
		try {
			con = ConnectionProvider.getConnection();
			String query = "UPDATE USERS SET password = ? WHERE userId = ?";
			ps = con.prepareStatement(query);
			
			ps.setString(1, password);
			ps.setString(2, userId);
		
			
			i = ps.executeUpdate();
			ps.close();
			con.close();
		
			
		}catch(Exception e) {
			
		}
		return i;	
	}
}
