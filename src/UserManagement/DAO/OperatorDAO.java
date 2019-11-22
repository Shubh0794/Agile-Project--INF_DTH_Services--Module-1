package UserManagement.DAO;

import java.util.List;

import UserManagement.Entities.Operator;

public interface OperatorDAO {

	public int insertORUpdateOperator(Operator operator);
	public Operator getOperator(String userId);
	public List<Operator> getAll();
	public int removeOperator(String userId);
	
}
