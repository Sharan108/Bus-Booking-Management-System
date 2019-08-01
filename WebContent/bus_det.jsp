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
<link rel="stylesheet" type="text/css" href="searchkey.css">
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
        <li><a href="#">BOOKING INFORMATION</a></li>
		<li><a href="#">PACKAGES & PROMOTIONS</a></li>
		<li><a href="#">BOOK NOW</a></li>
		<li><a href="#">CONTACT US</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<% 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement();
	String src,dest;
	src=request.getParameter("src");
	dest=request.getParameter("dest");
	String sql;
	sql="select * from bus_details where source='"+src+"' and destination='"+dest+"'" ;
	//out.print(sql);
	ResultSet rs=st.executeQuery(sql);
	%>
	<table border=2 cellpadding='10' CLASS="table table-bordered" ><tr><th>BUS ID</th><th>BUS NAME</th><th>SOURCE</th><th>DESTINATION</th><th>PRICE</th><th>TIMINGS</th></tr>
	<%while(rs.next())
	{
		out.print("<tr><td>"+rs.getString(1)+"</td> <td> "+rs.getString(2)+" </td><td>  "+rs.getString(3)+"</td><td>  "+rs.getString(4)+"</td> <td> "
	+rs.getString(5)+" </td><td> "+rs.getString(6)+"</td>");
		
		out.print("<td><a class=btn btn-info btn-lg data-toggle=modal data-target=#myModal>BOOK NOW</a></td>");

	
	%>
	  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">FILL IN YOUR DETAILS</h4>
        </div>
        <div class="modal-body">
          <input type="text" value="<%=rs.getString(1)%>">
     <div class="bg-img" style="opacity:0.7;">
  <form action="logindisplay.jsp">
    <div class="container">
      <h1>Login</h1>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit" class="btn">Login</button><br><br>
      <button type="submit" class="btn">Sign Up</button>                                   
    </div>
  </form>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
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
	 
</body>
</html>