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
background-image:url("login_bus.jpg");
}
h2,img{
width:100%;
}
container{
opacity:0.6;
}
h4{
font-weight: bolder;
}
</style>
</head>
<body>

	 <div class="bg-img" style="opacity:0.7;">
  <form action="logincheck.jsp">
    <div class="container">
     <h2><img src="logo1.jpg"></h2>
     <h4>PLEASE LOGIN TO ACCESS OUR SITE</h4>

      <label for="emails"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="emails" style="font-weight: bold; font-size:15px; font-family: sans-serif;"required>

      <label for="psws"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psws"required>

      <input type="submit" class="btn" value="Login"><br><br>
      <a href="signin.html" class="btn">Sign Up</a>
      </form>
</div>
</form>
</body>
</html>