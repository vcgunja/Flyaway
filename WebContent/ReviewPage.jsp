<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.phase2.project.Store" %>
<%
    Store.pname = request.getParameter("fullName");
	Store.paddress = request.getParameter("address");
	Store.page = request.getParameter("age");
	Store.pnumber = request.getParameter("mobileNumber");
	Store.pemail = request.getParameter("emailId");
	Store.pidtype = request.getParameter("idProof");
    Store.pidnumber = request.getParameter("idNumber");
    Store.pcountry = request.getParameter("country");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review Page</title>
<style>
      table {
        border: 1px solid black;
  		border-collapse: collapse;
      }
      th {
        border: 1px solid black;
  		border-collapse: collapse;
      }
      td {
        border-right: 1px solid black;
  		border-collapse: collapse;
      }
    </style>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<%
if (Store.pname.equals("")
		|| Store.paddress.equals("")
		|| Store.page.equals("")
		|| Store.pnumber.equals("")
		|| Store.pemail.equals("")
		|| Store.pidtype.equals("")
		|| Store.pidnumber.equals("")
		|| Store.pcountry.equals("")) {
	out.println("Please enter valid passenger details!!");
}
else {
%>
<h3 align="center" style="color:blacksmoke;"><b>Review Your Details</b></h3>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();

int i=st.executeUpdate("insert into phase2.registerdetails(full_name,address,age,mobile_no,email_id,id_type,id_number,country)values('"+Store.pname+"','"+Store.paddress+"','"+Store.page+"','"+Store.pnumber+"','"+Store.pemail+"','"+Store.pidtype+"','"+Store.pidnumber+"','"+Store.pcountry+"')");
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>
<center><table>
<tr>
<th>Flight Details</th>
<th>Passenger Details</th>
</tr>
<tr>
<td><strong>Airline Name: </strong><%= Store.fname %></td>
<td><strong>Passenger Name: </strong><%= Store.pname %></td>
</tr>
<tr>
<td><strong>Flight Number: </strong><%= Store.fno %></td>
<td><strong>Passenger Address: </strong><%= Store.paddress %></td>
</tr>
<tr>
<td><strong>Departure City: </strong><%= Store.ffrom %></td>
<td><strong>Passenger Age: </strong><%= Store.page %></td>
</tr>
<tr>
<td><strong>Arrival City: </strong><%= Store.fto %></td>
<td><strong>Passenger Mobile Number: </strong><%= Store.pnumber %></td>
</tr>
<tr>
<td><strong>Departure Time: </strong><%= Store.fdeparture %></td>
<td><strong>Passenger Email ID: </strong><%= Store.pemail %></td>
</tr>
<tr>
<td><strong>Arrival Time: </strong><%= Store.farrival %></td>
<td><strong>Passenger ID Type: </strong><%= Store.pidtype %></td>
</tr>
<tr>
<td><strong>Date of Travel: </strong><%= Store.fdate %>(YYYY:MM:DD)</td>
<td><strong>Passenger ID Number: </strong><%= Store.pidnumber %></td>
</tr>
<tr>
<td><strong>Class: </strong><%= Store.fclass %></td>
<td><strong>Country: </strong><%= Store.pcountry %></td>
</tr>
</table>
<br>
<p><span><strong>Total fare = <br> Rs.<%=Store.fprice%> X <%=Store.no_of_persons%> Persons = Rs.<%=Store.fprice*Store.no_of_persons%></strong></span></p>
<form action="PaymentPage.jsp" method="post">
<input type="submit" value="Click here for Payment">
</form>
</center>
<%
}
%>
</body>
</html>