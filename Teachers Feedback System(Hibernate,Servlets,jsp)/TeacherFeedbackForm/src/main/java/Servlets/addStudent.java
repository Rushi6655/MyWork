package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.student;

public class addStudent extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sid=Integer.parseInt(req.getParameter("sid"));
		String name=req.getParameter("name");
		String pass=req.getParameter("pass");
		String dname=req.getParameter("dname");
		String year=req.getParameter("year");
		mainDao d1=new mainDao();
		
		student s1=new student();
		
		s1.setSid(sid);
		s1.setDname(dname);
		s1.setName(name);
		s1.setPass(pass);
		s1.setYearOfStudy(year);
		int res=d1.insertStudent(s1);
		String msgString=null;
		if(res==1) {
			msgString="1";
			req.setAttribute("message", msgString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AddStudent.jsp");
			dispatcher.include(req, resp);
		}else {
			msgString="0";
			req.setAttribute("message", msgString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AddStudent.jsp");
			dispatcher.include(req, resp);
		}
		
	}

}
