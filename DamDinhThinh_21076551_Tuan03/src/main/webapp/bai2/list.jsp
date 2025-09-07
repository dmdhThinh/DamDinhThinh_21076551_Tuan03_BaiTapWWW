<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="fit.iuh.se.bai2.model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách User</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        table { border-collapse: collapse; width: 80%; margin: auto; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: center; }
        th { background: #3498db; color: white; }
        tr:nth-child(even) { background: #f2f2f2; }
    </style>
</head>
<body>
<h2 style="text-align:center;">Danh sách tài khoản</h2>
<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Birthday</th>
        <th>Gender</th>
    </tr>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        if(users != null){
            for(User u : users){
    %>
    <tr>
        <td><%= u.getFirstName() %></td>
        <td><%= u.getLastName() %></td>
        <td><%= u.getEmail() %></td>
        <td><%= u.getBirthday() %></td>
        <td><%= u.getGender() %></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
