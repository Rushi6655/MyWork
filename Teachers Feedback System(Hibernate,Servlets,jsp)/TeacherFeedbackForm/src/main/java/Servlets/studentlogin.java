package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;

public class studentlogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sid=Integer.parseInt(req.getParameter("sid"));
		String pass=req.getParameter("pass");
		mainDao d1=new mainDao();
		int res=d1.studentLogIn(sid, pass);
		String message=null;
		if(res==-1) {
			message="-1";
			
			req.setAttribute("message", message);
			RequestDispatcher dispatcher=req.getRequestDispatcher("Studentlogin.jsp");
			dispatcher.include(req, resp);
		}
		if(res==1) {
			message="1";
			req.setAttribute("message", message);
			RequestDispatcher dispatcher=req.getRequestDispatcher("Studenthome.jsp");
			dispatcher.include(req, resp);
		}
		if(res==0) {
			message="0";
			req.setAttribute("message", message);
			RequestDispatcher dispatcher=req.getRequestDispatcher("Studentlogin.jsp");
			dispatcher.include(req, resp);
		}
		
	}

}
