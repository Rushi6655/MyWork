package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogIn extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		String pass=req.getParameter("pass");
		
		if(mail.equals("admin@mail.com") && pass.equals("admin")) {
			RequestDispatcher dispatcher=req.getRequestDispatcher("adminlogedin.jsp");
			req.setAttribute("msg","yes");
			dispatcher.include(req, resp);
		}
		else {
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin.jsp");
			req.setAttribute("msg","no");
			dispatcher.include(req, resp);
		}
	}

}
