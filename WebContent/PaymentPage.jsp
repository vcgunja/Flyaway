<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.phase2.project.Store" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
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
<h3 align="center" style="color:blacksmoke;"><b>Checkout</b></h3>
<p align="center" style="color:blacksmoke;"><span><strong>Enter Payment Details</strong></span></p><br>
<form action="TicketPage.jsp" method="post">
<table align="center">
<tr>
<td>Name on Card:</td>
<td><input type="text" name="cardName" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Card Number:</td>
<td><input type="number" name="cardNumber" maxlength = "16"
min = "1000000000000000"
max = "9999999999999999"
oninvalid="alert('Enter 16 digits for Card Number')" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>CVV:</td>
<td><input type="number" name="cardCvv" maxlength = "3"
min = "100"
max = "999"
oninvalid="alert('Enter 3 digits for CVV')" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Card Pin:</td>
<td><input type="number" name="cardPin" maxlength = "4"
min = "1000"
max = "9999"
oninvalid="alert('Enter 4 digits for Pin Number')" required></td>
</tr>
<tr><td></td></tr>
<tr>
<td>Total Amount:</td>
<td>Rs.<%=Store.fprice*Store.no_of_persons%></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td></td>
<td><input type="submit" value="Confirm Payment"></td>
</tr>
</table>
</form>
<%
}
%>
</body>
</html>