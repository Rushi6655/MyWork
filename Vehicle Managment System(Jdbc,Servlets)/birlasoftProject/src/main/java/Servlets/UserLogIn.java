package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.user;
import DTO.MainDTO;

public class UserLogIn extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		String pass=req.getParameter("pass");
		MainDTO d1=new MainDTO();
		user u=new user();
		System.out.println(mail+"  "+pass);
		try {
			if(MainDTO.isUserValid(mail, pass)) {
				u.setuID(mail);
				u.setuPass(pass);
				RequestDispatcher dispatcher=req.getRequestDispatcher("userlogedin.jsp");
				req.setAttribute("user", u);
				dispatcher.include(req, resp);
			}else {
				RequestDispatcher dispatcher=req.getRequestDispatcher("user.jsp");
				req.setAttribute("msg", "invalid username or password");
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
