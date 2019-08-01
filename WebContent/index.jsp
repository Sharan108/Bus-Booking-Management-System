<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUS SITE</title>
<link href="css\bootstrap.css" type="text/css" rel="stylesheet" >
<script src="js\jquery-3.3.1.js"></script>
<script src="js\bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="bus_Style.css">

<style>
* {
    box-sizing: border-box;
}

/* Create four equal columns that floats next to each other */
.column {
    float: left;
    width: 25%;
    padding:10px;
    /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}    
 h3{
	text-align:center; 
	font-weight:bold; 
	font-style: oblique;
	
 } 
 h4{
 	padding:10px;
 	padding-left:20px;
 	font-style:italic;
 	font-family: sans-serif;
 	
 }  
 h1{
 font-weight: bolder;
 text-shadow: orange;
 left-margin:50px;
 }

</style>
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
</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
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
		<li><a href="offers.html">PACKAGES & PROMOTIONS</a></li>
		<li><a href="#">BOOK NOW</a></li>
		<li><a href="contact.jsp">CONTACT US</a></li>
      </ul>
      
    </div>
  </div>
</nav>
   
     <div class="row">
     <form action="seatbook.jsp">
                    <div class="col-lg-4">
                                          <h1>Source</h1>
                                          
                                          <input type="text" class="form-control" name="src" style="opacity:0.7;color:blue;">
                    </div>
                       <div class="col-lg-2">
                                          <h1 style="width:100%">--------------</h1>
                                        <h1 style="width:100%">--------------</h1>
                                          
                    </div>                                                         
  <div class="col-lg-4">
                                          <h1>Destination</h1>
                                          <input type="text" class="form-control" name="dest" style="opacity:0.7;color:blue;">
                    </div>
                                                                                                               
               <div class="col-lg-2" style="margin-top:40px;">
               
                               <input type="submit" class="btn btn-info" value="search">
                                          
                    </div>    
                 </form>
    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    
    <div class="rows">
  <div class="columns" style="background-color:white;">
   <img src="promise.jpg" alt="Snow" style="width:20%;height:110px;width=87px;margin-left: auto;margin-right:auto;display:block;padding-left:100px;padding-top:10px;">

   </div>
    
    
    
<div class="row">
  <div class="column" style="background-color:white;">
    <h3>MAXIMUM CHOICE</h3><br>
    <img src="offerpic3.jpg" alt="Snow" style="width:70%; padding-left:100px; height:100px;"><br>
    <h4>We give you the widest number of travel options across thousands of routes..</h4>
  </div>
  <div class="column" style="background-color:azure;">
    <h3>SUPERIOR CUSTOMER SERVICE</h3><br>
     <img src="offerpic2.jpg" alt="Snow" style="width:60%; padding-left:100px;"><br>
    <h4>We put our experience and relationships to good use and are available to solve your travel issues.</h4>
  </div>
  <div class="column" style="background-color:white;">
    <h3>LOWEST PRICES</h3><br>
    <img src="offerpic1.jpg" alt="Snow" style="width:70%; padding-left:100px; height:100px;"><br>
    <h4>We always give you the lowest price with the best partner offers.</h4>
  </div>
  <div class="column" style="background-color:azure;">
    <h3>UNMATCHED BENEFITS</h3><br>
    <img src="offerpic4.jpg" alt="Snow" style="width:70%; padding-left:100px; height:100px;"><br>
    <h4>We take care of your travel beyond ticketing by providing you with innovative and unique benefits.</h4>
  </div>
</div>

 </body>
</html>