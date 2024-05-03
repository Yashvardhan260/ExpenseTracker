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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

</head>
<body>
<div class="container">
<form action="save.jsp" method="post">
<label style="margin-right: 250px;">Date : </label><input type="date" name="date"  class="d-inline-flex focus-ring focus-ring-primary py-1 px-2 text-decoration-dashed border rounded-2" style="text-align:center;
    margin-bottom: 20px;"><br>
<label>Money : </label><input type="number" name="money"  class="d-inline-flex focus-ring focus-ring-primary py-1 px-2 text-decoration-dashed border rounded-2" style="margin-left: 135px; text-align:center;
    margin-bottom: 20px;"><br>
<label>Description : </label><input type="text" name="desc"  class="d-inline-flex focus-ring focus-ring-primary py-1 px-2 text-decoration-dashed border rounded-2" style="margin-left: 65px; text-align:center;
    margin-bottom: 20px;"><br><br>

<input type="submit" value="Save" class="btn btn-outline-info" style="font-size: x-large;">
</form>
</div>
</body>
</html>