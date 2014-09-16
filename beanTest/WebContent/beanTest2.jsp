<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%--这个地方要特别注意，不要忘记import beanTest.Person --%>
<%--这个地方要特别注意，不要忘记import beanTest.Person --%>
<%@ page import="beanTest.Person" %>
<%--这个地方要特别注意，不要忘记import beanTest.Person --%>
<%--这个地方要特别注意，不要忘记import beanTest.Person --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Java Bean测试</title>
</head>
<body>
	<%
	Person p1 = new Person();
	pageContext.setAttribute("p1", p1);
	p1.setName("Caipinglan2");
	p1.setAge(24);
	%>
	
	<%=p1.getName() %><br/>
	<%=p1.getAge() %><br/>
	
	<%out.println( "Now the time is:" + new java.util.Date() ); %>
</body>
</html>