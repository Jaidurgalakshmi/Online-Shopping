<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Women's Long Frocks Collection</title>
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

    <h3 class="fixed-header text-center mb-4">Women's Long Frocks Collection <a href="Cart.jsp" class="btn btn-success go-to-cart" style="float:right">Go to Cart 🛒</a></h3>
<div class="row mt-5 pt-5" id="frock-row"></div>
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const frocks = [
        {
          img: "https://i.pinimg.com/736x/4f/e0/64/4fe0647e8527b470043f2a139a8b03a4.jpg",
          alt: "Floral Maxi Dress",
          title: "Floral Maxi Long Frock",
          desc: "Elegant floral printed long frock made from soft georgette fabric — perfect for evening outings.",
          price: "₹2,199"
        },
        {
          img: "https://i.pinimg.com/736x/76/0f/9a/760f9ac008c427901310539f1f31ede8.jpg",
          alt: "Silk Long Frock",
          title: "Designer Silk Long Frock",
          desc: "Rich silk fabric with beautiful embroidery and flared design for festive occasions.",
          price: "₹3,499"
        },
        {
          img: "https://i.pinimg.com/736x/21/93/69/2193690d8b54e077b495007b641389a3.jpg",
          alt: "Anarkali Long Frock",
          title: "Anarkali Style Long Frock",
          desc: "Classic Anarkali cut with traditional prints and elegant dupatta pairing.",
          price: "₹2,999"
        },
        {
          img: "https://i.pinimg.com/1200x/a3/25/d8/a325d8824a8937db896c9d9204a2ff95.jpg",
          alt: "Cotton Long Frock",
          title: "Casual Cotton Long Frock",
          desc: "Lightweight cotton fabric with subtle pastel tones — ideal for daily comfort and summer wear.",
          price: "₹1,599"
        },
        {
          img: "https://i.pinimg.com/1200x/01/b3/ed/01b3edc6b66efc7521d1d674397fc609.jpg",
          alt: "Partywear Gown",
          title: "Partywear Long Gown Frock",
          desc: "Stylish partywear gown with sequin detailing and soft lining for a comfortable fit.",
          price: "₹3,899"
        },
        {
          img: "https://i.pinimg.com/736x/33/b3/26/33b32682c72c2ac301be8a35814f47d7.jpg",
          alt: "Handloom Frock",
          title: "Handloom Cotton Long Frock",
          desc: "Authentic handloom cotton frock with ethnic motifs and breathable comfort.",
          price: "₹1,899"
        },
        {
          img: "https://i.pinimg.com/736x/fb/f9/0a/fbf90a3ee90014eb0829916c105b0c64.jpg",
          alt: "Rayon Long Frock",
          title: "Rayon Printed Long Frock",
          desc: "Beautiful rayon material with artistic prints and flowing design — perfect for a chic look.",
          price: "₹1,799"
        },
        {
          img: "https://i.pinimg.com/1200x/9f/b5/5e/9fb55e7fef01bd3b8a932a603c6e40a2.jpg",
          alt: "Evening Gown",
          title: "Evening Long Frock Gown",
          desc: "Elegant gown-style frock with shimmery detailing — perfect for evening parties.",
          price: "₹4,299"
        },
        {
          img: "https://i.pinimg.com/736x/f6/c7/bf/f6c7bf89df16631b47edf35dfef902e5.jpg",
          alt: "Chiffon Long Frock",
          title: "Chiffon Long Frock",
          desc: "Lightweight chiffon material with flowy design and soft texture for effortless grace.",
          price: "₹2,499"
        },
        {
          img: "https://i.pinimg.com/1200x/aa/10/c4/aa10c43843c0ebbda7bc90d71201e4cc.jpg",
          alt: "Designer Long Frock",
          title: "Designer Long Frock with Belt",
          desc: "Trendy long frock featuring a waist belt and floral embroidery — elegant and stylish.",
          price: "₹3,299"
        },
        {
          img: "https://i.pinimg.com/1200x/84/90/ba/8490ba8dae9ac71a56300ce381b42a4c.jpg",
          alt: "Printed Maxi Frock",
          title: "Bohemian Printed Long Frock",
          desc: "Boho-inspired printed frock with free-flowing design — great for travel and casual wear.",
          price: "₹1,999"
        },
        {
          img: "https://www.zapdress.com/cdn/shop/files/94_SZ7KI_B_86MY_0V7F_U.png?v=1749538760",
          alt: "Net Long Frock",
          title: "Net Embroidered Long Frock",
          desc: "Stylish net material frock with thread embroidery — perfect for receptions or festive occasions.",
          price: "₹4,099"
        }
      ];

      const frockRow = document.getElementById("frock-row");

      frocks.forEach((frock,index)=> {
        const colDiv = document.createElement("div");
        colDiv.className = "col-md-4 mb-3";

        colDiv.innerHTML = `
        	  <div class="card text-center h-100 mt-5">
        	    <img src="\${frock.img}" class="w-100" alt="\${frock.alt}" style="height:300px"/>
        	    <div class="card-body">
        	      <h5 class="card-title">\${frock.title}</h5>
        	      <p class="card-text">\${frock.desc}</p>
        	      <h6 class="text-success fw-bold">Price: \${frock.price}</h6>

        	      <form action="addtocart" method="post" class="d-inline-block">
        	        <input type="hidden" name="product_id" value="\${index + 1}">
        	        <input type="hidden" name="product_name" value="\${frock.title}">
        	        <input type="hidden" name="price" value="\${frock.price}">

        	        Quantity:
        	        <input type="number" name="quantity" min="1" value="1" required style="width: 60px;"><br><br>

        	        <button type="submit" class="btn btn-warning ms-2">Add to Cart</button>
        	      </form>
        	    </div>
        	  </div>
        	`;
        frockRow.appendChild(colDiv);
      });
    });
  </script>
</body>
</html>
