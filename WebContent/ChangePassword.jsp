<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.phase2.project.Login"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<%
	if (Login.isLoggedIn) {
%>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<h3 align="center">Password Change</h3>
<form action="change" method="post">
<center><table>
<tr>
<td>Current Password:</td>
<td><input type="password" name="adminPassword" required></td>
</tr>
<tr></tr>
<tr>
<td>New Password:</td>
<td><input type="password" name="newPassword" required></td>
</tr>
<tr></tr>
<tr>
<td>Confirm New Password:</td>
<td><input type="password" name="renewPassword" required></td>
</tr>
<tr></tr><tr></tr><tr></tr>
<tr>
<td>
<td><input type="submit" value="submit"></td>
</tr>
</table></center>
</form>
<%
	}
    else {
    	out.print("You must Login first");
	}
%>
</body>
</html>