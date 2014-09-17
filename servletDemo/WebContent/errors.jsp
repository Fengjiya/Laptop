<%@ page language="java" contentType="text/html; charset=GBK" isErrorPage="true"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>异常处理页面</title>
</head>
<body>
异常类型是:<%=exception.getClass() %><br/>
异常信息是:<%=exception.getMessage() %><br/>
</body>
</html>