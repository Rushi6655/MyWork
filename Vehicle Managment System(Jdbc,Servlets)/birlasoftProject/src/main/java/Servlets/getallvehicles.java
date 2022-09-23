package Servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.MainDTO;

public class getallvehicles extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		ResultSet vlist;
		try {
			vlist = d1.displayVehicles();
			RequestDispatcher dispatcher=req.getRequestDispatcher("showvehicles.jsp");
			req.setAttribute("vlist",vlist);
			
			
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
