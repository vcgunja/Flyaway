<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.phase2.project.Store" %>
<%
    Store.fname = request.getParameter("an");
	Store.fno = request.getParameter("fn");
	Store.ffrom = request.getParameter("sc");
	Store.fto = request.getParameter("dc");
	Store.fdeparture = request.getParameter("dt");
	Store.farrival = request.getParameter("at");
    Store.ftotal = Integer.parseInt(request.getParameter("ts"));
    Store.fbooked = Integer.parseInt(request.getParameter("bs"));
    Store.favail = Integer.parseInt(request.getParameter("as"));
    Store.fdate = request.getParameter("dot");
    Store.fclass = request.getParameter("cl");
    Store.fprice = Integer.parseInt(request.getParameter("pr"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2><br>
<h3 align="center" style="color:blacksmoke;"><b>Booking Details</b></h3>
<p align="center" style="color:blacksmoke;"><span><strong>Enter Passenger Details</strong></span></p><br>
<form action="ReviewPage.jsp"  method="post">
<table align="center">
<tr>
<td>Full Name:</td>
<td><input type="text" name="fullName" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Age:</td>
<td><input type="number" name="age" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Mobile Number:</td>
<td><input type="number" name="mobileNumber" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Email Id:</td>
<td><input type="email" name="emailId" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Identification Proof:</td>
<td><select name="idProof" required>
  		<option value="Aadhar Card">Aadhar Card</option>
  		<option value="SSN">SSN</option>
  		<option value="Passport">Passport</option>
  		<option value="Voter ID">Voter ID</option>
  		<option value="Driving License">Driving License</option>
  	 </select>
  	 <td><input type="text" name="idNumber" required></td></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Country:</td>
<td><input type="text" name="country" required></td>
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