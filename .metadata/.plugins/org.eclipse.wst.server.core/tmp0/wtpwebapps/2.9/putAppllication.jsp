<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"  errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>application test</title>
</head>
<body>
<%--记住下面用<%!  %>与<%!  %>的区别：如果是后者，则会报错：The local variable i may not have been initialized --%>
<%! int i ;%>
<% application.setAttribute("counter", String.valueOf(++i));%>
<%=i %>
</body>
</html>