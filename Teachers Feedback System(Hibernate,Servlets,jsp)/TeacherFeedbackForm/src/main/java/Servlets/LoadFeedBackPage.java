package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.Teacher;
import DTO.feedback;

@WebServlet("/loadfeedbackpage")
public class LoadFeedBackPage extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Teacher> list=new ArrayList<Teacher>();
		mainDao d1=new mainDao();
		
		
		list=d1.getAllTeachers();
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher=req.getRequestDispatcher("FeedbackPage.jsp");
		dispatcher.include(req, resp);
	}
}
