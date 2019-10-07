package com.todolist;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddSubListServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("addlist"));
		System.out.println(request.getParameter("addsublist"));
		HttpSession session=request.getSession(true);
		
		try {
			ResultSet rs=Dbconn.getResultFromSqlQuery("select * from addsublistinfo where username='"+session.getAttribute("unam")+"' and addlist='"+request.getParameter("addlist")+"' and addsublist='"+request.getParameter("addsublist")+"'");
			if(rs.next())
			{
				
			}
			else
			{
			
			Dbconn.insertUpdateFromSqlQuery("insert into addsublistinfo(username,addlist,addsublist) values('"+session.getAttribute("unam")+"','"+request.getParameter("addlist")+"','"+request.getParameter("addsublist")+"')");
			}
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("/AddList.jsp");
			rd.include(request, response);
		
	
		
	}
}
