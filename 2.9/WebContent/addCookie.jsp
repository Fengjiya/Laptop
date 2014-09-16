<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cookie!</title>
</head>
<body>
<% 
//Get the request para
String name = request.getParameter("name");
//use the para value to create a cookie
Cookie c = new Cookie("username", name);
//set Cookie's max survival time
c.setMaxAge(24*3600);
//add cookie to client
response.addCookie(c);
%>
</body>
</html>