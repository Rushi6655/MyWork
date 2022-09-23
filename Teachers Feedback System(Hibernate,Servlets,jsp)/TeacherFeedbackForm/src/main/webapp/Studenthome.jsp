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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
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
    .options{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 100%;
    }
</style> 
<script type="text/javascript">
	function f1() {
		window.alert("Login Successfull!")
	}
</script>   
<body>
    <main id="body">
    	<% String message=(String) request.getAttribute("message");
    	if(message=="1"){
    	%>
    		<script type="text/javascript">
    			f1();
    		</script>
    	<%} %>
        <div class="content">
            <h1 style="color:  #2674ba;">Welcome</h1>
        </div>
        <div class="options">
            <h5>Choose Below Options</h5>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                <form action="loadfeedbackpage" method="post">
                  <li class="page-item"><button class="page-link" type="submit" >Teacher Feedback</button></li>
                </form>  
                  <li class="page-item"><a class="page-link" href="Studentlogin.jsp">Log out</a></li>
                  <li class="page-item"><a class="page-link" href="Home.jsp">Home</a></li>
                  
                </ul>
            </nav>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item" ><a class="page-link" href="#" style="background-color: red; color: white;" >All Feedbacks</a></li>
                </ul>
            </nav>
        </div>
    </main>    
    
</body>
</html>