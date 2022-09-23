package Servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.Database;

@WebServlet("/booktour")
public class ReqAtour extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String umail=req.getParameter("umail");
		String bookpid=req.getParameter("bookpid");
		String bookprice=req.getParameter("bookprice");
		String bookloc=req.getParameter("bookloc");
		String date=req.getParameter("date");
		Database database=new Database();
		
		
		
		try {
			if (database.reqBooking(umail, bookloc, bookprice, bookpid,date)) {
				RequestDispatcher dispatcher=req.getRequestDispatcher("userpage.jsp");
				req.setAttribute("msg","req");
				ResultSet packs=database.getAllPacks();
				ResultSet book=database.getAllBookings();
				req.setAttribute("bookings", book);
				req.setAttribute("umail",umail);
				req.setAttribute("packs", packs);
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
