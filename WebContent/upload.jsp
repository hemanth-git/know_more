<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
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
<form method="post" enctype="multipart/form-data" action="FileLoad">
	Examname:<input type="text" name="examname"><br>
	<input type="file" name="file">
	<br>
	<input type="submit" value="Upload File">
</form>

</body>
</html>