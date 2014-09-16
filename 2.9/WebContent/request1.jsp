<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="errors.jsp"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Request headers and Parameters</title>
</head>
<body>
<%
Enumeration<String> headerNames = request.getHeaderNames();
while( headerNames.hasMoreElements())
{
	String headerName = headerNames.nextElement();
	out.println(headerName + "-->" + request.getHeader(headerName) +"<br/>");
	
}
out.println("<hr/>");

request.setCharacterEncoding("gb2312");

String name=request.getParameter("name");
String gender=request.getParameter("gender");

String[]  color = request.getParameterValues("color");
String national = request.getParameter("country");
%>
Your name:	<%=name %><hr/>
Your gender:	<%=gender %><hr/>
Your favorite color:	<%for( String c: color )
	{
		out.println(c+"		");
	}%><hr/>
You are from:	<%=national %><hr/>
</body>
</html>