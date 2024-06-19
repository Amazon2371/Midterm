<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lunar Phase Calculator</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/61/c1/d8/61c1d8f7f3c3ae922b982ba846933100.jpg'); /* Replace 'background.jpg' with your image path */
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        height: 100vh; /* Full height of viewport */
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
    }
    h1 {
        text-align: center;
        color: #333;
        margin-top: 50px; /* Add space on top */
        margin-right: 50px;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .calculator-panel {
        width: 400px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .notification-panel {
        width: 400px;
        margin-top: 20px;
        text-align: center;
    }
    .notification {
        display: none;
        padding: 10px;
        text-align: center;
    }
    .leap {
        background-color: #4CAF50;
        color: white;
    }
    .not-leap {
        background-color: #f44336;
        color: white;
    }
</style>
<script>
    function showNotification(message, className) {
        var notification = document.getElementById("notification");
        notification.textContent = message;
        notification.className = "notification " + className;
        notification.style.display = "block";
    }
</script>
</head>
<body>
    <h1>Lunar Phase Calculator</h1>
    <div class="container">
        <div class="calculator-panel">
            <form action="LunarCalculator" method="post" onsubmit="showNotification('', '');">
                <label for="year">Enter the year (e.g., 2024):</label>
                <input type="text" id="year" name="year" />
                <button type="submit" name="action" value="calculate">Calculate</button>
                <button type="submit" name="action" value="reset">Reset</button>
            </form>
        </div>
        <div id="notification-panel" class="notification-panel">
            <div id="notification" class="notification"></div>
        </div>
    </div>
    <div class="result">
        <% 
            String yearString = request.getParameter("year");
            String action = request.getParameter("action");
            if(action != null && action.equals("calculate")){
                try {
                    int year = Integer.parseInt(yearString);
                    boolean isLeap = isLeapYear(year);
                    String message = year + (isLeap ? " is a leap year." : " is not a leap year.");
                    String className = isLeap ? "leap" : "not-leap";
                    out.println("<script>showNotification('" + message + "', '" + className + "');</script>");
                } catch (NumberFormatException e) {
                    out.println("<script>showNotification('Please enter a valid year.', 'not-leap');</script>");
                }
            } else if (action != null && action.equals("reset")) {
                // Reset action, clear the input
                yearString = "";
            }
        %>
    </div>
</body>
</html>
<%! 
    public static boolean isLeapYear(int year) {
        return ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0));
    }
%>
