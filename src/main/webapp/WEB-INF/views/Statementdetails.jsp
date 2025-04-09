<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Statement Request</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            background: linear-gradient(135deg, #0d0d0d, #290a37);
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }
        
        /* Glassmorphic Outer Container */
        .container {
            width: 450px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.15);
        }

        .container:hover {
            box-shadow: 0px 10px 40px rgba(128, 0, 128, 0.5);
            transform: translateY(-5px);
        }

        h2 {
            color: #bb86fc;
            margin-bottom: 20px;
            font-size: 26px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            display: block;
            text-align: left;
            margin: 10px 0 5px;
        }

        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        input:focus {
            outline: 2px solid #bb86fc;
        }

        .checkbox-group {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 10px 0;
        }

        .checkbox-group label {
            display: flex;
            align-items: center;
            font-size: 14px;
        }

        .checkbox-group input {
            margin-right: 5px;
        }

        /* Button */
        .generate-btn {
            width: 100%;
            background: #bb86fc;
            color: black;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background 0.3s, transform 0.3s;
        }

        .generate-btn:hover {
            background: #9c67e3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fa-solid fa-file-invoice-dollar"></i> Statement Request</h2>
        <form action="GenerateStatementServlet" method="post">
            <label>Start Date:</label>
            <input type="date" name="startDate" required>

            <label>End Date:</label>
            <input type="date" name="endDate" required>

            <div class="checkbox-group">
                <label><input type="checkbox" name="transactionType" value="all" checked> ALL</label>
                <label><input type="checkbox" name="transactionType" value="credit"> Credit Txns</label>
                <label><input type="checkbox" name="transactionType" value="debit"> Debit Txns</label>
                <label><input type="checkbox" name="transactionType" value="wallet"> Wallet Txns</label>
                <label><input type="checkbox" name="transactionType" value="bank"> Bank Txns</label>
            </div>

            <button type="submit" class="generate-btn">Generate</button>
        </form>
    </div>
</body>
</html>
