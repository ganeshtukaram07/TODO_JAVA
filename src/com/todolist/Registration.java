package com.todolist;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Registration extends HttpServlet {
	public String name,addr,gender,mail,contact,usrname,pass;
	public String Key,Key1;
	private static final long serialVersionUID = 1L;

	public Registration() {
		super();

	}



	
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException {
		
		String cntct = request.getParameter("txtContact");
		

	
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String strError = " Please Enter \n";
		String nam = request.getParameter("txtName");
		String addres = request.getParameter("txtAddress");
		String email = request.getParameter("txtEmail");
		
		String gende = request.getParameter("rdoGender");
		String usrNam = request.getParameter("txtUsername");
		String pwwd = request.getParameter("passPassword");
		
		
		/* boolean FlagGo = true;

		if (nam.trim().length() <= 0) {
			strError += "UserName";
			FlagGo = false;
		}
		
		if (addres.trim().length() <= 0) {
			if (FlagGo)
				strError += " Address";
			else
				strError += ", Address";
			FlagGo = false;
		}
		 if (gende==null) {
			if (FlagGo)
					strError += "Gender";
				else
					strError += " , Gender";
			 FlagGo = false;
		 }
		if (email.trim().length() <= 0) {
			if (FlagGo)
				strError += " Email ID";
			else
				strError += " , Email ID";

			FlagGo = false;
		}
		String phoneno = "^\\d{10}$";
		if (!cntct.matches(phoneno)) {
			if (FlagGo)
				strError += "Contact Number";
			else
				strError += " , Contact Number";
			FlagGo = false;
		}
		if (usrNam.trim().length() <= 0) {
			if (FlagGo)
					strError += "Username";
				else
					strError += " , Username";
			FlagGo = false;

		}
		if (pwwd.trim().length() <= 0) {
			if (FlagGo)
					strError += "Password";
				else
					strError += " , Password";
			FlagGo = false;
		}
		if (FlagGo) {
			//getServletContext().getRequestDispatcher("/key.java").forward(
				//	request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.include(request, response); */

			try {
				
				Connection con = Dbconn.conn();
				Statement st = con.createStatement();
			
				
			    st.executeUpdate("insert into register values('" + nam
						+ "' , '" + addres + "'  , '" + gende + "' , '" + email
						+ "' ," + cntct + " ,'" + usrNam + "' , '" + pwwd
						+ "')");
				
				
			 
			 
				

			} catch (ClassNotFoundException e) {

				e.printStackTrace();
			} catch (SQLException e) {

				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.include(request, response); 
		

		
		
		
		
		
		

	}

	
}
