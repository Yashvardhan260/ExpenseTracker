<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="All.css">
<link rel="icon" type="image/png" href="favicon16.png">
</head>
<body>
<div class="container">
<jsp:useBean id="bean" class="com.expense.Login"></jsp:useBean>
<jsp:useBean id="beans" class="com.expense.ExpensePage"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<jsp:useBean id="dao" class="com.expense.LoginDao"></jsp:useBean>
<%
String u=(String)session.getAttribute("uname");
%>
	<h1>All the data of <%=u%> is</h1>
	</div>
</body>
</html>