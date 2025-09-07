<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .form-container {
            width: 400px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }
        h2 { text-align: center; margin-bottom: 20px; color: #2c3e50; }
        input, select {
            width: 100%; padding: 8px; margin: 6px 0;
            border: 1px solid #ccc; border-radius: 5px;
        }
        .gender-container {
            display: flex;
            justify-content: space-around;
            margin: 10px 0;
        }

        .gender-container label {
            display: flex;
            align-items: center;
            gap: 5px;
            font-weight: normal;
        }

    </style>
</head>
<body>
<div class="form-container">
    <h2>User Registration Form</h2>
    <form action="../user" method="post">
        <input type="text" name="firstName" placeholder="First Name" required/>
        <input type="text" name="lastName" placeholder="Last Name" required/>
        <input type="email" name="email" placeholder="Your Email" required/>
        <input type="email" name="reEmail" placeholder="Re-enter Email" required/>
        <input type="password" name="password" placeholder="New Password" required/>

        <label>Birthday:</label>
        <select name="month">
            <option>01</option><option>02</option><option>03</option>
            <option>04</option><option>05</option><option>06</option>
            <option>07</option><option>08</option><option>09</option>
            <option>10</option><option>11</option><option>12</option>
        </select>
        <input type="text" name="day" placeholder="Day" size="2" maxlength="2"/>
        <input type="text" name="year" placeholder="Year" size="4" maxlength="4"/>

        <div class="gender-container">
            <label><input type="radio" name="gender" value="Female" required/> Female</label>
            <label><input type="radio" name="gender" value="Male"/> Male</label>
        </div>


        <button type="submit" class="btn">Sign Up</button>
    </form>
</div>
</body>
</html>
