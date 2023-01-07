<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head >
<style>
body {
  background-image: url('login.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<body align="center">

<h1  align="center" style="color:red"> * WELCOME : LOGIN TO HERE * </h1>
<form action="login" method="post">

<table  align="center">
<tr>
   <td>ENTER USERNAME : </td>
<td> <input type="text" placeholder="Enter USername" name="username"/></td>
</tr>
<tr>
   <td>ENTER PASSWORD : </td>
<td> <input type="password" placeholder="Enter password" name="password"/></td>
</tr>

<tr>
<td align="center"> <input type="submit" value ="submit"></td>
<td align="center"> <input type ="reset" value ="reset"></td>
</tr>
</table>
<a align="center" href="http://localhost:8484/Bus_Reservation/newregister.jsp">NEW USER? REGISTER HERE </a>

</form>
</body>
<style>

</style>
</html>