<%@ page import="java.sql.*, java.util.*" %>
<%@ page session="true" %>
<%
    // Check if customer is logged in
    Integer customerId = (Integer) session.getAttribute("customer_id");
    if (customerId == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Orders - DressStore</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
     body{
        background-image:url("https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-82976.jpg?semt=ais_hybrid&w=740&q=80");
        background-repeat:no-repeat;
        background-size:cover;
        background-position:center;
             }
</style>
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">My Orders History</h2>

    <table class="table table-bordered table-hover table-striped align-middle text-center">
        <thead class="table-primary">
            <tr>
                <th>Order ID</th>
                <th>Total Amount</th>
                <th>Status</th>
                <th>Order Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                try (Connection con = dress.DataBase.getConnection()) {
                    PreparedStatement ps = con.prepareStatement(
                        "SELECT order_id, total_amount, status, order_date FROM orders WHERE customer_id=? ORDER BY order_date DESC");
                    ps.setInt(1, customerId);
                    ResultSet rs = ps.executeQuery();

                    boolean hasOrders = false;
                    while (rs.next()) {
                        hasOrders = true;
            %>
            <tr>
                <td><%= rs.getInt("order_id") %></td>
                <td><%= rs.getBigDecimal("total_amount") %></td>
                <td><%= rs.getString("status") %></td>
                <td><%= rs.getTimestamp("order_date") %></td>
            </tr>
            <%
                    }
                    if (!hasOrders) {
            %>
            <tr>
                <td colspan="4" class="text-center">You have no orders yet.</td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println("<tr><td colspan='4' class='text-danger'>Error: " + e.getMessage() + "</td></tr>");
                }
            %>
        </tbody>
    </table>

    <a href="Dashboard.jsp" class="btn btn-primary mt-3">Back to Dashboard</a>
</div>

</body>
</html>
