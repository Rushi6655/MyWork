<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/style.css">
</head>
<body>
	<%
		String msg="";
		msg=(String)request.getAttribute("msg");
		if(msg=="no"){
	%>
		<script>
		alert("Invalid Credentials!")
		</script>
	<%
		}	
	%>
    <div class="page">
        <h5 style="color:rgb(123, 123, 222) ;">Welcom To Admin LogIn</h5>
        <form action="adminlogin" method="post" class="formcard">
            <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">AdminID</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="inputPassword" name="mail">
                </div>
              </div>
              <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="inputPassword" name="pass">
                </div>
              </div>
              <button type="submit" class="btn btn-outline-primary" onclick="location.href='./user.html'" >Log In</button>
               <button type="button" class="btn btn-danger" onclick="location.href='./home.jsp'">Back</button>
        </form>
    </div>
</body>
</html>