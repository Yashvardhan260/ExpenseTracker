<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="All.css">
<link rel="stylesheet" href="tools.css">
<link rel="icon" type="image/png" href="favicon16.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container" style="margin-top: 22%;">
<h1 style="font-size:3.5rem;"> Welcome <span style="text-transform:uppercase; 
													font-weight:700; 
													background: repeating-linear-gradient(161deg, white, #0b6dff 100px);
													-webkit-background-clip: text;
													color: transparent; 
													text-shadow: 1px 4px 13px #ffffff05; 
													font-style:italic;
													background-blend-mode: luminosity;">
													"${param.uname}"</span></h1>
	<h2 style=" 
	margin-top: 5%;
    display: block;
    width: 33%;
    margin-left: 33%;
    text-shadow: 5px 3px 6px #292929;">What do You Want to do ?</h2>
<a href="allData.jsp"><button class="btn btn-outline-light" style="font-size:large;margin-top:5%;"><i class="bi bi-eye"></i> Show All Your Data</button></a>
<a href="insert.jsp" ><button class="btn btn-outline-light" style="font-size:large;margin-top:5%;"><i class="bi bi-plus-lg"></i> Insert new Expenses</button></a>
</div>
</body>
</html>