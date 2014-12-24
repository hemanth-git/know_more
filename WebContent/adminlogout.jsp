<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!header starts here............................................................>
<html>
<head>

<%
	String s = (String)request.getSession(false).getAttribute("theAdmin") ;
if(s != null)
{%>

 <script>
        history.forward();   /*to disable back button...*/
    </script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
  <title>Know More</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <link href="http://dl.dropboxusercontent.com/s/z0re2ggc9o4s8g4/24work.blogspot.com-20.css" rel="stylesheet" type="text/css" /><a href="http://24work.blogspot.com/" target="_blank" title="Blogger Tricks"><img src="https://bitly.com/24workpng1" alt="Blogger Tricks" border="0" style="position: fixed; bottom: 10%; right: 0%; top: 0px;" /></a>
</head>
<body>

<div class="main-out">
<div class="main">
<div class="page">
<div class="top">
<div class="header">
<div class="header-top">
<h1><span>Know MorE</span></h1>
<p>

<%   
     out.println("Logged in as :"+s); %></p>
</div>
<div class="topmenu">
<ul>

  <li><a href="adminlogout.jsp">Home</a></li>
  
   
  <li><a href="conductexam.jsp">Conduct Exam</a></li>
  <li><a href="logoutvalidate.jsp">LogOut</a></li>

  
</ul>
</div>

</div>
<!--header ends here...............................................................  -->



<!-- footer starts here................................................................ -->
<div class="bottom">
<ul>
  <li style="border-left: medium none;"><a href="adminlogout.jsp">Home</a></li>

  <li><a href="conductexam.jsp">Conduct Exam</a></li>
  <li><a href="logoutvalidate.jsp">LogOut</a></li>
  


</ul>

<p>&copy; Copyright 2014. Designed by <a target="_blank" href="index.jsp">Know MorE</a></p>

</div>
</div>

<%}
else
{%>
	<%response.sendRedirect("index.jsp");
}
%>

</body>
</html>