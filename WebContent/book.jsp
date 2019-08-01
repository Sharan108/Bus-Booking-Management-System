<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<style>
body{background-color: azure;}
h1{	
	font-weight: bold;
	color:orange;
	text-align: center;}
h2{
	font-weight: bold;
	color:black;
}
td,th{
font-size: large;
}

</style>
</head>
<body>
<h1>YOUR BOOKING HAS BEEN CONFIRMED..</h1>
<div>
<p>
<button onclick="myfun()" class="btn btn-success btn-lg" >
  <span class="glyphicon glyphicon-print"></span> Print Ticket
</button>
<script>function myfun()
{window.print();
	}
</script>
<h2>BOOKING DETAILS ARE:</h2>
 </p> 
 
 <%
int count=0;
for(int i=1;i<=45;i++)
	{
	String seat="s";
	seat=seat.concat(Integer.toString(i));
	String s=request.getParameter(seat);
	if(seat.equalsIgnoreCase(s)){
		HttpSession ses=request.getSession();
		String name=(String)ses.getAttribute("uname");
		//out.print("<br><br>"+name+"<br><br>");
		String n=request.getParameter("busname");
		//out.print(n+"<br><br>");
		//out.print(s);	
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		Statement st=con.createStatement();
		String sql;
		sql="INSERT INTO  passenger_details VALUES('"+name+"','"+s+"','"+n+"')";
		out.print("<table border=2 cellpadding='10';><tr><th>Passenger Name</th><th>Seat Number</th><th>Bus Name</th></tr>");
		out.print("<tr><td>"+name+"</td> <td> "+s+" </td><td>  "+n+"</td></tr>");
		//out.print(sql);
		int x=st.executeUpdate(sql);
		if(x>0)
			count++;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	}

if(count>0)
{
	out.print("<br>");
}
else
{
	out.print("not");	
}
%>
</div>
</body>
</html>