  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		String email,password;
		email=request.getParameter("emails");
		password=request.getParameter("psws");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");//REGISTER FOR JDBC DRIVER
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
			Statement st=con.createStatement();
			String sql;
			sql="SELECT * from userinfo where email='"+email+"'and password='"+password+"'";
			ResultSet rs=st.executeQuery(sql);//EXECUTE THE QUERY
			if(rs.next())
			{
				 out.print("WELCOME  "+rs.getString(1));
				HttpSession ses=request.getSession();
				ses.setAttribute("uname", rs.getString(1));
				response.sendRedirect("index.jsp");
			}
			else
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