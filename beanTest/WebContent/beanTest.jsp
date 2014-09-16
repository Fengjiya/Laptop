<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Bean Test</title>
</head>
<body>
<jsp:useBean id="p1" class="beanTest.Person" scope="page" />
<jsp:setProperty name="p1" property="name" value="caipinglan" />
<jsp:setProperty name="p1" property="age" value="23" />

<jsp:getProperty name="p1" property="name" /><br/>
<jsp:getProperty name="p1" property="age" /><br/>
 <% out.println("This is beanTest1!   " + new java.util.Date());%>
</body>
</html>