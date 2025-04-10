<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Accounts</title>
    <!-- Font Awesome for icons -->
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
            width: 800px;
            height: 500px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.15);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .container:hover {
            box-shadow: 0px 10px 40px rgba(128, 0, 128, 0.5);
            transform: translateY(-5px);
        }
        
        /* Heading */
        h2 {
            color: #a855f7;
            margin-bottom: 30px;
            font-size: 26px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        /* Bank Accounts Container */
        .bank-accounts-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 100%;
        }
        
        /* Glassmorphic Bank Box */
        .bank-box {
            width: 250px;
            padding: 20px;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.15);
            text-align: left;
        }

        .bank-box:hover {
            box-shadow: 0px 10px 40px rgba(128, 0, 128, 0.5);
            transform: translateY(-5px);
        }
        
        .bank-box p {
            color: white;
            margin: 5px 0;
            font-size: 14px;
        }
        
        .edit-link {
            color: #66bb6a;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            transition: 0.3s;
        }
        
        .edit-link:hover {
            text-decoration: underline;
            color: #4caf50;
        }
        
        /* Add Bank Box */
        .add-box {
            width: 120px;
            height: 120px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            box-shadow: 0px 5px 20px rgba(128, 0, 128, 0.3);
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.15);
        }
        
        .add-box:hover {
            transform: scale(1.05);
        }
        
        .add-box a {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60px;
            height: 60px;
            background: #66bb6a;
            color: white;
            font-size: 30px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 50%;
            transition: background 0.3s, transform 0.3s;
        }
        
        .add-box a:hover {
            background: #4caf50;
            transform: rotate(90deg);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fa-solid fa-building-columns"></i> Bank Accounts</h2>
        <div class="bank-accounts-container">
            <!-- Example Bank Box 1 -->
            <div class="bank-box">
                <p>BANK NAME:STATE BANK</p>
                <p>Bank Acct No: 1234</p>
                <p>Balance:</p>
                <p>IFSC Code:8095</p>
                <p>Branch:MURALINAGAR</p>
                <a href="#" class="edit-link">Edit</a>
            </div>
            <!-- Example Bank Box 2 -->
            <div class="bank-box">
                <p>BANK NAME</p>
                <p>Bank Acct No: 5678</p>
                <p>Balance:</p>
                <p>IFSC Code:</p>
                <p>Branch:</p>
                <a href="#" class="edit-link">Edit</a>
            </div>
            <!-- Example Bank Box 3 -->
            <div class="bank-box">
                <p>BANK NAME</p>
                <p>Bank Acct No: 9012</p>
                <p>Balance:</p>
                <p>IFSC Code:</p>
                <p>Branch:</p>
                <a href="#" class="edit-link">Edit</a>
            </div>
            <!-- Add Bank Account Box -->
            <div class="add-box">
            <form> <a href="/accountadd">+</a></form>
              
            </div>
        </div>
    </div>
</body>
</html>
