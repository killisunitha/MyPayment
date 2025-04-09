<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Payment App</title>
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
            overflow: hidden;
        }
        
        /* Layout */
        .dashboard-container {
            display: grid;
            grid-template-areas:
                "header header"
                "sidebar main";
            grid-template-columns: 250px 1fr;
            grid-template-rows: 70px 1fr;
            height: 100vh;
        }
        
        /* Header */
        header {
            grid-area: header;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(8px);
            animation: fadeIn 1s ease-in-out;
        }
        
        header h1 {
            font-size: 24px;
            color: #a855f7;
        }
        
        header .profile {
            font-size: 20px;
        }
        
        /* Sidebar Navigation */
        nav {
            grid-area: sidebar;
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            backdrop-filter: blur(12px);
            border-right: 1px solid rgba(255, 255, 255, 0.15);
        }
        
        nav ul {
            list-style: none;
        }
        
        nav ul li {
            margin-bottom: 20px;
        }
        
        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            display: flex;
            align-items: center;
            transition: 0.3s;
        }
        
        nav ul li a:hover {
            color: #d8b4fe;
            transform: translateX(5px);
        }
        
        nav ul li a i {
            margin-right: 10px;
            font-size: 18px;
        }
        
        /* Main Content */
        main {
            grid-area: main;
            padding: 20px;
            overflow-y: auto;
        }
        
        /* Glassmorphism Cards */
        .card {
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            border-radius: 15px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            margin-bottom: 20px;
            animation: fadeIn 0.8s ease-in-out;
            transition: transform 0.3s;
        }
        
        .card:hover {
            transform: scale(1.02);
            box-shadow: 0px 10px 40px rgba(128, 0, 128, 0.5);
        }
        
        .card h2 {
            color: #a855f7;
            margin-bottom: 10px;
            font-size: 20px;
        }
        
        .card p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.9);
        }
        
        /* Recent Transactions Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        
        table th, table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        
        table th {
            color: #a855f7;
        }
        
        table td {
            color: rgba(255, 255, 255, 0.8);
        }
        
        /* Buttons */
        .btn {
            display: inline-block;
            padding: 10px 15px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(135deg, #7b2cbf, #4c1d95);
            color: white;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
            transition: 0.3s;
            margin-top: 10px;
        }
        
        .btn:hover {
            background: linear-gradient(135deg, #4c1d95, #7b2cbf);
            box-shadow: 0 0 15px rgba(168, 85, 247, 0.7);
            transform: scale(1.05);
        }

        /* Fade-in Animation */
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
    </style>
</head>
<body>
    <!-- Header -->
<header>
    <h1><i class="fa-solid fa-credit-card"></i> PaymentApp</h1>
    <div class="profile">
        <i class="fa-solid fa-user-circle"></i> Sunitha
        <a href="/edit" class="btn" style="margin-left: 15px; padding: 8px 12px; font-size: 12px;">
            <i class="fa-solid fa-pen-to-square"></i> Edit Profile
        </a>
    </div>
</header>

        
        <!-- Sidebar Navigation -->
        <nav>
            <ul>
                <li><a href="/dashboard"><i class="fa-solid fa-house"></i> Dashboard</a></li>
                <li><a href="/bankaccount"><i class="fa-solid fa-building-columns"></i> Bank Accounts</a></li>
                <li><a href="/sendmoney"><i class="fa-solid fa-paper-plane"></i> Send Money</a></li>
                <li><a href="/statementdetails"><i class="fa-solid fa-file-invoice"></i> Statements</a></li>
                <li><a href="/logout" style="color: #f87171;"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
            </ul>
        </nav>
        
        <!-- Main Content -->
        <main>
          <!-- Primary Bank Account Card -->
            <div class="card">
                <h2><i class="fa-solid fa-building-columns"></i> Primary Bank Account</h2>
                <p>Account No: ****1234</p>
                <p>Balance: $5,000</p>
            </div>
             <!-- Wallet Card -->
            <div class="card">
                <h2><i class="fa-solid fa-wallet"></i> Wallet</h2>
                <p>Balance: $200</p>
                <a href="addMoney.jsp" class="btn"><i class="fa-solid fa-plus"></i> Add Money</a>
            </div>
            
            <!-- Recent Transactions Card -->
            <div class="card">
                <h2><i class="fa-solid fa-clock-rotate-left"></i> Recent Transactions</h2>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Description</th>
                        <th>Amount</th>
                    </tr>
                    <tr>
                        <td>2025-03-20</td>
                        <td><i class="fa-solid fa-arrow-up"></i> Sent to Hema</td>
                        <td>-$1,000</td>
                    </tr>
                    <tr>
                        <td>2025-03-19</td>
                        <td><i class="fa-solid fa-arrow-down"></i> Received from Akhila</td>
                        <td>+$1,300</td>
                    </tr>
                </table>
                <a href="Statementdetails.jsp" class="btn">View Detailed Statement</a>
            </div>
        </main>
    </div>
</body>
</html>
