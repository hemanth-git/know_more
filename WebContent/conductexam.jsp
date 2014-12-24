<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- header starts here............................................................ -->
<html>
<head>

 
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

<%String s = (String)request.getSession(false).getAttribute("theAdmin");   
 
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
<!-- header ends here...............................................................-->
<center>
<%
if(s!=null)
{


	try
	{ 
		String db = request.getParameter("dbname");
		//System.out.println(db);
		Class.forName("com.mysql.jdbc.Driver");		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
		Statement st=con.createStatement();
		String sql= "show tables in mydb";
		ResultSet rs=st.executeQuery(sql);
		out.println("Tables Existed in Database");%><br>
		<%out.println("--------------------------------------------"); %><br>
		<% while(rs.next())
		{
			out.print(rs.getString(1));%> <br>
		<%}%>
		<br>
	<% }
	catch(Exception e)
	{
		out.println(""+e);	
	}
%>

<center><h3>File Upload:</h3> <br>
<form method="post" enctype="multipart/form-data" action="FileLoad">
Examname:<input type="text" name="examname"><br><br> <br>
Select a file to upload:
<input type="file" name="file" size="50"> <br><br>
<input type="submit" value="Upload File"/>
</form>
</center>


<%} 
else{
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>