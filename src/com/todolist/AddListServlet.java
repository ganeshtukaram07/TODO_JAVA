package com.todolist;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddListServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("addlist"));
		HttpSession session=request.getSession(true);
		try {
		ResultSet rs=Dbconn.getResultFromSqlQuery("select * from listinfo where username='"+session.getAttribute("unam")+"' and addlist='"+request.getParameter("addlist")+"'");
		if(rs.next())
		{
			
		}
		else
		{
		
		Dbconn.insertUpdateFromSqlQuery("insert into listinfo(username,addlist) values('"+session.getAttribute("unam")+"','"+request.getParameter("addlist")+"')");
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/AddList.jsp");
		rd.include(request, response); 
	}
}
