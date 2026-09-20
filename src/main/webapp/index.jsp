<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SaiShop</title>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800&family=Fraunces:opsz,wght@9..144,600;9..144,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
:root{
  --bg:#0c0e1a;--bg-2:#121527;--bg-3:#1a1e35;
  --card:rgba(255,255,255,.04);
  --card-hover:rgba(255,255,255,.07);
  --border:rgba(255,255,255,.08);
  --border-hi:rgba(212,175,55,.35);
  --text:#eef0f7;--text-2:#a3a8c0;--text-3:#6f7592;
  --gold:#d4af37;--gold-2:#f0c95a;--gold-dim:rgba(212,175,55,.12);
  --rose:#e8a0b8;--mint:#7dd3c0;
  --danger:#f06b6b;
  --radius:18px;--radius-sm:12px;
  --shadow:0 20px 50px rgba(0,0,0,.5);
  --shadow-gold:0 20px 60px rgba(212,175,55,.15);
  --t:.25s cubic-bezier(.4,0,.2,1);
  --container:1280px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  font-family:'Outfit',system-ui,sans-serif;
  background:var(--bg);color:var(--text);line-height:1.55;
  -webkit-font-smoothing:antialiased;
  background-image:
    radial-gradient(900px 500px at 10% -10%,rgba(212,175,55,.08),transparent),
    radial-gradient(700px 500px at 100% 10%,rgba(232,160,184,.06),transparent);
  background-attachment:fixed;
}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;transition:var(--t)}
input{font-family:inherit}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 28px}

/* BUTTONS */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:10px;padding:14px 30px;border-radius:60px;font-weight:600;font-size:14.5px;letter-spacing:.3px;transition:var(--t);border:1.5px solid transparent;white-space:nowrap}
.btn-gold{background:linear-gradient(135deg,var(--gold),var(--gold-2));color:#0c0e1a;box-shadow:0 8px 24px rgba(212,175,55,.25)}
.btn-gold:hover{transform:translateY(-2px);box-shadow:0 14px 34px rgba(212,175,55,.4)}
.btn-outline{border-color:var(--border);color:var(--text);background:var(--card);backdrop-filter:blur(10px)}
.btn-outline:hover{border-color:var(--gold);background:var(--gold-dim);color:var(--gold-2)}
.btn-ghost{color:var(--text-2);border-color:transparent}
.btn-ghost:hover{color:var(--gold)}
.btn-sm{padding:10px 20px;font-size:13px}

/* HEADER */
header{position:sticky;top:0;z-index:100;background:rgba(12,14,26,.75);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);border-bottom:1px solid var(--border)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:20px;padding:14px 0;min-height:76px}
.brand{display:flex;align-items:center;gap:10px;font-weight:700;font-size:22px;letter-spacing:.5px}
.brand-mark{width:38px;height:38px;border-radius:10px;background:linear-gradient(135deg,var(--gold),var(--gold-2));display:grid;place-items:center;color:#0c0e1a;font-size:16px;box-shadow:0 6px 18px rgba(212,175,55,.3)}
.brand-text{font-family:'Fraunces',serif;font-weight:700;letter-spacing:0}
.brand-text span{color:var(--gold)}
nav.main-nav ul{display:flex;gap:2px;list-style:none}
nav.main-nav a{padding:10px 18px;border-radius:40px;font-size:14px;font-weight:500;color:var(--text-2);transition:var(--t)}
nav.main-nav a:hover,nav.main-nav a.active{color:var(--text);background:var(--card)}
nav.main-nav a.active{color:var(--gold-2)}

.header-right{display:flex;align-items:center;gap:10px}
.search-wrap{display:flex;align-items:center;background:var(--card);border:1px solid var(--border);border-radius:60px;padding:0 8px 0 18px;transition:var(--t);min-width:230px}
.search-wrap:focus-within{border-color:var(--gold);background:rgba(212,175,55,.06);box-shadow:0 0 0 4px rgba(212,175,55,.08)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:11px 0;font-size:14px;color:var(--text)}
.search-wrap input::placeholder{color:var(--text-3)}
.search-wrap button{width:34px;height:34px;border-radius:50%;display:grid;place-items:center;color:var(--text-2);font-size:13px}
.search-wrap button:hover{background:var(--gold-dim);color:var(--gold)}
.icon-btn{width:44px;height:44px;border-radius:50%;display:grid;place-items:center;font-size:17px;color:var(--text-2);border:1px solid var(--border);background:var(--card);position:relative}
.icon-btn:hover{color:var(--gold);border-color:var(--border-hi);background:var(--gold-dim)}
.cart-wrap{position:relative}
.cart-count{position:absolute;top:-3px;right:-3px;min-width:20px;height:20px;padding:0 5px;background:var(--gold);color:#0c0e1a;font-size:11px;font-weight:700;border-radius:20px;display:grid;place-items:center;border:2px solid var(--bg)}
.mobile-toggle{display:none;width:44px;height:44px;border-radius:50%;border:1px solid var(--border);background:var(--card);font-size:18px;place-items:center;color:var(--text)}
#mobileMenu{display:none;background:var(--bg-2);border-top:1px solid var(--border);padding:14px 0 22px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu a{display:flex;align-items:center;gap:14px;padding:14px 20px;border-radius:12px;color:var(--text-2);font-weight:500}
#mobileMenu a:hover{background:var(--card);color:var(--gold)}

/* HERO — split layout */
.hero{padding:60px 0 40px;position:relative}
.hero-grid{display:grid;grid-template-columns:1.1fr .9fr;gap:60px;align-items:center}
.eyebrow{display:inline-flex;align-items:center;gap:8px;padding:7px 18px;border-radius:60px;border:1px solid var(--border-hi);background:var(--gold-dim);color:var(--gold-2);font-size:12.5px;font-weight:600;letter-spacing:1.4px;text-transform:uppercase;margin-bottom:24px}
.eyebrow::before{content:'';width:6px;height:6px;border-radius:50%;background:var(--gold);box-shadow:0 0 10px var(--gold)}
.hero h1{font-family:'Fraunces',serif;font-size:clamp(38px,5.2vw,68px);font-weight:600;line-height:1.05;letter-spacing:-1.5px;margin-bottom:22px}
.hero h1 em{font-style:italic;color:var(--gold);font-weight:600}
.hero p.lead{color:var(--text-2);font-size:17px;max-width:520px;margin-bottom:34px}
.hero-actions{display:flex;gap:14px;flex-wrap:wrap;margin-bottom:40px}
.hero-stats{display:flex;gap:36px;flex-wrap:wrap;padding-top:32px;border-top:1px solid var(--border)}
.stat .num{font-family:'Fraunces',serif;font-size:30px;font-weight:700;color:var(--text)}
.stat .num span{color:var(--gold)}
.stat .lbl{font-size:12.5px;color:var(--text-3);text-transform:uppercase;letter-spacing:1.2px;margin-top:2px}

.hero-visual{position:relative;aspect-ratio:1/1.05;border-radius:26px;overflow:hidden;border:1px solid var(--border);box-shadow:var(--shadow)}
.hero-visual img{width:100%;height:100%;object-fit:cover;opacity:.9}
.hero-visual::after{content:'';position:absolute;inset:0;background:linear-gradient(180deg,transparent 40%,rgba(12,14,26,.9))}
.hero-float{position:absolute;background:rgba(18,21,39,.85);backdrop-filter:blur(16px);border:1px solid var(--border-hi);border-radius:16px;padding:14px 18px;z-index:2;box-shadow:var(--shadow)}
.hero-float.tl{top:24px;left:24px}
.hero-float.br{bottom:24px;right:24px;display:flex;align-items:center;gap:12px}
.hero-float .k{font-size:11px;text-transform:uppercase;letter-spacing:1.2px;color:var(--text-3)}
.hero-float .v{font-family:'Fraunces',serif;font-size:22px;font-weight:700;color:var(--gold-2)}
.hero-float .av{display:flex}
.hero-float .av img{width:32px;height:32px;border-radius:50%;border:2px solid var(--bg-2);margin-left:-8px}
.hero-float .av img:first-child{margin-left:0}

/* SECTION HEADER */
.section{padding:80px 0}
.section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:20px;margin-bottom:44px;flex-wrap:wrap}
.section-head .kicker{font-size:12.5px;font-weight:600;letter-spacing:1.6px;text-transform:uppercase;color:var(--gold);margin-bottom:10px;display:flex;align-items:center;gap:10px}
.section-head .kicker::before{content:'';width:28px;height:1px;background:var(--gold)}
.section-head h2{font-family:'Fraunces',serif;font-size:clamp(28px,3.4vw,42px);font-weight:600;letter-spacing:-.8px;line-height:1.1}
.section-head p.sub{color:var(--text-2);margin-top:10px;max-width:520px}
.link-arrow{color:var(--gold);font-weight:600;font-size:14px;display:inline-flex;align-items:center;gap:8px;padding:10px 22px;border:1px solid var(--border-hi);border-radius:60px;background:var(--gold-dim);transition:var(--t)}
.link-arrow:hover{background:var(--gold);color:#0c0e1a;gap:14px}

/* CATEGORIES */
.cats{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.cat{background:var(--card);border:1px solid var(--border);border-radius:var(--radius);padding:26px 14px 20px;text-align:center;transition:var(--t);cursor:pointer;position:relative;overflow:hidden}
.cat::before{content:'';position:absolute;inset:0;background:radial-gradient(circle at 50% 0%,rgba(212,175,55,.15),transparent 70%);opacity:0;transition:var(--t)}
.cat:hover{transform:translateY(-6px);border-color:var(--border-hi);background:var(--card-hover)}
.cat:hover::before{opacity:1}
.cat .ic{width:56px;height:56px;border-radius:16px;display:grid;place-items:center;margin:0 auto 14px;font-size:22px;color:var(--gold);background:var(--gold-dim);border:1px solid var(--border-hi);position:relative;z-index:1}
.cat h4{font-size:14.5px;font-weight:600;position:relative;z-index:1}
.cat .ct{font-size:12px;color:var(--text-3);margin-top:4px;position:relative;z-index:1}

/* PRODUCTS */
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:22px}
.p-card{background:var(--card);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden;transition:var(--t);display:flex;flex-direction:column;position:relative}
.p-card:hover{transform:translateY(-6px);border-color:var(--border-hi);box-shadow:var(--shadow-gold)}
.p-img{position:relative;aspect-ratio:1/1;overflow:hidden;background:var(--bg-3)}
.p-img img{width:100%;height:100%;object-fit:cover;transition:transform .5s cubic-bezier(.4,0,.2,1)}
.p-card:hover .p-img img{transform:scale(1.07)}
.p-badge{position:absolute;top:14px;left:14px;padding:5px 12px;border-radius:60px;font-size:10.5px;font-weight:700;letter-spacing:1px;text-transform:uppercase;background:var(--gold);color:#0c0e1a}
.p-badge.sale{background:var(--rose);color:#3a1220}
.p-wish{position:absolute;top:14px;right:14px;width:38px;height:38px;border-radius:50%;background:rgba(12,14,26,.7);backdrop-filter:blur(10px);border:1px solid var(--border);display:grid;place-items:center;color:var(--text-2);font-size:15px}
.p-wish:hover{color:var(--rose);border-color:var(--rose)}
.p-body{padding:18px 18px 14px;flex:1;display:flex;flex-direction:column;gap:6px}
.p-cat{font-size:11px;color:var(--text-3);text-transform:uppercase;letter-spacing:1.2px;font-weight:600}
.p-title{font-size:15.5px;font-weight:600;line-height:1.35;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.p-row{display:flex;align-items:baseline;gap:10px;margin-top:4px}
.p-price{font-family:'Fraunces',serif;font-size:22px;font-weight:700;color:var(--gold-2)}
.p-old{font-size:13.5px;color:var(--text-3);text-decoration:line-through}
.p-stars{font-size:12.5px;color:var(--gold);letter-spacing:1.5px}
.p-stars span{color:var(--text-3);letter-spacing:0}
.p-foot{padding:0 18px 18px}
.p-add{width:100%;padding:12px;border-radius:12px;background:transparent;border:1.5px solid var(--border-hi);color:var(--gold-2);font-weight:600;font-size:13.5px;display:flex;align-items:center;justify-content:center;gap:8px;transition:var(--t)}
.p-add:hover{background:var(--gold);color:#0c0e1a;border-color:var(--gold)}
.p-add.added{background:var(--mint);border-color:var(--mint);color:#0c2b23}

/* DEAL — horizontal split, dramatic */
.deal{margin-top:10px;background:linear-gradient(135deg,var(--bg-2),var(--bg-3));border:1px solid var(--border);border-radius:26px;overflow:hidden;display:grid;grid-template-columns:1fr 1fr;position:relative}
.deal::before{content:'';position:absolute;inset:0;background:radial-gradient(600px 400px at 100% 0%,rgba(212,175,55,.12),transparent 60%);pointer-events:none}
.deal-visual{position:relative;min-height:480px;overflow:hidden}
.deal-visual img{width:100%;height:100%;object-fit:cover;opacity:.85}
.deal-visual::after{content:'';position:absolute;inset:0;background:linear-gradient(90deg,transparent 60%,var(--bg-2))}
.deal-body{padding:56px 56px 56px 20px;display:flex;flex-direction:column;justify-content:center;position:relative;z-index:1}
.deal-tag{display:inline-flex;align-items:center;gap:8px;align-self:flex-start;padding:7px 16px;border-radius:60px;background:var(--gold-dim);border:1px solid var(--border-hi);color:var(--gold-2);font-size:11.5px;font-weight:700;letter-spacing:1.6px;text-transform:uppercase;margin-bottom:20px}
.deal h3{font-family:'Fraunces',serif;font-size:clamp(28px,3vw,40px);font-weight:600;letter-spacing:-.6px;margin-bottom:10px}
.deal .desc{color:var(--text-2);margin-bottom:24px;max-width:440px}
.deal .price{font-family:'Fraunces',serif;font-size:48px;font-weight:700;color:var(--gold-2);line-height:1}
.deal .price .old{font-size:20px;font-weight:400;color:var(--text-3);text-decoration:line-through;margin-left:14px;font-family:'Outfit',sans-serif}
.deal .stock{font-size:13.5px;color:var(--text-2);margin:10px 0 24px}
.deal .stock strong{color:var(--rose)}
.timer{display:flex;gap:12px;margin-bottom:28px}
.tbox{background:rgba(12,14,26,.6);border:1px solid var(--border);border-radius:14px;padding:12px 16px;min-width:72px;text-align:center;backdrop-filter:blur(10px)}
.tbox .n{font-family:'Fraunces',serif;font-size:26px;font-weight:700;color:var(--gold-2);line-height:1.1}
.tbox .l{font-size:10px;text-transform:uppercase;letter-spacing:1.4px;color:var(--text-3);margin-top:2px}

/* TESTIMONIALS */
.t-scroll{display:flex;gap:20px;overflow-x:auto;padding:6px 4px 22px;scroll-snap-type:x mandatory}
.t-scroll::-webkit-scrollbar{height:4px}
.t-scroll::-webkit-scrollbar-thumb{background:var(--gold-dim);border-radius:60px}
.t-card{flex:0 0 340px;background:var(--card);border:1px solid var(--border);border-radius:var(--radius);padding:26px;scroll-snap-align:start;transition:var(--t);position:relative}
.t-card:hover{border-color:var(--border-hi);background:var(--card-hover)}
.t-card::before{content:'"';position:absolute;top:8px;right:24px;font-family:'Fraunces',serif;font-size:80px;line-height:1;color:var(--gold);opacity:.15}
.t-stars{color:var(--gold);letter-spacing:2px;font-size:15px;margin-bottom:14px}
.t-card blockquote{font-size:15px;line-height:1.7;color:var(--text);margin-bottom:20px;font-style:italic}
.t-auth{display:flex;align-items:center;gap:12px;padding-top:16px;border-top:1px solid var(--border)}
.t-auth img{width:44px;height:44px;border-radius:50%;object-fit:cover;border:2px solid var(--border-hi)}
.t-name{font-weight:600;font-size:14px}
.t-role{font-size:12.5px;color:var(--text-3)}

/* NEWSLETTER */
.nl{background:linear-gradient(135deg,var(--bg-2),var(--bg-3));border:1px solid var(--border);border-radius:26px;padding:56px;display:grid;grid-template-columns:1fr 1fr;gap:40px;align-items:center;position:relative;overflow:hidden}
.nl::before{content:'';position:absolute;inset:0;background:radial-gradient(500px 300px at 100% 100%,rgba(212,175,55,.1),transparent 60%);pointer-events:none}
.nl h3{font-family:'Fraunces',serif;font-size:clamp(26px,3vw,36px);font-weight:600;letter-spacing:-.5px;margin-bottom:10px}
.nl p{color:var(--text-2)}
.nl form{display:flex;gap:10px;flex-wrap:wrap;position:relative;z-index:1}
.nl input{flex:1;min-width:220px;padding:16px 22px;border-radius:60px;background:rgba(12,14,26,.6);border:1.5px solid var(--border);color:var(--text);font-size:15px;outline:none;transition:var(--t)}
.nl input::placeholder{color:var(--text-3)}
.nl input:focus{border-color:var(--gold);box-shadow:0 0 0 4px rgba(212,175,55,.1)}
.nl .btn{padding:16px 32px}
#nlMsg{margin-top:12px;font-size:13.5px;width:100%;position:relative;z-index:1}

/* FOOTER */
footer{margin-top:70px;padding:60px 0 30px;border-top:1px solid var(--border);background:linear-gradient(180deg,transparent,rgba(12,14,26,.6))}
.f-grid{display:grid;grid-template-columns:1.6fr 1fr 1fr 1fr;gap:44px;margin-bottom:44px}
.f-brand .brand{margin-bottom:14px}
.f-brand p{color:var(--text-2);font-size:14.5px;max-width:320px}
.f-socials{display:flex;gap:10px;margin-top:20px}
.f-socials a{width:42px;height:42px;border-radius:12px;border:1px solid var(--border);background:var(--card);display:grid;place-items:center;color:var(--text-2);font-size:15px;transition:var(--t)}
.f-socials a:hover{color:var(--gold);border-color:var(--border-hi);background:var(--gold-dim);transform:translateY(-3px)}
.f-col h5{font-size:12.5px;font-weight:700;text-transform:uppercase;letter-spacing:1.6px;color:var(--gold);margin-bottom:18px}
.f-col ul{list-style:none;display:flex;flex-direction:column;gap:11px}
.f-col a{color:var(--text-2);font-size:14.5px;transition:var(--t)}
.f-col a:hover{color:var(--gold-2);padding-left:4px}
.f-bottom{display:flex;justify-content:space-between;align-items:center;gap:16px;flex-wrap:wrap;padding-top:26px;border-top:1px solid var(--border);color:var(--text-3);font-size:13px}

/* TOAST */
.toast{position:fixed;bottom:26px;left:50%;transform:translate(-50%,20px);background:rgba(18,21,39,.95);backdrop-filter:blur(16px);border:1px solid var(--border-hi);color:var(--text);padding:14px 26px;border-radius:60px;font-weight:500;font-size:14px;box-shadow:var(--shadow);z-index:999;opacity:0;pointer-events:none;transition:.3s;display:flex;align-items:center;gap:10px}
.toast.show{opacity:1;transform:translate(-50%,0)}
.toast i{color:var(--gold)}

/* RESPONSIVE */
@media(max-width:1100px){
  .hero-grid{grid-template-columns:1fr;gap:40px}
  .hero-visual{max-width:520px;margin:0 auto}
  .products{grid-template-columns:repeat(3,1fr)}
  .cats{grid-template-columns:repeat(3,1fr)}
  .f-grid{grid-template-columns:1fr 1fr;gap:32px}
  .deal{grid-template-columns:1fr}
  .deal-visual{min-height:300px}
  .deal-visual::after{background:linear-gradient(180deg,transparent 60%,var(--bg-2))}
  .deal-body{padding:36px 32px}
  .nl{grid-template-columns:1fr;padding:40px 32px}
}
@media(max-width:820px){
  nav.main-nav{display:none}
  .mobile-toggle{display:grid}
  .search-wrap{min-width:130px}
  .products{grid-template-columns:repeat(2,1fr);gap:16px}
  .cats{grid-template-columns:repeat(2,1fr)}
  .section{padding:56px 0}
  .hero{padding:40px 0 20px}
  .f-grid{grid-template-columns:1fr;gap:28px}
  .f-bottom{justify-content:center;text-align:center}
}
@media(max-width:480px){
  .container{padding:0 18px}
  .products{grid-template-columns:repeat(2,1fr);gap:12px}
  .p-body{padding:14px 14px 10px}
  .p-title{font-size:13.5px}
  .p-price{font-size:18px}
  .p-foot{padding:0 14px 14px}
  .p-add{font-size:12.5px;padding:10px}
  .deal-body{padding:28px 22px}
  .deal .price{font-size:36px}
  .tbox{min-width:60px;padding:10px 12px}
  .tbox .n{font-size:20px}
  .nl{padding:32px 22px}
  .hero-stats{gap:24px}
  .stat .num{font-size:24px}
  .icon-btn{width:40px;height:40px;font-size:15px}
  .search-wrap{display:none}
}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">
        <span class="brand-mark"><i class="fas fa-gem"></i></span>
        <span class="brand-text">Sai<span>Shop</span></span>
      </a>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Boutique</a></li>
        <li><a href="#deals">Offers</a></li>
        <li><a href="#testimonials">Reviews</a></li>
      </ul>
    </nav>
    <div class="header-right">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search the boutique…">
        <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>
      <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
      <div class="cart-wrap">
        <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-shopping-bag"></i></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-gem"></i> Boutique</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero">
    <div class="container hero-grid">
      <div>
        <div class="eyebrow">Curated · 2026 Edition</div>
        <h1>Objects of <em>quiet luxury</em>, delivered.</h1>
        <p class="lead">A hand‑picked boutique of premium tech, timeless fashion and considered accessories — with complimentary shipping on your first order.</p>
        <div class="hero-actions">
          <button class="btn btn-gold" id="shopNow"><i class="fas fa-bag-shopping"></i> Enter the Boutique</button>
          <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-bolt"></i> View Offers</button>
        </div>
        <div class="hero-stats">
          <div class="stat"><div class="num">12<span>k+</span></div><div class="lbl">Members</div></div>
          <div class="stat"><div class="num">4.9<span>★</span></div><div class="lbl">Avg Rating</div></div>
          <div class="stat"><div class="num">48<span>h</span></div><div class="lbl">Global Ship</div></div>
        </div>
      </div>
      <div class="hero-visual">
        <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=900&q=80" alt="Boutique">
        <div class="hero-float tl">
          <div class="k">Now trending</div>
          <div class="v">Quiet Luxe</div>
        </div>
        <div class="hero-float br">
          <div class="av">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="">
            <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80" alt="">
          </div>
          <div>
            <div class="k">Trusted by</div>
            <div class="v" style="font-size:16px;">2,400+ shoppers</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-head">
        <div>
          <div class="kicker">Collections</div>
          <h2>Browse the edit</h2>
          <p class="sub">Six curated worlds, each with its own story.</p>
        </div>
        <a href="#" class="link-arrow">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="cats" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-head">
        <div>
          <div class="kicker">The Boutique</div>
          <h2>Featured pieces</h2>
