<%-- 
    Document   : LoginApplication
    Created on : Apr 10, 2024, 4:43:28 PM
    Author     : deean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
            background-image: url('https://i.pinimg.com/736x/36/4a/a2/364aa27f751d0ed4114ac93baa76eeb1.jpg');
            background-size: cover;
            background-position: top;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        form {
            width: 300px;
            padding: 30px;
            background-color: #fff;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 10px;
            backdrop-filter: blur(2px);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #fff;
            color: #333;
        }

        .show-password {
            margin-top: 10px;
        }

        h1 {
            text-align: center;
            margin: 0;
            padding-bottom: 20px;
        }

        input[type="checkbox"] {
            transform: scale(0.9);
            padding: 0;
            margin-top: 1px;
            vertical-align: top;
            width: auto;
            height: auto;
        }

        .place {
            float: right;
        }
    </style>
</head>
<body>
<form method="post">
    <h1>Login</h1>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="Enter your username" required>
    <label for="password">Password:</label>
    <div>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
        <div class="place">
            <label for="showPassword">
                <input type="checkbox" id="showPassword" class="show-password">Show Password
            </label>
        </div>
    </div>
    <%-- Java code for handling form submission and validation --%>
    <%@page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*"%>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("mark".equals(username) && "123456".equals(password)) {
            // Redirect to another page upon successful login
            response.sendRedirect("/MidtermCombo/MainPage");
        } else if (username != null && password != null) {
            response.sendRedirect("/MidtermCombo/LoginApplication");
        }
    %>
    <button type="submit">Login</button>
</form>

<script>
    // JavaScript to toggle password visibility
    document.getElementById("showPassword").addEventListener("change", function() {
        var passwordInput = document.getElementById("password");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    });
</script>
</body>
</html>
