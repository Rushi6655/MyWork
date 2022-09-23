<%@page import="java.sql.ResultSet"%>
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
<link rel="stylesheet" href="./style/style.css">
</head>
<body>
<%
	ResultSet dlist=(ResultSet)request.getAttribute("dlist");
	ResultSet vlist=(ResultSet)request.getAttribute("vlist");
%>
	<div class="driverlist">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Did</th>
					<th scope="col">Name</th>
					<th scope="col">Experience</th>
					<th scope="col">Age</th>
					<th scope="col">Available</th>
				</tr>
			</thead>
			<tbody>
			<% while(dlist.next()){%>
				<tr>
					<th><%=dlist.getString(1)%></th>
					<td><%=dlist.getString(2)%></td>
					<td><%=dlist.getInt(3)%></td>
					<td><%=dlist.getInt(4)%></td>
					<td><%=dlist.getString(5)%></td>
				</tr>
			<%} %>			
			</tbody>
		</table>
	</div>
	<div class="vehiclelist">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">VID</th>
					<th scope="col">Vname</th>
					<th scope="col">Cost per km</th>
				</tr>
			</thead>
			<tbody>
			<% while(vlist.next()){%>
				<tr>
					<th scope="row"><%=vlist.getInt(1) %></th>
					<td><%=vlist.getString(2) %></td>
					<td><%=vlist.getInt(3) %></td>
				</tr>
			<%} %>	
			</tbody>
		</table>
	</div>
	<form action="bookride" class="formcard" method="post" >
		<div class="input-group">
			<span class="input-group-text">Enter DriverID & VehicleID</span> <input
				type="email" aria-label="Driver Mail id" class="form-control"
				name="dmail" id="d"> <input type="number" aria-label="Vehicle Id"
				class="form-control" name="vid" id="v">
			
		</div>
		<div class="input-group">
		    <span class="input-group-text">Your MailId</span><input
				type="email" aria-label="Driver Mail id" class="form-control"
				name="umail" id="d">
			<span class="input-group-text">Travel KM</span> <input type="number"
				aria-label="Driver Mail id" class="form-control" name="km" id="tkm">
			<button type="submit" class="btn btn-outline-primary">Book A
				Ride</button>	
		</div>		
	</form>
	<%
	String msg=(String) request.getAttribute("msg");
	%>
	<% if(msg.equals("add"))
	{
	%>
	<script>
	alert("Ride Added Successfully");
    </script>
	<%
	}else if(msg.equals("nodriver")){ 
	%>
	<script>
	alert("Invalid Driver Details");
    </script>
	<%} else if(msg.equals("novehicle")){ 
	%>
	<script>
	alert("Invalid Vehicle Details");
    </script>
	<%} %>
</body>
</html>