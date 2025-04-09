<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile - Payment App</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .edit-profile-container {
            background: rgba(255, 255, 255, 0.08);
            padding: 40px 30px;
            border-radius: 20px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            width: 400px;
            animation: fadeIn 1s ease-in-out;
        }

        .edit-profile-container h2 {
            text-align: center;
            color: #a855f7;
            margin-bottom: 20px;
            font-size: 28px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input {
            padding: 12px 15px;
            margin-bottom: 15px;
            border: none;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 14px;
            outline: none;
            transition: background 0.3s;
        }

        input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        input:focus {
            background: rgba(255, 255, 255, 0.2);
        }

        .btn {
            background: linear-gradient(135deg, #7b2cbf, #4c1d95);
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .btn:hover {
            background: linear-gradient(135deg, #4c1d95, #7b2cbf);
            box-shadow: 0 0 15px rgba(168, 85, 247, 0.7);
            transform: scale(1.05);
        }

        .back-link {
            margin-top: 15px;
            text-align: center;
        }

        .back-link a {
            color: #a855f7;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
        }

        .back-link a:hover {
            color: #d8b4fe;
        }

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
    <div class="edit-profile-container">
        <h2><a href="/edit"><i class="fa-solid fa-user-pen"></i> Edit Profile</h2>
        <form action="/edit" method="Post">
            <input type="text" name="FullName" placeholder="Full Name" required>
            <input type="text" name="phoneNumber" placeholder="Phone Number" required>
            <input type="email" name="Email" placeholder="Email Address" required>
            <input type="text" name="Address" placeholder="Address" required>
            <input type="text" name="UserName" placeholder="Username" required>       
            <input type="password" name="Password" placeholder="Password" required>
            <button type="submit" class="btn"><i class="fa-solid fa-floppy-disk"></i> Save Changes</button>
        </form>
        <div class="back-link">
            <a href="/dashboard"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
