package Servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.user;
import DTO.MainDTO;

public class getalldrivers extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		ResultSet dlist;
		try {
			dlist = d1.displayAvailableDrivers();
			RequestDispatcher dispatcher=req.getRequestDispatcher("showdrivers.jsp");
			req.setAttribute("dlist",dlist);
			
			
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
}
