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
<body>
    <main id="body">
        <div class="content">
            <h1 style="color:  #2674ba;">Welcome To Teacher Feedback Application</h1>
        </div>
        <div class="options">
            <h5>Choose Below Options</h5>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  
                  <li class="page-item"><a class="page-link" href="AdminLogin.jsp">Admin Login</a></li>
                  <li class="page-item"><a class="page-link" href="Studentlogin.jsp">Student Login</a></li>
                  <li class="page-item"><a class="page-link" href="TeacherLogin.jsp">Teacher Login</a></li>
                  
                </ul>
            </nav>
        </div>
    </main>
    
</body>
</html>