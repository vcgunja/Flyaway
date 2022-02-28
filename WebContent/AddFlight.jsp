<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.phase2.project.Login"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Flight</title>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<%
    if (Login.isLoggedIn){
%>
<h3 align="center"><b>Enter New Flight Details</b></h3>
<form action="EnterFlight.jsp" method="post">
<table align="center">
<tr>
<td>Airline Name:</td>
<td><input type="text" name="airlineName" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Flight Number:</td>
<td><input type="text" name="flightNumber" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Source City:</td>
 	 <td><select name="sourceCity">
  		<option value="India">India</option>
  		<option value="Australia">Australia</option>
  		<option value="USA">USA</option>
  		<option value="UK">UK</option>
  	 </select></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Destination City:</td>
 	 <td><select name="destinationCity">
 	 	<option value="USA">USA</option>
  		<option value="India">India</option>
  		<option value="Australia">Australia</option>
  		<option value="UK">UK</option>
  	</select></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Departure Time:</td>
<td><input type="text" name="departureTime" placeholder="HH:MM" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Arrival Time:</td>
<td><input type="text" name="arrivalTime" placeholder="HH:MM" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Total Seats:</td>
<td><input type="text" name="totalSeats" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Booked Seats:</td>
<td><input type="text" name="bookedSeats" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Date of Travel:</td>
<td><input type="text" name="dateOfTravel" placeholder="YYYY-MM-DD" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Class:</td>
<td><select name="className">
 	 	<option value="Economy">Economy</option>
  		<option value="Business">Business</option>
  	</select></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Price:</td>
<td><input type="text" name="price" required></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></td>
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