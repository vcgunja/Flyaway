<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.phase2.project.Login"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Existing Flight</title>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<%
    if (Login.isLoggedIn){
%>
<h3 align="center"><b>Enter Existing Flight Details</b></h3><br>
<form action="Delete.jsp" method="post">
<table align="center">
<tr>
<td>Flight Number:</td>
<td><input type="number" name="flightNumber" required></td>
</tr><tr>
<td></td>
<td><input style="margin-top: 30px" type="submit" value="submit"></td>
</tr>
</table>
</form>
<%
}
    else {
    	out.print("You must Login first");
	}
%>
</body>
</html>