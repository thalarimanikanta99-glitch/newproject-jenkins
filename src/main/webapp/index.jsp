<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ChromaCart — Vibrant E‑Commerce</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(145deg, #fef9f0 0%, #fff5e8 100%);
            color: #1e1b1b;
            scroll-behavior: smooth;
        }

        /* modern color variables */
        :root {
            --vibrant-pink: #ff6b8b;
            --vibrant-coral: #ff8c5a;
            --vibrant-gold: #ffc857;
            --vibrant-teal: #2bd9c6;
            --deep-purple: #6c3cc9;
            --deep-navy: #1a2a3f;
            --glass-white: rgba(255, 255, 255, 0.92);
            --shadow-lg: 0 25px 45px -12px rgba(0, 0, 0, 0.2);
            --shadow-md: 0 12px 28px -8px rgba(0, 0, 0, 0.08);
            --radius-xl: 28px;
            --radius-md: 18px;
            --transition: all 0.25s ease;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* header glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 248, 240, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 2px solid rgba(255, 107, 139, 0.2);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 16px;
            padding: 14px 0;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 1.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--vibrant-pink), var(--vibrant-coral), var(--vibrant-gold));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand span {
            background: linear-gradient(145deg, var(--deep-purple), var(--vibrant-teal));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav ul li a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 600;
            color: #2f2e2e;
            transition: var(--transition);
            background: transparent;
        }

        nav ul li a:hover {
            background: var(--vibrant-pink);
            color: white;
            box-shadow: 0 8px 14px rgba(255, 107, 139, 0.3);
        }

        .search-bar {
            background: white;
            border-radius: 60px;
            padding: 6px 12px;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.02);
            border: 1px solid #ffddd3;
        }

        .search-bar input {
            border: none;
            background: transparent;
            outline: none;
            font-size: 0.9rem;
            width: 220px;
            padding: 8px 0;
        }

        .search-bar button {
            background: var(--vibrant-gold);
            border: none;
            padding: 8px 14px;
            border-radius: 40px;
            color: #2d1b1b;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .search-bar button:hover {
            background: var(--vibrant-coral);
            color: white;
        }

        .cart-icon {
            position: relative;
            font-size: 1.6rem;
            color: var(--deep-navy);
            background: white;
            width: 46px;
            height: 46px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            box-shadow: var(--shadow-md);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--vibrant-pink);
            color: white;
            border-radius: 40px;
            font-size: 12px;
            font-weight: bold;
            padding: 2px 8px;
            min-width: 22px;
            text-align: center;
        }

        .mobile-toggle {
            display: none;
            font-size: 1.8rem;
            background: none;
            border: none;
            cursor: pointer;
            color: var(--deep-purple);
        }

        /* HERO dynamic gradient */
        .hero {
            background: linear-gradient(125deg, #ffecd2 0%, #fcb69f 100%);
            border-radius: 0 0 48px 48px;
            margin: 12px 20px 32px 20px;
            padding: 64px 32px;
            text-align: center;
            box-shadow: var(--shadow-lg);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "✨";
            font-size: 180px;
            position: absolute;
            right: -30px;
            bottom: -40px;
            opacity: 0.2;
            pointer-events: none;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.2rem;
            background: linear-gradient(145deg, #3c2a4d, #a03e6b);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 18px;
        }

        .hero p {
            font-size: 1.1rem;
            max-width: 640px;
            margin: 0 auto 28px;
            color: #2c2b2b;
        }

        .btn-group {
            display: flex;
            gap: 18px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            font-size: 1rem;
        }

        .btn-primary {
            background: var(--deep-purple);
            color: white;
            box-shadow: 0 8px 16px rgba(108, 60, 201, 0.3);
        }

        .btn-primary:hover {
            background: #532cac;
            transform: scale(1.02);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.9);
            color: var(--deep-navy);
            border: 1px solid #ffb47b;
        }

        /* Section titles */
        .section-title {
            text-align: center;
            margin: 48px 0 18px;
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2.2rem;
            background: linear-gradient(145deg, #e25e5e, #c74d8c);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .section-desc {
            text-align: center;
            color: #5b4b3c;
            margin-bottom: 32px;
        }

        /* Categories grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin: 30px 0;
        }

        .cat-card {
            background: white;
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            box-shadow: var(--shadow-md);
            border: 1px solid rgba(255, 140, 90, 0.2);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            background: linear-gradient(145deg, #fff6e8, #ffffff);
            box-shadow: 0 20px 30px -12px rgba(255, 107, 139, 0.3);
            border-color: var(--vibrant-pink);
        }

        .cat-icon {
            font-size: 2.8rem;
            background: linear-gradient(145deg, var(--vibrant-pink), var(--vibrant-coral));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* products grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
            margin: 20px 0 50px;
        }

        .product-card {
            background: white;
            border-radius: 32px;
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-md);
            position: relative;
            backdrop-filter: blur(2px);
        }

        .product-card:hover {
            transform: translateY(-8px) scale(1.01);
            box-shadow: 0 30px 40px -15px rgba(0, 0, 0, 0.2);
        }

        .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: linear-gradient(95deg, #ffb347, #ff6b6b);
            padding: 5px 14px;
            border-radius: 30px;
            color: white;
            font-weight: 700;
            font-size: 0.7rem;
            z-index: 2;
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.3s;
        }

        .product-info {
            padding: 18px 16px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }

        .price-block {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 10px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.5rem;
            color: var(--deep-purple);
        }

        .old-price {
            text-decoration: line-through;
            color: gray;
            font-size: 0.9rem;
        }

        .rating {
            color: var(--vibrant-gold);
            font-size: 0.85rem;
        }

        .product-actions {
            display: flex;
            gap: 12px;
            padding: 0 16px 20px;
        }

        .add-cart-btn {
            background: linear-gradient(95deg, var(--deep-purple), #864ef0);
            border: none;
            flex: 1;
            padding: 12px;
            border-radius: 40px;
            color: white;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
        }

        .wishlist-btn {
            background: #fff0e7;
            border: none;
            width: 44px;
            border-radius: 40px;
            cursor: pointer;
            color: var(--vibrant-pink);
            font-size: 1.2rem;
        }

        /* flash sale section double gradient */
        .flash-sale {
            background: radial-gradient(circle at 10% 30%, #ffdde1, #ee9ca7);
            border-radius: 48px;
            padding: 40px;
            margin: 40px 0;
            display: flex;
            flex-wrap: wrap;
            gap: 28px;
            align-items: center;
            box-shadow: var(--shadow-lg);
        }

        .flash-img {
            flex: 1;
            min-width: 200px;
            border-radius: 32px;
            overflow: hidden;
            box-shadow: 12px 12px 0 rgba(108, 60, 201, 0.2);
        }

        .flash-img img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            display: block;
        }

        .flash-content {
            flex: 1.2;
        }

        .timer-group {
            display: flex;
            gap: 18px;
            margin: 20px 0;
        }

        .time-card {
            background: #2c1f2f;
            color: #ffefcf;
            padding: 12px 16px;
            border-radius: 28px;
            text-align: center;
            min-width: 75px;
            font-weight: 800;
            font-size: 1.6rem;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        }

        .deal-price {
            font-size: 2rem;
            font-weight: 800;
            background: #ffebc2;
            display: inline-block;
            padding: 6px 22px;
            border-radius: 60px;
        }

        /* testimonials slider style */
        .testimonials-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 4px 32px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            min-width: 300px;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(8px);
            border-radius: 32px;
            padding: 24px;
            border: 1px solid #ffbc8c;
        }

        /* newsletter */
        .newsletter-block {
            background: linear-gradient(115deg, #201e3a, #3a2c62);
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            color: white;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 18px;
        }

        .newsletter-form input {
            padding: 14px 24px;
            border-radius: 80px;
            border: none;
            width: 280px;
            background: #fffbee;
        }

        .footer {
            margin-top: 60px;
            background: #1f1b2c;
            color: #dcd0ff;
            border-radius: 40px 40px 0 0;
            padding: 48px 0 24px;
        }

        @media (max-width: 800px) {
            .mobile-toggle {
                display: block;
            }
            nav.main-nav {
                display: none;
            }
            .hero h1 {
                font-size: 2rem;
            }
            .container {
                padding: 0 20px;
            }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars-staggered"></i></button>
            <div class="brand">CHROMA<span>CART</span></div>
        </div>

        <nav class="main-nav" id="desktopNav">
            <ul>
                <li><a href="#">🏠 Home</a></li>
                <li><a href="#" id="catScrollLink">✨ Categories</a></li>
                <li><a href="#">🔥 Trending</a></li>
                <li><a href="#dealsSection">⚡ Flash Sale</a></li>
            </ul>
        </nav>

        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="search-bar">
                <input type="text" id="searchInput" placeholder="Search products...">
                <button id="searchBtn"><i class="fas fa-search"></i> Find</button>
            </div>
            <div class="cart-icon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <!-- mobile nav -->
    <div id="mobileNavPanel" style="display: none; background: #fffaf5; border-top: 2px solid #ffc9b5; padding: 16px 0;">
        <div class="container">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">Home</a></li>
                <li><a href="#" id="mobileCatLink">Categories</a></li>
                <li><a href="#dealsSection">Deals</a></li>
                <li><a href="#">Support</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <!-- Hero -->
    <section class="hero">
        <div class="container">
            <h1>Summer chromatic vibes 🌈</h1>
            <p>Bold colors, epic deals & free shipping on orders over $50. Upgrade your style today!</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop now</button>
                <button class="btn btn-secondary" id="exploreDealsBtn">Explore deals →</button>
            </div>
        </div>
    </section>

    <!-- Categories section -->
    <div class="container" id="categoriesSection">
        <div class="section-title">🎨 vibrant categories</div>
        <div class="section-desc">tap any category to filter instantly</div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>

    <!-- Products section -->
    <div class="container">
        <div class="section-title">✨ trending now</div>
        <div class="section-desc">most loved by our community</div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <!-- Flash Sale / deal with timer -->
    <div class="container" id="dealsSection">
        <div class="flash-sale">
            <div class="flash-img">
                <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Wireless Headphones">
            </div>
            <div class="flash-content">
                <h2 style="font-size: 2rem;">⚡ FLASH SALE ⚡</h2>
                <p>Beats Studio Pro — immersive sound, vibrant colorway</p>
                <div class="timer-group" id="countdownTimer">
                    <div class="time-card"><span id="dealDays">0</span><br><span style="font-size:12px;">Days</span></div>
                    <div class="time-card"><span id="dealHours">00</span><br><span style="font-size:12px;">Hrs</span></div>
                    <div class="time-card"><span id="dealMins">00</span><br><span style="font-size:12px;">Mins</span></div>
                    <div class="time-card"><span id="dealSecs">00</span><br><span style="font-size:12px;">Secs</span></div>
                </div>
                <div class="deal-price">$279 <span style="text-decoration:line-through; font-size:1.2rem;">$399</span> <span style="background:#ff4757; border-radius:40px; padding:4px 12px;">-30%</span></div>
                <button class="btn btn-primary" id="flashDealBtn" style="margin-top: 20px; background:#6c3cc9;"><i class="fas fa-bolt"></i> Grab deal now</button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container">
        <div class="section-title">❤️ customer love</div>
        <div class="testimonials-scroll" id="testimonialsList">
            <!-- dynamic or static but colorful -->
        </div>
    </div>

    <!-- Newsletter -->
    <div class="container">
        <div class="newsletter-block">
            <h3><i class="fas fa-envelope-open-text"></i> Get color drops & exclusive offers</h3>
            <p>Subscribe and receive 15% off your next order</p>
            <div class="newsletter-form">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="btn btn-primary" id="subscribeNewsBtn" style="background:#ff8c5a;">Subscribe →</button>
            </div>
            <div id="newsMsg" style="margin-top: 16px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer class="footer">
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 28px;">
        <div>
            <div class="brand" style="font-size: 1.8rem;">CHROMA<span>CART</span></div>
            <p style="margin-top: 12px; opacity: 0.7;">Vibrant finds, joyful shopping.</p>
        </div>
        <div style="display: flex; gap: 50px;">
            <div>Explore<br>New arrivals<br>Best sellers</div>
            <div>Support<br>FAQs<br>Returns</div>
        </div>
    </div>
    <div style="text-align: center; margin-top: 40px; font-size: 13px;">© 2025 ChromaCart — all colors reserved</div>
</footer>

<script>
    // ---------- COLORFUL DATASET ----------
    const CATEGORIES = [
        { id: 'phones', name: '📱 Smartphones', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: '💻 Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: '👗 Fashion', icon: 'fa-shirt' },
        { id: 'gadgets', name: '🎧 Audio', icon: 'fa-headphones' },
        { id: 'footwear', name: '👟 Sneakers', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: '⌚ Accessories', icon: 'fa-clock' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'Pixel 8 Pro', price: 899, oldPrice: 999, rating: 5, reviews: 245, badge: '🔥 Hot', img: 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'Zenbook 14 OLED', price: 1299, rating: 5, reviews: 92, img: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80', category: 'laptops', badge: '✨ Editor pick' },
        { id: 3, title: 'AirPods Pro 2', price: 199, oldPrice: 249, rating: 4.8, reviews: 478, img: 'https://images.unsplash.com/photo-1605464315542-bda3e2f4e605?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 4, title: 'Retro Runner 2K', price: 129, rating: 4, reviews: 112, img: 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?auto=format&fit=crop&w=600&q=80', category: 'footwear', badge: '-30%' },
        { id: 5, title: 'Smart Watch Ultra', price: 279, oldPrice: 359, rating: 5, reviews: 88, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 6, title: 'Oversized Tee', price: 45, rating: 4.5, reviews: 201, img: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80', category: 'clothing' },
        { id: 7, title: 'Gaming Headset', price: 89, oldPrice: 129, rating: 4.3, reviews: 312, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets', badge: '⚡ Deal' },
        { id: 8, title: 'Leather Backpack', price: 79, rating: 4.7, reviews: 67, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessories' }
    ];

    let cartQuantity = 0;
    const cartCountSpan = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    function updateCartUI() {
        cartCountSpan.innerText = cartQuantity;
    }

    function addToCartById(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if(product) {
            cartQuantity++;
            updateCartUI();
            const btn = document.querySelector(`.add-cart-btn[data-id='${id}']`);
            if(btn) {
                btn.innerHTML = '✓ Added!';
                setTimeout(() => btn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add', 1000);
            }
        }
    }

    function renderProducts(filteredProducts = PRODUCTS) {
        productsGrid.innerHTML = '';
        filteredProducts.forEach(prod => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                ${prod.badge ? `<div class="badge">${prod.badge}</div>` : ''}
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${prod.title}</div>
                    <div class="price-block">
                        <span class="current-price">$${prod.price}</span>
                        ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice}</span>` : ''}
                    </div>
                    <div class="rating">${'★'.repeat(Math.floor(prod.rating))}${prod.rating % 1 !== 0 ? '½' : ''} (${prod.reviews})</div>
                </div>
                <div class="product-actions">
                    <button class="add-cart-btn" data-id="${prod.id}"><i class="fas fa-cart-shopping"></i> Add</button>
                    <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                </div>
            `;
            productsGrid.appendChild(card);
        });
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
            card.addEventListener('click', () => {
                searchInput.value = cat.name.split(' ')[0];
                filterProductsBySearch(cat.name.split(' ')[0]);
                window.scrollTo({ top: document.querySelector('.products-grid').offsetTop - 70, behavior: 'smooth' });
            });
            categoriesGrid.appendChild(card);
        });
    }

    function filterProductsBySearch(query) {
        const q = query.toLowerCase().trim();
        if(!q) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
    }

    searchBtn.addEventListener('click', () => filterProductsBySearch(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProductsBySearch(searchInput.value); });

    // testimonials dynamic
    const testimonialData = [
        { name: 'Zara Chen', text: 'Absolutely obsessed with the colors! Fast shipping and amazing quality.', stars: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Marcus V.', text: 'Best UI and deals ever. ChromaCart became my go-to shop.', stars: 5, avatar: 'https://randomuser.me/api/portraits/men/32.jpg' },
        { name: 'Sophia L.', text: 'The flash sale was insane. Great customer service!', stars: 4, avatar: 'https://randomuser.me/api/portraits/women/44.jpg' }
    ];
    const testiContainer = document.getElementById('testimonialsList');
    function loadTestimonials() {
        testiContainer.innerHTML = '';
        testimonialData.forEach(t => {
            const div = document.createElement('div');
            div.className = 'testimonial-card';
            div.innerHTML = `<div class="rating">${'★'.repeat(t.stars)}</div><p style="margin: 12px 0;">“${t.text}”</p><div style="font-weight: bold;">⭐ ${t.name}</div>`;
            testiContainer.appendChild(div);
        });
    }
    
    // countdown for deal (2 days 3hrs from now)
    function startCountdown() {
        const targetTime = new Date().getTime() + (2 * 24 * 60 * 60 * 1000) + (3 * 60 * 60 * 1000);
        const interval = setInterval(() => {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMins').innerText = '00'; document.getElementById('dealSecs').innerText = '00';
                clearInterval(interval);
                return;
            }
            const days = Math.floor(diff / (1000*3600*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMins').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSecs').innerText = String(secs).padStart(2,'0');
        }, 1000);
    }

    // newsletter subscribe
    const subBtn = document.getElementById('subscribeNewsBtn');
    const newsMsgDiv = document.getElementById('newsMsg');
    subBtn.addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        if(email.includes('@') && email.includes('.')) {
            newsMsgDiv.innerHTML = '🎉 Thanks! A colorful welcome coupon is on its way!';
            newsMsgDiv.style.color = '#ffefb9';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsgDiv.innerHTML = '', 3000);
        } else {
            newsMsgDiv.innerHTML = '⚠️ Please enter a valid email address.';
            newsMsgDiv.style.color = '#ffb8b8';
        }
    });

    // Mobile toggle
    const mobileToggleBtn = document.getElementById('mobileMenuToggle');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileToggleBtn.addEventListener('click', () => {
        mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('mobileCatLink')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('categoriesSection')?.scrollIntoView({ behavior: 'smooth' });
        mobilePanel.style.display = 'none';
    });
    document.getElementById('catScrollLink')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('categoriesSection')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('shopNowBtn').addEventListener('click', () => {
        document.querySelector('.products-grid')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDealsBtn').addEventListener('click', () => {
        document.getElementById('dealsSection')?.scrollIntoView({ behavior: 'smooth' });
    });
    const dealBtn = document.getElementById('flashDealBtn');
    if(dealBtn) dealBtn.addEventListener('click', () => { cartQuantity++; updateCartUI(); alert('🔥 Flash deal added to cart!'); });

    renderCategories();
    renderProducts();
    loadTestimonials();
    startCountdown();
    updateCartUI();
</script>
</body>
</html>
