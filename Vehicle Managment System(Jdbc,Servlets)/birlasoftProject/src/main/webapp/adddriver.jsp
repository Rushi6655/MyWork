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
		if(msg=="yes"){
	%>
		<script>
		alert("Driver Add Successfully.")
		</script>
	<%
		}else if(msg=="no"){	
	%>
		<script>
		alert("An Error Occurs!!")
		</script>
	<%} %>
    <div class="page2">
        <h5 style="color:rgb(123, 123, 222) ;">Enter Driver Details</h5>
        <form action="adddriver" method="post" class="formcard">
            <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label" >Mail</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="inputPassword" name="dmail">
                </div>
              </div>
              <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputPassword" name="dname">
                </div>
              </div>
              <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Experience</label>
                <div class="col-sm-10">
                  <input type="number" class="form-control" id="inputPassword" name="dexp">
                </div>
              </div>
              <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Age</label>
                <div class="col-sm-10">
                  <input type="number" class="form-control" id="inputPassword" name="dage">
                </div>
              </div>
              <button type="submit" class="btn btn-outline-primary" >Add Driver</button>
        </form>
    </div>
</body>
</html>