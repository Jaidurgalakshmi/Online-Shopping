<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Saree Collection</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
  img{
     border-radius:8px 8px 0 0;
  
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
  </style>
</head>
<body class="container mt-4">

  <h4 class="text-center mb-4 fixed-header">Saree Collection</h4>
  <div class="row" id="saree-row"></div>

  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const sarees = [
        {
          img: "https://sareewave.com/cdn/shop/products/1661854558.KP_3087.jpg?v=1664803192",
          alt: "Kanchipuram Silk Saree",
          title: "Kanchipuram Silk Saree",
          desc: "Elegant Kanchipuram silk saree with rich zari border and traditional temple motifs.",
          price: "₹4,999"
        },
        {
          img: "https://i.pinimg.com/736x/a9/ec/9a/a9ec9a8bab016161d4decf8d976162cc.jpg",
          alt: "Banarasi Silk Saree",
          title: "Banarasi Silk Saree",
          desc: "Luxurious Banarasi silk saree woven with golden zari — ideal for weddings and events.",
          price: "₹5,499"
        },
        {
          img: "https://i.pinimg.com/736x/7e/01/c6/7e01c639fc906d039efa3464ce8bcb11.jpg",
          alt: "Chiffon Saree",
          title: "Chiffon Saree",
          desc: "Lightweight chiffon saree with minimal embroidery — perfect for parties.",
          price: "₹2,499"
        },
        {
          img: "https://m.media-amazon.com/images/I/71tSFhenjyL._AC_UY1100_.jpg",
          alt: "Silk Saree",
          title: "Pure Silk Saree",
          desc: "Classic pure silk saree with contrast pallu and golden border.",
          price: "₹6,299"
        },
        {
          img: "https://i.pinimg.com/736x/0e/6b/9e/0e6b9e5be4401a344ef995d17f601d5a.jpg",
          alt: "Cotton Saree",
          title: "Cotton Handloom Saree",
          desc: "Soft handloom cotton saree ideal for daily wear and comfort.",
          price: "₹1,899"
        },
        {
          img: "https://i.pinimg.com/1200x/d8/cd/cc/d8cdccad4dda58498830f471a018c5d6.jpg",
          alt: "Designer Saree",
          title: "Designer Party Wear Saree",
          desc: "Trendy designer saree with sequin work — perfect for receptions.",
          price: "₹3,799"
        },
        {
          img: "https://i.pinimg.com/736x/52/b6/46/52b646a87e60c54d58e966ddf101cc37.jpg",
          alt: "Georgette Saree",
          title: "Georgette Saree",
          desc: "Beautiful printed georgette saree with floral designs — perfect for casual outings.",
          price: "₹2,199"
        },
        {
          img: "https://i.pinimg.com/1200x/a6/d4/38/a6d438eacf17b1332b101c928a0fc414.jpg",
          alt: "Paithani Saree",
          title: "Paithani Saree",
          desc: "Traditional Paithani silk saree with peacock design pallu — Maharashtrian classic.",
          price: "₹7,499"
        },
        {
          img: "https://i.pinimg.com/1200x/fc/c5/90/fcc590d77d341eb1fece846fe464be02.jpg",
          alt: "Tussar Silk Saree",
          title: "Tussar Silk Saree",
          desc: "Elegant tussar silk saree with handblock print — perfect for festive occasions.",
          price: "₹4,299"
        },
        {
          img: "https://i.pinimg.com/736x/1f/fd/1a/1ffd1af76b6f6434dafb66352af89412.jpg",
          alt: "Organza Saree",
          title: "Organza Saree",
          desc: "Soft organza saree with pastel tones and floral embroidery — elegant and modern.",
          price: "₹3,499"
        },
        {
          img: "https://i.pinimg.com/736x/4e/76/b7/4e76b79ddad874647f337284122f789a.jpg",
          alt: "Patola Saree",
          title: "Patola Saree",
          desc: "Rich Patola silk saree with intricate double ikat weaving — symbol of heritage.",
          price: "₹8,999"
        },
        {
          img: "https://i.pinimg.com/736x/01/6c/25/016c256c6d68156501d64817a19390c4.jpg",
          alt: "Linen Saree",
          title: "Linen Saree",
          desc: "Comfortable linen saree with subtle prints — perfect blend of style and comfort.",
          price: "₹2,799"
        }
      ];

      const sareeRow = document.getElementById("saree-row");

      sarees.forEach(saree => {
        const colDiv = document.createElement("div");
        colDiv.className = "col-md-4 mb-3";

        colDiv.innerHTML = `
          <div class="card h-100 text-center mt-5" style="width:300px">
            <img src="\${saree.img}" class=" w-100" alt="\${saree.alt}" style="height:300px"/>
            <div class="card-body">
              <h5 class="card-title">\${saree.title}</h5>
              <p class="card-text">\${saree.desc}</p>
              <h6 class="text-success fw-bold">Price: \${saree.price}</h6>
              <div class="d-flex justify-content-center gap-2 mt-2">
                <button class="btn btn-sm btn-warning me-5">Add to Cart</button>
                <button class="btn btn-sm btn-primary">Order Now</button>
              </div>
            </div>
          </div>
        `;

        sareeRow.appendChild(colDiv);
      });
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
