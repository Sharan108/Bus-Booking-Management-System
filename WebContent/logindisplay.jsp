<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seat Selection</title>
<link href="css\bootstrap.css" type="text/css" rel="stylesheet" >
<Style>
body{
	background-color:#cce6ff;
	}
h2{
	font-weight: bold;
	text-decoration: underline;
	
}
</Style>
<script src="js\jquery-3.3.1.js"></script>
<script src="js\bootstrap.js"></script>
<script>
function totalprice()
{
	
		var pr=document.getElementById('price').value;
		var totalprice;
		var c = document.getElementsByTagName('input');
		count=0;
		for (var i = 0; i < c.length; i++)
		{
			if (c[i].type == 'checkbox')
			{
				if (c[i].checked) 
				{
					count++;
				}
			}
		}
		totalprice=pr*count;
		document.getElementById('n2').innerHTML=count;
		document.getElementById('n3').innerHTML=pr;
		document.getElementById('n1').innerHTML=totalprice;
		document.getElementById('pr').value=totalprice;
}

</script>
</head>
<body>
<form action="book.jsp" method="get">     <h2> Choose seats by clicking the corresponding seat in the layout below:</h2>
<div  style="height:300px;width:1000px;background-color:orange;border-radius: 25px; border: 3px solid black;">
<%
 	for(int i=1;i<=45;i++)
 	{
 		String seat="s";
		seat=seat.concat(Integer.toString(i));
 		if(i==24)
 			out.print("<br><br><br><br>");
 		
 	%>
 	<img src="available_seat_img.gif" height="50px" width="50px"><input type="checkbox" onchange="totalprice()" name=<%out.print(seat);%>  value='s<%=i %>'>s <%=i %>
 	<%
 	}
%>
</div>    
<br>
<div style="background-color:tomato;height:200px;width:1000px;">

<%
      try
	{
    	 String b_id= request.getParameter("b_id");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		Statement st=con.createStatement();
		String sql;
		sql="SELECT * from bus_details where bus_id="+b_id;
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			String n=rs.getString(2);
			out.print("<h2><input type=hidden value="+rs.getString(5)+" id=price></h2>");
			out.print("<h2><input type=hidden value="+n+"  name=busname></h2>");
		}
		} 
  		catch(Exception e)
  		{e.printStackTrace();}
    %>
    
    <input type="hidden" id=pr name="price">
    <h2> Price: <span id="n3"></span></h2>
    <h2>Quantity: <span id="n2"></span></h2>
    <h2>Total Price: <span id="n1"></span><td><input type="submit" value="BOOK NOW"class="btn btn-info btn-lg"></td></h2>
  
        
      </form>
</body>
</html>