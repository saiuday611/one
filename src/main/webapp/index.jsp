<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NexusShop · friendly shopping</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
:root{
  --bg:#fefcf9;--bg-card:#fff;--primary:#2e2b3c;--primary-soft:#4a445e;
  --accent:#e3856b;--accent-soft:#fbe4dc;--accent-deep:#c96e55;
  --muted:#6f6b7f;--muted-light:#b1aebf;--surface:#f7f4f0;
  --success:#6f9e8c;--warning:#e9b563;
  --radius:20px;--radius-sm:14px;
  --shadow-sm:0 6px 18px rgba(46,43,60,.04);
  --shadow:0 12px 32px rgba(46,43,60,.06);
  --shadow-hover:0 20px 40px rgba(227,133,107,.12);
  --transition:.2s ease;--container:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:'Inter',system-ui,sans-serif;background:var(--bg);color:var(--primary);line-height:1.5;-webkit-font-smoothing:antialiased;padding-bottom:20px}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;transition:var(--transition)}
input{font-family:inherit}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}

/* BUTTONS */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:14px 32px;border-radius:60px;font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent;letter-spacing:.2px}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent);box-shadow:0 6px 16px rgba(227,133,107,.25)}
.btn-primary:hover{background:var(--accent-deep);border-color:var(--accent-deep);transform:translateY(-3px)}
.btn-ghost{background:rgba(255,255,255,.2);color:#fff;border-color:rgba(255,255,255,.3);backdrop-filter:blur(4px)}
.btn-ghost:hover{background:rgba(255,255,255,.35);transform:translateY(-2px)}

/* HEADER */
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.9);backdrop-filter:blur(16px);border-bottom:1px solid rgba(46,43,60,.05)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:12px 0;min-height:74px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:24px;letter-spacing:-.4px}
.brand .accent{color:var(--accent)}
.brand i{font-size:28px;color:var(--accent)}
nav.main-nav ul{display:flex;gap:6px;list-style:none;align-items:center}
nav.main-nav li a{display:flex;align-items:center;gap:8px;padding:10px 18px;border-radius:40px;font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition)}
nav.main-nav li a:hover,nav.main-nav li a.active{background:var(--accent-soft);color:var(--accent-deep)}
.header-actions{display:flex;align-items:center;gap:8px;flex-shrink:0}
.header-actions .icon-btn{width:46px;height:46px;display:grid;place-items:center;border-radius:50%;font-size:19px;color:var(--muted);transition:var(--transition);position:relative}
.header-actions .icon-btn:hover{background:var(--surface);color:var(--primary)}
.cart-wrap{position:relative}
.cart-count{position:absolute;top:-2px;right:-2px;background:var(--accent);color:#fff;font-size:11px;font-weight:700;width:22px;height:22px;border-radius:50%;display:grid;place-items:center;border:2px solid #fff}
.search-wrap{display:flex;align-items:center;background:var(--surface);border-radius:60px;padding:0 18px 0 20px;transition:var(--transition);border:2px solid transparent;min-width:240px}
.search-wrap:focus-within{border-color:var(--accent);background:#fff;box-shadow:0 0 0 4px rgba(227,133,107,.1)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:12px 0;font-size:14px}
.search-wrap button{padding:8px 0 8px 12px;color:var(--muted);font-size:16px}
.search-wrap button:hover{color:var(--accent)}
.mobile-toggle{display:none;width:46px;height:46px;border-radius:50%;font-size:22px;background:var(--surface);place-items:center}
#mobileMenu{display:none;background:#fff;border-top:1px solid rgba(46,43,60,.05);padding:16px 0 24px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:6px}
#mobileMenu ul li a{display:flex;align-items:center;gap:16px;padding:14px 18px;border-radius:20px;font-weight:500}
#mobileMenu ul li a:hover{background:var(--accent-soft);color:var(--accent-deep)}

/* HERO */
.hero{position:relative;display:flex;align-items:center;min-height:500px;padding:60px 0;border-radius:var(--radius);overflow:hidden;margin:24px 24px 0;background:linear-gradient(135deg,#2e2b3c,#413b52);box-shadow:var(--shadow)}
.hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;opacity:.25}
.hero .container{position:relative;z-index:1}
.hero .badge{display:inline-block;background:rgba(227,133,107,.25);color:#fadbc9;padding:6px 20px;border-radius:60px;font-weight:600;font-size:13px;margin-bottom:20px;border:1px solid rgba(255,255,255,.1)}
.hero h1{font-family:'Playfair Display',serif;font-size:54px;font-weight:700;color:#fff;line-height:1.15;max-width:680px;margin-bottom:18px}
.hero p{color:rgba(255,255,255,.85);font-size:18px;max-width:540px;margin-bottom:32px}
.hero .actions{display:flex;gap:14px;flex-wrap:wrap}

/* SECTIONS */
.section{padding:64px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:36px;flex-wrap:wrap}
.section-header h2{font-size:32px;font-weight:700;letter-spacing:-.3px}
.section-header p{color:var(--muted);margin-top:6px;font-size:16px}
.section-header .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:8px;font-size:15px;background:var(--accent-soft);padding:10px 22px;border-radius:60px;transition:var(--transition)}
.section-header .view-all:hover{background:var(--accent);color:#fff}

/* CATEGORIES */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:18px}
.cat-card{background:var(--bg-card);border-radius:var(--radius);padding:28px 16px 22px;text-align:center;box-shadow:var(--shadow-sm);transition:var(--transition);cursor:pointer;border:2px solid transparent}
.cat-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-soft)}
.cat-card .icon-wrap{width:64px;height:64px;border-radius:50%;background:var(--accent-soft);display:grid;place-items:center;margin:0 auto 16px;font-size:26px;color:var(--accent);transition:var(--transition)}
.cat-card:hover .icon-wrap{background:var(--accent);color:#fff}
.cat-card h4{font-size:16px;font-weight:600}
.cat-card .count{font-size:13px;color:var(--muted);margin-top:6px}

/* PRODUCTS */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px}
.product-card{background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow-sm);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-soft)}
.product-card .img-wrap{position:relative;overflow:hidden;background:var(--surface);aspect-ratio:1/1}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
.product-card:hover .img-wrap img{transform:scale(1.04)}
.product-card .badge{position:absolute;top:14px;left:14px;background:var(--accent);color:#fff;padding:5px 14px;border-radius:60px;font-size:11px;font-weight:700}
.product-card .badge.sale{background:var(--warning);color:var(--primary)}
.product-card .wish-btn{position:absolute;top:14px;right:14px;width:40px;height:40px;border-radius:50%;background:rgba(255,255,255,.9);display:grid;place-items:center;font-size:18px;color:var(--muted)}
.product-card .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.1)}
.product-card .body{padding:18px 20px 16px;flex:1;display:flex;flex-direction:column;gap:8px}
.product-card .category-tag{font-size:12px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.6px;font-weight:600}
.product-card h5{font-size:16px;font-weight:600;line-height:1.35}
.product-card .price-row{display:flex;align-items:center;gap:10px;margin-top:4px}
.product-card .price{font-weight:700;font-size:20px}
.product-card .old-price{color:var(--muted-light);text-decoration:line-through;font-size:14px}
.product-card .rating{display:flex;align-items:center;gap:4px;font-size:14px;color:#f5a623}
.product-card .rating span{color:var(--muted);font-weight:400}
.product-card .footer{padding:0 20px 20px;display:flex}
.product-card .add-btn{flex:1;padding:12px;border-radius:40px;background:var(--primary);color:#fff;font-weight:600;font-size:14px;display:flex;align-items:center;justify-content:center;gap:8px;border:2px solid transparent}
.product-card .add-btn:hover{background:var(--accent);border-color:var(--accent)}
.product-card .add-btn.added{background:var(--success);border-color:var(--success)}

/* DEAL */
.deal-wrap{display:flex;background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow)}
.deal-wrap .deal-img{flex:0 0 48%;background:var(--surface);min-height:320px}
.deal-wrap .deal-img img{width:100%;height:100%;object-fit:cover}
.deal-wrap .deal-content{flex:1;padding:48px;display:flex;flex-direction:column;justify-content:center}
.deal-wrap .tag{display:inline-block;background:var(--warning);color:var(--primary);padding:6px 18px;border-radius:60px;font-size:12px;font-weight:700;text-transform:uppercase;align-self:flex-start;margin-bottom:16px}
.deal-wrap h3{font-size:32px;font-weight:700;margin-bottom:8px}
.deal-wrap .desc{color:var(--muted);margin-bottom:20px;font-size:16px}
.deal-wrap .price-big{font-size:36px;font-weight:800}
.deal-wrap .price-big .old{font-size:20px;font-weight:400;color:var(--muted-light);text-decoration:line-through;margin-left:12px}
.deal-wrap .stock{font-size:15px;color:var(--muted);margin:6px 0 20px}
.deal-wrap .stock strong{color:var(--accent)}
.timer-grid{display:flex;gap:14px;margin:20px 0 24px}
.timer-box{background:var(--primary);color:#fff;padding:12px 18px;border-radius:var(--radius-sm);min-width:76px;text-align:center}
.timer-box .num{font-size:28px;font-weight:700;line-height:1.2}
.timer-box .label{font-size:11px;opacity:.75;text-transform:uppercase}

/* TESTIMONIALS */
.testimonials-scroll{display:flex;gap:24px;overflow-x:auto;padding:8px 4px 20px;scroll-snap-type:x mandatory}
.testimonial-card{flex:0 0 360px;background:var(--bg-card);border-radius:var(--radius);padding:28px;box-shadow:var(--shadow-sm);scroll-snap-align:start;border:2px solid transparent}
.testimonial-card:hover{box-shadow:var(--shadow-hover);border-color:var(--accent-soft)}
.testimonial-card .stars{color:#f5a623;font-size:18px;letter-spacing:2px;margin-bottom:14px}
.testimonial-card blockquote{font-size:16px;line-height:1.65;margin-bottom:18px;font-style:italic}
.testimonial-card .author{display:flex;align-items:center;gap:14px}
.testimonial-card .author img{width:48px;height:48px;border-radius:50%;object-fit:cover}
.testimonial-card .name{font-weight:600;font-size:15px}
.testimonial-card .role{font-size:13px;color:var(--muted)}

/* NEWSLETTER */
.newsletter-wrap{background:linear-gradient(135deg,var(--primary),var(--primary-soft));border-radius:var(--radius);padding:56px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:40px;flex-wrap:wrap}
.newsletter-wrap h3{font-size:30px;font-weight:700;margin-bottom:6px}
.newsletter-wrap p{opacity:.8;font-size:16px}
.newsletter-wrap form{display:flex;gap:12px;flex-wrap:wrap;flex:1;max-width:520px}
.newsletter-wrap input{flex:1;min-width:220px;padding:16px 24px;border-radius:60px;border:0;font-size:15px;background:rgba(255,255,255,.15);color:#fff;outline:2px solid transparent}
.newsletter-wrap input::placeholder{color:rgba(255,255,255,.6)}
.newsletter-wrap input:focus{outline-color:var(--accent);background:rgba(255,255,255,.22)}
.newsletter-wrap .btn{background:var(--accent);border-color:var(--accent);padding:16px 36px}
#newsletterMsg{margin-top:14px;font-size:14px;width:100%}

/* FOOTER */
footer{margin-top:32px;padding:52px 0 32px;border-top:1px solid rgba(46,43,60,.05)}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:36px}
.footer-grid p{color:var(--muted);font-size:15px;max-width:320px}
.footer-grid .socials{display:flex;gap:12px;margin-top:18px}
.footer-grid .socials a{width:44px;height:44px;border-radius:50%;background:var(--surface);display:grid;place-items:center;color:var(--muted);font-size:18px}
.footer-grid .socials a:hover{background:var(--accent);color:#fff;transform:translateY(-3px)}
.footer-grid h5{font-weight:700;font-size:15px;margin-bottom:16px}
.footer-grid ul{list-style:none;display:flex;flex-direction:column;gap:10px}
.footer-grid ul a{color:var(--muted);font-size:15px}
.footer-grid ul a:hover{color:var(--accent)}
.footer-bottom{text-align:center;padding-top:28px;border-top:1px solid rgba(46,43,60,.05);color:var(--muted-light);font-size:14px}

/* TOAST */
.toast{position:fixed;bottom:28px;left:50%;transform:translateX(-50%);background:rgba(46,43,60,.92);color:#fff;padding:14px 32px;border-radius:60px;font-weight:500;font-size:15px;box-shadow:0 16px 32px rgba(0,0,0,.12);z-index:999;opacity:0;pointer-events:none;transition:opacity .25s ease;backdrop-filter:blur(8px)}
.toast.show{opacity:1}

/* RESPONSIVE */
@media(max-width:1200px){.products-grid{grid-template-columns:repeat(3,1fr)}.categories-grid{grid-template-columns:repeat(3,1fr)}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:992px){.hero h1{font-size:40px}.hero{min-height:400px;margin:20px 20px 0;padding:48px 0}.deal-wrap{flex-direction:column}.deal-wrap .deal-img{flex:0 0 260px}.deal-wrap .deal-content{padding:36px 32px}.newsletter-wrap{padding:40px 32px;flex-direction:column;text-align:center}}
@media(max-width:768px){nav.main-nav{display:none}.mobile-toggle{display:grid}.products-grid{grid-template-columns:repeat(2,1fr);gap:18px}.categories-grid{grid-template-columns:repeat(2,1fr)}.hero h1{font-size:32px}.hero p{font-size:16px}.section-header h2{font-size:26px}.footer-grid{grid-template-columns:1fr}.search-wrap{min-width:140px}.testimonial-card{flex:0 0 300px}.section{padding:44px 0}}
@media(max-width:480px){.products-grid{grid-template-columns:1fr 1fr;gap:14px}.hero{margin:12px 12px 0;min-height:340px;padding:32px 0}.hero h1{font-size:26px}.container{padding:0 18px}.newsletter-wrap{padding:32px 24px}}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:16px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap"><input type="search" id="searchInput" placeholder="Search products..."><button id="searchBtn"><i class="fas fa-search"></i></button></div>
      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium <br>Essentials</h1>
      <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Browse Categories</h2><p>Find exactly what you're looking for</p></div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending Now</h2><p>What's hot — popular picks from our community</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-header"><div><h2>⚡ Flash Deal</h2><p>Grab it before it's gone — limited stock</p></div></div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2"></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>What Our Customers Say</h2><p>Real reviews from real people</p></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div><h3>Stay in the Loop</h3><p>Get exclusive offers, early access & new arrivals</p></div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p style="margin-top:12px;">Modern e-commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
const CATEGORIES=[
  {name:'Smartphones',icon:'fa-mobile-alt',count:24},
  {name:'Laptops',icon:'fa-laptop',count:18},
  {name:'Clothing',icon:'fa-tshirt',count:42},
  {name:'Gadgets',icon:'fa-headphones',count:31},
  {name:'Footwear',icon:'fa-shoe-prints',count:27},
  {name:'Accessories',icon:'fa-watch',count:39}
];
const PRODUCTS=[
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'Smartphones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'Laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',category:'Accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',category:'Footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'Gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'Accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',category:'Accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'Gadgets'}
];
const TESTIMONIALS=[
  {name:'Ava Martin',role:'Verified Buyer',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',text:'Fast shipping and excellent support. The product exceeded my expectations!',stars:5},
  {name:'Michael Lee',role:'Frequent Shopper',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',text:'Great selection and smooth checkout. Will definitely shop again.',stars:4},
  {name:'Sophia Chen',role:'Designer',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',text:'Love the quality and the packaging. Everything arrived in perfect condition.',stars:5},
  {name:'James Wilson',role:'Tech Enthusiast',avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',stars:5}
];

let cartCount=0;
const $=id=>document.getElementById(id);
const categoriesGrid=$('categoriesGrid'),productsGrid=$('productsGrid'),cartCountEl=$('cartCount');
const searchInput=$('searchInput'),searchBtn=$('searchBtn'),mobileToggle=$('mobileToggle'),mobileMenu=$('mobileMenu');
const newsletterForm=$('newsletterForm'),newsletterEmail=$('newsletterEmail'),newsletterMsg=$('newsletterMsg');
const testimonialsList=$
