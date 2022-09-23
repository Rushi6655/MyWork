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

@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String umail=req.getParameter("umail");
		String upass=req.getParameter("upass");
		Database database=new Database();
		
		try {
			
			if(database.isUserValid(umail, upass)) {
					RequestDispatcher dispatcher=req.getRequestDispatcher("userpage.jsp");
					req.setAttribute("msg","valid");
					req.setAttribute("umail",umail);
					ResultSet book=database.getAllBookings();
					req.setAttribute("bookings", book);
					ResultSet packs=database.getAllPacks();
					req.setAttribute("packs", packs);
					dispatcher.include(req, resp);
			}else {
				RequestDispatcher dispatcher=req.getRequestDispatcher("userloginpage.jsp");
				req.setAttribute("msg","invalid");
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
