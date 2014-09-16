<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>To get a parameter in application</title>
</head>
<body>
<%
String driver = application.getInitParameter("driver");
String url = application.getInitParameter("url");
String userName = application.getInitParameter("userName");
String password = application.getInitParameter("password");

Class.forName(driver);
Connection conn = DriverManager.getConnection(url, userName, password);
if( conn != null)
	out.println("Database load Successfully!");
Statement stm = conn.createStatement();
ResultSet rs = stm.executeQuery("select * from city");
%>

</body>
</html>