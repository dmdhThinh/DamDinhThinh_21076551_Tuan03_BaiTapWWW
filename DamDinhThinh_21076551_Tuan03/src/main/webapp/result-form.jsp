<%@ page import="fit.iuh.se.bai1.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h2>Student Registration Result</h2>
<%
    Student student = (Student) request.getAttribute("student");
    if(student != null){
%>
First Name: <%= student.getFirstName() %><br/>
Last Name: <%= student.getLastName() %><br/>
Email: <%= student.getEmail() %><br/>
Gender: <%= student.getGender() %><br/>
Birthday: <%= student.getBirthday() %><br/>
Mobile: <%= student.getMobileNumber() %><br/>
Address: <%= student.getAddress() %><br/>
City: <%= student.getCity() %><br/>
State: <%= student.getState() %><br/>
Country: <%= student.getCountry() %><br/>
Hobbies: <%= student.getHobbies() %><br/>
Course: <%= student.getCourse() %><br/>
<%
    }
%>
</body>
</html>
