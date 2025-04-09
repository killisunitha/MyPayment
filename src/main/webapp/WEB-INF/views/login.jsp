<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Payment App</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
        }

        /* Navbar Styling */
        nav {
            background: rgba(255, 255, 255, 0.05);
            padding: 20px 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            backdrop-filter: blur(12px);
        }
        nav .nav-container {
            max-width: 1300px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 30px;
        }
        nav .brand {
    font-size: 36px;
    font-weight: 800;
    color: #a855f7;
    display: flex;
    align-items:none;
    gap: 10px; /* Space between icon and text */
}

/* Adjust icon size */
nav .brand i {
    font-size: 40px;
    
}
        
        nav ul {
            list-style: none;
            display: flex;
            gap: 40px;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
            font-weight: 600;
            font-size: 16px;
            transition: 0.3s;
        }
        nav ul li a:hover {
            color: #d8b4fe;
        }

       /* Glassmorphic Container */
        .container {
            width: 400px;
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
            color: #a855f7; /* Purple Neon */
            font-size: 22px;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Input Fields */
        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
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

        /* Button */
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

        /* Links */
        a {
            display: block;
            margin-top: 12px;
            color: #a855f7;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            transition: 0.3s;
        }

        a:hover {
            text-decoration: underline;
            color: #d8b4fe;
        }

        /* Static Info */
        .info {
            font-size: 13px;
            margin-top: 15px;
            color: rgba(255, 255, 255, 0.8);
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
    <nav>
        <div class="nav-container">
            <div class="brand"><i class="fa-solid fa-credit-card"></i>Payment App</div>
            <ul>
                <li><a href="/login">Home</a></li>
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Sign In</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <h2>Welcome to PaymentApp</h2>
       <form action="/login" method="Post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="userName" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
          <button type="submit">Login</button>
    </form>
        <a href="/register">New User? Register Here</a>
        <p class="info">Fast & Secure Payments at Your Fingertips.</p>
    </div>
</body>
</html>
