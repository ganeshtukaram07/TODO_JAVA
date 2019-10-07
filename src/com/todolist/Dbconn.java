
package com.todolist;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Dbconn {
	static Connection con;
    public Dbconn() throws SQLException {
        //initComponents();
           //Connection con;
        
    }
            public static Connection conn() throws SQLException, ClassNotFoundException{
              //  Connection con;
        Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/todolist","root","");
         
        
       return(con);
    
}
            
            public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
        		System.out.println("in funcation getResultFromSqlQuery "+SqlQueryString);
        		ResultSet rs = null;
        	//	Connection conn = null;
        		try {
        			if (con == null) {
        				conn();
        			}
        			rs = con.createStatement().executeQuery(SqlQueryString);
        		} catch (Exception ex) {
        			ex.printStackTrace();
        		}
        		return rs;
        	}
        	
        	/*Initializer.initializeResources(Projectpath,
        			"com.mysql.jdbc.Driver",
        			"jdbc:mysql://localhost/smartcrawler", "root", "admin");
        	conn = Initializer.getConnection();
        	System.out.println("Connection success...");*/
        	
        	public static void insertUpdateFromSqlQuery(String SqlQueryString) {
        		System.out.println("in function insertUpdateFromSqlQuery "+SqlQueryString);
        		try {
        			if (con == null) {
        				conn();
        			}
        			con.createStatement().executeUpdate(SqlQueryString);
        		} catch (Exception ex) {
        			ex.printStackTrace();
        		}	
        	}
           
}
