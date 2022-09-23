package Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.Teacher;
import DTO.feedback;

public class FeedbackPage extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sid=Integer.parseInt(req.getParameter("sid"));
		String dname=req.getParameter("dname");
		int tid=Integer.parseInt(req.getParameter("tname"));
		String year=req.getParameter("year");
		String sem=req.getParameter("sam");
		String subject=req.getParameter("sub");
		int Qa=Integer.parseInt(req.getParameter("A"));
		int Qb=Integer.parseInt(req.getParameter("B"));
		int Qc=Integer.parseInt(req.getParameter("C"));
		int Qd=Integer.parseInt(req.getParameter("D"));
		int Qe=Integer.parseInt(req.getParameter("E"));
		int Qf=Integer.parseInt(req.getParameter("F"));
		int Qg=Integer.parseInt(req.getParameter("G"));
		int Qh=Integer.parseInt(req.getParameter("H"));
		
		
		feedback f1=new feedback();
		mainDao d1=new mainDao();
		
		f1.setSid(sid);
		f1.setTid(tid);
		f1.setDname(dname);
		f1.setYear(Integer.parseInt(year));
		f1.setSem(Integer.parseInt(sem));
		f1.setSubject(subject);
		f1.setQa(Qa);
		f1.setQb(Qb);
		f1.setQc(Qc);
		f1.setQd(Qd);
		f1.setQe(Qe);
		f1.setQf(Qf);
		f1.setQg(Qg);
		f1.setQh(Qh);
		
		int res=d1.givFeedback(f1);
		String message=null;
		if(res==1) {
			message="Insert Successfull";
			req.setAttribute("message", message);
			List<Teacher>list=d1.getAllTeachers();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher=req.getRequestDispatcher("FeedbackPage.jsp");
			dispatcher.include(req, resp);
		}
		else {
			message="-1";
			req.setAttribute("message", message);
			List<Teacher>list=d1.getAllTeachers();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher=req.getRequestDispatcher("FeedbackPage.jsp");
			dispatcher.include(req, resp);
		}
	}

}
