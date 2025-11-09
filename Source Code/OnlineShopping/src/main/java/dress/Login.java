package dress;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DataBase.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM customers WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("customer_id", rs.getInt("customer_id"));
                session.setAttribute("name", rs.getString("name"));
                response.sendRedirect("Dashboard.jsp");
            } else {
                response.sendRedirect("Login.jsp?error=invalid");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
