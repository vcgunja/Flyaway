package com.phase2.project;

import javax.servlet.http.*;
import java.io.*;

public class Change extends HttpServlet {
	
	 @Override
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	        PrintWriter out = resp.getWriter();
	        String pass = req.getParameter("adminPassword");
	        String npass = req.getParameter("newPassword");
	        String ncpass = req.getParameter("renewPassword");
	        if (!Login.isLoggedIn){
	            out.println("You must login first");
	        }
	        else if (pass.equals("")||npass.equals("")||ncpass.equals("")){
	            out.println("Password can't be empty");
	        }
	        else if (!npass.equals(ncpass)){
	        	out.println("New password can't match");
	        }
	        else if (Login.isLoggedIn && !npass.equals("")){
	            Login.password = npass;
	            out.println("Password changed. New Password is "+Login.password);
	            resp.sendRedirect("AdminDashboard.jsp");
	        }
	        else {
	            out.println("Sorry, Something went wrong");
	        }
	        out.close();
	 }
}