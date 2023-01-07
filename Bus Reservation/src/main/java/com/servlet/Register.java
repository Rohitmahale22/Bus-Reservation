package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.protocol.Resultset;

public class Register  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	resp.setContentType("text/html");	
	PrintWriter pw = resp.getWriter();
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	String cpassword = req.getParameter("cpassword");
	String type = req.getParameter("type");
	
	
	try {
		ResultSet rs;
		Connection con;
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","22021998");
		String Query ="select username from data where username=?";
		PreparedStatement ps = con.prepareStatement(Query);
		ps.setString(1,username);
		rs=ps.executeQuery();
		if(rs.next()) {
		pw.println("<h1> username already Exists</h1>");
		}
		else 
		{
			if(password.equals(cpassword))
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				boolean inserted = false;
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","22021998");
				String Query1 ="insert into data(username,password,cpassword,type)values(?,?,?,?)";
				PreparedStatement ps1 = con1.prepareStatement(Query1);
				ps1.setString(1, username);
				ps1.setString(2, password);
				ps1.setString(3, cpassword);
				ps1.setString(4, type);
				ps1.executeUpdate();
				inserted = true;
				if(inserted)
				{
					resp.sendRedirect("bus.html");
				}
				else
				{
					pw.println("INSERSTION FAILED");
				}
			}
			else
			{
				resp.sendRedirect("newregister.jsp");
			}
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

