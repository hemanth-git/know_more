<%@ page import="java.sql.*"%>
<html>
 <head>
    <title>validation</title>
 </head>
<body>
<% 
    try
    {
	String un=request.getParameter("adminuser");
	String pw=request.getParameter("adminpass");
	Class.forName("com.mysql.jdbc.Driver");		
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	Statement st=con.createStatement();
	String sql="select * from admindetails";
	ResultSet rs=st.executeQuery(sql);
	boolean flag=false;
	while(rs.next())
	{
		if(un.equals(rs.getString(1))&&pw.equals(rs.getString(2)))
		 {
			flag=true;
			session.setAttribute("theAdmin",un);

		 }
	}
	if(flag)
	{
		String s = (String)request.getSession(false).getAttribute("theAdmin");   
		out.print(s);
		response.sendRedirect("adminlogout.jsp");
		
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
