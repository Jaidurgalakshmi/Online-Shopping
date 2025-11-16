<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<%
String sessionId = session.getId();
double grandTotal = 0.0;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/dressshop?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
        "root",
        "Pandu@15032004"
    );

    PreparedStatement ps = conn.prepareStatement(
        "SELECT product_name, price, quantity FROM cart WHERE session_id = ?"
    );
    ps.setString(1, sessionId);
    ResultSet rs = ps.executeQuery();
%>

<div class="container">
    <h2 class="mb-4">🛒 Your Shopping Cart</h2>

    <table class="table table-bordered text-center">
        <thead class="table-dark">
            <tr>
                <th>Product Name</th>
                <th>Price (₹)</th>
                <th>Quantity</th>
                <th>Total (₹)</th>
            </tr>
        </thead>
        <tbody>
        <%
            while (rs.next()) {
                String productName = rs.getString("product_name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                double total = price * quantity;
                grandTotal += total;
        %>
            <tr>
                <td><%= productName %></td>
                <td><%= String.format("%.2f", price) %></td>
                <td><%= quantity %></td>
                <td><%= String.format("%.2f", total) %></td>
            </tr>
        <%
            }
        %>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3" class="text-end"><strong>Grand Total:</strong></td>
                <td><strong><%= String.format("%.2f", grandTotal) %></strong></td>
            </tr>
        </tfoot>
    </table>

    <a href="Dashboard.jsp" class="btn btn-primary">Continue Shopping</a>
    <a href=OrderConfirmed.html><button class="btn btn-primary"style="float:right">Pay Now</button></a>
</div>

<%
    rs.close();
    ps.close();
    conn.close();
} catch (Exception e) {
    out.println("<div class='alert alert-danger mt-3'>Error loading cart: " + e.getMessage() + "</div>");
}
%>


</body>
</html>
