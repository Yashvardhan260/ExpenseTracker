<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Save</title>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="All.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="icon" type="image/png" href="favicon16.png">
</head>
<body>

<div class="container">
	
	
    <center><h1 style="font-size: 75px;
    display: inline-block;
    margin-bottom: 27px;
    font-weight: 100;">Expenses Saved...</h1></center>
    
    <jsp:useBean id="bean" class="com.expense.ExpensePage" scope="request" />
    <%-- <jsp:setProperty property="*" name="bean"/> --%>
    
    <%
    // Get request parameters and set them into the bean
    String dateString = request.getParameter("date");
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date date = format.parse(dateString);
    
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
    
    bean.setDate(sqlDate);
    bean.setMoney(Integer.parseInt(request.getParameter("money")));
    bean.setDesc(request.getParameter("desc"));
    
    // Use DAO to save the data
    com.expense.ExpenseDao dao = new com.expense.ExpenseDao();
    boolean r = dao.saveData(bean,(String)session.getAttribute("uname"));
    if (r) {
        out.print("<center><h2  style= 'font-size: 50px; margin-bottom: 30px; font-weight: 400; background: #cdcdcd2b; width: 620px; border-radius: 50px;'>Your Data inserted is:</h2></center>");
        out.println("<center><h3 style= 'font-size: 30px;font-family: 'Poppins', sans-serif;'>Date: "+"<u><i>"+bean.getDate()+"</i></u>"+"<br></center></h3>");
        out.println("<center><h3 style= 'font-size: 30px;font-family: 'Poppins', sans-serif;'>Money: "+"<u><i>"+bean.getMoney()+"</i></u>"+"<br></center></h3>");
        out.println("<center><h3 style= 'font-size: 30px;font-family: 'Poppins', sans-serif;'>Description is: " +"<u><i>"+bean.getDesc()+"</i></u>"+"<br><br></center></h3>");
    %>
    <%-- Date:<jsp:getProperty property="date" name="bean"/> --%>
    <%-- Money:<jsp:getProperty property="money" name="bean"/>
    Description is :<jsp:getProperty property="desc" name="bean"/> --%>
    
    <center><a href="allData.jsp" style= 'font-size: 30px;' class="btn btn-outline-info">Show All Data</a></center>
    <%} %>

</div>
    
</body>
</html>


