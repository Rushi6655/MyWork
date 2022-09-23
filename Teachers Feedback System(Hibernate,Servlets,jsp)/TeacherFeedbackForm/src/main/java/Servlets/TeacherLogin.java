package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;

@WebServlet("/tlogin")
public class TeacherLogin  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		String mail=req.getParameter("mail");
		mainDao d1=new mainDao();
		int res=d1.teacherLogIn(tid, mail);
		String message=null;
		if(res==-1) {
			message="-1";
			
			req.setAttribute("message", message);
			RequestDispatcher dispatcher=req.getRequestDispatcher("TeacherLogin.jsp");
			dispatcher.include(req, resp);
		}
		if(res==1) {
			message="1";
			req.setAttribute("message", message);
			req.setAttribute("tid", tid);
			RequestDispatcher dispatcher=req.getRequestDispatcher("Teacherhome.jsp");
			dispatcher.include(req, resp);
		}
		if(res==0) {
			message="0";
			req.setAttribute("message", message);
			RequestDispatcher dispatcher=req.getRequestDispatcher("TeacherLogin.jsp");
			dispatcher.include(req, resp);
		}
	}
}
