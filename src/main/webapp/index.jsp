
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#f7f7f4">
<title>NexusShop — Shop smarter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700;800&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
:root {
  --ink:#20231f;
  --muted:#777d75;
  --line:#e9ebe5;
  --paper:#f7f7f4;
  --white:#fff;
  --green:#285b45;
  --green2:#e7f0e9;
  --orange:#e87951;
  --shadow:0 12px 35px rgba(31,43,34,.07);
}

* { box-sizing:border-box; }
html { scroll-behavior:smooth; }
body {
  margin:0;
  background:var(--paper);
  color:var(--ink);
  font-family:'DM Sans',sans-serif;
  line-height:1.5;
}
button,input,select { font:inherit; }
button { cursor:pointer; }
a { color:inherit;text-decoration:none; }
img { max-width:100%;display:block; }

.wrap {
  width:min(1180px,calc(100% - 40px));
  margin:auto;
}

.announcement {
  background:var(--green);
  color:white;
  text-align:center;
  padding:8px 12px;
  font-size:12px;
}

.announcement strong { color:#f4dca7; }

header {
  position:sticky;
  top:0;
  z-index:30;
  background:rgba(255,255,255,.94);
  backdrop-filter:blur(14px);
  border-bottom:1px solid var(--line);
}

.header {
  height:76px;
  display:flex;
  align-items:center;
  gap:28px;
}

.logo {
  font:800 25px Manrope,sans-serif;
  letter-spacing:-1.2px;
  white-space:nowrap;
}

.logo span { color:var(--green); }
.logo i {
  color:var(--orange);
  font-size:20px;
  margin-right:7px;
}

nav {
  display:flex;
  gap:25px;
  margin-right:auto;
}

nav a {
  font-size:13px;
  color:#60665f;
  font-weight:700;
}

nav a:hover { color:var(--green); }

.search {
  height:44px;
  width:min(310px,27vw);
  display:flex;
  align-items:center;
  gap:10px;
  padding:0 14px;
  background:#f4f5f1;
  border:1px solid transparent;
  border-radius:12px;
  color:var(--muted);
}

.search:focus-within {
  border-color:#9eb7a5;
  background:white;
}

.search input {
  border:0;
  outline:0;
  background:transparent;
  width:100%;
  font-size:13px;
}

.actions {
  display:flex;
  align-items:center;
  gap:7px;
}

.icon-btn {
  height:42px;
  min-width:42px;
  border:0;
  border-radius:12px;
  background:transparent;
  color:var(--ink);
  font-size:17px;
  position:relative;
}

.icon-btn:hover { background:#f1f3ee; }

.count {
  position:absolute;
  right:0;
  top:0;
  background:var(--orange);
  color:white;
  border:2px solid white;
  border-radius:50%;
  font-size:10px;
  min-width:18px;
  height:18px;
  display:grid;
  place-items:center;
}

.menu-btn { display:none; }

.hero {
  margin:26px auto 0;
  min-height:390px;
  border-radius:26px;
  overflow:hidden;
  position:relative;
  background:#263d31;
  color:white;
  display:flex;
  align-items:center;
}

.hero:before {
  content:"";
  position:absolute;
  inset:0;
  background:
    linear-gradient(90deg,rgba(22,43,32,.92),rgba(22,43,32,.62) 52%,rgba(22,43,32,.08)),
    url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85') center/cover;
}

.hero-content {
  position:relative;
  padding:58px 6%;
  max-width:620px;
}

.eyebrow {
  font-size:11px;
  font-weight:800;
  letter-spacing:1.8px;
  text-transform:uppercase;
  color:#d8e7d9;
}

.hero h1 {
  font:800 clamp(36px,5vw,58px)/1.08 Manrope,sans-serif;
  letter-spacing:-2px;
  margin:14px 0;
}

.hero p {
  color:#e0e8e0;
  max-width:440px;
  font-size:15px;
  margin:0 0 25px;
}

.btn {
  border:0;
  border-radius:12px;
  padding:13px 20px;
  font-weight:800;
  font-size:13px;
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap:9px;
  transition:.2s;
}

.btn:hover { transform:translateY(-2px); }
.btn-primary { background:var(--orange);color:white; }
.btn-primary:hover { background:#d9653e; }
.btn-dark { background:var(--green);color:white; }
.btn-outline { border:1px solid var(--line);background:white; }

.perks {
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:12px;
  margin:20px auto 0;
}

.perk {
  background:white;
  border:1px solid var(--line);
  border-radius:15px;
  padding:15px;
  display:flex;
  align-items:center;
  gap:12px;
}

.perk i { color:var(--green);font-size:18px; }
.perk b { display:block;font-size:12px; }
.perk small { display:block;color:var(--muted);font-size:11px; }

.section { padding:54px 0 8px; }

.section-head {
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:15px;
  margin-bottom:22px;
}

.kicker {
  color:var(--orange);
  font-size:10px;
  font-weight:800;
  letter-spacing:1.5px;
  text-transform:uppercase;
}

.section h2 {
  font:800 27px Manrope,sans-serif;
  letter-spacing:-.8px;
  margin:4px 0;
}

.sub { color:var(--muted);font-size:13px;margin:0; }
.text-link { color:var(--green);font-weight:800;font-size:12px; }

.categories {
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:13px;
}

.category {
  border:1px solid var(--line);
  background:white;
  border-radius:17px;
  padding:19px 10px;
  text-align:center;
  cursor:pointer;
  transition:.2s;
}

.category:hover,.category.active {
  border-color:#9db7a3;
  background:#f0f6f0;
  transform:translateY(-3px);
}

.cat-icon {
  width:48px;
  height:48px;
  background:var(--green2);
  border-radius:15px;
  display:grid;
  place-items:center;
  margin:0 auto 10px;
  color:var(--green);
  font-size:19px;
}

.category b { display:block;font-size:12px; }
.category small { color:var(--muted);font-size:10px; }

.toolbar {
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:12px;
  margin:18px 0;
}

.chips { display:flex;gap:7px;flex-wrap:wrap; }

.chip {
  border:1px solid var(--line);
  background:white;
  border-radius:30px;
  padding:8px 14px;
  font-size:11px;
  font-weight:700;
  color:#646a62;
}

.chip.active,.chip:hover {
  background:var(--green);
  border-color:var(--green);
  color:white;
}

.sort {
  border:1px solid var(--line);
  border-radius:10px;
  background:white;
  padding:9px 12px;
  font-size:11px;
}

.products {
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:17px;
}

.product {
  background:white;
  border:1px solid var(--line);
  border-radius:17px;
  overflow:hidden;
  transition:.2s;
  min-width:0;
}

.product:hover {
  transform:translateY(-4px);
  box-shadow:var(--shadow);
}

.photo {
  height:220px;
  background:#f0f1ed;
  position:relative;
  overflow:hidden;
}

.photo img {
  width:100%;
  height:100%;
  object-fit:cover;
  transition:.35s;
}

.product:hover .photo img { transform:scale(1.045); }

.tag {
  position:absolute;
  top:12px;
  left:12px;
  background:white;
  border-radius:7px;
  padding:5px 8px;
  font-size:9px;
  font-weight:800;
}

.heart {
  position:absolute;
  top:10px;
  right:10px;
  border:0;
  border-radius:50%;
  width:34px;
  height:34px;
  background:rgba(255,255,255,.94);
  color:#6c736b;
}

.heart.active { color:#e15f58; }

.product-info { padding:14px; }

.product-cat {
  font-size:9px;
  text-transform:uppercase;
  letter-spacing:1px;
  color:#899087;
  font-weight:800;
}

.product h3 {
  font-size:13px;
  margin:5px 0 7px;
  min-height:38px;
}

.rating { font-size:10px;color:#d69d32; }
.rating span { color:var(--muted);margin-left:4px; }

.price-row {
  display:flex;
  align-items:center;
  gap:8px;
  margin:10px 0 12px;
}

.price { font-size:17px;font-weight:800; }
.old { font-size:11px;color:#9a9f97;text-decoration:line-through; }

.add {
  width:100%;
  border:0;
  border-radius:9px;
  background:#edf3ee;
  color:var(--green);
  padding:10px;
  font-size:11px;
  font-weight:800;
}

.add:hover { background:var(--green);color:white; }

.empty {
  grid-column:1/-1;
  text-align:center;
  padding:45px 15px;
  color:var(--muted);
  background:white;
  border:1px dashed var(--line);
  border-radius:16px;
}

.promo {
  margin-top:55px;
  border-radius:22px;
  overflow:hidden;
  background:#e9eee7;
  display:grid;
  grid-template-columns:1fr 1fr;
  min-height:280px;
}

.promo-copy {
  padding:38px 8%;
  display:flex;
  flex-direction:column;
  align-items:flex-start;
  justify-content:center;
}

.promo-copy h2 {
  font:800 30px Manrope;
  line-height:1.15;
  margin:10px 0;
}

.promo-copy p {
  color:#657064;
  font-size:13px;
  max-width:390px;
}

.promo img {
  width:100%;
  height:100%;
  min-height:280px;
  object-fit:cover;
}

.reviews {
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:14px;
}

.review {
  background:white;
  border:1px solid var(--line);
  border-radius:16px;
  padding:20px;
}

.review .stars { color:#d69d32;font-size:12px; }
.review p { font-size:12px;color:#5e655d;line-height:1.7; }
.review b { font-size:11px; }
.review small { display:block;color:#969c93;font-size:10px; }

.newsletter {
  margin:55px 0 35px;
  background:var(--green);
  color:white;
  border-radius:20px;
  padding:34px 5%;
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:22px;
}

.newsletter h2 { font:800 23px Manrope;margin:0 0 4px; }
.newsletter p { font-size:12px;color:#d5e1d7;margin:0; }

.news-form {
  display:flex;
  gap:8px;
  width:min(420px,100%);
}

.news-form input {
  min-width:0;
  flex:1;
  border:0;
  border-radius:10px;
  padding:12px 14px;
  font-size:12px;
  outline:0;
}

.news-form button {
  background:var(--orange);
  color:white;
  border:0;
  border-radius:10px;
  padding:0 17px;
  font-size:12px;
  font-weight:800;
}

footer {
  border-top:1px solid var(--line);
  padding:30px 0 90px;
}

.foot {
  display:flex;
  justify-content:space-between;
  gap:20px;
  align-items:center;
}

.foot p { font-size:11px;color:var(--muted); }

.foot-links {
  display:flex;
  gap:18px;
  color:var(--muted);
  font-size:11px;
}

.bottom-nav { display:none; }

.overlay {
  position:fixed;
  inset:0;
  background:rgba(20,29,23,.38);
  z-index:49;
  opacity:0;
  pointer-events:none;
  transition:.2s;
}

.overlay.show { opacity:1;pointer-events:auto; }

.drawer {
  position:fixed;
  z-index:50;
  right:0;
  top:0;
  height:100dvh;
  width:min(430px,100%);
  background:white;
  transform:translateX(105%);
  transition:.28s;
  display:flex;
  flex-direction:column;
  box-shadow:-15px 0 40px rgba(0,0,0,.12);
}

.drawer.open { transform:translateX(0); }

.drawer-head {
  padding:22px;
  border-bottom:1px solid var(--line);
  display:flex;
  justify-content:space-between;
  align-items:center;
}

.drawer-head h2 { font:800 20px Manrope;margin:0; }

.close {
  border:0;
  background:#f2f4ef;
  border-radius:50%;
  width:35px;
  height:35px;
}

.cart-items { padding:14px 20px;overflow:auto;flex:1; }

.cart-item {
  display:grid;
  grid-template-columns:70px 1fr auto;
  gap:12px;
  padding:14px 0;
  border-bottom:1px solid var(--line);
  align-items:center;
}

.cart-item img {
  width:70px;
  height:70px;
  object-fit:cover;
  border-radius:10px;
  background:#f1f2ef;
}

.cart-item b { font-size:12px;display:block; }
.cart-item small { font-size:11px;color:var(--muted); }

.qty { display:flex;align-items:center;gap:9px;margin-top:7px; }

.qty button {
  width:23px;
  height:23px;
  border:1px solid var(--line);
  background:white;
  border-radius:6px;
}

.remove { border:0;background:none;color:#a0a59d; }

.cart-foot {
  border-top:1px solid var(--line);
  padding:20px;
}

.total {
  display:flex;
  justify-content:space-between;
  font-weight:800;
  margin-bottom:14px;
}

.cart-foot .btn { width:100%; }

.empty-cart {
  text-align:center;
  padding:55px 10px;
  color:var(--muted);
}

.empty-cart i {
  font-size:35px;
  color:#b8c8ba;
  margin-bottom:12px;
}

.toast {
  position:fixed;
  bottom:25px;
  left:50%;
  transform:translate(-50%,20px);
  opacity:0;
  pointer-events:none;
  background:#202c24;
  color:white;
  padding:11px 17px;
  border-radius:10px;
  font-size:12px;
  z-index:70;
  transition:.2s;
}

.toast.show {
  opacity:1;
  transform:translate(-50%,0);
}

/* Tablet */
@media(max-width:950px) {
  nav { gap:14px; }
  .categories { grid-template-columns:repeat(3,1fr); }
  .products { grid-template-columns:repeat(3,1fr); }
  .photo { height:205px; }
  .perks { grid-template-columns:repeat(2,1fr); }
}

/* Mobile */
@media(max-width:700px) {
  .wrap { width:min(100% - 28px,560px); }
  .announcement { font-size:10px; }
  .header { height:64px;gap:10px; }
  .menu-btn { display:block; }
  .logo { font-size:21px; }
  .header nav { display:none; }
  .search { width:auto;flex:1;height:39px;padding:0 10px; }
  .search input { font-size:11px; }
  .actions { gap:0; }
  .actions .account { display:none; }
  .icon-btn { min-width:36px;height:38px;font-size:15px; }

  .hero {
    margin-top:14px;
    min-height:355px;
    border-radius:19px;
  }

  .hero-content { padding:38px 23px; }
  .hero h1 { font-size:39px;letter-spacing:-1.5px; }
  .hero p { font-size:13px; }

  .perks { gap:8px; }
  .perk { padding:11px 9px;gap:8px; }
  .perk i { font-size:15px; }
  .perk b { font-size:10px; }
  .perk small { font-size:9px; }

  .section { padding-top:39px; }
  .section h2 { font-size:23px; }

  .categories {
    grid-template-columns:repeat(3,1fr);
    gap:8px;
  }

  .category { padding:13px 5px; }
  .cat-icon { width:40px;height:40px;font-size:16px; }
  .category b { font-size:10px; }
  .category small { font-size:9px; }

  .products {
    grid-template-columns:repeat(2,minmax(0,1fr));
    gap:10px;
  }

  .photo { height:auto;aspect-ratio:1/1; }
  .product-info { padding:11px; }
  .product h3 { font-size:11px;min-height:34px; }
  .price { font-size:15px; }

  .toolbar {
    align-items:flex-start;
    flex-direction:column;
  }

  .sort { align-self:flex-end; }

  .promo {
    grid-template-columns:1fr;
    margin-top:38px;
  }

  .promo-copy { padding:27px; }
  .promo-copy h2 { font-size:25px; }

  .promo img {
    min-height:180px;
    max-height:220px;
    order:-1;
  }

  .reviews { grid-template-columns:1fr; }
  .review { padding:16px; }

  .newsletter {
    margin:38px 0 25px;
    padding:25px 20px;
    display:block;
  }

  .newsletter h2 { font-size:21px; }
  .news-form { margin-top:17px; }

  .foot { display:block;text-align:center; }
  .foot-links { justify-content:center;flex-wrap:wrap; }

  .bottom-nav {
    display:flex;
    position:fixed;
    bottom:0;
    left:0;
    right:0;
    z-index:35;
    background:rgba(255,255,255,.97);
    backdrop-filter:blur(12px);
    border-top:1px solid var(--line);
    justify-content:space-around;
    padding:8px 5px calc(8px + env(safe-area-inset-bottom));
  }

  .bottom-nav a,.bottom-nav button {
    display:flex;
    flex-direction:column;
    align-items:center;
    gap:3px;
    color:#737a71;
    font-size:9px;
    font-weight:700;
    border:0;
    background:none;
    min-width:55px;
  }

  .bottom-nav i { font-size:17px; }
  .bottom-nav .selected { color:var(--green); }
  footer { padding-bottom:90px; }
}

@media(max-width:380px) {
  .logo { font-size:18px; }
  .search { max-width:130px; }
  .hero h1 { font-size:34px; }
  .categories { grid-template-columns:repeat(2,1fr); }
}
</style>
</head>

<body>

<div class="announcement">
  A little something extra: <strong>free shipping</strong> on orders over $75
</div>

<header>
  <div class="wrap header">

    <button class="icon-btn menu-btn" id="menuBtn" aria-label="Open menu">
      <i class="fa-solid fa-bars"></i>
    </button>

    <a class="logo" href="#">
      <i class="fa-solid fa-bag-shopping"></i>Nexus<span>Shop.</span>
    </a>

    <nav aria-label="Main navigation">
      <a href="#home">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <label class="search">
      <i class="fa-solid fa-magnifying-glass"></i>
      <input id="searchInput" type="search"
        placeholder="Search products..."
        aria-label="Search products">
    </label>

    <div class="actions">
      <button class="icon-btn account"
        aria-label="Account"
        onclick="notify('Account sign-in can be connected to your backend.')">
        <i class="fa-regular fa-user"></i>
      </button>

      <button class="icon-btn"
        aria-label="Wishlist"
        onclick="showWishlist()">
        <i class="fa-regular fa-heart"></i>
      </button>

      <button class="icon-btn" id="cartOpen" aria-label="Open cart">
        <i class="fa-solid fa-bag-shopping"></i>
        <span class="count" id="cartCount">0</span>
      </button>
    </div>

  </div>
</header>

<main id="home" class="wrap">

  <section class="hero">
    <div class="hero-content">
      <div class="eyebrow">Thoughtful picks. Everyday prices.</div>
      <h1>Good things.<br>Great finds.</h1>
      <p>
        Discover everyday essentials, useful tech and little upgrades
        that make life better.
      </p>
      <a class="btn btn-primary" href="#products">
        Explore the collection
        <i class="fa-solid fa-arrow-right"></i>
      </a>
    </div>
  </section>

  <section class="perks">
    <div class="perk">
      <i class="fa-solid fa-truck-fast"></i>
      <div><b>Free shipping</b><small>On orders over $75</small></div>
    </div>
    <div class="perk">
      <i class="fa-solid fa-rotate-left"></i>
      <div><b>Easy returns</b><small>30-day return window</small></div>
    </div>
    <div class="perk">
      <i class="fa-solid fa-lock"></i>
      <div><b>Secure checkout</b><small>Your data stays protected</small></div>
    </div>
    <div class="perk">
      <i class="fa-solid fa-headset"></i>
      <div><b>Here to help</b><small>Friendly customer support</small></div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="section-head">
      <div>
        <div class="kicker">Find your thing</div>
        <h2>Shop by category</h2>
        <p class="sub">A quick way to get where you want to go.</p>
      </div>
      <a class="text-link" href="#products">View all products →</a>
    </div>
    <div class="categories" id="categoryList"></div>
  </section>

  <section class="section" id="products">
    <div class="section-head">
      <div>
        <div class="kicker">Picked for you</div>
        <h2>Popular right now</h2>
        <p class="sub">Customer favourites worth a closer look.</p>
      </div>
    </div>

    <div class="toolbar">
      <div class="chips" id="filterChips">
        <button class="chip active" data-filter="All">All items</button>
        <button class="chip" data-filter="Smartphones">Tech</button>
        <button class="chip" data-filter="Accessories">Accessories</button>
        <button class="chip" data-filter="Footwear">Footwear</button>
        <button class="chip" data-filter="Clothing">Style</button>
      </div>

      <select class="sort" id="sortSelect" aria-label="Sort products">
        <option value="featured">Sort: Featured</option>
        <option value="low">Price: Low to high</option>
        <option value="high">Price: High to low</option>
        <option value="rating">Top rated</option>
      </select>
    </div>

    <div class="products" id="productGrid" aria-live="polite"></div>
  </section>

  <section class="promo">
    <div class="promo-copy">
      <div class="kicker">The everyday upgrade</div>
      <h2>Small upgrades.<br>Big difference.</h2>
      <p>
        Explore practical tech and accessories picked to fit your day,
        your style and your budget.
      </p>
      <a href="#products" class="btn btn-dark">
        Find your next favourite
        <i class="fa-solid fa-arrow-right"></i>
      </a>
    </div>

    <img
      src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1000&q=85"
      alt="Everyday style collection">
  </section>

  <section class="section" id="reviews">
    <div class="section-head">
      <div>
        <div class="kicker">Kind words</div>
        <h2>Shopping made simple</h2>
        <p class="sub">A few notes from our happy shoppers.</p>
      </div>
    </div>

    <div class="reviews">
      <article class="review">
        <div class="stars">★★★★★</div>
        <p>“Easy to browse, the product details were clear and my order arrived quickly. A really smooth experience.”</p>
        <b>Ava M.</b>
        <small>Verified customer</small>
      </article>

      <article class="review">
        <div class="stars">★★★★★</div>
        <p>“Great selection and a checkout that didn't make me jump through hoops. I'll be back.”</p>
        <b>Michael L.</b>
        <small>Returning customer</small>
      </article>

      <article class="review">
        <div class="stars">★★★★★</div>
        <p>“Found exactly what I needed without endless scrolling. The layout is simple and lovely.”</p>
        <b>Sophia C.</b>
        <small>Verified customer</small>
      </article>
    </div>
  </section>

  <section class="newsletter">
    <div>
      <h2>A good email, once in a while.</h2>
      <p>New finds, useful updates and offers. No inbox overload.</p>
    </div>

    <form class="news-form" id="newsletterForm">
      <input type="email" id="email"
        placeholder="Your email address"
        aria-label="Your email address" required>
      <button type="submit">Sign me up</button>
    </form>
  </section>

</main>

<footer>
  <div class="wrap foot">
    <div>
      <a class="logo" href="#">Nexus<span>Shop.</span></a>
      <p>Everyday finds, thoughtfully selected. ©
        <span id="year"></span> NexusShop.</p>
    </div>
    <div class="foot-links">
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#reviews">Reviews</a>
      <a href="mailto:hello@nexusshop.example">Contact</a>
    </div>
  </div>
</footer>

<div class="bottom-nav">
  <a class="selected" href="#home"><i class="fa-solid fa-house"></i>Home</a>
  <a href="#categories"><i class="fa-solid fa-grip"></i>Categories</a>
  <a href="#products"><i class="fa-solid fa-magnifying-glass"></i>Shop</a>
  <button id="mobileCart"><i class="fa-solid fa-bag-shopping"></i>Cart</button>
</div>

<div class="overlay" id="overlay"></div>

<aside class="drawer" id="cartDrawer"
  aria-label="Shopping cart" aria-modal="true" role="dialog">

  <div class="drawer-head">
    <h2>Your shopping bag <span id="cartTitleCount">(0)</span></h2>
    <button class="close" id="cartClose" aria-label="Close cart">
      <i class="fa-solid fa-xmark"></i>
    </button>
  </div>

  <div class="cart-items" id="cartItems"></div>

  <div class="cart-foot" id="cartFooter" hidden>
    <div class="total">
      <span>Subtotal</span>
      <span id="cartTotal">$0.00</span>
    </div>
    <small style="display:block;color:#777d75;font-size:10px;margin:-6px 0 13px">
      Shipping and taxes calculated at checkout.
    </small>
    <button class="btn btn-primary" id="checkoutBtn">
      Continue to checkout
      <i class="fa-solid fa-arrow-right"></i>
    </button>
  </div>
</aside>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
const products = [
  {id:1,name:'iPhone 14 Pro Max',category:'Smartphones',price:1099,old:1199,rating:4.9,reviews:128,badge:'Bestseller',image:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85'},
  {id:2,name:'MacBook Pro 14-inch',category:'Laptops',price:1999,rating:4.8,reviews:86,badge:'Popular',image:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85'},
  {id:3,name:'Minimal Everyday Watch',category:'Accessories',price:149,old:179,rating:4.7,reviews:214,badge:'Sale',image:'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85'},
  {id:4,name:'Air Max Everyday Sneakers',category:'Footwear',price:150,rating:4.6,reviews:53,badge:'',image:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85'},
  {id:5,name:'Mirrorless Digital Camera',category:'Gadgets',price:899,rating:4.9,reviews:42,badge:'Top rated',image:'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85'},
  {id:6,name:'Signature Eau de Parfum',category:'Accessories',price:120,rating:4.8,reviews:189,badge:'',image:'https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85'},
  {id:7,name:'City Explorer Backpack',category:'Accessories',price:79,old:99,rating:4.5,reviews:67,badge:'Sale',image:'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85'},
  {id:8,name:'Wireless Noise-Cancelling Headphones',category:'Gadgets',price:249,rating:4.9,reviews:156,badge:'Bestseller',image:'https://images.unsplash.com/photo-1509966756634-9c23dd6e6815?auto=format&fit=crop&w=700&q=85'},
  {id:9,name:'Classic Cotton Shirt',category:'Clothing',price:49,rating:4.6,reviews:92,badge:'New',image:'https://images.unsplash.com/photo-1598033129183-c4f50c736f10?auto=format&fit=crop&w=700&q=85'},
  {id:10,name:'Everyday Sunglasses',category:'Accessories',price:65,rating:4.4,reviews:74,badge:'',image:'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=85'},
  {id:11,name:'Portable Bluetooth Speaker',category:'Gadgets',price:89,rating:4.7,reviews:118,badge:'Popular',image:'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=700&q=85'},
  {id:12,name:'Lightweight Travel Shoes',category:'Footwear',price:95,rating:4.5,reviews:61,badge:'',image:'https://images.unsplash.com/photo-1491553895911-0055d6b3a2?auto=format&fit=crop&w=700&q=85'}
];

const categories = [
  ['Smartphones','fa-mobile-screen-button'],
  ['Laptops','fa-laptop'],
  ['Clothing','fa-shirt'],
  ['Gadgets','fa-headphones'],
  ['Footwear','fa-shoe-prints'],
  ['Accessories','fa-bag-shopping']
];

let cart = {};
let wishlist = new Set();
let activeFilter = 'All';

const $ = id => document.getElementById(id);
const money = n => '$' + n.toLocaleString('en-US',{
  minimumFractionDigits:2,
  maximumFractionDigits:2
});

function notify(message) {
  const toast = $('toast');
  toast.textContent = message;
  toast.classList.add('show');
  clearTimeout(notify.timer);
  notify.timer = setTimeout(
    () => toast.classList.remove('show'),2300
  );
}

function renderCategories() {
  $('categoryList').innerHTML = categories.map(([name,icon]) => `
    <button class="category ${activeFilter===name?'active':''}"
      data-category="${name}">
      <span class="cat-icon">
        <i class="fa-solid ${icon}"></i>
      </span>
      <b>${name}</b>
      <small>${products.filter(p=>p.category===name).length} picks</small>
    </button>
  `).join('');
}

function renderProducts() {
  const query = $('searchInput').value.trim().toLowerCase();

  let list = products.filter(p =>
    (activeFilter==='All'||p.category===activeFilter) &&
    (!query || (p.name+' '+p.category).toLowerCase().includes(query))
  );

  const sort = $('sortSelect').value;

  if(sort==='low') list.sort((a,b)=>a.price-b.price);
  if(sort==='high') list.sort((a,b)=>b.price-a.price);
  if(sort==='rating') list.sort((a,b)=>b.rating-a.rating);

  $('productGrid').innerHTML = list.length
    ? list.map(p => `
      <article class="product">
        <div class="photo">
          <img src="${p.image}" alt="${p.name}" loading="lazy">
          ${p.badge ? `<span class="tag">${p.badge}</span>` : ''}
          <button class="heart ${wishlist.has(p.id)?'active':''}"
            data-wish="${p.id}" aria-label="Toggle ${p.name} wishlist">
            <i class="${wishlist.has(p.id)?'fa-solid':'fa-regular'} fa-heart"></i>
          </button>
        </div>
        <div class="product-info">
          <div class="product-cat">${p.category}</div>
          <h3>${p.name}</h3>
          <div class="rating">
            ★ ${p.rating}
            <span>(${p.reviews} reviews)</span>
          </div>
          <div class="price-row">
            <span class="price">${money(p.price)}</span>
            ${p.old ? `<span class="old">${money(p.old)}</span>` : ''}
          </div>
          <button class="add" data-add="${p.id}">
            <i class="fa-solid fa-plus"></i> Add to bag
          </button>
        </div>
      </article>
    `).join('')
    : `
      <div class="empty">
        <i class="fa-solid fa-magnifying-glass"></i>
        <p>No products found. Try another search or category.</p>
        <button class="btn btn-outline" onclick="clearFilters">
          Clear filters
        </button>
      </div>
    `;
}

function clearFilters() {
  activeFilter = 'All';
  $('searchInput').value = '';
  $('sortSelect').value = 'featured';

  document.querySelectorAll('.chip').forEach(chip => {
    chip.classList.toggle('active',chip.dataset.filter==='All');
  });

  renderCategories();
  renderProducts();
}

function addToCart(id) {
  cart[id] = (cart[id]||0)+1;
  updateCart();
  notify('Added to your shopping bag');
}

function updateCart() {
  const entries = Object.entries(cart).filter(([,qty])=>qty>0);
  const count = entries.reduce((sum,[,qty])=>sum+qty,0);

  $('cartCount').textContent = count;
  $('cartTitleCount').textContent = `(${count})`;
  $('cartFooter').hidden = !count;

  if(!count) {
    $('cartItems').innerHTML = `
      <div class="empty-cart">
        <i class="fa-solid fa-bag-shopping"></i>
        <h3>Your bag is empty</h3>
        <p>Looks like you have not added anything yet.</p>
        <button class="btn btn-dark" onclick="closeCart()">
          Explore products
        </button>
      </div>
    `;
    $('cartTotal').textContent = money(0);
    return;
  }

  let total = 0;

  $('cartItems').innerHTML = entries.map(([id,qty]) => {
    const product = products.find(p=>p.id===Number(id));
    total += product.price*qty;

    return `
      <div class="cart-item">
        <img src="${product.image}" alt="${product.name}">
        <div>
          <b>${product.name}</b>
          <small>${money(product.price)}</small>
          <div class="qty">
            <button data-qty="${id}" data-change="-1">−</button>
            <span>${qty}</span>
            <button data-qty="${id}" data-change="1">+</button>
          </div>
        </div>
        <button class="remove" data-remove="${id}">
          <i class="fa-regular fa-trash-can"></i>
        </button>
      </div>
    `;
  }).join('');

  $('cartTotal').textContent = money(total);
}

function openCart() {
  $('overlay').classList.add('show');
  $('cartDrawer').classList.add('open');
  document.body.style.overflow='hidden';
}

function closeCart() {
  $('overlay').classList.remove('show');
  $('cartDrawer').classList.remove('open');
  document.body.style.overflow='';
}

function showWishlist() {
  const items = products.filter(p=>wishlist.has(p.id));

  if(!items.length) {
    notify('Your wishlist is empty. Tap a heart to save an item.');
    return;
  }

  activeFilter = 'All';
  $('searchInput').value = '';
  renderProducts();
  $('products').scrollIntoView({behavior:'smooth'});
  notify(`You have ${items.length} saved item(s).`);
}

// Category selection
$('categoryList').addEventListener('click',event => {
  const button = event.target.closest('[data-category]');
  if(!button) return;

  activeFilter = button.dataset.category;

  document.querySelectorAll('.chip').forEach(chip => {
    chip.classList.toggle(
      'active',chip.dataset.filter===activeFilter
    );
  });

  renderCategories();
  renderProducts();
  $('products').scrollIntoView({behavior:'smooth'});
});

// Filter buttons
$('filterChips').addEventListener('click',event => {
  const button = event.target.closest('[data-filter]');
  if(!button) return;

  activeFilter = button.dataset.filter;

  document.querySelectorAll('.chip').forEach(chip => {
    chip.classList.toggle('active',chip===button);
  });

  renderCategories();
  renderProducts();
});

// Product actions
$('productGrid').addEventListener('click',event => {
  const add = event.target.closest('[data-add]');
  const wish = event.target.closest('[data-wish]');

  if(add) addToCart(Number(add.dataset.add));

  if(wish) {
    const id = Number(wish.dataset.wish);

    wishlist.has(id)
      ? wishlist.delete(id)
      : wishlist.add(id);

    renderProducts();

    notify(
      wishlist.has(id)
        ? 'Saved to wishlist'
        : 'Removed from wishlist'
    );
  }
});

// Cart quantity and remove
$('cartItems').addEventListener('click',event => {
  const quantityButton = event.target.closest('[data-qty]');
  const removeButton = event.target.closest('[data-remove]');

  if(quantityButton) {
    const id = quantityButton.dataset.qty;

    cart[id] = (cart[id]||0) +
      Number(quantityButton.dataset.change);

    if(cart[id]<=0) delete cart[id];

    updateCart();
  }

  if(removeButton) {
    delete cart[removeButton.dataset.remove];
    updateCart();
  }
});

// Search and sorting
$('searchInput').addEventListener('input',renderProducts);
$('sortSelect').addEventListener('change',renderProducts);

// Cart drawer
$('cartOpen').addEventListener('click',openCart);
$('mobileCart').addEventListener('click',openCart);
$('cartClose').addEventListener('click',closeCart);
$('overlay').addEventListener('click',closeCart);

// Demo checkout
$('checkoutBtn').addEventListener('click',() => {
  notify('Demo checkout: connect a payment provider and backend.');
});

// Newsletter
$('newsletterForm').addEventListener('submit',event => {
  event.preventDefault();

  if(!$('email').checkValidity()) {
    return notify('Please enter a valid email address.');
  }

  notify('Thanks for subscribing!');
  $('email').value='';
});

// Mobile menu
$('menuBtn').addEventListener('click',() => {
  notify('Use the category and shop links below to explore.');
});

// Keyboard accessibility
document.addEventListener('keydown',event => {
  if(event.key==='Escape') closeCart();
});

// Initial render
$('year').textContent = new Date().getFullYear();

renderCategories();
renderProducts();
updateCart();
</script>

</body>
</html>
