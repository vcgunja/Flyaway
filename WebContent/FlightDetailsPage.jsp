<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.phase2.project.Store" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Flights</title>
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
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2>
<p align="center"><span><strong>
<%
Store.no_of_persons = Integer.parseInt(request.getParameter("persons"));
String date=request.getParameter("date");
String sourcecity=request.getParameter("sourcecity");
String destinationcity=request.getParameter("destinationcity");
String persons=request.getParameter("persons");

out.println("Showing available flights from "+sourcecity+" to "+destinationcity);
out.println("|Date of travel: "+date);
out.println("|No. of Travellers: "+persons);
%>
</strong></span></p>
<center><table>
<tr>
	<th>Airline Name</th>
	<th>Flight Number</th>
    <th>Source</th>
    <th>Destination</th>
    <th>Departure Time</th>
    <th>Arrival Time</th>
    <th>Date</th>
    <th>Class</th>
    <th>Ticket Price</th>
    <th>Select</th>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();
	ResultSet rs;

	rs=st.executeQuery("select * from flightdetails WHERE source = '"+sourcecity+"' AND destination='"+destinationcity+"' AND date_of_travel='"+date+"' AND avail_seats>='"+persons+"' ");
	while (rs.next()) {
%>
<tr>
            <td><%=rs.getString("airline_name") %></td>
            <td><%=rs.getString("flight_no") %></td>
            <td><%=rs.getString("source") %></td>
            <td><%=rs.getString("destination") %></td>
            <td><%=rs.getTime("departure") %></td>
            <td><%=rs.getTime("arrival") %></td>
            <td><%=rs.getDate("date_of_travel") %></td>
            <td><%=rs.getString("class") %></td>
            <td><%=rs.getString("price") %></td>
            <td>
                <form action="PersonalDetailsPage.jsp" method="post">
                    <input type="hidden" name="an" value="<%=rs.getString("airline_name")%>">
                    <input type="hidden"name="fn" value="<%=rs.getString("flight_no")%>">
                    <input type="hidden" name="sc" value="<%=rs.getString("source")%>">
                    <input type="hidden" name="dc" value="<%=rs.getString("destination")%>">
                    <input type="hidden" name="dt" value="<%=rs.getString("departure")%>">
                    <input type="hidden"name="at" value="<%=rs.getString("arrival")%>">
                    <input type="hidden"name="ts" value="<%=rs.getString("total_seats")%>">
                    <input type="hidden"name="bs" value="<%=rs.getString("booked_seats")%>">
                    <input type="hidden"name="as" value="<%=rs.getString("avail_seats")%>">
                    <input type="hidden" name="dot" value="<%=rs.getString("date_of_travel")%>">
                    <input type="hidden" name="cl" value="<%=rs.getString("class")%>">
                    <input type="hidden" name="pr" value="<%=rs.getString("price")%>">
                    <input type="submit" value="Book This Flight">
                </form>
            </td>
        </tr>
<%
	}
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>
</table></center>
</body>
</html>