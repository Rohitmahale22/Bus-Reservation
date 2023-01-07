package com.servlet4;

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

public class edit extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	resp.setContentType("text/html");
	PrintWriter pw = resp.getWriter();
	
	String bus_name =req.getParameter("bus_name");
	String bus_from =req.getParameter("bus_from");
	String bus_to =req.getParameter("bus_to");
	String dept_time =req.getParameter("dept_time");
	String arv_time =req.getParameter("arv_time");
	String id =req.getParameter("id");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		boolean inserted = false;
	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/busdb","root","22021998");
		String Query1 ="update data set bus_name=?,bus_from=?,bus_to=?,dept_time=?,arv_time=? where id=?";
		PreparedStatement ps1 = con1.prepareStatement(Query1);
		ps1.setString(1, bus_name);
		ps1.setString(2, bus_from);
		ps1.setString(3, bus_to);
		ps1.setString(4, dept_time);
		ps1.setString(5, arv_time);
		ps1.setString(6, id);
		
		ps1.executeUpdate();
		inserted = true;
		if(inserted)
		{
			resp.sendRedirect("businfo.jsp");
		}
		else
		{
			pw.println("INSERSTION FAILED");
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
