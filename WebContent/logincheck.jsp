
<%@page import="com.todolist.Dbconn"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<LINK rel="stylesheet" type="text/css" href="designing.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>To-Do List</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%

String Usrname=request.getParameter("username");
session.setAttribute("unam",Usrname);
String Passwd=request.getParameter("password");


System.out.println(" ---- "+Usrname+" ------"+Passwd);


try
{

Connection con=Dbconn.conn();



Statement st=con.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from register where uname='" +Usrname+ "' and pwd='" +Passwd+ "' ");
if(rs.next()){
	
	
	System.out.println(" ---- "+Usrname+" ------"+Passwd);
	//HttpSession session=request.getSession(false);
	//session.setAttribute("PKey", pkey);
	RequestDispatcher rd = request.getRequestDispatcher("/UserProfile.jsp");
rd.include(request, response); 
	
	%>
	<%
	
	

	

	


}
else
{
	System.out.println("Login Key Fail");
	%>
	
	<script>
	
	alert("Incorrect UserName And Password");
	
	</script>
	
<% 

	RequestDispatcher rd = request.getRequestDispatcher("/UserLogin.jsp");
	rd.include(request, response); 
}


}

catch(Exception e)
{}

%>

</body>
</html>