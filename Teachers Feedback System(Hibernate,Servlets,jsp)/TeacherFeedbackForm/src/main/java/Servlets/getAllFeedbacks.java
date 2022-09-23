package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.feedback;



public class getAllFeedbacks extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<feedback> list=new ArrayList<feedback>();
		mainDao d1=new mainDao();
		list=d1.getAll();
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher=req.getRequestDispatcher("Showfeedbacks.jsp");
		dispatcher.include(req, resp);
	}

}
