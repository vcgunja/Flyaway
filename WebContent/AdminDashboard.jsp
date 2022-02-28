<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.phase2.project.Login"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FlyAway Airline</title>
	<style>
      table {
        border-collapse: collapse;
      }
      td,
      th {
        padding: 10px;
        border-bottom: 2px solid #8ebf42;
        text-align: center;
      }
    </style>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<%
    if (Login.isLoggedIn){
%>
<h3 align="center"><b>Admin Dashboard</b></h3>
<p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
<br>
<center>
<table>
<tr><td>
<form method="post" action="ChangePassword.jsp">
<input type="submit" value="Change Password">
</form>
</td><td>
<form method="post" action="AddFlight.jsp">
<input type="submit" value="Add New Flight">
</form>
</td><td>
<form method="post" action="DeleteFlight.jsp">
<input type="submit" value="Delete Existing Flight">
</form>
</td><td>
<form method="post" action="SearchPage.jsp">
<input type="submit" value="Book Flight">
</form>
</td><td>
<form method="post" action="AdminLoginPage.jsp">
<input type="submit" value="Logout">
</form>
</td></tr>
</table>
</center>
<br><br>
<h3 align="center"><span><strong> Flight Table </strong></span></h3>
<center>
<table>
<tr>
<th>Airline Name</th>
<th>Flight Number</th>
<th>From</th>
<th>To</th>
<th>Departure Time</th>
<th>Arrival Time</th>
<th>Total Seats</th>
<th>Booked Seats</th>
<th>Available Seats</th>
<th>Date of Travel</th>
<th>Class</th>
<th>Price</th>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();
	ResultSet rs;

	rs=st.executeQuery("select * from flightdetails");
	while (rs.next()) {
%>
	<tr>
    <td><%=rs.getString("airline_name") %></td>
    <td><%=rs.getString("flight_no") %></td>
    <td><%=rs.getString("source") %></td>
    <td><%=rs.getString("destination") %></td>
    <td><%=rs.getTime("departure") %></td>
    <td><%=rs.getTime("arrival") %></td>
    <td><%=rs.getString("total_seats") %></td>
    <td><%=rs.getString("booked_seats") %></td>
    <td><%=rs.getString("avail_seats") %></td>
    <td><%=rs.getDate("date_of_travel") %></td>
    <td><%=rs.getString("class") %></td>
    <td><%=rs.getString("price") %></td>
    </tr>
<%	  
	}
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
	}
    else {
    	out.print("You must Login first");
	}
%>
</table>
</center>
</body>
</html>