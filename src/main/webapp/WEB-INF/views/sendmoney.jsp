<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Send Money</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Background */
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37); /* Black to Dark Purple */
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container */
        .container {
            width: 400px;
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
            text-align: center;
        }

        h2 {
            color: #bb86fc;
            margin-bottom: 20px;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            display: block;
            text-align: left;
            margin: 10px 0 5px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        input:focus, select:focus {
            outline: 2px solid #bb86fc;
        }

        .checkbox {
            display: flex;
            justify-content: space-between;
            margin: 10px 0;
        }

        .checkbox label {
            display: flex;
            align-items: center;
        }

        .checkbox input {
            margin-right: 5px;
            color:violet;
        }

        /* Button */
        .send-btn {
            width: 100%;
            background: #bb86fc;
            color: black;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
        }

        .send-btn:hover {
            background: #9c67e3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Send Money</h2>
        <form action="SendMoneyServlet" method="post">
            <label>Amount to Send:</label>
            <input type="number" name="amount" required>

            <label>From:</label>
            <select name="fromAccount" required>
                <option value="">Select Account</option>
                <option value="Bank Account">Bank Account</option>
                <option value="Wallet">Wallet</option>
            </select>

            <div class="checkbox">
                <label><input type="checkbox" name="sendTo" value="account" checked> To Account</label>
                <label><input type="checkbox" name="sendTo" value="wallet"> To Wallet</label>
            </div>

            <label>Recipient Details:</label>
            <input type="text" name="recipient" required>

            <button type="submit" class="send-btn">Send</button>
        </form>
    </div>
</body>
</html>
