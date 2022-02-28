<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.phase2.project.Login"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Deleted</title>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br><br><br><br>
<center>
<strong>
<%
    if (Login.isLoggedIn){
%>
<%
String flightNumber=request.getParameter("flightNumber");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();

int j=st.executeUpdate("Delete from phase2.bookingdetails where flight_num="+flightNumber+";");
int i=st.executeUpdate("Delete from phase2.flightdetails where flight_no="+flightNumber+";");
if(i==1)
{
	out.println("Record deleted successfully!!");
}
else
{
	out.println("Please enter a valid flight number!!");
}
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>
</strong>
<br><br>
<form method="post" action="AdminDashboard.jsp">
<input type="submit" value="Go to dashboard">
</form>
</center>
<%
}
    else {
    	out.print("You must Login first");
	}
%>
</body>
</html>