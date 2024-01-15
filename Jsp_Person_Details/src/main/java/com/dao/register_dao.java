package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import com.bin.register_bo;

public class register_dao {

	public static Connection getConnection()
	{
		Connection con=null;
		
		try
		{
			String url="jdbc:mysql://localhost:3306/jstl_jan";
			String user="root";
			String password="Shashank@23";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		   con=DriverManager.getConnection(url,user,password);
			
		  
		} 
		catch (Exception e)
		{
			System.out.println(e);

		}
		return con;
	}
	
	public static int signup(register_bo em)
	{
		int status=0;
		
		try 
		{
		  Connection con= register_dao.getConnection();
		  String query="insert into Js_tag3(name,email,password)values(?,?,?)";
		   PreparedStatement ps= con.prepareStatement(query);
		    ps.setString(1, em.getName());
		    ps.setString(2, em.getEmail());
		    ps.setString(3, em.getPassword());
		    
		        status=ps.executeUpdate();
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
}