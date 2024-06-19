<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Triangle Area Calculator</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/4c/48/2e/4c482e6e86bd9c17ab5283088c1c67b0.jpg'); /* Replace 'background.jpg' with the path to your image */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        max-width: 400px;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background */
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }

    h1, h2 {
        text-align: center;
        color: #333;
    }

    label {
        font-size: 18px;
        color: #333;
    }

    input[type="text"] {
        width: calc(100% - 10px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #0056b3;
    }

    .error {
        color: red;
        text-align: center;
        margin-top: 10px;
    }

    .result-panel {
        display: none;
        background-color: #f9f9f9;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-top: 20px;
    }

    .area-result {
        font-size: 18px;
        color: #333;
        margin-top: 10px;
    }
</style>
<script>
    function showResult() {
        var base = document.getElementById('base').value;
        var height = document.getElementById('height').value;
        var error = document.getElementById('error');
        var resultPanel = document.getElementById('resultPanel');
        var areaResult = document.getElementById('areaResult');

        // Validate input
        if (isNaN(base) || isNaN(height) || base <= 0 || height <= 0) {
            error.innerHTML = 'Incorrect input. Try Again';
            resultPanel.style.display = 'none';
            return;
        }

        // Calculate area
        var area = 0.5 * parseFloat(base) * parseFloat(height);
        areaResult.innerHTML = 'Area: ' + area.toFixed(2) + ' cm<sup>2</sup>';

        // Show result
        error.innerHTML = '';
        resultPanel.style.display = 'block';
    }

    function resetForm() {
        document.getElementById('base').value = '';
        document.getElementById('height').value = '';
        document.getElementById('error').innerHTML = '';
        document.getElementById('resultPanel').style.display = 'none';
    }
</script>
</head>
<body>
    <div class="container">
        <h1>Triangle Area Calculator</h1>
        <form action="#" onsubmit="showResult(); return false;">
            <label for="base">Base:</label><br>
            <input type="text" id="base" name="base"><br>
            <label for="height">Height:</label><br>
            <input type="text" id="height" name="height"><br>
            <input type="submit" value="Calculate">
            <input type="reset" value="Reset" onclick="resetForm()">
        </form>
        <div class="error" id="error"></div>
        <div class="result-panel" id="resultPanel">
            <div class="area-result" id="areaResult"></div>
        </div>
    </div>
</body>
</html>
