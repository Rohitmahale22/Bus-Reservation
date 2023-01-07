package com.servlet3;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		
		String username =req.getParameter("username");
		String password =req.getParameter("password");
		
		Connection con;
		try {
			ResultSet rs;
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","22021998");
			String query ="select type from data where username=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs=ps.executeQuery();
			if(rs.next())
			{
			String type=rs.getString(1);
			if(type.equals("user"))
			{
				resp.sendRedirect("user.jsp");
			}
			else
			{
				resp.sendRedirect("businfo.jsp");
			}
			}
			else
			{
				pw.println(" * PLEASE CREATE NEW ACCOUNT * ");
			}	
		}
	catch(Exception e)
	{
	e.printStackTrace()	;
	}
		}
	}
