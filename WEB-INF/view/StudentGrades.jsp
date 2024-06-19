<%-- 
    Document   : StudentGrades
    Created on : Apr 10, 2024, 5:20:20 PM
    Author     : deean
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Grades Calculation</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/564x/c9/32/77/c9327729dcba78fadd30fb0fa31e2723.jpg'); /* Path to your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #ffffff;
        }
        .container {
            width: 60%;
            margin: auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 10px;
            text-align: center;
        }
        h1 {
            margin-top: 50px;
        }
        form {
            margin-top: 20px;
        }
        form label {
            display: block;
            margin-bottom: 10px;
            color: #ffffff;
        }
        form input[type="text"] {
            width: 200px;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
        }
        form button {
            padding: 10px 20px;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
        }
        .results {
            margin-top: 30px;
            color: #ffffff;
        }
        .results p {
            margin-bottom: 10px;
        }
        .error {
            color: #ff0000;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Grade</h1>
        <form id="gradesForm" action="StudentGrades" method="post">
            <label>Mathematics:</label>
            <input type="text" name="math" />
            <label>English:</label>
            <input type="text" name="english" />
            <label>Filipino:</label>
            <input type="text" name="filipino" />
            <label>Science:</label>
            <input type="text" name="science" />
            <label>Basic Calculus:</label>
            <input type="text" name="calculus" />
            <div>
                <button type="submit">Calculate</button>
                <button type="reset" onclick="resetResults()">Reset</button>
            </div>
            <div class="error" id="error"></div>
        </form>

        <div class="results" id="results">
            <%
                // Process form submission
                if (request.getMethod().equals("POST")) {
                    String mathScoreStr = request.getParameter("math");
                    String englishScoreStr = request.getParameter("english");
                    String filipinoScoreStr = request.getParameter("filipino");
                    String scienceScoreStr = request.getParameter("science");
                    String calculusScoreStr = request.getParameter("calculus");

                    double mathScore = Double.parseDouble(mathScoreStr);
                    double englishScore = Double.parseDouble(englishScoreStr);
                    double filipinoScore = Double.parseDouble(filipinoScoreStr);
                    double scienceScore = Double.parseDouble(scienceScoreStr);
                    double calculusScore = Double.parseDouble(calculusScoreStr);

                    double[] scores = { mathScore, englishScore, filipinoScore, scienceScore, calculusScore };
                    double average = (mathScore + englishScore + filipinoScore + scienceScore + calculusScore) / 5.0;

                    // Calculate letter grades
                    String mathGrade = calculateLetterGrade(mathScore);
                    String englishGrade = calculateLetterGrade(englishScore);
                    String filipinoGrade = calculateLetterGrade(filipinoScore);
                    String scienceGrade = calculateLetterGrade(scienceScore);
                    String calculusGrade = calculateLetterGrade(calculusScore);

                    // Output results
                    out.println("<h2>Results:</h2>");
                    out.println("<p>Mathematics Grade: " + mathGrade + "</p>");
                    out.println("<p>English Grade: " + englishGrade + "</p>");
                    out.println("<p>Filipino Grade: " + filipinoGrade + "</p>");
                    out.println("<p>Science Grade: " + scienceGrade + "</p>");
                    out.println("<p>Basic Calculus Grade: " + calculusGrade + "</p>");
                    out.println("<p>Average Score: " + average + "</p>");
                    out.println("<p>GPA: " + calculateGPA(scores) + "</p>");
                }
            %>
        </div>
    </div>
    <script>
        function resetResults() {
            document.getElementById("results").innerHTML = "";
            document.getElementById("error").innerHTML = "";
        }

        document.getElementById("gradesForm").addEventListener("submit", function(event) {
            var inputs = document.querySelectorAll('input[type="text"]');
            var error = document.getElementById("error");
            var isValid = true;

            error.innerHTML = "";
            
            inputs.forEach(function(input) {
                var value = input.value.trim();
                if (!/^\d{2}$/.test(value)) {
                    isValid = false;
                }
            });

            if (!isValid) {
                error.innerHTML = "Incorrect input. Please enter a two-digit number.";
                event.preventDefault();
            }
        });
    </script>
</body>
</html>

<%! 
    // Function to calculate letter grade
    public String calculateLetterGrade(double score) {
        if (score >= 90) {
            return "A";
        } else if (score >= 85) {
            return "B";
        } else if (score >= 80) {
            return "C";
        } else if (score >= 75) {
            return "D";
        } else {
            return "F";
        }
    }

    // Function to calculate GPA
    public double calculateGPA(double[] scores) {
        double sum = 0;
        for (double score : scores) {
            if (score >= 90) {
                sum += 4.0;
            } else if (score >= 85) {
                sum += 3.0;
            } else if (score >= 80) {
                sum += 2.0;
            } else if (score >= 75) {
                sum += 1.0;
            }
        }
        return sum / scores.length;
    }
%>
