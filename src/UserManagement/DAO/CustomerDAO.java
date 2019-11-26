package UserManagement.DAO;

import java.util.List;



import UserManagement.Entities.Customer;

public interface CustomerDAO {

//	public User getCustomer(String userId, String password);
	public int insertCustomerDetails(Customer customer);
	public int updateCustomerDetails(Customer customer);
	public int deleteCustomerDetails(String userId);
	public Customer viewCustomerDetails(String UserId);
	public List<Customer> viewAllCustomerDetails();
}
