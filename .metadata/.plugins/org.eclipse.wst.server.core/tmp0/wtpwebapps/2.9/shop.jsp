<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="erros.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping</title>
</head>
<body>

<form method="post" action="processBuy.jsp">
	Book:<input type="checkbox" name="item" value="book"/><br/>
	Computer:<input type="checkbox" name="item" value="computer"/><br/>
	Car:<input type="checkbox" name="item" value="car"/><br/>
	<input type="submit" value="buy" />
</form>

</body>
</html>