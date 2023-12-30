<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div {
        height: 400px;
        width: auto;
        background-color: grey;
        align-items: center;
        box-sizing: border-box;
        transition: 1s;
    }

    h2 {
        color: white;
        text-align: center;
    }

    input[type="email"] {
        width: 100%;
        box-sizing: border-box;
        padding: 5px;
    }

    input[type="password"],
    input[type="date"] {
        width: 100%;
        box-sizing: border-box;
        padding: 5px;
    }
</style>
</head>
<body>
  <center>
    <h1>Register here</h1>
    <form action="registerpage" method="post">

      <label>Email</label>
      <input type="email" name="useremail" required> <br><br>

      <label>Password</label>
      <input type="password" name="password" required> <br><br>

      <label>Confirm Password</label>
      <input type="password" name="confirmpassword" required> <br><br>

      <label>Address</label>
      <input type="text" name="address"> <br>

      <label>Date of Birth</label>
      <input type="date" name="date"> <br><br>

      <button type="submit">Submit</button>
      <button type="reset">Reset</button>

    </form>
  </center>
</body>

</html>