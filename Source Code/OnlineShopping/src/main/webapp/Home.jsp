<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DressStore - Home</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
    font-family: 'Segoe UI', sans-serif;
    background-color: #f8f9fa;
}

.navbar {
    background-color: #0000FF !important;
}

.navbar-brand, .nav-link {
    color: white !important;
}

.carousel-inner img {
    height: 85vh;
    object-fit: cover;
}

.carousel-caption {
    background: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
}

.btn-shop {
    background-color: #ff4081;
    border: none;
    color: white;
    border-radius: 25px;
    padding: 10px 25px;
    transition: background 0.3s ease;
}
.btn-shop:hover {
    background-color: #e73370;
}

section {
    padding: 60px 0;
}
.carousel-inner img {
    width:100%;
    height: 90vh;
}

</style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="Home.jsp">DressStore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link active" href="Home.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a></li>
        <li class="nav-item"><a class="nav-link" href="Register.jsp">Register</a></li>
      </ul>
    </div>
  </div>
</nav>


<div id="homeCarousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="2"></button>
  </div>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://urbanjaipur.com/wp-content/uploads/2023/12/embroidered-kurti.jpg" class="d-block" alt="Fashion 1">
      <div class="carousel-caption">
        <h1 class="fw-bold">Welcome to DressStore</h1>
        <p>Discover the latest in women’s fashion & ethnic wear.</p>
        <a href="Login.jsp" class="btn btn-shop">Shop Now</a>
      </div>
    </div>

    <div class="carousel-item">
      <img src="https://t3.ftcdn.net/jpg/15/44/84/66/360_F_1544846672_pjAjTGENbbAwYwMTjVug17Ij22NYQpHQ.jpg" class="d-block w-100" alt="Fashion 2">
      <div class="carousel-caption">
        <h1 class="fw-bold">Elegant Sarees & Lehengas</h1>
        <p>For every occasion, we’ve got your look covered.</p>
        <a href="Login.jsp" class="btn btn-shop">Join Now</a>
      </div>
    </div>

    <div class="carousel-item">
      <img src="https://img1.junaroad.com/uiproducts/21342303/pri_175_p-1719925026.jpg" class="d-block w-100" alt="Fashion 3">
      <div class="carousel-caption">
        <h1 class="fw-bold">Trendy Kurtas & Froks</h1>
        <p>Style meets comfort in every design.</p>
        <a href="Login.jsp" class="btn btn-shop">Explore Now</a>
      </div>
    </div>
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#homeCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#homeCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<footer class="text-center bg-dark text-white p-3 mt-5">
  
</footer>
</body>
</html>
