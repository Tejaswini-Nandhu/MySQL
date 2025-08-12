package com.CMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 * 
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerName = request.getParameter("name");
        String email = request.getParameter("email");
        String countryCode = request.getParameter("countryCode");
        String mobileNumber = request.getParameter("mobile");
        String address = request.getParameter("address");
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String preferences = request.getParameter("preferences");
        RequestDispatcher dispatcher = null;
       try {
    	   Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
    	   Connection con = DriverManager.getConnection("jdbc:derby:C:\\Users\\tejas\\MyDB;create=true");
    	   PreparedStatement pst = con.prepareStatement("INSERT INTO CUSTOMERS(customerName,email,countryCode,mobileNumber,address,userId, preferences) values(?,?,?,?,?,?,?)");
    	   pst.setString(1, customerName);
    	   pst.setString(2, email);
    	   pst.setString(3, countryCode);
    	   pst.setString(4, mobileNumber);
    	   pst.setString(5, address);
    	   pst.setString(6, userId);
    	   pst.setString(7, preferences);
    	   
    	   int rowCount = pst.executeUpdate();
    	   dispatcher=request.getRequestDispatcher("register.jsp");
    	   if(rowCount > 0) {
    		   request.setAttribute("status", "success");
    	   } else {
    		   request.setAttribute("status", "failed");
    	   }
    	   dispatcher.forward(request, response);
    	   
       }catch(Exception e) {
    	   e.printStackTrace();
       }
	}

}
