<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Login Form</title>
 
 <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <link href="http://dl.dropboxusercontent.com/s/z0re2ggc9o4s8g4/24work.blogspot.com-20.css" rel="stylesheet" type="text/css" /><a href="http://24work.blogspot.com/" target="_blank" title="Blogger Tricks"><img src="https://bitly.com/24workpng1" alt="Blogger Tricks" border="0" style="position: fixed; bottom: 10%; right: 0%; top: 0px;" /></a>
 
<meta charset="UTF-8">

    <link rel="stylesheet" href="csslogin/stylelogin.css" media="screen" type="text/css" />

</head>
<body>

<div class="main-out">
<div class="main">
<div class="page">
<div class="top">
<div class="header">
<div class="header-top">
<h1><span>Know MorE</span></h1>
<p>Not Yet LoggedIn</p>
</div>
<div class="topmenu">
	<div class="marquee">
<marquee ONMOUSEOVER="this.stop();"
            ONMOUSEOUT="this.start();">Please LogIn To Access...!!!</marquee>
</div>
</div>

</div>

<a href="adminlogin.jsp">Admin LogIn</a>

<div id="login">
  
  <h1>Log in</h1>
  <form action="loginvalidate.jsp" method="post">
    <input type="text" name="user1" placeholder="Username"/>
    <input type="password" name="pass1" placeholder="Password"/>
    <input type="submit" value="Log in" />
    <label><a href="forgotpass.jsp">Forgot Password </a></label>
  </form>
  
</div>



</body>
</html>