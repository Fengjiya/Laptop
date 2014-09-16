<%@ page language="java" contentType="text/html; charset=GBK" errorPage="errors.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collect request's form</title>
</head>
<body>
	<form id="form" method="post" action="form_request1.jsp">
	UserName:<br/>
	<input type="text"  name="name"> <hr/>
	Gender:<br/>
	Male:<input type="radio" name="gender" value="male">
	Female:<input type="radio" name="gender" value="female"><hr/>
	Favorite Color:<br/>
	Red:<input type="checkbox" name="color" value="red">
	Green:<input type="checkbox" name="color" value="green">
	Blue:<input type="checkbox" name="color" value="blue"><hr/>
	Country From:<br/>
	<select name="country">
		<option value="China">China</option>
		<option value="Amercian">American</option>
		<option value="England">England</option>
	</select><hr/>
	<input type="submit" value="Submit">
	<input type="reset" value="Reset">
	</form>
</body>
</html>