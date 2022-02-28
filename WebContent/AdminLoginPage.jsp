<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="com.phase2.project.Login"%>
<% Login.isLoggedIn = false; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br><br><br>
<form action="login" method="post">
<table align="center">
<tr>
<td>User Name:</td>
<td><input type="email" name="adminName"></td>
</tr>
<tr><td></td>
<td><small>Email : admin@flyaway.com</small></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Password:</td>
<td><input type="password" name="adminPassword"></td>
</tr>
<tr><td></td>
<td><small>Current Password:<%= Login.password %></small></td>
<%--
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();
	ResultSet rs;

	rs=st.executeQuery("select password from admin where username='admin@flyaway.com'");
	while (rs.next()) 
	{ 
	   String pass = rs.getString(1);
	   out.println(pass);
	}
//out.println("Data is successfully inserted!");
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
--%>
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