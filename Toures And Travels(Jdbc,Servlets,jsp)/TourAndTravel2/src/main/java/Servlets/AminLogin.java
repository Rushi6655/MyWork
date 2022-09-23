package Servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.Database;

@WebServlet("/adminlogin")
public class AminLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String amail=req.getParameter("amail");
		String apass=req.getParameter("apass");
		Database database=new Database();
		if(amail.equals("admin@mail.com")) {
			if(apass.equals("admin")) {
				try {
					RequestDispatcher dispatcher=req.getRequestDispatcher("admin.jsp");
					ResultSet Req=database.getAllReq();
					ResultSet book=database.getAllBookings();
					req.setAttribute("Req", Req);
					req.setAttribute("bookings", book);
					req.setAttribute("msg","yes");
					dispatcher.include(req, resp);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}else {
				RequestDispatcher dispatcher=req.getRequestDispatcher("AdminLogin.jsp");
				req.setAttribute("msg","wrongpass");
				dispatcher.include(req, resp);
			}
		}else {
			RequestDispatcher dispatcher=req.getRequestDispatcher("AdminLogin.jsp");
			req.setAttribute("msg","wrong");
			dispatcher.include(req, resp);
		}
	}
}
