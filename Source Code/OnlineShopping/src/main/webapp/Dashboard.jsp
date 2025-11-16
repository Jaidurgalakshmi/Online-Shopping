<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DressStore Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
    background: #f3f6f9;
    font-family: 'Segoe UI', sans-serif;
    background-image:url("https://img.freepik.com/free-photo/colorful-shopping-bags_23-2147652050.jpg?semt=ais_hybrid&w=740&q=80");
    background-repeat:no-repeat;
    background-size:cover;
    background-position:center;
    }

.navbar {
    background-color: #0000FF !important;
}

.navbar-brand, .nav-link {
    color: #fff !important;
}

h2 {
    font-weight: 700;
    color: #333;

.card {
    border: none;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 5px 20px rgba(0,0,0,0.15);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
}

.card img {
    border-bottom: 1px solid #ddd;
}

.card-body {
    padding: 25px;
}

.btn {
    border-radius: 30px;
    font-weight: 500;
    letter-spacing: 0.5px;
}

footer {
    margin-top: 80px;
    background-color: #fff;
    padding: 15px 0;
    color: #777;
    font-size: 15px;
}
</style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid px-4">
    <a class="navbar-brand fw-bold" href="#">DressStore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link active" href="#">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="Cart.jsp">View Cart</a></li>
        <li class="nav-item"><a class="nav-link" href="MyOrders.jsp">My Orders</a></li>
        <li class="nav-item"><a class="nav-link text-danger" href="logout" onclick="return confirmLogout()">Logout</a></li>
<script>
  function confirmLogout() {
    return confirm("Are you sure you want to logout?");
  }
</script>
        
      </ul>
    </div>
  </div>
</nav>


<div class="container mt-5">
  <div class="text-center mb-5">
    <h2>Welcome to <span class="text-primary">DressStore</span></h2>
    <p class="text-muted">Discover our premium collection crafted just for you</p>
  </div>

  <div class="row g-5">

    
    <div class="col-lg-6 col-md-6">
      <div class="card w-100">
        <img src="https://i.pinimg.com/1200x/66/99/79/66997924cd7c6dfe5972484162dcba94.jpg" alt="Sarees" style="height:300px">
       
        <div class="card-body text-center">
          <h4 class="fw-bold">Women Sarees</h4>
          <p class="text-muted">Embrace the grace of tradition with our exquisite sarees, woven from premium fabrics and adorned with timeless beauty.</p>
          <a href="Sarees.jsp" class="btn btn-primary px-4 py-2">Shop Sarees</a>
        </div>
      </div>
    </div>

    
    <div class="col-lg-6 col-md-6">
      <div class="card w-100">
        <img src="https://i.pinimg.com/1200x/49/e7/fb/49e7fbee886a9b0b968ee068b497e1c5.jpg" alt="Kurtas"style="height:300px">
        
        <div class="card-body text-center">
          <h4 class="fw-bold">Kurtis</h4>
          <p class="text-muted">Discover everyday elegance with our soft, stylish kurtas — perfect for casual wear or festive occasions.</p>
          <a href="Kurtis.jsp" class="btn btn-primary px-4 py-2">Shop Kurtis</a>
        </div>
      </div>
    </div>

    
    <div class="col-lg-6 col-md-6">
      <div class="card w-100">
        <img src="https://i.pinimg.com/736x/d7/78/f9/d778f9ec5cc979fb5c61e29180bb9ed9.jpg" alt="Lehengas" style="height:300px">
        <div class="card-body text-center">
          <h4 class="fw-bold">Lehengas</h4>
          <p class="text-muted">Step into the spotlight with our designer lehengas — perfect for weddings, parties, and grand celebrations.</p>
          <a href="Lehangas.html" class="btn btn-primary text-white px-4 py-2">Shop Lehengas</a>
        </div>
      </div>
    </div>

    
    <div class="col-lg-6 col-md-6">
      <div class="card w-100">
        <img src="https://i.pinimg.com/736x/a4/cd/9b/a4cd9b032fe32b3d1d06c1dfdf946bef.jpg" alt="Frocks" style="height:300px">
        <div class="card-body text-center">
          <h4 class="fw-bold">Long Frocks</h4>
          <p class="text-muted">Elegant and flowy long frocks that combine comfort with class — perfect for evening outings, parties, and daily elegance.</p>
          <a href="Frocks.jsp" class="btn btn-primary px-4 py-2">Shop Long Frocks</a>
        </div>
      </div>
    </div>
  </div>
</div>


<footer class="text-center">
  
</footer>
</body>
</html>
