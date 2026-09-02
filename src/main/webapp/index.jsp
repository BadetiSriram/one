<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NexusShop — Premium Storefront</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
  --ink:#111827;
  --muted:#6b7280;
  --soft:#f7f7f5;
  --line:#e8e8e4;
  --card:#fff;
  --accent:#ff5a36;
  --accent-dark:#e74625;
  --dark:#171717;
  --success:#16865b;
  --radius:20px;
  --shadow:0 12px 35px rgba(17,24,39,.07);
  --max:1240px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  margin:0;background:#fff;color:var(--ink);
  font-family:"DM Sans",system-ui,sans-serif;line-height:1.5;
}
button,input{font:inherit}
button{cursor:pointer}
a{color:inherit;text-decoration:none}
.container{width:min(var(--max),calc(100% - 40px));margin:auto}

.topbar{background:var(--dark);color:#fff;font-size:13px}
.topbar-inner{min-height:38px;display:flex;align-items:center;justify-content:center;gap:24px}
.topbar strong{color:#ffd166}

header{
  position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);
  backdrop-filter:blur(16px);border-bottom:1px solid rgba(17,24,39,.07)
}
.nav{height:76px;display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:35px}
.brand{font:800 22px "Plus Jakarta Sans";letter-spacing:-.04em}
.brand span{color:var(--accent)}
.main-nav{display:flex;justify-content:center;gap:28px;font-weight:600;font-size:14px}
.main-nav a{padding:8px 0;position:relative}
.main-nav a:hover,.main-nav a.active{color:var(--accent)}
.main-nav a.active:after{content:"";position:absolute;left:0;right:0;bottom:0;height:2px;background:var(--accent);border-radius:2px}
.nav-actions{display:flex;align-items:center;gap:8px}
.search{width:250px;height:42px;border:1px solid var(--line);background:var(--soft);border-radius:12px;display:flex;align-items:center;padding:0 12px;gap:8px}
.search i{color:#9ca3af}
.search input{border:0;outline:0;background:transparent;width:100%;font-size:13px}
.icon-btn{width:42px;height:42px;border:0;background:#fff;border-radius:12px;display:grid;place-items:center;color:#374151;position:relative}
.icon-btn:hover{background:var(--soft);color:var(--accent)}
.cart-count{position:absolute;top:1px;right:1px;background:var(--accent);color:#fff;border:2px solid #fff;width:18px;height:18px;border-radius:50%;font-size:10px;font-weight:700;display:grid;place-items:center}
.mobile-toggle{display:none}

.hero{padding:28px 0 20px}
.hero-card{
  min-height:490px;border-radius:28px;overflow:hidden;position:relative;
  background:
    linear-gradient(90deg,rgba(17,17,17,.84) 0%,rgba(17,17,17,.58) 46%,rgba(17,17,17,.08) 100%),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85") center/cover;
  display:flex;align-items:center
}
.hero-content{color:#fff;width:min(620px,90%);padding:58px}
.eyebrow{display:inline-flex;align-items:center;gap:7px;color:#ffd7ce;font-size:12px;font-weight:800;letter-spacing:.1em;text-transform:uppercase;margin-bottom:15px}
.eyebrow i{font-size:8px}
.hero h1{font:800 clamp(40px,5vw,68px)/1.03 "Plus Jakarta Sans";letter-spacing:-.055em;margin:0 0 20px}
.hero p{font-size:17px;color:rgba(255,255,255,.84);max-width:540px;margin:0 0 28px}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap}
.btn{border:0;border-radius:12px;padding:13px 19px;font-weight:800;display:inline-flex;align-items:center;gap:9px}
.btn-primary{background:var(--accent);color:#fff}
.btn-primary:hover{background:var(--accent-dark);transform:translateY(-1px)}
.btn-light{background:#fff;color:var(--ink)}
.btn-light:hover{background:#f4f4f2}
.btn-dark{background:var(--dark);color:#fff}
.section{padding:54px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:25px}
.section-title{font:800 28px "Plus Jakarta Sans";letter-spacing:-.035em;margin:0}
.section-sub{color:var(--muted);font-size:14px;margin:5px 0 0}
.view-all{font-weight:700;font-size:14px;color:var(--accent)}

.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.cat-card{
  border:1px solid var(--line);border-radius:17px;padding:20px 12px;text-align:center;
  background:#fff;transition:.2s;min-height:128px;display:flex;flex-direction:column;justify-content:center
}
.cat-card:hover{border-color:#ffc8bb;box-shadow:var(--shadow);transform:translateY(-3px)}
.cat-icon{width:48px;height:48px;border-radius:14px;background:#fff1ed;color:var(--accent);display:grid;place-items:center;margin:0 auto 10px;font-size:19px}
.cat-card h4{margin:0;font-size:14px}
.cat-card small{color:var(--muted);font-size:11px;margin-top:3px}

.toolbar{display:flex;align-items:center;justify-content:space-between;margin-bottom:18px;gap:12px}
.filter-pills{display:flex;gap:8px;overflow:auto;padding-bottom:3px}
.pill{border:1px solid var(--line);background:#fff;border-radius:999px;padding:8px 13px;font-size:12px;font-weight:700;white-space:nowrap}
.pill.active,.pill:hover{background:var(--dark);color:#fff;border-color:var(--dark)}

.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{
  background:#fff;border:1px solid var(--line);border-radius:18px;overflow:hidden;
  position:relative;transition:.22s;display:flex;flex-direction:column
}
.product:hover{box-shadow:var(--shadow);transform:translateY(-4px)}
.product-media{height:245px;background:#f5f5f2;position:relative;overflow:hidden}
.product-media img{width:100%;height:100%;object-fit:cover;transition:.35s}
.product:hover .product-media img{transform:scale(1.04)}
.badge{position:absolute;left:12px;top:12px;background:var(--dark);color:#fff;padding:6px 9px;border-radius:8px;font-size:10px;font-weight:800}
.badge.sale{background:var(--accent)}
.wish{position:absolute;right:12px;top:12px;width:34px;height:34px;border:0;border-radius:50%;background:rgba(255,255,255,.94);display:grid;place-items:center;color:#555}
.wish.active{color:var(--accent)}
.product-body{padding:16px;flex:1}
.product-category{font-size:11px;color:#9a9a94;text-transform:uppercase;letter-spacing:.08em;font-weight:800}
.product h3{font-size:15px;margin:5px 0 10px;line-height:1.35}
.rating{font-size:11px;color:#e9a23b}
.rating span{color:#9a9a94;margin-left:4px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:12px}
.price{font-size:17px;font-weight:800}
.old-price{font-size:12px;color:#9a9a94;text-decoration:line-through}
.product-footer{padding:0 16px 16px;display:flex;gap:8px}
.add-btn{flex:1;border:0;border-radius:10px;padding:11px;background:var(--dark);color:#fff;font-size:12px;font-weight:800}
.add-btn:hover{background:var(--accent)}
.quick-btn{width:42px;border:1px solid var(--line);background:#fff;border-radius:10px}

.deal-wrap{padding:8px 0 10px}
.deal{
  background:#f5f2ed;border-radius:24px;overflow:hidden;display:grid;grid-template-columns:1.05fr 1fr;
  min-height:390px
}
.deal-media{min-height:390px;background:url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85") center/cover}
.deal-content{padding:48px;display:flex;flex-direction:column;justify-content:center}
.deal-label{color:var(--accent);font-weight:800;font-size:12px;text-transform:uppercase;letter-spacing:.1em}
.deal h2{font:800 34px "Plus Jakarta Sans";letter-spacing:-.04em;margin:10px 0}
.deal p{color:var(--muted);max-width:480px}
.timer{display:flex;gap:8px;margin:18px 0}
.time-box{background:#fff;border:1px solid var(--line);border-radius:12px;padding:9px 13px;min-width:62px;text-align:center}
.time-box b{display:block;font-size:20px}
.time-box span{font-size:9px;color:var(--muted);text-transform:uppercase;font-weight:800}

.trust{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin-top:30px}
.trust-item{padding:20px;border:1px solid var(--line);border-radius:16px;display:flex;gap:13px;align-items:center}
.trust-icon{width:42px;height:42px;border-radius:12px;background:#f5f5f2;display:grid;place-items:center;color:var(--accent)}
.trust-item strong{display:block;font-size:13px}
.trust-item span{font-size:11px;color:var(--muted)}

.testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.testimonial{border:1px solid var(--line);border-radius:18px;padding:22px}
.quote{font-size:14px;line-height:1.7;margin:13px 0 20px;color:#343434}
.person{display:flex;align-items:center;gap:10px}
.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}
.person strong{display:block;font-size:12px}
.person span{font-size:10px;color:var(--muted)}

.newsletter{background:var(--dark);border-radius:24px;padding:45px;color:#fff;display:flex;justify-content:space-between;align-items:center;gap:25px}
.newsletter h2{font:800 28px "Plus Jakarta Sans";margin:0 0 7px}
.newsletter p{margin:0;color:#a9a9a9;font-size:13px}
.news-form{display:flex;gap:8px;min-width:min(420px,100%)}
.news-form input{height:46px;flex:1;border:0;border-radius:10px;padding:0 14px;outline:0}
.news-msg{font-size:11px;margin-top:8px;display:none}

footer{border-top:1px solid var(--line);margin-top:55px;padding:38px 0 25px;color:var(--muted)}
.footer-grid{display:grid;grid-template-columns:1.5fr 1fr 1fr 1fr;gap:35px}
.footer-brand{font:800 20px "Plus Jakarta Sans";color:var(--ink)}
.footer-col h4{font-size:12px;color:var(--ink);margin:0 0 12px}
.footer-col a{display:block;font-size:12px;margin:8px 0}
.footer-col a:hover{color:var(--accent)}
.socials{display:flex;gap:8px;margin-top:17px}
.socials a{width:34px;height:34px;border:1px solid var(--line);border-radius:9px;display:grid;place-items:center}
.copyright{border-top:1px solid var(--line);margin-top:30px;padding-top:18px;text-align:center;font-size:11px}

.empty{grid-column:1/-1;text-align:center;padding:60px 20px;border:1px dashed var(--line);border-radius:18px;color:var(--muted)}
.empty i{font-size:30px;margin-bottom:10px}

.toast{position:fixed;right:22px;bottom:22px;background:var(--dark);color:#fff;padding:13px 16px;border-radius:12px;box-shadow:0 12px 30px rgba(0,0,0,.2);font-size:12px;font-weight:700;transform:translateY(90px);opacity:0;transition:.25s;z-index:100}
.toast.show{transform:translateY(0);opacity:1}

@media(max-width:1050px){
  .main-nav{gap:16px}
  .search{width:190px}
  .categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
  .trust{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:800px){
  .container{width:min(var(--max),calc(100% - 28px))}
  .nav{height:64px;grid-template-columns:auto 1fr auto;gap:12px}
  .main-nav{display:none}
  .mobile-toggle{display:grid;width:38px;height:38px;border:0;background:var(--soft);border-radius:10px;place-items:center}
  .nav-actions .search{width:42px;padding:0;justify-content:center;border:0;background:var(--soft)}
  .nav-actions .search input{display:none}
  .hero-card{min-height:450px}
  .hero-content{padding:35px 28px}
  .deal{grid-template-columns:1fr}
  .deal-media{min-height:260px}
  .deal-content{padding:30px}
  .testimonials{grid-template-columns:1fr}
  .newsletter{display:block;padding:32px}
  .news-form{margin-top:20px;min-width:0}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:560px){
  .topbar-inner{font-size:11px}
  .categories{grid-template-columns:repeat(2,1fr)}
  .products{grid-template-columns:1fr 1fr;gap:10px}
  .product-media{height:185px}
  .product-body{padding:12px}
  .product-footer{padding:0 12px 12px}
  .product h3{font-size:13px}
  .price{font-size:15px}
  .section{padding:38px 0}
  .section-head{align-items:start;display:block}
  .view-all{display:inline-block;margin-top:10px}
  .trust{grid-template-columns:1fr}
  .newsletter{border-radius:18px}
  .news-form{display:block}
  .news-form input{width:100%;margin-bottom:8px}
  .news-form .btn{width:100%;justify-content:center}
  .footer-grid{grid-template-columns:1fr}
}
</style>
</head>

<body>
<div class="topbar">
  <div class="topbar-inner">Free shipping on orders over $50 <strong>• Limited-time deals live now</strong></div>
</div>

<header>
  <div class="container nav">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
    <a class="brand" href="#">Nexus<span>Shop</span></a>

    <nav class="main-nav" id="mainNav">
      <a class="active" href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deals">Deals</a>
      <a href="#about">About</a>
    </nav>

    <div class="nav-actions">
      <div class="search">
        <i class="fas fa-search"></i>
        <input id="searchInput" type="search" placeholder="Search products...">
      </div>
      <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
      <button class="icon-btn" id="cartBtn" title="Cart">
        <i class="fas fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <div id="mobileMenu" style="display:none;border-top:1px solid var(--line);background:#fff">
    <div class="container" style="padding:12px 0;display:grid;gap:4px">
      <a href="#" style="padding:10px;font-weight:700">Home</a>
      <a href="#categories" style="padding:10px;font-weight:700">Categories</a>
      <a href="#products" style="padding:10px;font-weight:700">Trending</a>
      <a href="#deals" style="padding:10px;font-weight:700">Deals</a>
      <a href="#about" style="padding:10px;font-weight:700">About</a>
    </div>
  </div>
</header>

<main>
<section class="hero">
  <div class="container">
    <div class="hero-card">
      <div class="hero-content">
        <div class="eyebrow"><i class="fas fa-circle"></i> New season / premium picks</div>
        <h1>Everything you want. One better place.</h1>
        <p>Discover technology, fashion and everyday essentials selected for quality, value and style.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop collection <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-light" id="exploreDeals">View today's deals</button>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section container" id="categories">
  <div class="section-head">
    <div><h2 class="section-title">Shop by category</h2><p class="section-sub">Find what you need faster.</p></div>
    <a class="view-all" href="#products">View all products →</a>
  </div>
  <div class="categories" id="categoriesGrid"></div>
</section>

<section class="section container" id="products">
  <div class="section-head">
    <div><h2 class="section-title">Trending products</h2><p class="section-sub">Popular picks customers are buying right now.</p></div>
  </div>
  <div class="toolbar">
    <div class="filter-pills" id="filterPills">
      <button class="pill active" data-filter="">All</button>
      <button class="pill" data-filter="phones">Smartphones</button>
      <button class="pill" data-filter="laptops">Laptops</button>
      <button class="pill" data-filter="gadgets">Gadgets</button>
      <button class="pill" data-filter="accessories">Accessories</button>
    </div>
  </div>
  <div class="products" id="productsGrid"></div>
</section>

<section class="section container deal-wrap" id="deals">
  <div class="section-head">
    <div><h2 class="section-title">Deal of the day</h2><p class="section-sub">A limited-time price on one of our top picks.</p></div>
  </div>
  <div class="deal">
    <div class="deal-media"></div>
    <div class="deal-content">
      <div class="deal-label">Flash sale · 17% off</div>
      <h2>MacBook Air M2</h2>
      <p>Thin, light and powerful. Get premium everyday performance at a limited-time price.</p>
      <div class="timer">
        <div class="time-box"><b id="dealDays">0</b><span>Days</span></div>
        <div class="time-box"><b id="dealHours">00</b><span>Hours</span></div>
        <div class="time-box"><b id="dealMinutes">00</b><span>Minutes</span></div>
        <div class="time-box"><b id="dealSeconds">00</b><span>Seconds</span></div>
      </div>
      <div style="display:flex;align-items:center;gap:12px;margin:5px 0 20px">
        <span class="price" style="font-size:28px">$999</span>
        <span class="old-price">$1,199</span>
      </div>
      <button class="btn btn-dark" id="buyDeal" style="width:max-content">Add deal to cart <i class="fas fa-bag-shopping"></i></button>
    </div>
  </div>

  <div class="trust">
    <div class="trust-item"><div class="trust-icon"><i class="fas fa-truck-fast"></i></div><div><strong>Fast delivery</strong><span>Reliable shipping on every order</span></div></div>
    <div class="trust-item"><div class="trust-icon"><i class="fas fa-shield-halved"></i></div><div><strong>Secure checkout</strong><span>Your payment stays protected</span></div></div>
    <div class="trust-item"><div class="trust-icon"><i class="fas fa-rotate-left"></i></div><div><strong>Easy returns</strong><span>Simple return experience</span></div></div>
    <div class="trust-item"><div class="trust-icon"><i class="fas fa-headset"></i></div><div><strong>Real support</strong><span>Help when you need it</span></div></div>
  </div>
</section>

<section class="section container" id="about">
  <div class="section-head">
    <div><h2 class="section-title">What customers say</h2><p class="section-sub">Real feedback from verified buyers.</p></div>
  </div>
  <div class="testimonials">
    <article class="testimonial">
      <div class="rating">★★★★★</div>
      <p class="quote">“Fast shipping and excellent customer support. The product exceeded my expectations.”</p>
      <div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"><div><strong>Ava Martin</strong><span>Verified buyer</span></div></div>
    </article>
    <article class="testimonial">
      <div class="rating">★★★★☆</div>
      <p class="quote">“Great selection and the checkout was smooth. Will definitely shop again.”</p>
      <div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"><div><strong>Michael Lee</strong><span>Frequent buyer</span></div></div>
    </article>
    <article class="testimonial">
      <div class="rating">★★★★★</div>
      <p class="quote">“The whole experience feels clean and simple. Found what I needed without the usual clutter.”</p>
      <div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80"><div><strong>Sophia Carter</strong><span>Verified buyer</span></div></div>
    </article>
  </div>
</section>

<section class="section container">
  <div class="newsletter">
    <div>
      <h2>Get the good stuff first.</h2>
      <p>New arrivals, useful offers and occasional member-only deals.</p>
      <div class="news-msg" id="newsletterMsg"></div>
    </div>
    <form class="news-form" id="newsletterForm">
      <input id="newsletterEmail" type="email" placeholder="Your email address" required>
      <button class="btn btn-primary" type="submit">Subscribe</button>
    </form>
  </div>
</section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-brand">Nexus<span style="color:var(--accent)">Shop</span></div>
      <p style="font-size:12px;max-width:300px">A cleaner, modern e-commerce experience built around discovery, value and simple shopping.</p>
      <div class="socials"><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-x-twitter"></i></a></div>
    </div>
    <div class="footer-col"><h4>SHOP</h4><a href="#products">Trending</a><a href="#categories">Categories</a><a href="#deals">Deals</a></div>
    <div class="footer-col"><h4>COMPANY</h4><a href="#about">About us</a><a href="#">Careers</a><a href="#">Contact</a></div>
    <div class="footer-col"><h4>HELP</h4><a href="#">Help center</a><a href="#">Shipping & returns</a><a href="#">Privacy</a></div>
  </div>
  <div class="container copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="toast" id="toast"></div>

<script>
const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

const categoriesGrid=document.getElementById('categoriesGrid');
const productsGrid=document.getElementById('productsGrid');
const searchInput=document.getElementById('searchInput');
const cartCountEl=document.getElementById('cartCount');
const toast=document.getElementById('toast');
let cartCount=0;
let wishlist=new Set();

const iconMap={
  phones:'fa-mobile-screen-button',
  laptops:'fa-laptop',
  clothing:'fa-shirt',
  gadgets:'fa-headphones',
  footwear:'fa-shoe-prints',
  accessories:'fa-bag-shopping'
};

function escapeHtml(text){
  return String(text).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}

function showToast(message){
  toast.textContent=message; toast.classList.add('show');
  clearTimeout(showToast.t); showToast.t=setTimeout(()=>toast.classList.remove('show'),1800);
}

function renderCategories(){
  categoriesGrid.innerHTML='';
  CATEGORIES.forEach(cat=>{
    const el=document.createElement('button');
    el.className='cat-card';
    el.innerHTML=`<div class="cat-icon"><i class="fas ${iconMap[cat.id]||'fa-grid-2'}"></i></div><h4>${escapeHtml(cat.name)}</h4><small>Explore collection</small>`;
    el.addEventListener('click',()=>{
      document.querySelectorAll('.pill').forEach(x=>x.classList.remove('active'));
      filterProducts(cat.id); searchInput.value='';
      document.getElementById('products').scrollIntoView({behavior:'smooth',block:'start'});
    });
    categoriesGrid.appendChild(el);
  });
}

function renderProducts(list){
  productsGrid.innerHTML='';
  if(!list.length){
    productsGrid.innerHTML='<div class="empty"><i class="fas fa-search"></i><div>No products found</div><small>Try another search or category.</small></div>';
    return;
  }
  list.forEach(p=>{
    const el=document.createElement('article'); el.className='product';
    const sale=p.badge && String(p.badge).startsWith('-');
    const wished=wishlist.has(p.id);
    el.innerHTML=`
      <div class="product-media">
        ${p.badge?`<span class="badge ${sale?'sale':''}">${escapeHtml(p.badge)}</span>`:''}
        <button class="wish ${wished?'active':''}" data-wish="${p.id}" aria-label="Wishlist"><i class="${wished?'fas':'far'} fa-heart"></i></button>
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
      </div>
      <div class="product-body">
        <div class="product-category">${escapeHtml(p.category)}</div>
        <h3>${escapeHtml(p.title)}</h3>
        <div class="rating">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))} <span>(${p.reviews})</span></div>
        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:''}</div>
      </div>
      <div class="product-footer">
        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add to cart</button>
        <button class="quick-btn" title="Quick view"><i class="far fa-eye"></i></button>
      </div>`;
    productsGrid.appendChild(el);
  });
  productsGrid.querySelectorAll('.add-btn').forEach(btn=>btn.addEventListener('click',()=>addToCart(Number(btn.dataset.id))));
  productsGrid.querySelectorAll('[data-wish]').forEach(btn=>btn.addEventListener('click',()=>toggleWish(Number(btn.dataset.wish))));
}

function addToCart(id){
  const p=PRODUCTS.find(x=>x.id===id); if(!p)return;
  cartCount++; cartCountEl.textContent=cartCount;
  showToast(`${p.title} added to your cart`);
}

function toggleWish(id){
  wishlist.has(id)?wishlist.delete(id):wishlist.add(id);
  renderProducts(currentList);
  showToast(wishlist.has(id)?'Added to wishlist':'Removed from wishlist');
}

let currentList=[...PRODUCTS];
function filterProducts(query){
  const q=String(query||'').trim().toLowerCase();
  currentList=!q?PRODUCTS:[...PRODUCTS].filter(p=>p.title.toLowerCase().includes(q)||p.category.toLowerCase().includes(q)||String(p.badge||'').toLowerCase().includes(q));
  renderProducts(currentList);
}

searchInput.addEventListener('input',e=>filterProducts(e.target.value));
document.querySelectorAll('.pill').forEach(pill=>pill.addEventListener('click',()=>{
  document.querySelectorAll('.pill').forEach(x=>x.classList.remove('active'));
  pill.classList.add('active');
  filterProducts(pill.dataset.filter);
}));

document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('products').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{cartCount++;cartCountEl.textContent=cartCount;showToast('MacBook Air M2 added to your cart')});

document.getElementById('mobileToggle').addEventListener('click',()=>{
  const menu=document.getElementById('mobileMenu');
  menu.style.display=menu.style.display==='none'?'block':'none';
});

document.getElementById('newsletterForm').addEventListener('submit',e=>{
  e.preventDefault();
  const email=document.getElementById('newsletterEmail');
  const msg=document.getElementById('newsletterMsg');
  if(!email.checkValidity()){msg.style.display='block';msg.textContent='Please enter a valid email address.';return;}
  msg.style.display='block';msg.textContent='You are subscribed. Thanks!';
  email.value=''; showToast('Subscription confirmed');
});

(function setupTimer(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  const timer=setInterval(()=>{
    const diff=Math.max(0,target-Date.now());
    const days=Math.floor(diff/86400000);
    const hours=Math.floor(diff%86400000/3600000);
    const mins=Math.floor(diff%3600000/60000);
    const secs=Math.floor(diff%60000/1000);
    document.getElementById('dealDays').textContent=days;
    document.getElementById('dealHours').textContent=String(hours).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(mins).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(secs).padStart(2,'0');
    if(diff<=0)clearInterval(timer);
  },1000);
})();

document.getElementById('year').textContent=new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
</script>
</body>
</html>
