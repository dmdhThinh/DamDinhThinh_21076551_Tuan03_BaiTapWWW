package fit.iuh.se.bai2.controller;

/**
 * Package: fit.iuh.se.bai2.controller
 * Author: thinh
 */

import fit.iuh.se.bai2.model.User;
import fit.iuh.se.bai2.repository.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class UserController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");

        String birthday = day + "/" + month + "/" + year;

        // Tạo User
        User user = new User(firstName, lastName, email, password, birthday, gender);

        // Lưu vào Repository
        UserRepository.addUser(user);

        // Gửi danh sách user sang list.jsp
        request.setAttribute("users", UserRepository.getAllUsers());
        request.getRequestDispatcher("bai2/list.jsp").forward(request, response);
    }
}

