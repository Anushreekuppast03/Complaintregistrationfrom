<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        body {
            background-color: whitesmoke;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        div {
            width: 370px;
            background-color: silver;
            box-sizing: border-box;
            transition: 1s;
            text-align: center;
            padding: 20px;
            position: relative;
        }

        #logo {
            height: 50px;
            width: 70px;
            position: absolute;
            top: 20px;
            left: 20px;
            padding-top: 60px;
            padding-left: 130px;
        }

        h1 {
            color: black;
            margin-top: 10px;
        }

        table tr td input {
            width: 100%;
        }

        table tr td {
            text-align: center;
        }

        #submitBtn {
            pointer-events: none;
        }
    </style>
    <script>
        function enableSubmit() {
            var username = document.getElementById('username').value;
            var submitBtn = document.getElementById('submitBtn');

            if (username.trim() !== '') {
                submitBtn.style.pointerEvents = 'auto';
            } else {
                submitBtn.style.pointerEvents = 'none';
            }
        }
    </script>
<body>
<center>
<form action="loginpage" method="post"> 
<label>Username</label>
<input type="name" name=vusername  required><br><br>
<label>password</label>
<input type="password" name=vpass required><br><br>
<button>submit</button>
<button>reset</button>
</form>
</center>
</body>
</html>