<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld Login Page!</title>
</head>
<body>
To login:<hr/>
<form action = "login.action" method="post" >
UserName:<input type="text" name="username"><br/>
PassWord:<input type="password" name="password"><br/>
<input type="submit" value="Login">
<input type="reset" value="Reset">
</form>
</body>
</html>