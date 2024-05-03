<%@page import="java.util.ArrayList"%>
<%@page import="com.expense.ExpensePage"%>
<%@page import="com.expense.ExpenseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Expenses</title>
      
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="All.css">
<link rel="icon" type="image/png" href="favicon16.png"></head>
<body>
 <div class="container">
 	<%
String u=(String)session.getAttribute("uname");
%>
    <h1>All Expenses of <%=u%></h1>
    <br><br>
    <table style="border: 1px solid white;margin-left: 420px; margin-top: -66px; font-size:small;">
       
            <tr>
                <th>Date</th>
                <th>Money</th>
                <th>Desc</th>
            </tr>
        
            <%
            try {
                ExpenseDao dao = new ExpenseDao();
                ArrayList<ExpensePage> expenses = dao.getAllExpenses((String)session.getAttribute("uname"));
                for (ExpensePage expense : expenses) {
            %>
            <tr>
                <td><%= expense.getDate() %></td>
                <td><%= expense.getMoney() %></td>
                <td><%= expense.getDesc() %></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        
    </table>
 
 </div>
</body>
</html>