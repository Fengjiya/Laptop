<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="errors.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<span style="color:red;font-weight:bold">
	<%
	if( request.getAttribute("err") != null )
	{
		out.println( request.getAttribute("err") + "<br/");
	}
	%>
</span>

<form id="login" method="post" action="login">
UserName:<input type="text" name="username"/><br/>
PassWord:<input type="password" name="pass"/><br/>
<input type="submit" value="Login"/><br/>
</form>
</body>
</html>