<%@ page import="java.sql.*"%>
<html>
 <head>
    <title>validation</title>
 </head>
<body>
<% 
    try
    {
	String un=request.getParameter("user1");
	String pw=request.getParameter("pass1");
	Class.forName("com.mysql.jdbc.Driver");		
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	Statement st=con.createStatement();
	String sql="select * from userdetails";
	ResultSet rs=st.executeQuery(sql);
	boolean flag=false;
	while(rs.next())
	{
		if(un.equals(rs.getString(1))&&pw.equals(rs.getString(2)))
		 {
			flag=true;
			session.setAttribute("theName",un);

		 }
	}
	if(flag)
	{
		String s = (String)request.getSession(false).getAttribute("theName");   
		out.print(s);
		response.sendRedirect("logout.jsp");
		
    }
		
    else
	{
		 out.print("bad  username or password");
	}
	
	
    }
    catch(Exception e)
    {
    	out.println("Unable to connect to database");
    }
   
%>
</body>
</html>
