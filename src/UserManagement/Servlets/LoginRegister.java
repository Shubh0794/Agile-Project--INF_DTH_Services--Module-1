package UserManagement.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserManagement.DAO.UserDAO;
import UserManagement.DAO.UserDAOImpl;
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		UserDAO userDAO = new UserDAOImpl();
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		String submitType = request.getParameter("submit");
		User user = userDAO.getUser(username, pwd);
		if(submitType.equals("login") && user!=null && user.getUserId().equals(username) && user.getPassword().equals(pwd)) {
			request.setAttribute("message", user.getUserId());
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}else if(submitType.equals("register")) {
			
		}else {
			request.setAttribute("message", "Data not foun, click on register!!!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
