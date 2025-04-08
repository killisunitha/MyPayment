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
        
        /* Layout: Grid for Header + Sidebar + Main */
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
        }
        
        header h1 {
            font-size: 24px;
            color: #a855f7; /* Purple Neon */
        }
        
        header .profile {
            font-size: 20px;
        }
        
        /* Sidebar */
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
            transition: color 0.3s;
        }
        
        nav ul li a i {
            margin-right: 10px;
            font-size: 18px;
        }
        
        nav ul li a:hover {
            color: #d8b4fe;
        }
        
        /* Main Content Area */
        main {
            grid-area: main;
            padding: 20px;
            overflow-y: auto;
        }
        
        /* Glassmorphism Card Style */
        .card {
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            border-radius: 15px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            margin-bottom: 20px;
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
        }
        
        /* Bank Accounts Section */
        .bank-accounts-container {
            display: flex;
            gap: 15px;
            flex-wrap: wrap; /* Wrap for smaller screens */
            justify-content: flex-start;
            margin-top: 10px;
        }
        
        .bank-box {
            border: 2px solid   #a855f7;
            padding: 10px;
            width: 160px;
            border-radius: 5px;
            text-align: left;
            color: #fff;
        }
        
        .bank-box p {
            color: white;
            margin: 5px 0;
        }
        
        .edit-link {
            color: darkgreen;
            text-decoration: none;
            font-weight: bold;
        }
        
        .edit-link:hover {
            text-decoration: underline;
        }
        
        /* Add Bank Box */
        .add-box {
            border: 2px solid darkgreen;
            width: 80px;
            height: 100px;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .add-box a {
            color: darkgreen;
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
        }
        
        .add-box a:hover {
            text-decoration: underline;
        }
        
        /* Table for Recent Transactions */
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
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Header -->
        <header>
            <h1><i class="fa-solid fa-credit-card"></i> PaymentApp</h1>
            <div class="profile">
                <i class="fa-solid fa-user-circle"></i> Sunitha 
            </div>
        </header>
        
        <!-- Sidebar Navigation -->
        <nav>
            <ul>
                <li><a href="dashboard.jsp"><i class="fa-solid fa-house"></i> Dashboard</a></li>
                <li><a href="BankAccounts.jsp"><i class="fa-solid fa-building-columns"></i> Bank Accounts</a></li>
                <li><a href="sendMoney.jsp"><i class="fa-solid fa-paper-plane"></i> Send Money</a></li>
                <li><a href="statement.jsp"><i class="fa-solid fa-file-invoice"></i> Statements</a></li>
                <li><a href="settings.jsp"><i class="fa-solid fa-gear"></i> Settings</a></li>
                <li><a href="logout.jsp" style="color: #f87171;"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
            </ul>
        </nav>
        
        <!-- Main Content -->
        <main>
            <!-- Wallet Card -->
            <div class="card">
                <h2><i class="fa-solid fa-wallet"></i> Wallet</h2>
                <p>Balance: $200</p>
                <a href="addMoney.jsp" class="btn"><i class="fa-solid fa-plus"></i> Add Money</a>
            </div>
            
            <!-- Primary Bank Account Card -->
            <div class="card">
                <h2><i class="fa-solid fa-building-columns"></i> Primary Bank Account</h2>
                <p>Account No: ****1234</p>
                <p>Balance: $5,000</p>
            </div>
            
            <!-- Bank Accounts Card -->
            <div class="card">
                <h2><i class="fa-solid fa-building-columns"></i> Bank Accounts</h2>
                <div class="bank-accounts-container">
                    <!-- Example Bank Box 1 -->
                    <div class="bank-box">
                        <p>BANK NAME</p>
                        <p>Bank Acct No: 1234</p>
                        <p>Balance:</p>
                        <p>IFSC Code:</p>
                        <p>Branch:</p>
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
                        <a href="addAccount.jsp"><button>add</button></a>
                    </div>
                </div>
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
                        <td>2025-03-18</td>
                        <td><i class="fa-solid fa-arrow-up"></i> Sent to John</td>
                        <td>-$1,000</td>
                    </tr>
                    <tr>
                        <td>2025-03-17</td>
                        <td><i class="fa-solid fa-arrow-down"></i> Received from Mary</td>
                        <td>+$1,300</td>
                    </tr>
                    <tr>
                        <td>2025-03-16</td>
                        <td><i class="fa-solid fa-arrow-up"></i> Sent to #78877</td>
                        <td>-$120</td>
                    </tr>
                </table>
                <a href="detailedStatement.jsp" class="btn">View Detailed Statement</a>
            </div>
        </main>
    </div>
</body>
</html>