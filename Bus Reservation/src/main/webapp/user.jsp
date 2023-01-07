<%@page import="java.sql.Statement" %>
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
  background-image: url('businfo.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title> BUS TIME_TIME</title>
</head>
<body>
<a  href="http://localhost:8484/Bus_Reservation/bus.html">HOME</a>
<%
 Connection con;
ResultSet rs;
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/busdb","root","22021998");
String query ="select * from data";
Statement s=con.createStatement();
rs=s.executeQuery(query);
%>
<h1 style="background-color:aqua;"  align="center"><u> *THIS IS BUS TIME_TABLE* </u> </h1>

<br></br>
<table align="center" border="1" cellpadding="20" cellspacing="0" widhth=100%>
<thead>
<tr>
<th style="color:white">BUS ID</th>
<th style="color:white">BUS NAME</th>
<th style="color:white">BUS FROM</th>
<th style="color:white">BUS TO</th>
<th style="color:white">DEPT TIME</th>
<th style="color:white">ARV TIME</th>
<th style="color:white">ACTION</th>
</tr>
</thead>
<tbody>
<% while(rs.next()){ %>
<tr align="center">
<td style="color:white;"><%= rs.getString(1) %></td>
<td style="color:white"><%= rs.getString(2) %></td>
<td style="color:white"><%= rs.getString(3) %></td>
<td style="color:white"><%= rs.getString(4) %></td>
<td style="color:white"><%= rs.getString(5) %></td>
<td style="color:white"><%= rs.getString(6) %></td>
<td> <a href="book.jsp?id=<%= rs.getString(1) %>"target="blank"><button>BOOK</button></a></td>
</tr>
</tbody>
<%} %>

</table>

</body>
</html>