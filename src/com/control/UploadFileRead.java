package com.control;

import java.io.FileNotFoundException;
import java.util.Scanner;
import java.sql.*;
public class UploadFileRead
{
	public void parseOne(String file,String username) throws FileNotFoundException, ClassNotFoundException, SQLException
	{
		try
		{
	
		//String examname = username.toString();
		//String examname = request.getParameter("examname");
		//System.out.println(username);
		Class.forName("com.mysql.jdbc.Driver");		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
		//out.print("connected to database successfully");
		Statement st=con.createStatement();
		String sql= "create table "+username+"(qn text,op1 text,op2 text,op3 text,op4 text);";
		st.executeUpdate(sql);
		//System.out.print("table created successfully");
	
	
	
		Scanner s=new Scanner(file);
		String tablename = username.toString();
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
		String sql2 = "insert into "+tablename +" values(?,?,?,?,?);";
		PreparedStatement pst=con.prepareStatement(sql2);
		while(s.hasNextLine())
		{
			pst.setString(1, s.nextLine());
			pst.setString(2, s.nextLine());
			pst.setString(3, s.nextLine());
			pst.setString(4, s.nextLine());
			pst.setString(5, s.nextLine());
			pst.executeUpdate();
			//System.out.println("inserted successfully...");
		}
		s.close();
		con.close();
	}
		
		catch(Exception e){
			System.out.println(""+e);
		}
	}
	
}
