package Servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.MainDTO;

public class ridehistory extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		String uid=req.getParameter("uid");
		System.out.println(uid);
		try {
			ResultSet rlist=d1.displayAllRides(uid);
			RequestDispatcher dispatcher=req.getRequestDispatcher("ridehistory.jsp");
			req.setAttribute("rlist",rlist);
			dispatcher.include(req, resp);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
