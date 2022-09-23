package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.Database;

@WebServlet("/usersignup")
public class usersignup extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String umail = req.getParameter("umail");
		String upass = req.getParameter("upass");
		String uname = req.getParameter("uname");
		Database database = new Database();
		try {

			if (database.AddUser(umail, upass, uname)) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("userloginpage.jsp");
				req.setAttribute("msg", "signup");
				dispatcher.include(req, resp);
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher("userloginpage.jsp");
				req.setAttribute("msg", "error");
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
