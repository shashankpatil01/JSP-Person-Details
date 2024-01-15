<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 <%
 
 try {

		Class.forName("com.mysql.cj.jdbc.Driver");

		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jstl_jan","root", "Shashank@23");
		String sql = "insert into Js_tag3(name,email,password)values(?,?,?) ";
		
	      PreparedStatement ps = con.prepareStatement(sql);

		

		  String name= request.getParameter("name");
          String email= request.getParameter("email");
          String password= request.getParameter("password");
          
          
          
          ps.setString(1,name);
          ps.setString(2,email);
          ps.setString(3,password);
          
          
          int status=ps.executeUpdate();
          if(status>0)
          {
        	  out.print("Data succesfully inserted");
          }
          else
          {
        	  out.print("Data not  succesfully inserted");
          }

		

		System.out.println("Your data has been inserted ");
		}
 		catch (Exception e) 
 		{
		e.printStackTrace();
	}
 
 %>
     
</body>
</html>