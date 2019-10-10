<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link href="css\bootstrap.css" type="text/css" rel="stylesheet" >
<script src="js\jquery-3.3.1.js"></script>
<script src="js\bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="bus_Style.css">
<style>
body{
	background-image:url("Login_background.jpg");
	background-repeat: no-repeat;
	background-size: 1400px;
}
h2,img{
width:100%;
}
h4{
font-weight: bolder;
}
.bg-img{
	opacity:0.9;
	margin: 30px auto;
	width: 25%;
	border: 3px solid #73AD21;
	padding:20px;
	background-color: white;
	text-align: center;
	position:relative;
}
</style>
</head>
<body>

<div class="bg-img">
  <form action="logincheck.jsp" method="post" >
   
     <h4>PLEASE LOGIN TO ACCESS OUR SITE</h4>
      
      <input type="text" placeholder="Email" name="emails" style="font-weight: bold; font-size:16px; font-family: sans-serif;"required>
      <input type="password" placeholder="Password" style="font-weight:bold; font-size:16px;" name="psws"required>

      <input type="submit" class="btn" value="Login"><br>
      <br>
      <p style="padding:0px;"><b>New User? <a href="signin.html">Register</a></b></p>
      
      <!--<a href="signin.html" class="btn">Sign Up</a>
       </div> -->
  </form>
 </div>
</body>
</html>