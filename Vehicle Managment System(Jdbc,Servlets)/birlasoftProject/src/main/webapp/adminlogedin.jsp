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
		String msg="";
		msg=(String)request.getAttribute("msg");
		if(msg=="yes"){
	%>
		<script>
		alert("Log in Successfull!")
		</script>
	<%
		}	
	%>
    <div class="page">
        <h5 style="color:rgb(123, 123, 222) ;"><img src="./icons/icons8-admin-settings-male-50.png">Welcom Admin</h5>
        <br>
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <button type="button" class="btn btn-outline-primary" onclick="location.href='./adddriver.jsp'" ><img class="icon" src="./icons/icons8-add-user-group-woman-man-64.png">Add Driver</button>
            <form action="getalldrivers" method="post">
            <button type="Submit" class="btn btn-outline-primary" ><img class="icon" src="./icons/icons8-steering-wheel-50.png">All Drivers</button>
            </form>
            <button type="button" class="btn btn-outline-primary" onclick="location.href='./addvehicle.jsp'" ><img class="icon" src="./icons/icons8-vehicle-insurance-48.png"> Vehicle</button>
			<form action="getallvehicles" method="post">
            <button type="Submit" class="btn btn-outline-primary" ><img class="icon" src="./icons/icons8-car-48.png">All Vehicles</button>
            </form>           
            <form action="getallrides" method="post">
            <button type="Submit" class="btn btn-outline-primary" ><img class="icon" src="./icons/icons8-add-database-60.png">All Rides</button>
            </form>
             <button type="button" class="btn btn-danger" onclick="location.href='./admin.jsp'">Back</button>
        </div>
    </div>
</body>
</html>