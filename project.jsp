<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
 
    
     
    



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        div {
            height: auto;
            width: auto;
            background-color: grey;
            align-items: center;
            box-sizing: border-box;
            transition: 1s;
        }

        h1 {
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
 <div>
        <form action="project" method="get" >
            <h1>Complaint Form</h1>
            <p>Please send us details about the incident you would like to report. Our Complaint Center will analyze your complaint and take the appropriate measures to ensure the reported situation does not occur again in the future.</p>
            <hr>

            <table>
                <tr>
                    <td><label>Date of complaint</label></td>
                    <td>:</td>
                    <td><input type="date" name="dcom" required></td>
                </tr>

                <tr>
                    <td><label>Name</label></td>
                    <td>:</td>
                    <td><input type="text" placeholder="Name" name="fname" required></td>
                </tr>

                <tr>
                    <td><label>Email</label></td>
                    <td>:</td>
                    <td><input type="email" placeholder="email" name="email" required></td>
                </tr>

                <tr>
                    <td><label>Address</label></td>
                    <td>:</td>
                    <td><textarea rows="3" cols="22" name="addss" placeholder="street/City/Region/Zipcode/Country" required></textarea></td>
                </tr>

                <tr>
                    <td><label>Date of reported Incident</label></td>
                    <td>:</td>
                    <td><input type="date" name="dri" required></td>
                </tr>

                <tr>
                    <td><label>Type of complaint</label></td>
                    <td>:</td>
                    <td>
                        <select name="tc" required>
                            <option value="Civil" name="tc">Civil</option>
                            <option value="Cyber" name="tc">Cyber</option>
                            <option value="Human rights" name="tc">Human rights</option>
                            <option value="Consumer" name="tc">Consumer</option>
                            <option value="Labour" name="tc">Labour</option>
                            <option value="Criminal" name="tc">Criminal</option>
                            <option value="Others" name="tc">Others</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label>Incident location</label></td>
                    <td>:</td>
                    <td><input type="text" name="il" required></td>
                </tr>

                <tr>
                    <td><label>Complaint details</label></td>
                    <td>:</td>
                    <td><textarea rows="3" cols="22" name="cd" placeholder="Describe the complaint in detail..." required></textarea></td>
                </tr>

                <tr>
                    <td><input type="Submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </div>

    <script>
        function validateForm() {
            // Add any additional validation logic if needed
            return true; // Submit the form if all validations pass
        }
    </script>
</body>
</html>