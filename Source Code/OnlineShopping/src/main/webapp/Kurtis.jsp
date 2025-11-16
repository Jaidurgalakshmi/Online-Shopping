<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Women's Kurti Sets Collection</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
    img {
      border-radius: 8px 8px 0 0;
    }
    .card {
      border: none;
      box-shadow: 0 3px 6px rgba(0,0,0,0.15);
      border-radius: 8px;
      transition: transform 0.2s ease;
    }
    .card:hover {
      transform: translateY(-5px);
    }
    .card-body {
      padding: 10px;
    }
    .card-body h5 {
      font-size: 1rem;
      margin-bottom: 6px;
    }
    .card-body p {
      font-size: 0.85rem;
      text-align: justify;
      margin-bottom: 8px;
    }
    .card-body h6 {
      font-size: 0.9rem;
      margin-bottom: 10px;
    }
    .btn-sm {
      font-size: 0.8rem;
      padding: 4px 10px;
    }
    .fixed-header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: #ffffff;
      z-index: 1000;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      padding: 10px 0;
    }
    body{
     background-image:url("https://files.123freevectors.com/wp-content/solidbackground/transparent-green-free-solidcolor-background.jpg");
     background-repeat:no-repeat;
     background-size:cover;
     background-position:center;
     }
  </style>
</head>
<body class="container mt-5">
  <h3 class="fixed-header text-center mb-4">Women's Kurtis Collection <a href="Cart.jsp" class="btn btn-success go-to-cart" style="float:right">Go to Cart 🛒</a></h3>
  <div class="row mt-5 pt-5" id="kurti-row"></div>

  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const kurtis = [
        {
          img: "https://i.pinimg.com/1200x/68/dc/5c/68dc5c75a4251c0095982bdd67100eb1.jpg",
          alt: "Cotton Kurti Set",
          title: "Cotton Printed Kurti Set",
          desc: "Comfortable cotton kurti with matching palazzo and dupatta — perfect for casual wear.",
          price: "₹1,499"
        },
        {
          img: "https://i.pinimg.com/1200x/3d/36/ab/3d36ab5522cbcf13b31ecafd8fc3ab23.jpg",
          alt: "Anarkali Kurti Set",
          title: "Anarkali Kurti Set",
          desc: "Elegant Anarkali-style kurti with flowy design and contrasting dupatta.",
          price: "₹2,799"
        },
        {
          img: "https://i.pinimg.com/736x/83/b2/f8/83b2f83f983d4e0bc25dd0b66825b759.jpg",
          alt: "Rayon Kurti Set",
          title: "Rayon Kurti Set",
          desc: "Soft rayon fabric with floral prints and comfy palazzo pants — all-day comfort.",
          price: "₹1,899"
        },
        {
          img: "https://i.pinimg.com/736x/28/4a/e4/284ae4df63b77fbd195285716b0dfc7a.jpg",
          alt: "Festive Kurti Set",
          title: "Festive Embroidered Kurti Set",
          desc: "Chic embroidered kurti set with mirror work detailing — perfect for festivals.",
          price: "₹3,199"
        },
        {
          img: "https://i.pinimg.com/1200x/c2/8a/30/c28a308a354c8f7ba35bdd4a8e9aad07.jpg",
          alt: "Cotton Blend Kurti Set",
          title: "Cotton Blend Kurti Set",
          desc: "Breathable cotton blend fabric with pastel tones — elegant and minimal.",
          price: "₹1,599"
        },
        {
          img: "https://i.pinimg.com/736x/05/01/d3/0501d327fe6fc3886633551246da5958.jpg",
          alt: "Printed Kurti Set",
          title: "Floral Printed Kurti Set",
          desc: "Bright floral prints with a breezy palazzo and soft dupatta for a stylish summer look.",
          price: "₹1,899"
        },
        {
          img: "https://i.pinimg.com/1200x/c8/42/3b/c8423bf14efde4dabd21fb64e871a6c5.jpg",
          alt: "Chikankari Kurti Set",
          title: "Chikankari Kurti Set",
          desc: "Classic Lucknowi chikankari kurti set with fine thread embroidery.",
          price: "₹2,999"
        },
        {
          img: "https://i.pinimg.com/736x/05/2c/0b/052c0b400ad25991640cd15289ebedc0.jpg",
          alt: "Silk Kurti Set",
          title: "Silk Kurti Set",
          desc: "Rich silk kurti paired with contrast churidar and dupatta — festive essential.",
          price: "₹3,499"
        },
        {
          img: "https://i.pinimg.com/736x/75/53/12/755312e6fe26cbb0af97a6d4d3212449.jpg",
          alt: "Straight Kurti Set",
          title: "Straight Cut Kurti Set",
          desc: "Stylish straight-cut kurti with elegant print and comfortable fit.",
          price: "₹1,699"
        },
        {
          img: "https://i.pinimg.com/736x/b2/00/e8/b200e81f8afdc873d81bbd5a771b95a0.jpg",
          alt: "Party Kurti Set",
          title: "Designer Party Kurti Set",
          desc: "Stylish party wear kurti set with sequin work and designer dupatta.",
          price: "₹3,899"
        },
        {
          img: "https://i.pinimg.com/736x/f8/04/4c/f8044cdc1352525440b6694f19edfa17.jpg",
          alt: "Handloom Kurti Set",
          title: "Handloom Cotton Kurti Set",
          desc: "Soft handloom cotton with block prints — ideal for daily elegance.",
          price: "₹1,799"
        },
        {
          img: "https://i.pinimg.com/1200x/41/76/0b/41760be2d40cd392c3355d08a8779cda.jpg",
          alt: "Embroidered Kurti Set",
          title: "Embroidered Kurti Set",
          desc: "Delicate thread embroidery on a pastel base — graceful and timeless.",
          price: "₹2,499"
        }
      ];

      const kurtiRow = document.getElementById("kurti-row");

      kurtis.forEach((item, index) => {
    	  const colDiv = document.createElement("div");
    	  colDiv.className = "col-md-4 mb-4";

    	  colDiv.innerHTML = `
    	    <div class="card text-center h-100">
    	      <img src="\${item.img}" class="w-100" alt="\${item.title}" style="height:300px"/>
    	      <div class="card-body">
    	        <h5 class="card-title">\${item.title}</h5>
    	        <p class="card-text">\${item.desc}</p>
    	        <h6 class="text-success fw-bold">Price: ₹\${item.price}</h6>

    	        <form action="addtocart" method="post" class="d-inline-block">
    	          <input type="hidden" name="product_name" value="\${item.title}">
    	          <input type="hidden" name="price" value="\${item.price}">
    	          Quantity: <input type="number" name="quantity" min="1" value="1" required style="width:60px;">
    	          <button type="submit" class="btn btn-warning btn-sm ms-2">Add to Cart</button>
    	        </form>
    	      </div>
    	    </div>
    	  `;

    	  kurtiRow.appendChild(colDiv);
    	});
    });
  </script>
</body>
</html>
