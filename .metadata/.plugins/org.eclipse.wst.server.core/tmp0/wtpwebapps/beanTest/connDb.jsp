<%@ page language="java" contentType="text/html; charset=GBK"  pageEncoding="GBK"  errorPage="errors.jsp"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Database Connection Test</title>
</head>
<body>
	<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/"; 
	String dbName = "test";
	String userName="root";  
	String pword="123456";  
	
	
	Connection conn = null;
	Statement stm = null;
	ResultSet rs = null;
	//ע�����ݿ�����  
	try
	{
		Class.forName(driver);// ����Mysql��������  
        conn = DriverManager.getConnection( url + dbName ,userName, pword);// ������������  
		if( conn != null)
			out.println("Database loaded Successfully!");
        
        
	}
	catch( ClassNotFoundException e)
	{
		out.println("Unable to load Database	! ");
		e.printStackTrace();
	}
	catch( SQLException e )
	{
		out.println("Unable to load Database	! ");
		e.printStackTrace();
	}
	%>
</body>
</html>