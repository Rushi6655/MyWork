package Servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Database.Database;

@MultipartConfig
@WebServlet("/addPack")
public class AddTourPack extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("In do post method of Add Image servlet.");
		Part file = req.getPart("img");
		String imageFileName = file.getSubmittedFileName(); // get selected image file name

		String uploadPath = "E:/Eclips/ServletsEclips/TourAndTravel2/src/main/webapp/Packs/" + imageFileName;
		String pid = req.getParameter("pid");
		String loc = req.getParameter("location");
		double price = Integer.parseInt(req.getParameter("price"));
		System.out.println(pid + " " + loc + " " + imageFileName + " " + price);

		try {

			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();

			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("begin");
        Database database=new Database();
        String msgString="";
		try {
			msgString = database.addPack(imageFileName, pid, loc,price);
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin.jsp");
			req.setAttribute("msgString", msgString);
			dispatcher.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}
}
