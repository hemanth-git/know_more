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
try{
	String un=request.getParameter("user1");
	Class.forName("com.mysql.jdbc.Driver");		
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	Statement st=con.createStatement();
	String sql="select * from userdetails";
	ResultSet rs=st.executeQuery(sql);
	boolean flag=false;
	String ps=null;
	while(rs.next())
	{
		if(un.equals(rs.getString(1)))
		{
			ps = rs.getString(2);
			flag=true;
		}
	}
	if(flag)
	{
		out.print("your password is"+ps);
	}
	else
	{
		out.print("Invalid Username");
	}
}
catch(Exception e){
	out.print(""+e);
}
%>

</body>
</html>