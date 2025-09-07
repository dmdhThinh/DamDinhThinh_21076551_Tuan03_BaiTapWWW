package fit.iuh.se.bai1;

/**
 * Package: fit.iuh.se.bai1
 * Author: thinh
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("txtFName");
        String lastName = request.getParameter("txtLName");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String email = request.getParameter("txtEmail");
        String mobile = request.getParameter("txtMobile");
        String gender = request.getParameter("gender");
        String address = request.getParameter("txtAddress");
        String city = request.getParameter("txtCity");
        String pinCode = request.getParameter("txtPinCode");
        String state = request.getParameter("txtState");
        String country = request.getParameter("txtCountry");
        String hobbies = request.getParameter("txtHobbies");
        String course = request.getParameter("txtCourse");

        String birthday = day + "/" + month + "/" + year;

        // Tạo đối tượng Student
        Student student = new Student(firstName, lastName, email, mobile, gender,
                address, city, pinCode, state, country, hobbies, birthday, course);

        // Gửi sang JSP
        request.setAttribute("student", student);
        request.getRequestDispatcher("result-form.jsp").forward(request, response);
    }
}

