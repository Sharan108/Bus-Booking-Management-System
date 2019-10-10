<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
</head>
<body>
<%	
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String password=request.getParameter("psw");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
		Statement st=con.createStatement();
		String sql;
		sql="INSERT INTO userinfo VALUES('"+name+"','"+email+"','"+password+"')";
		int x=st.executeUpdate(sql);
		if(x>0)
		{
			response.sendRedirect("firstlogin.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	%>
</body>
</html>