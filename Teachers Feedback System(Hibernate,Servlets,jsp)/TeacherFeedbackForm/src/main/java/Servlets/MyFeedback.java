package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.mainDao;
import DTO.feedback;

@WebServlet("/myfeedbacks")
public class MyFeedback extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		 mainDao d1=new mainDao();
		 List<feedback> l1=d1.getAll();
		 
		 int q1=0;
		 int q2=0;
		 int q3=0;
		 int q4=0;
		 int q5=0;
		 int q6=0;
		 int q7=0;
		 int q8=0;
		 
		 List<feedback> myFeedd=new ArrayList<feedback>();
		 for(feedback f1:l1) {
			 if(f1.getTid()==tid) {
				 q1+=f1.getQa();
				 q2+=f1.getQb();
				 q3+=f1.getQc();
				 q4+=f1.getQd();
				 q5+=f1.getQe();
				 q6+=f1.getQf();
				 q7+=f1.getQg();
				 q8+=f1.getQh();
				 myFeedd.add(f1);
			 }
		 }
		 System.out.println("sum "+q1+" "+q2);
		 int total=4*myFeedd.size();
		 double mul=100/total;
		 System.out.println(total);
		 int qa=(int) (q1*mul);
		 int qb=(int) (q2*mul);
		 int qc= (int) (q3*mul);
		 int qd= (int) (q4*mul);
		 int qe= (int) (q5*mul);
		 int qf= (int) (q6*mul);
		 int qg= (int) (q7*mul);
		 int qh= (int) (q8*mul);
		 System.out.println("perc "+qa+" "+qb);
		 
		req.setAttribute("qa", qa);
		req.setAttribute("qb", qb);
		req.setAttribute("qc", qc);
		req.setAttribute("qd", qd);
		req.setAttribute("qe", qe);
		req.setAttribute("qf", qf);
		req.setAttribute("qg", qg);
		req.setAttribute("qh", qh);
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("MyFeedbacks.jsp");
		dispatcher.include(req, resp);
	}
}
