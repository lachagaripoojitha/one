<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
    <title>NexusShop</title>

```
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<style>
    body {
        margin:0;
        font-family:Poppins;
        background: linear-gradient(135deg,#ff9a9e,#fad0c4,#fbc2eb,#a6c1ee);
        background-size: 400% 400%;
        animation: bg 12s infinite;
    }

    @keyframes bg {
        0%{background-position:0%}
        50%{background-position:100%}
        100%{background-position:0%}
    }

    header {
        padding:15px 40px;
        display:flex;
        justify-content:space-between;
        background:rgba(255,255,255,0.2);
        backdrop-filter: blur(10px);
    }

    .logo {
        font-size:22px;
        font-weight:700;
        color:#fff;
    }

    .btn {
        padding:10px 20px;
        border:none;
        border-radius:25px;
        cursor:pointer;
        font-weight:600;
    }

    .primary {
        background:linear-gradient(135deg,#ff6a00,#ee0979);
        color:white;
    }

    .section {
        padding:40px;
        text-align:center;
    }

    /* Featured */
    .featured {
        display:grid;
        grid-template-columns:repeat(3,1fr);
        gap:20px;
    }

    .card {
        padding:30px;
        border-radius:15px;
        color:white;
        font-weight:600;
        transition:0.3s;
    }

    .card:hover {
        transform:scale(1.05);
    }

    /* Products */
    .products {
        display:grid;
        grid-template-columns:repeat(4,1fr);
        gap:20px;
    }

    .product {
        background:white;
        border-radius:15px;
        padding:15px;
        transition:0.3s;
    }

    .product:hover {
        transform:translateY(-8px);
    }

    .product img {
        width:100%;
        border-radius:10px;
    }

    .price {
        color:#ff4081;
        font-weight:bold;
    }

    /* Trending scroll */
    .scroll {
        display:flex;
        gap:15px;
        overflow-x:auto;
    }

    .scroll div {
        min-width:150px;
        padding:15px;
        border-radius:12px;
        background:#fff;
    }

    /* Offers */
    .offers {
        display:flex;
        justify-content:center;
        gap:20px;
        flex-wrap:wrap;
    }

    .offer {
        padding:20px;
        border-radius:20px;
        color:white;
        font-weight:bold;
    }

    .pink {background:#ff6a88;}
    .blue {background:#36d1dc;}
    .green {background:#00c853;}

</style>
```

</head>

<body>

<header>
    <div class="logo">NexusShop</div>
    <button class="btn primary">Login</button>
</header>

<!-- HERO -->

<div class="section">
    <h1>🌈 Welcome to NexusShop</h1>
    <p>Shop colorful products with amazing offers</p>
    <button class="btn primary">Shop Now</button>
</div>

<!-- FEATURED -->

<div class="section">
    <h2>🔥 Featured</h2>
    <div class="featured">
        <div class="card" style="background:linear-gradient(135deg,#ff6a00,#ee0979)">Hot Deals</div>
        <div class="card" style="background:linear-gradient(135deg,#00c6ff,#0072ff)">New Arrivals</div>
        <div class="card" style="background:linear-gradient(135deg,#42e695,#3bb2b8)">Best Sellers</div>
    </div>
</div>

<!-- TRENDING -->

<div class="section">
    <h2>🔥 Trending</h2>
    <div class="scroll">
        <div>iPhone 📱</div>
        <div>Shoes 👟</div>
        <div>Watch ⌚</div>
        <div>Headphones 🎧</div>
    </div>
</div>

<!-- PRODUCTS -->

<div class="section">
    <h2>🛍 Products</h2>

```
<div class="products">
    <%
        class Product {
            String name, img;
            int price;
            Product(String n,String i,int p){name=n;img=i;price=p;}
        }

        Product[] list = {
            new Product("iPhone 14","https://via.placeholder.com/200",1099),
            new Product("Shoes","https://via.placeholder.com/200",120),
            new Product("Watch","https://via.placeholder.com/200",250),
            new Product("Headphones","https://via.placeholder.com/200",300)
        };

        for(Product p : list){
    %>
    <div class="product">
        <img src="<%=p.img%>">
        <h3><%=p.name%></h3>
        <p class="price">₹ <%=p.price%></p>
        <button class="btn primary">Add to Cart</button>
    </div>
    <% } %>
</div>
```

</div>

<!-- OFFERS -->

<div class="section">
    <h2>🎁 Offers</h2>
    <div class="offers">
        <div class="offer pink">Buy 1 Get 1</div>
        <div class="offer blue">Free Shipping</div>
        <div class="offer green">Cashback ₹500</div>
    </div>
</div>

</body>
</html>
