<%@page import="java.util.ArrayList"%>
<%@page import="DTO.feedback"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
 *{
        margin: 0;
        padding: 0;
    }
     html{
      scroll-behavior: smooth;
    }
    #body{
        position: absolute;
        height: 100%;
        width: 100%;
        background-color: #cef4ff;;
    }
    .content{
        display: flex;
        width: 100%;
        height: auto;
        margin-top: 100px;
        margin-bottom: 50px;
        align-items: center;
        justify-content: center;
    }
    .t{
    	margin: 30px;
    }
</style>
<body class="body">
	
	<%
		List<feedback> l1=new ArrayList<feedback>();
		l1=(List<feedback>)request.getAttribute("list");
	%>

	<div class="content">
		<h1 style="color: #2674ba;">All Students Feedbacks</h1>
	</div>
	 <div class="t">

        <table class="table">
            <thead>
              <tr>
                <th scope="col">index</th>
                <th scope="col">Sid</th>
                <th scope="col">Tid</th>
                <th scope="col">Department</th>
                <th scope="col">Q1</th>
                <th scope="col">Q2</th>
                <th scope="col">Q3</th>
                <th scope="col">Q4</th>
                <th scope="col">Q5</th>
                <th scope="col">Q6</th>
                <th scope="col">Q7</th>
                <th scope="col">Q8</th>
              </tr>
            </thead>
            <tbody>
              <%
              	for(feedback f1:l1){
              %>
              	<tr>
                <th scope="row"><%=f1.getFno() %></th>
                <td><%=f1.getSid() %></td>
                <td><%=f1.getTid() %></td>
                <td><%=f1.getDname() %></td>
                <td><%=f1.getQa() %></td>
                <td><%=f1.getQb() %></td>
                <td><%=f1.getQc() %></td>
                <td><%=f1.getQd() %></td>
                <td><%=f1.getQe() %></td>
                <td><%=f1.getQf() %></td>
                <td><%=f1.getQg() %></td>
                <td><%=f1.getQh() %></td>
                </tr>
           	<%
              	}
           	%>
            </tbody>
          </table>
    </div>

</body>
</html>