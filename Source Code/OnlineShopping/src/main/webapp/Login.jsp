<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Login</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="bg-primary  bg-gradient min-vh-100 d-flex justify-content-center align-items-center">

<div class="container">
  <div class="card bg-light bg-opacity-25 border-0 shadow-lg p-4 mx-auto" style="max-width: 400px;">
    <div class="card-body">
      <h3 class="text-center text-white mb-4 fw-bold">Customer Login</h3>

      <form action="login" method="post" class="text-white">
        <div class="mb-3">
          <label class="form-label">Email</label>
          <input type="email" name="email" placeholder="Enter Email" 
                 class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="mb-4">
          <label class="form-label">Password</label>
          <input type="password" name="password" placeholder="Enter Password" 
                 class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="d-grid">
          <button type="submit" class="btn btn-success btn-lg">Login</button>
        </div>
      </form>

      <p class="text-center text-white-50 mt-3">
        Don't have an account? 
        <a href="Register.jsp" class="text-white text-decoration-none fw-semibold">Register here</a>
      </p>
    </div>
  </div>
</div>

</body>
</html>
