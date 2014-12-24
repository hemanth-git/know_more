<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- header starts here............................................................... -->
<html>
<head>

<link rel="stylesheet" type="text/css" href="companyprofilessheet.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="UTF-8">
  <title>Company Profiles</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="csslogin/adminlogin.css" rel="stylesheet" type="text/css">
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
<%  String s = (String)request.getSession(false).getAttribute("theName") ;
	
	        out.println("Logged in as :"+s); %> 
</p>

</div>
<div class="topmenu">
<ul>
  <li><a href="logout.jsp">Home</a></li>
  <li><a href="companyprofiles.jsp">Placement Info.</a></li>
  <li><a href="#">Exercises</a></li>
  
  <li><a href="#">Resources</a></li>
  
  <!-- this is for checking if session is null or not ................................ -->

<%  if(s != null)
    {  %>
              <li><a href="logoutvalidate.jsp">LogOut</a></li>
<% } else
   { %>
   			<li><a href="login.jsp">LogIn</a></li>
   <% } %>
  <!-- this is for checking if session is null or not ................................ -->
  
</ul>
</div>
</div>

<!-- header ends here............................................................... -->
<div id="login">
  
  <h1>Log in</h1>
  <form action="accountdetails.jsp" method="post">
    <input type="password" name="oldpass" placeholder="Old Password"/>
    <input type="password" name="newpass" placeholder="New Password"/>
    <input type="submit" value="Submit" />
  </form>
  
</div>

<%
try{
	String oldpass = request.getParameter("oldpass");
	String newpass = request.getParameter("newpass");
        if(oldpass!=null)
	{
	Class.forName("com.mysql.jdbc.Driver");		
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
	String queryString = "update userdetails set password=? where username=?";  
    PreparedStatement ps = con.prepareStatement(queryString);  
    ps.setString(1,newpass);
    ps.setString(2,s);
    int result = ps.executeUpdate();
    if(result>=1){
    	out.print("Password Updated Successfully...!!!");
    }
    else
    {
    	out.print("Passwords Does not Match");
    }
    }
	
}
	
catch(Exception e){
	out.print(""+e);
}
%>







</body>
</html>
