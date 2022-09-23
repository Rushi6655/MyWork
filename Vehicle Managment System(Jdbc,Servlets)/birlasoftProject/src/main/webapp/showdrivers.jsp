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
    <link rel="stylesheet" href="./style/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/style.css">
</head>
<style>
.ridelist{
    display: flex;
    flex-direction: column;
    margin-top: 10px;
    padding: 20px;
    width: 800px;
    height: 500px;
    overflow:scroll;
    border: 2px solid #f3eeee;
    box-shadow: 11px 24px 36px -9px;
    scroll-behavior: smooth;
}
</style>
<body>
	<%
		ResultSet rlist=(ResultSet)request.getAttribute("dlist");
	%>
    <h5 style="margin-top: 20px;">Ride History</h5>
    <div class="ridelist">
        <table class="table">
            <thead>
              <tr>
              	<th scope="col">DID(mail)</th>
                <th scope="col">Name</th>
                <th scope="col">Experience</th>
                <th scope="col">Age</th>
                <th scope="col">Available Status</th>
              </tr>
            </thead>
            <tbody>
             <% while(rlist.next()){%>
				<tr>
					<td><%=rlist.getString(1)%></td>
					<th><%=rlist.getString(2)%></th>
					<td><%=rlist.getInt(3)%></td>
					<td><%=rlist.getInt(4)%></td>
					<td><%=rlist.getString(5)%></td>
				</tr>
			<%} %>	
            </tbody>    
          </table>
    </div>
</body>
</html>