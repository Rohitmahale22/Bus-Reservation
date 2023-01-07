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
<title>ADD BUS HERE</title>
</head>
<body align="center" >
<a  href="http://localhost:8484/Bus_Reservation/bus.html">HOME</a>
<h1  align="center" style="color:olive;"> HERE YOU ADD THE BUS DETAILS</h1>
<form action="busdata" method="post" >
<table  align="center">
<tr>
   <td>ENTER BUS NAME : </td>
<td> <input type="text" placeholder="Enter BusName" name="bus_name" required/></td>
</tr>
<tr>
   <td>ENTER BUS_FROM : </td>
<td> <input type="text" placeholder="Enter BusFrom" name="bus_from" required/></td>
</tr>
<tr>
   <td>ENTER BUS_TO : </td>
<td> <input type="text" placeholder="Enter Bus To" name="bus_to" required/></td>
</tr>
<tr>
   <td>ENTER DEPT_TIME : </td>
<td> <input type="time" placeholder="Enter Bus Dept Time" name="dept_time" required/></td>
</tr>
<tr>
   <td>ENTER ARRIVE_TIME : </td>
<td> <input type="time" placeholder="Enter Bus Arv Time" name="arv_time" required/></td>
</tr>

<tr>
<td align="center"> <input  type="submit" value ="submit"></td>
<td align="center"> <input type ="reset" value ="reset"></td>
</tr>
</table>
<br><br>
</form>
</body>
</html>