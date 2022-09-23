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
    <div class="page">
        <h5 style="color:rgb(123, 123, 222) ;">Welcom To Vehicle Managment System</h5>
        <br>
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <button type="button" class="btn btn-outline-primary" onclick="location.href='./admin.jsp'"><img class="icon" src="./icons/icons8-admin-settings-male-50.png">Admin LogIn</button>
            <button type="button" class="btn btn-outline-primary" onclick="location.href='./user.jsp'" ><img class="icon" src="./icons/icons8-user-48.png">User LogIn</button>
        </div>
    </div>   
</body>
</html>