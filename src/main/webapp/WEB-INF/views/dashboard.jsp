<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Sample user data - replace with real session or backend values
    String username = "Guest User";
    String email = "guest@example.com";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Payment App</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #f4f6f8; /* Light background */
            color: #333; /* Dark text */
            overflow-x: hidden;
        }

        .dashboard-container {
            display: grid;
            grid-template-areas:
                "header header"
                "sidebar main";
            grid-template-columns: 250px 1fr;
            grid-template-rows: 70px 1fr;
            height: 100vh;
        }

        header {
            grid-area: header;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            background: #ffffff;
            border-bottom: 1px solid #ddd;
        }

        header h1 {
            font-size: 24px;
            color: #6a0dad;
        }

        nav {
            grid-area: sidebar;
            background: #ffffff;
            padding: 20px;
            border-right: 1px solid #ddd;
        }

        nav ul {
            list-style: none;
        }

        nav ul li {
            margin-bottom: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #555;
            font-size: 16px;
            display: flex;
            align-items: center;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: #6a0dad;
            transform: translateX(5px);
        }

        nav ul li a i {
            margin-right: 10px;
        }

        main {
            grid-area: main;
            padding: 30px;
            overflow-y: auto;
        }

        .card {
            background: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.05);
            border: 1px solid #eee;
            margin-bottom: 20px;
            transition: 0.3s;
        }

        .card:hover {
            box-shadow: 0px 8px 20px rgba(106, 13, 173, 0.2);
        }

        .card h2 {
            color: #6a0dad;
            margin-bottom: 15px;
            font-size: 20px;
        }

        .card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        table th, table td {
            padding: 12px 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            color: #6a0dad;
            font-weight: 600;
        }

        table td {
            color: #555;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            background: #6a0dad;
            color: white;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
            transition: 0.3s;
            margin-top: 10px;
        }

        .btn:hover {
            background: #50107e;
            transform: scale(1.05);
        }

        @media (max-width: 768px) {
            .dashboard-container {
                grid-template-areas:
                    "header"
                    "main";
                grid-template-columns: 1fr;
                grid-template-rows: auto 1fr;
            }

            nav {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Header -->
        <header>
            <h1><i class="fa-solid fa-credit-card"></i> PaymentApp</h1>
        </header>

        <!-- Sidebar -->
        <nav>
            <ul>
                <li><a href="/dashboard"><i class="fa-solid fa-house"></i> Dashboard</a></li>
                <li><a href="/bankaccount"><i class="fa-solid fa-building-columns"></i> Bank Accounts</a></li>
                <li><a href="/sendmoney"><i class="fa-solid fa-paper-plane"></i> Send Money</a></li>
                <li><a href="/statementdetails"><i class="fa-solid fa-file-invoice"></i> Statements</a></li>
                <li><a href="/login" style="color: #e63946;"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
            </ul>
        </nav>

        <!-- Main Content -->
        <main>
            <!-- Primary Bank Account -->
            <div class="card">
                <h2><i class="fa-solid fa-building-columns"></i> Primary Bank Account</h2>
                <p>Account No: ****1234</p>
                <p>Balance: $5,000</p>
            </div>

            <!-- User Info (Profile) -->
            <div class="card">
                <h2><i class="fa-solid fa-user-circle"></i> Profile</h2>
                <p>Welcome ${user.fullName}</p>
                <p>Phone: ${user.phoneNumber}</p>
                <p>Email: ${user.email}</p>
                <p>Address: ${user.address}</p>
                <form action="dashboard">
                    <a href="addMoney.jsp" class="btn"><i class="fa-solid fa-pen"></i> Edit Profile</a>
                </form>
            </div>

            <!-- Wallet -->
            <div class="card">
                <h2><i class="fa-solid fa-wallet"></i> Wallet</h2>
                <p>Balance: $200</p>
                <a href="addMoney.jsp" class="btn"><i class="fa-solid fa-plus"></i> Add Money</a>
            </div>

            <!-- Recent Transactions -->
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
                        <td style="color: red;">-$1,000</td>
                    </tr>
                    <tr>
                        <td>2025-03-19</td>
                        <td><i class="fa-solid fa-arrow-down"></i> Received from Akhila</td>
                        <td style="color: green;">+$1,300</td>
                    </tr>
                </table>
                <a href="Statementdetails.jsp" class="btn">View Detailed Statement</a>
            </div>
        </main>
    </div>
</body>
</html>
