<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Bank Account</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
        }

        /* Glassmorphic Container */
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

        /* Headings */
        h2 {
            color: #a855f7;
            font-size: 22px;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Form Fields */
        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: #d8b4fe;
        }

        input {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        input:focus {
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 0 12px rgba(168, 85, 247, 0.6);
            border-color: #a855f7;
        }

        /* Submit Button */
        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(135deg, #7b2cbf, #4c1d95);
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            text-transform: uppercase;
        }

        button:hover {
            background: linear-gradient(135deg, #4c1d95, #7b2cbf);
            box-shadow: 0 0 15px rgba(168, 85, 247, 0.7);
            transform: scale(1.05);
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container {
            animation: fadeIn 0.8s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Bank Account</h2>

        <form action="/accountadd" method="get">
            <div class="form-group">
                <label>Bank Name:</label>
                <input type="text" name="bankName" required>
            </div>

            <div class="form-group">
                <label>Account Number:</label>
                <input type="text" name="accountNumber" required>
            </div>

            <div class="form-group">
                <label>Account Type:</label>
                <input type="text" name="accountType" required>
            </div>

            <div class="form-group">
                <label>IFSC Code:</label>
                <input type="text" name="ifscCode" required>
            </div>

            <div class="form-group">
                <label>Current Balance:</label>
                <input type="number" name="balance" required>
            </div>

            <div class="form-group">
                <label>PIN:</label>
                <input type="password" name="pin" required>
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
