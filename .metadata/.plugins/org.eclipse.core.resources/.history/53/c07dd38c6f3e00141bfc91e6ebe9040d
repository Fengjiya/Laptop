<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page  errorPage="errors.jsp" %>
<%@page import="java.util.*" %>
<%
 Map<String, Integer> itemMap = (Map<String, Integer>)session.getAttribute("itemMap");
if( itemMap == null )
{
	itemMap = new HashMap<String, Integer>();
	itemMap.put("book", 0);
	itemMap.put("computer", 0);
	itemMap.put("car", 0);
}
String[] buys = request.getParameterValues("item");
for( String item: buys )
{
	if( item.equals("book"))
	{
		int bookNum=itemMap.get("book").intValue();
		itemMap.put("book", bookNum + 1);
	}
	if ( item.equals("computer"))
	{
		int comNum=itemMap.get("computer").intValue();
		itemMap.put("computer", comNum + 1);
	}
	if( item.equals("car"))
	{
		int carNum = itemMap.get("car").intValue();
		itemMap.put("car", carNum + 1);
	}
}

session.setAttribute("itemMap", itemMap);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping List</title>
</head>
<body>
Your shopping list:<br/>
book:<%=itemMap.get("book") %> s<br/>
computer:<%=itemMap.get("computer")%>s<br/>
car:<%=itemMap.get("car") %>s<br/>

<p><a href = "shop.jsp">Shopping again!</a></p>
</body>
</html>