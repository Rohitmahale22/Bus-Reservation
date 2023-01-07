<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html>
<head>
<style>
body {
  background-image: url('addbus.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>DELETE YOUR BUS</title>
</head>
<body>
<a  href="http://localhost:8484/Bus_Reservation/bus.html">HOME</a>
<h1 align ="center" style="color:blue"> DELETE YOUR BUS USING THERE ID </h1>
<%
    String id=request.getParameter("id");
try{
	Connection con;
	boolean view=false;
	ResultSet rs;

	Class.forName("com.mysql.cj.jdbc.Driver");
	 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/busdb","root","22021998");
	String query ="select * from data where id=?";
	PreparedStatement  ps=con.prepareStatement(query);
	ps.setString(1,id);
	rs=ps.executeQuery();
	view=true;

%>
  <% while(rs.next())
{ %>
<form  align="center" action="delete" method="post">
<table  align="center">
<tr>
   <td>ENTER BUS ID : </td>
<td> <input type="number" placeholder="Enter BusId" name="id" value="<%=rs.getString(1)%>" required/></td>
</tr>
<tr>
<td align="center"> <input  type="submit" value ="submit"></td>
</tr>
</table>
<% } 
}
catch(Exception e){
	e.printStackTrace();
}
%>
</form>
</body>
</html>