<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <nav>
        <div class="nav-wrapper">
          <a href="home.jsp" class="brand-logo"><i class="material-icons right">import_contacts</i></a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="home.jsp"><i class="material-icons left">arrow_back</i>Back</a></li>
          </ul>
        </div>
      </nav>
      <h4 class="titel" >User Login</h4>
      <div class="lcard">
        <form action="userlogin" method="post">
            <div class="row">
                <div class="input-field col s12">
                  <input id="email" type="text" class="validate" name="sid">
                  <label for="email">Student ID</label>
                </div>
              </div>
            <div class="row">
                <div class="input-field col s12">
                  <input id="password" type="password" class="validate" name="smail">
                  <label for="password">Password(your MailID)</label>
                </div>
              </div>
              <button class="btn waves-effect waves-light button1" type="submit" name="action" style="width: 100%;">LogIN
                <i class="material-icons right">send</i>
              </button>
        </form>
      </div>
      
</body>
</html>