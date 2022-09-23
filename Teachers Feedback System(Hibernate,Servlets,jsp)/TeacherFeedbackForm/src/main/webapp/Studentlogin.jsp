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
    .form{
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>   
<script type="text/javascript">
	function f1() {
		window.alert("Invalid Student Id");
	}
	function f2() {
		window.alert("Invalid Password");
	}
</script>  
<body>
	<%
		String message=null;
		message=(String)request.getAttribute("message");
		if(message=="-1"){
	%>
		<script type="text/javascript">
			f1();
		</script>
	<%} else if(message=="0"){%>
		<script type="text/javascript">
			f2();
		</script>
	<%} %>
    <main id="body">
        <div class="content">
            <h1 style="color:  #2674ba;">Student Login</h1>
        </div>
        <div class="form">
            <form action="slogin" method="post">
                <table>
                    <tr>
                        <td>
                            <h5>Student Id No </h5>
                        </td>
                        <td>
                            <input type="text" name="sid">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h5>Password </h5>
                        </td>
                        <td>
                            <input type="password" name="pass">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" placeholder="Submit" style="width: 100%; margin-top: 5px; background-color: #2674ba; color: white;"></td>
                    </tr>
                </table>
            </form>
        </div>
    </main>    
    
</body>
</html>