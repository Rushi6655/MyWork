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


	<div class="content">
		<h1 style="color: #2674ba;">All Students Feedbacks</h1>
	</div>
	 <div class="t">

        <table class="table">
            <thead>
              <h3>Feedback in term of goodness percentage</h3>
              <tr>
               
                <th scope="col">Communication Skill</th>
                <th scope="col">Ability to explain subject matter and clear doubts</th>
                <th scope="col">Presentation (viz.the Blackboard/Power point/OHP</th>
                <th scope="col">Teaching Methodology</th>
                <th scope="col">Overall Interest created in the subject</th>
                <th scope="col">Regular and Punctual in conducting classes</th>
                <th scope="col">Firm and Maintains class Discipline</th>
                <th scope="col">Attitude towards student</th>
              </tr>
            </thead>
            <tbody>
             
              	<tr>
                <td><%=100-(Integer)request.getAttribute("qa") %></td>
                <td><%=100-(Integer)request.getAttribute("qb") %></td>
                <td><%=100-(Integer)request.getAttribute("qc") %></td>
                <td><%=100-(Integer)request.getAttribute("qd") %></td>
                <td><%=100-(Integer)request.getAttribute("qe") %></td>
                <td><%=100-(Integer)request.getAttribute("qf") %></td>
                <td><%=100-(Integer)request.getAttribute("qg") %></td>
                <td><%=100-(Integer)request.getAttribute("qh") %></td>
                </tr>
           
            </tbody>
          </table>
    </div>

</body>
</html>