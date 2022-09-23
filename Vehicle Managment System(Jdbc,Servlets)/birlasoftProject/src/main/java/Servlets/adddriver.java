package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Driver;
import DTO.MainDTO;


public class adddriver extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		String dmail=req.getParameter("dmail");
		String dname=req.getParameter("dname");
		int dexp=Integer.parseInt(req.getParameter("dexp"));
		int dage=Integer.parseInt(req.getParameter("dage"));
		Driver driver=new Driver();
		driver.setdID(dmail);
		driver.setdName(dname);
		driver.setdAge(dage);
		driver.setdExperience(dexp);
		driver.setIsAvailable("yes");
		try {
			String msg=d1.AddDriver(driver);
			RequestDispatcher dispatcher=req.getRequestDispatcher("adddriver.jsp");
			req.setAttribute("msg",msg);
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
