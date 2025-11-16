package dress;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet("/addtocart")
public class AddToCart extends HttpServlet {

    private final String dbURL = "jdbc:mysql://localhost:3306/dressshop?useSSL=false&serverTimezone=UTC";
    private final String dbUser = "root";
    private final String dbPass = "Pandu@15032004";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Read values from form
        String productName = request.getParameter("product_name");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");

        System.out.println("🔍 Received from JSP:");
        System.out.println("product_name = " + productName);
        System.out.println("price = " + priceStr);
        System.out.println("quantity = " + quantityStr);

        // Validate Missing values
        if (productName == null || productName.trim().isEmpty()
                || priceStr == null || priceStr.trim().isEmpty()
                || quantityStr == null || quantityStr.trim().isEmpty()) {

            System.out.println("❌ ERROR: Missing product details from form!");
            response.sendRedirect("error.jsp");
            return;
        }

        double price = 0.0;
        int quantity = 1;

        try {
            price = Double.parseDouble(priceStr);
            quantity = Integer.parseInt(quantityStr);
        } catch (NumberFormatException e) {
            System.out.println("❌ ERROR: Invalid price or quantity format!");
        }

        // Session
        HttpSession session = request.getSession();
        String sessionId = session.getId();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO cart (session_id, product_name, price, quantity) VALUES (?, ?, ?, ?)"
            );

            ps.setString(1, sessionId);
            ps.setString(2, productName);
            ps.setDouble(3, price);
            ps.setInt(4, quantity);

            ps.executeUpdate();

            ps.close();
            conn.close();

            System.out.println("✅ ITEM ADDED TO CART SUCCESSFULLY!");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("❌ DB ERROR while adding to cart!");
        }

        response.sendRedirect("Cart.jsp");
    }
}
