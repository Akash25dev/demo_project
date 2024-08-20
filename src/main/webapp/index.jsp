<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Basic Arithmetic Operations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .calculator {
            max-width: 300px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .calculator input, .calculator button {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 16px;
        }
        .calculator button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        .calculator button:hover {
            background-color: #0056b3;
        }
        .result {
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <h2>Basic Calculator</h2>
        <input type="number" id="num1" placeholder="Enter first number">
        <input type="number" id="num2" placeholder="Enter second number">
        
        <button onclick="calculate('add')">Add</button>
        <button onclick="calculate('subtract')">Subtract</button>
        <button onclick="calculate('multiply')">Multiply</button>
        <button onclick="calculate('divide')">Divide</button>
        
        <div class="result" id="result"></div>
    </div>

    <script>
        function calculate(operation) {
            const num1 = parseFloat(document.getElementById('num1').value);
            const num2 = parseFloat(document.getElementById('num2').value);
            let result;

            if (isNaN(num1) || isNaN(num2)) {
                result = 'Please enter valid numbers in both fields.';
            } else {
                switch (operation) {
                    case 'add':
                        result = num1 + num2;
                        break;
                    case 'subtract':
                        result = num1 - num2;
                        break;
                    case 'multiply':
                        result = num1 * num2;
                        break;
                    case 'divide':
                        if (num2 === 0) {
                            result = 'Cannot divide by zero.';
                        } else {
                            result = num1 / num2;
                        }
                        break;
                    default:
                        result = 'Unknown operation.';
                }
            }

            document.getElementById('result').innerText = 'Result: ' + result;
        }
    </script>
</body>
</html>

