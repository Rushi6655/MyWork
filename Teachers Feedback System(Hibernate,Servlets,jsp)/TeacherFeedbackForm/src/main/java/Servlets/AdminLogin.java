package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    
		String mailidString=req.getParameter("mail");
		String passString=req.getParameter("pass");
		String messageString=null;
		if(mailidString.equals("admin@mail.com") && passString.equals("admin")) {
			req.setAttribute("message", messageString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AdminHome.jsp");
			dispatcher.include(req, resp);
			
		}
		else {
			messageString="Invalid Credentials!";
			req.setAttribute("message", messageString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AdminLogin.jsp");
			dispatcher.include(req, resp);
		}
	}

}
