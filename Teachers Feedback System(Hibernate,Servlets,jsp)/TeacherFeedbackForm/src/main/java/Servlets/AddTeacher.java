package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.Teacher;

@WebServlet("/addteacher")
public class AddTeacher extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		String name=req.getParameter("name");
		String mail=req.getParameter("mail");
		String dname=req.getParameter("dname");
		mainDao d1=new mainDao();
		
		Teacher t1=new Teacher();
		t1.setName(name);
		t1.setTid(tid);
		t1.setMail(mail);
		t1.setDepartment(dname);
		
		int res=d1.insertTeacher(t1);
		String msgString=null;
		if(res==1) {
			msgString="1";
			req.setAttribute("message", msgString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AddTeacher.jsp");
			dispatcher.include(req, resp);
		}else {
			msgString="0";
			req.setAttribute("message", msgString);
			RequestDispatcher dispatcher=req.getRequestDispatcher("AddTeacher.jsp");
			dispatcher.include(req, resp);
		}
	}
}
