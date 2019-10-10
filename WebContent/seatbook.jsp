<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css\bootstrap.css" type="text/css" rel="stylesheet" >
<script src="js\jquery-3.3.1.js"></script>
<script src="js\bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="seatbook.css">
<Style>
tr{
	border:4px solid black;
}

</Style>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>  
      </button>
      <a class="navbar-brand" href="#">BUS AND TOURISM</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">TOURIST PLACES <span class="caret"></span></a>
          <ul class="dropdown-menu divider">
            <li><a href="ahemdabad.html">AHEMDABAD</a></li>
            <li><a href="#">BANGALORE</a></li>
            <li><a href="#">MUMBAI</a></li>
    
          </ul>
        </li>
        <li><a href="#">ABOUT US</a></li>
		<li><a href="#">CONTACT US</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<% 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	Statement st=con.createStatement();
	String src,dest;
	src=request.getParameter("src");
	dest=request.getParameter("dest");
	String sql;
	sql="select * from bus_details where source='"+src+"' and destination='"+dest+"'" ;
	//out.print(sql);
	ResultSet rs=st.executeQuery(sql);
	
	%>
	<table style="text-align:center;" class="table table-bordered" ><tr><th>BUS ID</th><th style="padding-left:100px;">BUS NAME</th>
	<th style="padding-left:50px;">SOURCE</th><th style="padding-left:50px;">DESTINATION</th>
	<th>PRICE</th><th>TIMINGS</th></tr>
	
	<%while(rs.next())
	{
		out.print("<tr><td>"+rs.getString(1)+"</td> <td> "+rs.getString(2)+" </td><td>  "+rs.getString(3)+"</td><td>  "+rs.getString(4)+"</td> <td> "
		+rs.getString(5)+" </td><td> "+rs.getString(6)+"</td>");
		
		out.print("<td><a href='logindisplay.jsp?b_id="+rs.getString(1)+"' class='btn btn-info btn-lg'>SELECT SEAT</a></td>");
		
	%>
	
	<%
	out.print("</tr>");
	}%>	
	 <% out.print("</table></html>");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	 %>
	 <img src="busoffer.jpg" alt="Avatar" style="width:50%;margin-left:25%;padding:8px;">
</body>
</html>