<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Registration</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="bg-primary text-black bg-gradient min-vh-100 d-flex justify-content-center align-items-center">

<div class="container">
  <div class="card bg-light bg-opacity-25 border-0 shadow-lg p-4 mx-auto" style="max-width: 500px;">
    <div class="card-body">
      <h3 class="text-center text-white mb-4 fw-bold">Customer Registration</h3>

      <form action="register" method="post" class="text-white">
        <div class="mb-3">
          <label class="form-label">Name</label>
          <input type="text" name="name" placeholder="Customer Name" class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="mb-3">
          <label class="form-label">Email</label>
          <input type="email" name="email" placeholder="Email" class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="mb-3">
          <label class="form-label">Password</label>
          <input type="password" name="password" placeholder="Password" class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="mb-3">
          <label class="form-label">Phone</label>
          <input type="text" name="phone" placeholder="Phone Number" class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="mb-4">
          <label class="form-label">Address</label>
          <input type="text" name="address" placeholder="Address" class="form-control bg-transparent text-white border-white" required>
        </div>

        <div class="d-flex justify-content-between">
          <button type="submit" class="btn btn-success px-4">Register</button>
          <button type="reset" class="btn btn-danger px-4">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>
