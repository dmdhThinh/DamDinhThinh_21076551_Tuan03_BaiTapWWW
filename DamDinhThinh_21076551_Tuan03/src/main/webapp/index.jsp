<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chính</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .menu {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }
        a {
            display: block;
            margin: 12px 0;
            font-size: 18px;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #2980b9;
        }
    </style>
</head>
<body>
<div class="menu">
    <h2>Chào mừng bạn đến với Project</h2>
    <a href="bai1/registration.jsp">👉 Bài 1: Form đăng ký sinh viên</a>
    <a href="bai2/register.jsp">👉 Bài 2: Đăng ký tài khoản (MVC)</a>
</div>
</body>
</html>
