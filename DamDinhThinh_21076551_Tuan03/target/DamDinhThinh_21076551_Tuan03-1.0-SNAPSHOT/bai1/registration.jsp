<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            width: 450px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"], input[type="email"], input[type="number"], textarea, select {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #bdc3c7;
            border-radius: 6px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        textarea {
            resize: none;
            height: 70px;
        }

        .gender-container {
            margin-bottom: 15px;
        }

        .gender-container label {
            font-weight: normal;
            margin-right: 15px;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
        }

        input[type="submit"], input[type="reset"] {
            background: #3498db;
            border: none;
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 14px;
        }

        input[type="reset"] {
            background: #e74c3c;
        }

        input[type="submit"]:hover {
            background: #2980b9;
        }

        input[type="reset"]:hover {
            background: #c0392b;
        }

        .dob-container {
            display: flex;
            align-items: center;
            gap: 5px;
            margin-bottom: 10px;
        }

        .dob-container input {
            width: 60px;
            text-align: center;
        }
        .dob-container input[name="year"] {
            width: 80px;
        }

    </style>
</head>
<body>
<div class="form-container">
    <h2>Student Registration Form</h2>
    <form action="../registration-form" method="get">
        <label>First Name:</label>
        <input type="text" name="txtFName" />

        <label>Last Name:</label>
        <input type="text" name="txtLName" />

        <label>Date of Birth:</label>
        <div class="dob-container">
            <input type="text" name="day" placeholder="DD" maxlength="2"/>
            <span>/</span>
            <input type="text" name="month" placeholder="MM" maxlength="2"/>
            <span>/</span>
            <input type="text" name="year" placeholder="YYYY" maxlength="4"/>
        </div>


        <label>Email:</label>
        <input type="text" name="txtEmail"/>

        <label>Mobile:</label>
        <input type="text" name="txtMobile"/>

        <label>Gender:</label>
        <div class="gender-container">
            <input type="radio" name="gender" value="Male"/> Male
            <input type="radio" name="gender" value="Female"/> Female
        </div>

        <label>Address:</label>
        <textarea name="txtAddress"></textarea>

        <label>City:</label>
        <input type="text" name="txtCity"/>

        <label>Pin Code:</label>
        <input type="text" name="txtPinCode"/>

        <label>State:</label>
        <input type="text" name="txtState"/>

        <label>Country:</label>
        <input type="text" name="txtCountry" value="Vietnam"/>

        <label>Hobbies:</label>
        <input type="text" name="txtHobbies"/>

        <label>Course:</label>
        <select name="txtCourse">
            <option>BCA</option>
            <option>B.Com</option>
            <option>B.Sc</option>
            <option>B.A</option>
        </select>

        <div class="btn-container">
            <input type="submit" value="Submit"/>
            <input type="reset" value="Reset"/>
        </div>
    </form>
</div>
</body>
</html>
