<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url('newregister.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>NEW REGISTER</title>
</head>

<body>
<a  href="http://localhost:8484/Bus_Reservation/bus.html">HOME</a>
<h1 align="center" style="color:black"> * NEW REGISTER LOGIN * </h1>
<form onSubmit="return checkPassword(this)" action="Register" method="post">
<table align="center">

<tr>
   <td style="color:black;">ENTER USERNAME : </td>
<td> <input  type="text" placeholder="Enter USername" name="username"/></td>
</tr>
<tr>
   <td style="color:black">ENTER PASSWORD : </td>
<td> <input type="password" placeholder="Enter password" name="password" value="" required/></td>
</tr>
<tr>
   <td style="color:black">ENTER CONFORM_PASSWORD : </td>
<td> <input type="password" placeholder="Enter confirmpassword" name="cpassword" value="" required/></td>
</tr>
<tr>
<td style="color:black"><label for="type">SELECT TYPE : </label></td>
<td><select name="type" id="type">

<option value="select">select</option>
<option value="user">user</option>
<option value="admin">admin</option>
</select></td>
</tr>
<tr>
<td align="center"> <input  type="submit" value ="submit" onclick="matchPassword()"></td>
<td align="center"> <input type ="reset" value ="reset"></td>

</tr>
</table>
<br></br>
</form>
<script>
      function checkPassword(form) {
        const password = form.password.value;
        const cpassword = form.cpassword.value;

        if (password != cpassword) {
          alert("Error! Password did not match.");
          return false;
        } else {
          alert("Password Match. Congratulations!");
          return true;
        }
      }
    </script>
</body>
</html>