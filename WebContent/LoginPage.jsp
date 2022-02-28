<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br><br><br><br>
<form action="SearchPage.jsp" method="post">
<table align="center">
<tr>
<td>User Name:</td>
<td><input type="email" name="userName" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Password:</td>
<td><input type="password" name="userPassword" required></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
</body>
</html>