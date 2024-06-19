<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Button Actions in JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://i.pinimg.com/564x/ec/33/40/ec334048c56d2cfbbdcd7e04de2a3094.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
        }
        button, input[type="submit"] {
            display: block;
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            font-size: 16px;
            color: #ffffff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover, input[type="submit"]:hover {
            background-color: #0056b3;
        }
        #output {
            margin-top: 20px;
            font-size: 18px;
            color: #333333;
            text-align: center;
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .hidden {
            display: none;
        }
        form {
            margin-top: 20px;
        }
        form input[type="text"] {
            width: calc(100% - 30px);
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #dddddd;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Interactive Buttons</h1>
        <button onclick="displayText()">Display Text</button>
        <button onclick="showForm()">Greet User</button>
        <button onclick="exitPage()">Exit</button>

        <form id="greetForm" class="hidden" method="post" action="Buttons">
            <input type="text" name="firstName" placeholder="Enter your first name" required>
            <input type="text" name="lastName" placeholder="Enter your last name" required>
            <input type="submit" value="Submit">
        </form>

        <div id="output">
            <%
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                if (firstName != null && lastName != null) {
                    out.println("Hello, " + firstName + " " + lastName + "!");
                }
            %>
        </div>
    </div>

    <script>
        function displayText() {
            document.getElementById('output').innerText = "Hello, this is the displayed text!";
        }

        function showForm() {
            document.getElementById('greetForm').classList.remove('hidden');
        }

        function exitPage() {
            window.history.back();
        }
    </script>

</body>
</html>
