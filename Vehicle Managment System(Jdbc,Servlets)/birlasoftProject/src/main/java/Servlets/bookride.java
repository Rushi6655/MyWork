package Servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.user;
import DTO.MainDTO;

public class bookride extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDTO d1=new MainDTO();
		String did=(String)req.getParameter("dmail");
		int vid=Integer.parseInt((String)req.getParameter("vid"));
		int km=Integer.parseInt(req.getParameter("km"));
		String uid=req.getParameter("umail");
		try {
			if(d1.isdriverValid(did)) {
				System.out.println("pass2");
				int priceperkm=d1.isVehicleValid(vid);
				String pk=priceperkm+"";
				if(priceperkm!=0) {
					System.out.println("pass1");
					if(d1.AddRide(uid, did, vid, km)) {
						ResultSet dlist=d1.displayAvailableDrivers();
						ResultSet vlist=d1.displayVehicles();
						System.out.println("done here");
						RequestDispatcher dispatcher=req.getRequestDispatcher("bookride.jsp");
						req.setAttribute("user",(user)req.getAttribute("user"));
						req.setAttribute("did","");
						req.setAttribute("vid","404");
						req.setAttribute("msg","add");
						req.setAttribute("dlist",dlist);
						req.setAttribute("vlist",vlist);
						System.out.println("reached");
						dispatcher.include(req, resp);
					}
				}
				else {
					ResultSet dlist=d1.displayAvailableDrivers();
					ResultSet vlist=d1.displayVehicles();
					RequestDispatcher dispatcher=req.getRequestDispatcher("bookride.jsp");
					req.setAttribute("dlist",dlist);
					req.setAttribute("vlist",vlist);
					req.setAttribute("msg","novehicle");
					dispatcher.include(req, resp);
				}
			}
			else {
				ResultSet dlist=d1.displayAvailableDrivers();
				ResultSet vlist=d1.displayVehicles();
				RequestDispatcher dispatcher=req.getRequestDispatcher("bookride.jsp");
				req.setAttribute("dlist",dlist);
				req.setAttribute("vlist",vlist);
				req.setAttribute("msg","nodriver");
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
