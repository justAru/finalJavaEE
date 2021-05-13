package kz.iitu.finalProjectE.web;

import kz.iitu.finalProjectE.dao.LoginDao;
import kz.iitu.finalProjectE.model.LoginBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				HttpSession session = request.getSession();
				 session.setAttribute("user", username);
				System.out.println("session data are set");

				 session.setMaxInactiveInterval(30*60);
           		 Cookie userName = new Cookie("user", username);
				System.out.println("cookies are set");
           		 userName.setMaxAge(30*60);
           		 response.addCookie(userName);

				RequestDispatcher dispatcher = request.getRequestDispatcher("home/home.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}


