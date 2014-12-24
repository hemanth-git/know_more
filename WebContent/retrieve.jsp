<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgba(192,192,192,0.6);">
<center><h1 style="color:orange;">Online Examination</h1></center>

<%
try
	{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from hcl");
	int count=1; 	
	int a[] = new int[10];
	while(rs.next())
	{
	
%>	
		<% out.print(""+count);%>&nbsp;<% out.println(rs.getString(1)); %><br><br>
		<input type="radio" id=a name=<%=count%>><%out.println(rs.getString(2)); %><br>
		<input type="radio" id=b name=<%=count%>><%out.println(rs.getString(3)); %><br>
		<input type="radio" id=c name=<%=count%>><%out.println(rs.getString(4)); %><br>
		<input type="radio" id=d name=<%=count%>><%out.println(rs.getString(5)); %><br>	
		
			 
		<%count++;%>
<%	}
	}
	catch(Exception e) 
{
	out.print(""+e);
}%>


</body>
</html>