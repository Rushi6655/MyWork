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

@WebServlet("/verify")
public class confirmBooking extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rid=Integer.parseInt(req.getParameter("rid"));
		String umail=req.getParameter("umail");
		String loc=req.getParameter("loc");
		String price=req.getParameter("price");
		String pid=req.getParameter("pid");
		String date=req.getParameter("date");
		Database database=new Database();
		
		
		try {
			if (database.confirmBooking(rid, umail, loc, price, pid,date)) {
				RequestDispatcher dispatcher=req.getRequestDispatcher("admin.jsp");
				req.setAttribute("msg1","yes");
				ResultSet Req=database.getAllReq();
				ResultSet book=database.getAllBookings();
				req.setAttribute("Req", Req);
				req.setAttribute("bookings", book);
				dispatcher.include(req, resp);
			}
			else {
				RequestDispatcher dispatcher=req.getRequestDispatcher("admin.jsp");
				req.setAttribute("msg1","no");
				ResultSet Req=database.getAllReq();
				ResultSet book=database.getAllBookings();
				req.setAttribute("bookings", book);
				req.setAttribute("Req", Req);
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
