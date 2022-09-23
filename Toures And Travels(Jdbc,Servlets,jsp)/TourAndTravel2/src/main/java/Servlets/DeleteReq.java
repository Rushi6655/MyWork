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

@WebServlet("/deletereq")
public class DeleteReq extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rid=Integer.parseInt(req.getParameter("rid"));
		
		Database database=new Database();
		try {
			database.deleteReq(rid);
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin.jsp");
			req.setAttribute("msg1","del");
			ResultSet Req=database.getAllReq();
			ResultSet book=database.getAllBookings();
			req.setAttribute("Req", Req);
			req.setAttribute("bookings", book);
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
