<%@page import="DAO.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/style.css">
</head>
<body>
	<%
		user u=(user)request.getAttribute("user");
	%>
    <div class="page">
        <h5 style="color:rgb(123, 123, 222) ;">Welcom User</h5>
        <br>
        <div class="btn-group" role="group" aria-label="Basic outlined example" style="display: flex; align-items: center; justify-content: center;flex-direction: column;">
        	<form action="loadridepage" method="post" style="display: flex; align-items: center; justify-content: center;flex-direction: column;">
        	<input type="email" class="form-control" id="inputPassword" name="uid" value="<%=u.getuID() %>">
            <button type="submit" class="btn btn-outline-primary">View Ride History</button>
            </form>
            <form action="loadbookridepage" method="post">
            <button type="submit" class="btn btn-outline-primary" >Book A Ride</button>
             <button type="button" class="btn btn-danger" onclick="location.href='./user.jsp'">Back</button>
            </form>
            
        </div>
        
    </div>
</body>
</html>