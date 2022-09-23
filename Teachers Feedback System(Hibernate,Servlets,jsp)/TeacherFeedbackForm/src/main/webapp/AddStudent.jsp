<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

#body {
	position: absolute;
	height: 100%;
	width: 100%;
	background-color: #cef4ff;;
}

.content {
	display: flex;
	width: 100%;
	height: auto;
	margin-top: 100px;
	margin-bottom: 50px;
	align-items: center;
	justify-content: center;
}

.options {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}
</style>
<script type="text/javascript">
	function valid() {
		window.alert("Student Is Added Successfully!");
	}
	function invalid() {

		window.alert("Student Is Already In Database!");
	}
</script>
<body>



	<main id="body">

		<%
		String message = "3";
		message = (String) request.getAttribute("message");

		if (message == "1") {
		%>
		<script type="text/javascript">
			valid();
		</script>
		<%
		} else if (message == "0") {
		%>
		<script type="text/javascript">
			invalid();
		</script>
		<%
		}
		%>
		<div class="content">
			<h1 style="color: #2674ba;">Add Student</h1>
		</div>
		<div class="options">
			<form class="row g-3" action="addstudent" method="post">
				<div class="col-md-6">
					<label for="inputEmail4" class="form-label">Student Id No</label> <input
						type="text" class="form-control" id="inputEmail4" name="sid">
				</div>
				<div class="col-md-6">
					<label for="inputPassword4" class="form-label">Password</label> <input
						type="password" class="form-control" id="inputPassword4"
						name="pass">
				</div>
				<div class="col-md-6">
					<label for="inputAddress" class="form-label">Student Name</label> <input
						type="text" class="form-control" id="inputAddress" name="name">
				</div>
				<div class="col-md-6">
					<label for="inputAddress" class="form-label">Deparment</label> <input
						type="text" class="form-control" id="inputAddress"
						placeholder="Computer,Electrical,Machanical,civil,.." name="dname">
				</div>
				<div class="col-12">
					<label for="inputAddress2" class="form-label">Year Of Study</label>
					<input type="text" class="form-control" id="inputAddress2"
						placeholder="F.E,S.E,T.E,B.E" name="year">
				</div>
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Sign in</button>
				</div>
			</form>
		</div>
	</main>
</body>
</html>