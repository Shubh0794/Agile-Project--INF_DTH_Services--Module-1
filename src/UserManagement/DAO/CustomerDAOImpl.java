package UserManagement.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import UserManagement.Connection.ConnectionProvider;
import UserManagement.Entities.Customer;
import oracle.jdbc.OracleTypes;



public class CustomerDAOImpl implements CustomerDAO {
	
	static Connection con;
	static PreparedStatement statement;
	
	
	public static java.sql.Date convertUtiltoSql(java.util.Date uDate){
		java.sql.Date sDate = new java.sql.Date(uDate.getTime());
		return sDate;
	}
	@Override
	public int insertCustomerDetails(Customer customer) {
		String sql = "INSERT INTO CUSTOMERS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = ConnectionProvider.getConnection();
			statement = con.prepareStatement(sql);
			
			String firstName = customer.getFirstName();
			String lastName = customer.getLastName();
			String userid = firstName.substring(0,2).concat(lastName.substring(lastName.length() - 2)) + Math.round(Math.random()*1000);
			statement.setInt(1, 0);
			statement.setString(2, userid);
			statement.setString(3, firstName);
			statement.setString(4, lastName);
			statement.setString(5, customer.getEmailId());
			statement.setObject(6, customer.getPhone(),OracleTypes.NUMBER);
			statement.setString(7, customer.getAddress());
			statement.setString(8, customer.getAddress2());
			statement.setString(9, customer.getLandMark());
			statement.setInt(10,  customer.getZip());
			statement.setDate(11, convertUtiltoSql(customer.getCreationDate()));
			statement.setString(12, customer.getOperatorId());
			statement.setString(13, customer.getRetailerId());
			
			int rowsInserted = statement.executeUpdate();
			
			return rowsInserted;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int updateCustomerDetails(Customer customer) {
		String sql = "UPDATE Customers SET firstname = ?, lastname=?, email = ?, phone = ?, address1 = ?, address2 = ?, landmark=?, zipcode=? WHERE userId =?" ;
		
		try {
			con =ConnectionProvider.getConnection();
			statement = con.prepareStatement(sql);
			
			statement.setString(1, customer.getFirstName());
			statement.setString(2, customer.getLastName());
			statement.setString(3, customer.getEmailId());
			statement.setObject(4, customer.getPhone(), OracleTypes.NUMBER);
			statement.setString(5, customer.getAddress());
			statement.setString(6, customer.getAddress2());
			statement.setString(7, customer.getLandMark());
			statement.setInt(8,  customer.getZip());
			statement.setString(9, customer.getUserId());
			
			
			int rowsUpdated = statement.executeUpdate();
			return rowsUpdated;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int deleteCustomerDetails(String userId) {
		String sql = "DELETE FROM CUSTOMERS WHERE userId = ?";
		
		try {
			con = ConnectionProvider.getConnection();
			statement = con.prepareStatement(sql);
			
			statement.setString(1, userId);
			
			int rowsDeleted = statement.executeUpdate();
			return rowsDeleted;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public Customer viewCustomerDetails(String UserId) {
		String sql = "SELECT * FROM CUSTOMERS WHERE USERID = ?";
		Customer customer  = new Customer();
		
		try {
			con = ConnectionProvider.getConnection();
			statement = con.prepareStatement(sql);
			statement.setString(1,UserId);
			ResultSet rs= statement.executeQuery();
			
			while(rs.next()) {
				customer.setUserId(rs.getString("userid"));
				customer.setFirstName(rs.getString("FIRSTNAME"));
				customer.setLastName(rs.getString("LASTNAME"));
				customer.setEmailId(rs.getString("email"));
				customer.setPhone(NumberFormat.getInstance().parse(rs.getString("phone")));
				customer.setAddress(rs.getString("address1"));
				customer.setAddress2(rs.getString("address2"));
				customer.setLandMark(rs.getString("landmark"));
				customer.setZip(rs.getInt("zipcode"));
				customer.setCreationDate(rs.getDate("creationdate"));
				customer.setOperatorId(rs.getString("Operatorid"));
				customer.setRetailerId(rs.getString("retailerid"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}
	@Override
	public List<Customer> viewAllCustomerDetails() {
		List<Customer> list = new ArrayList<>();
		String sql = "SELECT * FROM CUSTOMERS";
		Customer customer = new Customer();
		
		try {
			con = ConnectionProvider.getConnection();
			statement = con.prepareStatement(sql);
			
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				customer.setUserId(rs.getString("userid"));
				customer.setFirstName(rs.getString("firstname"));
				customer.setLastName(rs.getString("lastname"));
				customer.setEmailId(rs.getString("email"));
				customer.setPhone(NumberFormat.getInstance().parse(rs.getString("phone")));
				customer.setAddress(rs.getString("address1"));
				customer.setAddress2(rs.getString("address2"));
				customer.setLandMark(rs.getString("landmark"));
				customer.setZip(rs.getInt("zipcode"));
				customer.setCreationDate(rs.getDate("creationdate"));
				customer.setOperatorId(rs.getString("Operatorid"));
				customer.setRetailerId(rs.getString("retailerid"));
				list.add(customer);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
