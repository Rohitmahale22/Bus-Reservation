package com.servlet5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class delete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");	
		PrintWriter pw = resp.getWriter();
		
		String id =req.getParameter("id");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			boolean inserted = false;
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/busdb","root","22021998");
			String Query ="delete from data where id=?";
			PreparedStatement ps = con.prepareStatement(Query);
			ps.setString(1, id);
			
			ps.executeUpdate();
			inserted = true;
			if(inserted)
			{
				resp.sendRedirect("businfo.jsp");
			}
			else
			{
				pw.println("SOMETHING GET WRONG");
			}
		
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	catch(ClassNotFoundException e) {
	e.printStackTrace();
		}
		}
}


