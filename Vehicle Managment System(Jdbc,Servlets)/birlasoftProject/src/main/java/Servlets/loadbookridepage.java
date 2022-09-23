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

public class loadbookridepage extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		try {
			ResultSet dlist=d1.displayAvailableDrivers();
			ResultSet vlist=d1.displayVehicles();
			System.out.println("done here");
			RequestDispatcher dispatcher=req.getRequestDispatcher("bookride.jsp");
			req.setAttribute("user",(user)req.getAttribute("user"));
			req.setAttribute("did","");
			req.setAttribute("vid","404");
			req.setAttribute("msg","no");
			req.setAttribute("dlist",dlist);
			req.setAttribute("vlist",vlist);
			System.out.println("done...");
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
