package Servlets;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Vehicles;
import DTO.MainDTO;

public class addVehicle extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d=new MainDTO();
		Vehicles v=new Vehicles();
		v.setvID(Integer.parseInt(req.getParameter("vid")));
		v.setvName(req.getParameter("vname"));
		v.setCostPerKM(Integer.parseInt(req.getParameter("cpkm")));
		
		
		
		try {
			String msg=d.AddVehicle(v);
			RequestDispatcher dispatcher=req.getRequestDispatcher("addvehicle.jsp");
			req.setAttribute("msg",msg);
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
