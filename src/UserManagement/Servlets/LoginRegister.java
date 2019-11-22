package UserManagement.Servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UserManagement.DAO.OperatorDAO;
import UserManagement.DAO.OperatorDAOImpl;
import UserManagement.DAO.UserDAO;
import UserManagement.DAO.UserDAOImpl;
import UserManagement.Entities.Operator;
import UserManagement.Entities.User;

/**
 * Servlet implementation class LoginRegister
 */
@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type");
		
		String actionType = request.getParameter("message"); 
		String id = request.getParameter("id");
		 
		
		
	
		OperatorDAO operatorDAO = new OperatorDAOImpl();
		if(type.equals("operator")) {
			//System.out.println(actionType);
			if(actionType.equals("view")) {
				List<Operator> operators = operatorDAO.getAll();
				request.setAttribute("operatorsList", operators);
				request.getRequestDispatcher("viewoperator.jsp").forward(request, response);
			}else if(actionType.equals("edit")) {
				
				Operator operator = operatorDAO.getOperator(id);
				request.setAttribute("operator", operator);
				request.getRequestDispatcher("editoperator.jsp").forward(request, response);
			}else if(actionType.equals("delete")){
				int  i = operatorDAO.removeOperator(id);
				response.sendRedirect("/INF_Module1_Team1/LoginRegister?type=operator&message=view");
			}else {
				
			}
			
		
		}else {
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		UserDAO userDAO = new UserDAOImpl();
		
		String submitType = request.getParameter("submit");
		
		
		if(submitType.equals("login")) {
			String username = request.getParameter("username");
			String pwd = request.getParameter("password");
			User u = new User();
			u.setUserId(username);
			u.setPassword(pwd);
			try {
				
				String type = userDAO.authentication(u);
				if(type.equals("Admin")) {
					request.setAttribute("type", "Admin");
					request.getRequestDispatcher("admin.jsp").forward(request, response);
				}else if(type.equals("Operator")) {
					
				}else if(type.equals("Retailor")) {
					
				}else if(type.equals("Customer")) {
					
				}else {
					request.setAttribute("message", "Data not found, click on register!!!");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
				
			}catch(Exception e) {
				
			}
		}else if(submitType.equals("addoperator")) {
			OperatorDAO operatorDAO = new OperatorDAOImpl();
			
			System.out.println("Welcome to Operator Module");
			Operator operator = new Operator();
			Date date = new Date();
			try {
				operator.setFirstName(request.getParameter("operator_firstname"));
				operator.setLastName(request.getParameter("operator_lastname"));
				operator.setEmail(request.getParameter("operator_email"));
				operator.setPhone(NumberFormat.getInstance().parse(request.getParameter("operator_phone")));	
			   // DateFormat format = new SimpleDateFormat("MM,dd,yyyy", Locale.ENGLISH);
				operator.setTotalActiveUsers(100);
				operator.setTotalCustomer(Integer.parseInt(request.getParameter("operator_maxCustomers")));
				operator.setUserId(request.getParameter("operator_userid"));
				operator.setCreationDate(date);
				operator.setShiftStart(date);
				operator.setShiftEnd(date);
				int i = operatorDAO.insertORUpdateOperator(operator);
				User user = userDAO.insertUser(operator.getFirstName(), operator.getLastName(), 1);
				request.setAttribute("userId", user.getUserId());
				request.setAttribute("password", user.getPassword());
				request.setAttribute("message", "Added successfully!!");
				request.getRequestDispatcher("admin.jsp").forward(request, response);
				
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
		}else if(submitType.equals("updateoperator")){
			OperatorDAO operatorDAO = new OperatorDAOImpl();
			Date date = new Date();
		
			Operator operator = new Operator();
		
			try {
				operator.setFirstName(request.getParameter("operator_firstname"));
				operator.setLastName(request.getParameter("operator_lastname"));
				operator.setEmail(request.getParameter("operator_email"));
				operator.setPhone(NumberFormat.getInstance().parse(request.getParameter("operator_phone")));
				operator.setTotalActiveUsers(100);
				operator.setTotalCustomer(Integer.parseInt(request.getParameter("operator_maxCustomers")));
				operator.setUserId(request.getParameter("operator_userid"));
				operator.setCreationDate(date);
				operator.setShiftStart(date);
				operator.setShiftEnd(date);
			    operator.setPhone(NumberFormat.getInstance().parse(request.getParameter("operator_phone")));	
			   // DateFormat format = new SimpleDateFormat("MM,dd,yyyy", Locale.ENGLISH);
				operator.setTotalActiveUsers(100);
				operator.setTotalCustomer(Integer.parseInt(request.getParameter("operator_maxCustomers")));
				int i = operatorDAO.insertORUpdateOperator(operator);
				String path = LoginRegister.class.getProtectionDomain().getCodeSource().getLocation().getPath();
				
				response.sendRedirect("/INF_Module1_Team1/LoginRegister?type=operator&message=view");
			} catch (Exception e) {
				
				e.printStackTrace();
			}		
		}else {
			
		}
		
		
	
	}

}
