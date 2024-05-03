<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="All.css">
<link rel="icon" type="image/png" href="favicon16.png">
</head>
<body>
<jsp:useBean id="bean" class="com.expense.Login"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="dao" class="com.expense.LoginDao"></jsp:useBean>
<% 
boolean r=(dao.saveUser(bean));
if(r)
{
	out.print("User Created... <br>");
	out.print("Now Login Below ");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
else{
	out.print("Error Creating user");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>
</body>
</html>