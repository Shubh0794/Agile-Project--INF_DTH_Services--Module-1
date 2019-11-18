package UserManagement.DAO;

import UserManagement.Entities.User;

public interface UserDAO {
	public int insertCustomer(User user);
	public User getUser(String username, String password);
}
