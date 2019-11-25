package UserManagement.DAO;

import UserManagement.Entities.User;

public interface UserDAO {
	public User insertUser(String firstName, String lastName, int type);
	public User getUser(String username, String password);
	public String authentication(User u);
	public int changePwd(String userId, String password);
		
	
}
