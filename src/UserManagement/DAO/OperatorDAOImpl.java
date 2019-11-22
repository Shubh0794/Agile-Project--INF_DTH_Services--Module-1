package UserManagement.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

import UserManagement.Connection.ConnectionProvider;
import UserManagement.Entities.Operator;
import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

public class OperatorDAOImpl implements OperatorDAO {
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertORUpdateOperator(Operator operator) {
		int value = 0;
		try {
				con = ConnectionProvider.getConnection();
				if(operator.getUserId().equals(null) || operator.getUserId().isEmpty()) {
					String query = "INSERT INTO OPERATORS VALUES(?,?,?,?,?,?,?,?,?,?,?)";
					ps = con.prepareStatement(query);
					String firstName = operator.getFirstName();
					String lastName = operator.getLastName();
					String userid = firstName.substring(0,2).concat(lastName.substring(lastName.length() - 2)) + Math.round(Math.random()*1000);
					ps.setInt(1, 0);
					ps.setString(2, userid);
					ps.setString(3, firstName);
					ps.setString(4, lastName);
					ps.setString(5, operator.getEmail());
					ps.setObject(6, operator.getPhone(), OracleTypes.NUMBER);
					ps.setDate(7, convertUtilToSql(operator.getShiftStart()));
					ps.setDate(8, convertUtilToSql(operator.getShiftEnd()));
					ps.setInt(9, operator.getTotalCustomer());
					ps.setDate(10, convertUtilToSql(operator.getCreationDate()));
					ps.setInt(11, operator.getTotalActiveUsers());
				
				/*
				 * String query1 = "INSERT INTO USERS VALUES (?,?,?)"; ps =
				 * con.prepareStatement(query1); ps.setString(1, userid); ps.setString(2,
				 * userid); ps.setInt(3, 1);
				 */
					
					
				}else {
					String query = "UPDATE OPERATORS SET FIRSTNAME = ?, LASTNAME= ?, EMAIL = ?, PHONE = ?, SHIFTSTARTDATE = ?, SHIFTENDDATE = ?, NOOFCUSTOMER = ?, CREATIONDATE = ? WHERE USERID = ?";
					ps = con.prepareStatement(query);
					ps.setString(1, operator.getFirstName());
					ps.setString(2, operator.getLastName());
					ps.setString(3, operator.getEmail());
					ps.setObject(4, operator.getPhone(), OracleTypes.NUMBER);
					ps.setDate(5, convertUtilToSql(operator.getShiftStart()));
					ps.setDate(6, convertUtilToSql(operator.getShiftEnd()));
					ps.setInt(7, operator.getTotalCustomer());
					ps.setDate(8, convertUtilToSql(operator.getCreationDate()));
					ps.setString(9, operator.getUserId());
				}
				
				
				value = ps.executeUpdate();
				ps.close();
				con.close();
				return value;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
		return value;
	}
	
	private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
    }

	@Override
	public Operator getOperator(String userId) {
		con = ConnectionProvider.getConnection();
		Operator operator = new Operator();
		try {
			String query = "SELECT * FROM OPERATORS WHERE USERID=?";
			ps = con.prepareStatement(query);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				operator.setUserId(rs.getString("USERID"));
				operator.setFirstName(rs.getString("FIRSTNAME"));
				operator.setLastName(rs.getString("LASTNAME"));
				operator.setEmail(rs.getString("EMAIL"));
				operator.setPhone(rs.getBigDecimal("PHONE"));
				operator.setShiftStart(rs.getDate("SHIFTSTARTDATE"));
				operator.setShiftEnd(rs.getDate("SHIFTENDDATE"));
				operator.setTotalCustomer(rs.getInt("NOOFCUSTOMER"));
				operator.setCreationDate(rs.getDate("CREATIONDATE"));
			}
			rs.close();
			ps.close();
			con.close();
			return operator;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Operator> getAll() {
		con = ConnectionProvider.getConnection();
		List<Operator> operators = new ArrayList<Operator>();
		try {
			String query = "SELECT * FROM OPERATORS";
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Operator operator = new Operator();
				operator.setUserId(rs.getString("USERID"));
				operator.setFirstName(rs.getString("FIRSTNAME"));
				operator.setLastName(rs.getString("LASTNAME"));
				operator.setEmail(rs.getString("EMAIL"));
				operator.setPhone(rs.getBigDecimal("PHONE"));
				operator.setShiftStart(rs.getDate("SHIFTSTARTDATE"));
				operator.setShiftEnd(rs.getDate("SHIFTENDDATE"));
				operator.setTotalCustomer(rs.getInt("NOOFCUSTOMER"));
				operator.setCreationDate(rs.getDate("CREATIONDATE"));
				operators.add(operator);
			}
			rs.close();
			ps.close();
			con.close();
			return operators;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public int removeOperator(String userId) {
	
		int status = 0;
		try {
			con = ConnectionProvider.getConnection();
			String query = "DELETE FROM OPERATORS WHERE USERID = ?";
			
			ps = con.prepareStatement(query);
			ps.setString(1, userId);
			status = ps.executeUpdate();
			ps.close();
			con.close();
			
		}catch (Exception e) {
			
		}
		return status;
		
	}

}
