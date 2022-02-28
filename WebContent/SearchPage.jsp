<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.phase2.project.Store" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Page</title>
</head>
<body>
<%--
<jsp:useBean id="user" class="com.phase2.project.Login"></jsp:useBean>
        <jsp:setProperty property="*" name="user"/>
<%= request.getParameter("userName") %>

<!-- sql:setDataSource tag -->
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
	     url="jdbc:mysql://localhost:3306/phase2"  
	     user="root"  password="root"/> 
	     
<!-- sql:update tag to INSERT -->
	<% String userN =  request.getParameter("userName");%>  
	<% String pass = request.getParameter("userPassword");%>  
	<c:set var ="userName" value= "${userN}"/>
	<c:set var="userPassword" value="${pass}"/> 
	<sql:update dataSource="${db}" var="count">  
	INSERT INTO logindetails(Email,Password)VALUES(?,?);  
	</sql:update>
--%>
<%
Store.uname = request.getParameter("userName");
String userName=request.getParameter("userName");
String userPassword=request.getParameter("userPassword");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
	Statement st=conn.createStatement();

int i=st.executeUpdate("insert into phase2.logindetails(Email,Password)values('"+userName+"','"+userPassword+"')");
//out.println("Data is successfully inserted!");
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>

<h2 align="center" style="color:blacksmoke;"><b>FlyAway</b></h2>
<h3 align="center" style="color:blacksmoke;"><b>Ticket Booking</b></h3><br>
<form action="FlightDetailsPage.jsp" method="post">
<table align="center">
<tr>
<td>Date:</td>
<td><input type="date" name="date" placeholder="YYYY-MM-DD" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Source City:</td>
 	 <td><select name="sourcecity">
  		<option value="India">India</option>
  		<option value="Australia">Australia</option>
  		<option value="USA">USA</option>
  		<option value="UK">UK</option>
  	 </select></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Destination City:</td>
 	 <td><select name="destinationcity">
 	 	<option value="USA">USA</option>
  		<option value="India">India</option>
  		<option value="Australia">Australia</option>
  		<option value="UK">UK</option>
  	</select></td>
</tr>
<tr><td></td></tr>
<tr>
<td>No of Persons:</td>
    <td><select name="persons">
    	<option value="1">1</option>
    	<option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td></td>
<td><input type="submit" value="Search Flights"></td>
</tr>
</table>
</form>
</body>
</html>