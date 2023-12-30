<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url("love1.png");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        #dashboard-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: silver;
            border: none;
            color: white;
            cursor: pointer;
            height: 50px;
            width: 80px;
            align-items: center;
        }

        #login-btn{
            position: absolute;
            top: 20px;
            right: 150px;
            background-color: silver;
            border: none;
            color: white;
            cursor: pointer;
            margin-top: 10px;
            height: 50px;
            width: 80px;
            align-items: center;
        }
        #register-btn {
            position: absolute;
            top: 20px;
            right: 40px;
            background-color: silver;
            border: none;
            color: white;
            cursor: pointer;
            margin-top: 10px;
            height: 50px;
            width: 80px;
            align-items: center;
        }

        #welcome-text {
            text-align: center;
            color: white;
            font-size: 40px;
            margin-top: 30vh;
            font-style: italic;
            font-family: 'Times New Roman', Times, serif;
        }

        #logo {
            display: block;
            margin: 0 auto;
            margin-top: 10vh;
        }
        a{
        	text-decoration:none;
        	color:white;
        }
    </style>
    
</head>
<body>
 <button id="dashboard-btn"><a href="dashboard.jsp">Dashboard</a></button>

    <div id="welcome-text">
        <h1>Welcome to Online complaint registration platform</h1>
    </div>

    <img id="logo" src="logo.jpg" width="70px" height="70px" alt="Logo">

    <button id="register-btn" ><a href="registration.jsp">Register</a></button><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <button id="login-btn" ><a href="login.jsp" >Login</a></button>
</body>
</html>