
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Fake store rest api for your ecommerce or shopping website prototype">

    <link rel="stylesheet" href="/css/master.min.css?v=old-version-production">
    <link rel="stylesheet" href="/css/swiper.min.css" />
    <link rel="stylesheet" href="/css/atom-one-dark.min.css" />

    <title>Fake Store API</title>
    <link rel="icon" href="/favicon.ico">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#802c6e">
    <meta name="theme-color" content="#ffffff">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://fakestoreapi.com">
    <meta property="og:title" content="Fake Store API">
    <meta property="og:description" content="Fake store rest api for your ecommerce or shopping website prototype">
    <meta property="og:image" content="%PUBLIC_URL%/icons/logo.png">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="https://fakestoreapi.com">
    <meta property="twitter:title" content="Fake Store API">
    <meta property="twitter:description" content="Fake store rest api for your ecommerce or shopping website prototype">
    <meta property="twitter:image" content="%PUBLIC_URL%/icons/logo.png">

    
    <!-- Matomo -->
    <script type="text/javascript" async>
        var _paq = window._paq = window._paq || [];
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function () {
            var u = "//analytics.fakestoreapi.com/";
            _paq.push(['setTrackerUrl', u + 'matomo.php']);
            _paq.push(['setSiteId', '1']);
            var d = document,
                g = d.createElement('script'),
                s = d.getElementsByTagName('script')[0];
            g.async = true;
            g.src = u + 'matomo.js';
            s.parentNode.insertBefore(g, s);
        })();
    </script>
    <!-- End Matomo -->

    <!-- Clarity -->
    <script type="text/javascript">
        (function (c, l, a, r, i, t, y) {
            c[a] = c[a] || function () {
                (c[a].q = c[a].q || []).push(arguments)
            };
            t = l.createElement(r);
            t.async = 1;
            t.src = "https://www.clarity.ms/tag/" + i;
            y = l.getElementsByTagName(r)[0];
            y.parentNode.insertBefore(t, y);
        })(window, document, "clarity", "script", "qgxi5gvulp");
    </script>
    <!-- End Clarity -->
    

    

</head>

<body>
    
    <nav class="container-fluid">
        <button id="menu-icon">
            <span></span>
            <span></span>
        </button>
        <a href="/" class="logo"><img src="/icons/logo.png"></a>
        <ul id="menu">
            <li><a href="/">Home</a></li>
            <li><a href="/docs">Docs</a></li>
            <li><a href="https://github.com/keikaavousi/fake-store-api" target="_blank"
                    rel="noopener noreferrer">GitHub</a></li>
            <li><a href="/donate">Buy us a coffee</a>
            </li>
        </ul>
    </nav>
    

    <main class="home">

<div class="container">
    <!-- intro -->
    <section class="row align-center">
        <div class="col-md-6 intro">
            <h1>Fake Store API</h1>
            <p>Realistic E-Commerce Data. Instantly.</p>
            <p class="sub-header">A free RESTful API for developers, ideal for prototyping, testing, or teaching.
                <br>No backend setup required.</p>
            <div class="btns">
                <a class="btn btn-primary" href="/docs"><span>Read
                        Docs</span></a>
                <a class="btn btn-outline" href="https://github.com/keikaavousi/fake-store-api" target="_blank"
                    rel="noopener noreferrer">View on Github</a>
            </div>
        </div>
        <div class="col-md-6 intro-img">
            <img src="/icons/intro.svg" />
        </div>
    </section>

    <!-- about -->
    <section class="row about">
        <h2 class="heading center-align col-md-12">Tired of fake JSON and Lorem Ipsum?</h2>
        <p class="center-align sub-header">
            FakeStoreAPI gives you clean, realistic e-commerce data: products, carts, users, and more. accessible in
            seconds via REST.
        </p>
        </p>
    </section>


    <!-- tryit -->
    <section id="try" class="row bordered" class="row">
        <div class="col-lg-6 col-md-12">
            <h2 class="heading">Example Request</h2>
            <div class="btn-group">
                <button id="js-code" class="btn btn-small btn-secondary-light active">Javascript</button>
                <button id="py-code" class="btn btn-small btn-secondary-light">Python</button>
                <button id="curl-code" class="btn btn-small btn-secondary-light">Curl</button>
                <button id="java-code" class="btn btn-small btn-secondary-light">Java</button>
            </div>
            <div class="code-wrapper">
                <div class="code" id="request_box"></div>
                <button class="btn-icon" id="copy-btn">
                    <img src="/icons/copy.svg" width="24" />
                </button>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <h2 class="heading">API Response</h2>
            <div class="code" id="response_box"></div>
        </div>

    </section>


    <!-- resources-->
    <section class="bordered center-align">
        <h2 class="heading">Resources</h2>
        <p class="sub-header container">FakeStoreAPI provides the 4 essential resources commonly used in e-commerce
            apps. Use
            them to build realistic flows for your frontend or backend prototypes.</p>
        <ul class="list margin-top-sm">
            <li>
                <span class="list-item-header">
                    <a href="/docs#tag/Products">Products</a>
                    <span>List of items with title, price, category, description and image</span>
                </span>
                <span class="list-item-subheader"><span>20</span> <span>products</span></span>
            </li>
            <li>
                <span class="list-item-header">
                    <a href="/docs#tag/Carts">Cart</a>
                    <span>Includes full user profiles (name, email, address, etc.)</span>
                </span>
                <span class="list-item-subheader"><span>20</span> <span>carts</span></span>
            </li>
            <li>
                <span class="list-item-header">
                    <a href="/docs#tag/Users">Users</a>
                    <span>Simulates shopping cart logic: user + list of product IDs + quantity</span>
                </span>
                <span class="list-item-subheader"><span>10</span> <span>users</span></span>
            </li>
            <li>
                <span class="list-item-header">
                    <a href="/docs#tag/Auth">Login Token</a>
                    <span>Returns a JWT token for testing authentication</span>
                </span>
                <span class="list-item-subheader"><span>JWT</span> <span>token</span></span>
            </li>
        </ul>
        <a href="/docs" class="btn btn-primary">View Details on Docs</a>
    </section>


    <!-- social-->
    <section>
        <h2 class="heading center-align">❤️ Loved by Millions of Developers </h2>
        <p class="sub-header center-align container">
            This is just a small glimpse of your incredible support. so much more kindness and trust has been shared
            over these <strong>5 amazing years</strong> with FakeStoreAPI.</p>
        <p class="sub-header center-align container">Thank you for being part of this journey!</p>
        <div class="swiper social-swiper margin-top-sm">
            <div class="swiper-wrapper" id="swiper-wrapper">
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/liscanojac/status/1459714990080937985" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Juan Canelon</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Today I've been practicing with React-Redux making this kinda e-commerce app with <a href="https://fakestoreapi.com/">https://fakestoreapi.com</a>
                        </div>
                        <div class="time">
                            <time>2021-11-14</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://dev.to/shreyvijayvargiya/top-4-free-fake-api-21mc" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Shrey Vijay Vargiya</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/devto.png" width="24" class="devto"
                                        alt="devto icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Top 4 Free Fake API: <strong>Fake store rest API</strong> for your e‑commerce or shopping website prototype.
                        </div>
                        <div class="time">
                            <time>2022-11-22</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://dev.to/malikhaziq/10-web-apis-for-your-projects-65o" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Malik Haziq</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/devto.png" width="24" class="devto"
                                        alt="devto icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            10 APIs for your projects: <strong>Fake Store API</strong> is a free and public web API that provides simulated data for an e‑commerce store.
                        </div>
                        <div class="time">
                            <time>2023-02-27</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://medium.com/@mahmoudsaal7/4-outstanding-fake-api-providers-for-mobile-developers-to-streamline-testing-fc61fa4c847c" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Mahmoud Saleh</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/medium.svg" width="24" class="medium"
                                        alt="medium icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            5 Outstanding Fake API Providers for Mobile Developers to Streamline Testing: <strong>Fake Store API</strong> is a free online REST API that developers can use to make test orders, eCommerce, and cart integrations.
                        </div>
                        <div class="time">
                            <time>2023-11-05</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://medium.com/peanutsquarellp/understanding-the-fakestoreapi-a-primer-for-ecommerce-app-development-e30f8c4c671d" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>PeanutSquare</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/medium.svg" width="24" class="medium"
                                        alt="medium icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Understanding the <strong>FakeStoreApi</strong> – a primer for ecommerce app development.
                        </div>
                        <div class="time">
                            <time>2023-08-14</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://www.olitt.com/blog/free-api-for-ecommerce-website/" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Olitt Blog</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/olitt.png" width="24" class="blog"
                                        alt="blog icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            5 Best Free eCommerce APIs and Store API Solutions for Developers: <strong>Fake Store API</strong> is a fantastic option for developers looking to create a shopping website prototype or test their e‑commerce applications.
                        </div>
                        <div class="time">
                            <time>2024-05-11</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://www.peanutsquare.com/exploring-fakestoreapi-for-ecommerce-apps/" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>PeanutSquare</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/logo_ps.png" width="24" class="blog"
                                        alt="blog icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Exploring <strong>FakeStoreAPI</strong> for ecommerce apps – essential component for our Flutter ecommerce app.
                        </div>
                        <div class="time">
                            <time>2023-07-21</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://www.linkedin.com/posts/samimaxhuni_chatwisebot-aichatbot-mcp-activity-7353884349500403712-3V38" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Sami Maxhuni</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/linkedin-color.svg" width="24" class="linkedin"
                                        alt="linkedin icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            🚀 New Feature in ChatWise: Now Powered by Model Context Protocol (MCP) … In this example, we’ve integrated the <strong>FakeStoreAPI</strong>. ✅ Fetch product data in real time ✅ Display the results in a beautiful interactive carousel ✅ Filter the results via natural language – e.g., “Show me all products under 50 USD”
                        </div>
                        <div class="time">
                            <time>2025-07-24</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/ChrisStaud/status/1625735992161206272" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Chris Staudinger</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            An e-commerce store is a great project to have and it just got easier with <strong>Fake Store API</strong>.<br><br>Forget about spinning up the backend and database and focus on building cart, wishlists, recommendations and other functionalities💡<br><br>👉 <a href="https://fakestoreapi.com">https://fakestoreapi.com</a>
                        </div>
                        <div class="time">
                            <time>2023-02-15</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/Nikoletta3108/status/1483391717650755586" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Nikoletta</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            You want to practice or test REST API? <br><br>Here is the list of websites with fake APIs that can save your time in creating dummy data. 👇<br><br><a href="https://jsonplaceholder.typicode.com/">https://jsonplaceholder.typicode.com</a><br><a href="https://fakestoreapi.com/">https://fakestoreapi.com</a><br><a href="https://pokeapi.co/">https://pokeapi.co</a><br><a href="https://reqres.in/">https://reqres.in</a><br><a href="https://dummyapi.io/">https://dummyapi.io</a>
                        </div>
                        <div class="time">
                            <time>2022-01-18</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/OumarFall07/status/1501688333352775683" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Oumar FALL</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Hello devs here is an application that I had to realize with flutter.<br>Here I made some request to with an api to be able to get these data<br>Le repo <br><a href="https://github.com/omar6260/flutter_rest_api">https://github.com/omar6260/flutter_rest_api</a><br><br>Api <a href="https://fakestoreapi.com">http://fakestoreapi.com</a><br><a href="https://twitter.com/galsendev221">@galsendev221</a><br><a href="https://twitter.com/FlutterSenegal">@FlutterSenegal</a>
                        </div>
                        <div class="time">
                            <time>2022-03-09</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/_joelkanyi/status/1537296884175446016" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Joel Kanyi</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            For those asking for the API, here is the URL:<br><br><a href="https://fakestoreapi.com/">https://fakestoreapi.com</a>
                        </div>
                        <div class="time">
                            <time>2022-06-16</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/ronexondimu/status/1542773684817076224" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Lemonr</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Online store app using jetpack compose <a href="https://twitter.com/hashtag/JetpackCompose">#JetpackCompose</a> ,for api here is the link <a href="https://fakestoreapi.com/">https://fakestoreapi.com</a>  and the source code <a href="https://github.com/Ronexlemon/Store">https://github.com/Ronexlemon/Store</a>  any changes is allowed <br>
                        </div>
                        <div class="time">
                            <time>2022-07-01</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/_collinceokeyo/status/1582349624714571776" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Ramg</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Check out the project I have been working on. An Android app that consumes <strong>FAKESTORE API</strong> <br><a href="https://fakestoreapi.com/">https://fakestoreapi.com</a> .You can find the project on GitHub <a href="https://github.com/Collince-Okeyo/Shoppa">https://github.com/Collince-Okeyo/Shoppa</a><br>Contributions are welcomed🤗<br><a href="https://twitter.com/hashtag/100DaysOfCode">#100DaysOfCode</a><br><a href="https://twitter.com/hashtag/Android">#Android</a> <br><a href="https://twitter.com/hashtag/Kotlin">#Kotlin</a> <br><a href="https://t.co/GvNPeEMvM5"></a>
                        </div>
                        <div class="time">
                            <time>2022-10-18</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://twitter.com/slow_developer/status/1601529729454063617" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Haider</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/x.svg" width="24" class="x"
                                        alt="x icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            🔗 <a href="https://fakestoreapi.com">https://fakestoreapi.com</a>
                        </div>
                        <div class="time">
                            <time>2022-12-10</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://www.linkedin.com/posts/sheikh-naim_fake-store-api-activity-7094399065160888320-7IdU" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Sheikh Naim</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/linkedin-color.svg" width="24" class="linkedin"
                                        alt="linkedin icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            Today i learn about how to search product by Category with HTML, CSS, and JavaScript... uses the <strong>fakestoreapi.com</strong> API to fetch a list of products…
                        </div>
                        <div class="time">
                            <time>2024-07-01</time>
                        </div>
                    </div>
                </div>
                
                <div class="swiper-slide">
                    <div class="social-card">
                        <a href="https://www.linkedin.com/posts/abhishek-kumar-mehta_github-abhi865625fake-store-api-activity-7155177391298928640--xbn" target="_blank" rel="noopener noreferrer"
                            class="social-card-link">
                            <div class="row left-align padding-sm avatar-wrapper">
                                <div class="justify-start">
                                    <div>
                                        <h3>Abhishek Kumar Mehta</h3>
                                    </div>
                                </div>
                                <span>
                                    <img src="/icons/linkedin-color.svg" width="24" class="linkedin"
                                        alt="linkedin icon" />
                                </span>
                            </div>
                        </a>
                        <div class="left-align content">
                            🚀 Excited to Share: Fetching Data from <strong>Fake Store API</strong>… Created a simple webpage that fetches product data from the Fake Store API…
                        </div>
                        <div class="time">
                            <time>2024-06-05</time>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>

</div>

</main>
</div>
<footer>
    <div class="row">
        <div class="col-4 col-sm-12 left-align d-flex-column">
            <h3>Let’s Connect</h3>
            <a href="/cdn-cgi/l/email-protection#5831363e37183e39333d2b2c372a3d392831763b3735">Have questions or feedback? </a>
            <div class="margin-top-sm">
                <a href="/cdn-cgi/l/email-protection#5d34333b321d3b3c36382e29322f383c2d34733e3230"><img src="/icons/mail.svg"></a>
                <a href="https://x.com/fakestoreapi"><img src="/icons/x.svg"></a>
                <a href="https://linkedin.com/in/fakestoreapi"><img src="/icons/linkedin.svg"></a>
            </div>
        </div>
        <div class="col-4 col-sm-12">
            <ul class="row center-align">
                <li><a href="/">Home</a></li>
                <li><a href="/docs">Docs</a></li>
                <li><a href="https://github.com/keikaavousi/fake-store-api">Github</a></li>
                <li><a href="/donate">Buy us a coffee</a></li>
            </ul>
        </div>
        <div class="col-4 col-sm-12"></div>
    </div>
    <div class="divider"></div>
    <div class="row margin-top-sm">
        <p class="col-4 col-sm-12">&copy; <time>2026</time> Fake Store API - All Rights
            Reserved</p>
        <p class="col-4 col-sm-12 center-align">old-version-production</p>
        <p class="col-4 col-sm-12 right-align">Made with &hearts; by <a
                href="https://linkedin.com/in/keikaavousi">MohammadReza
                Keikavousi</a></p>
    </div>
</footer>


<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="/js/polyfill.min.js"></script>
<script src="/js/highlight.min.js"></script>
<script src="/js/swiper.min.js"></script>
<script>
    let icon = document.getElementById("menu-icon")
    let menu = document.getElementById("menu")

    if (icon) {
        icon.addEventListener('click', function () {
            icon.classList.toggle("open")
            menu.classList.toggle("open")
            document.body.classList.toggle("fix")
            document.documentElement.classList.toggle("body-fix")
        })
    }
</script>

<script>
    function formatTime(isoDate) {
        const date = new Date(isoDate);
        return date.toLocaleDateString("en-US", {
            year: "numeric",
            month: "long",
            day: "numeric",
        });
    }
</script>
<script>
    const responseBox = document.getElementById("response_box")
    const requestBox = document.getElementById("request_box")
    const jsCode = document.getElementById("js-code");
    const pyCode = document.getElementById("py-code");
    const curlCode = document.getElementById("curl-code");
    const javaCode = document.getElementById("java-code");
    const codeTabs = [jsCode, pyCode, curlCode, javaCode];
    const copyBtn = document.getElementById("copy-btn");

    let isCopying = false;

    copyBtn.onclick = function (e) {
        if (isCopying) {
            e.preventDefault();
            return;
        }

        isCopying = true;
        const codeText = requestBox.querySelector('code').innerText;
        navigator.clipboard.writeText(codeText)
            .then(() => {
                const originalHTML = copyBtn.innerHTML;

                copyBtn.innerHTML = "<img src='/icons/check.svg'/>";

                setTimeout(() => {
                    copyBtn.innerHTML = originalHTML;
                    isCopying = false;
                }, 2000);
            })
            .catch(err => {
                console.error('Failed to copy: ', err);
                isCopying = false;
            });
    }

    window.onload = function () {
        document.getElementById("js-code").click();
        responseBox.innerHTML =
            `<pre><code class="language-javascript">{
  "id": 1,
  "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  "price": 109.95,
  "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  "category": "men's clothing",
  "rating": {
    "rate": 3.9,
    "count": 120
  }
}</code></pre>`;

        if (window.hljs) {
            document.querySelectorAll('pre code').forEach((block) => {
                hljs.highlightElement(block);
            });
        }
    };

    function setActiveTab(activeTab, codeContent, language) {
        codeTabs.forEach(tab => tab.classList.remove("active"));
        activeTab.classList.add("active");

        requestBox.innerHTML = `<pre><code class="language-${language}">${codeContent}</code></pre>`;

        if (window.hljs) {
            document.querySelectorAll('pre code').forEach((block) => {
                hljs.highlightElement(block);
            });
        }
    }

    jsCode.addEventListener('click', function () {
        setActiveTab(this,
            `fetch('https://fakestoreapi.com/products/1')
            .then(res=>res.json())            
            .then(json=>console.log(json))`,
            'javascript');
    });

    pyCode.addEventListener('click', function () {
        setActiveTab(this,
            `import requests
response = requests.get('https://fakestoreapi.com/products/1')
print(response.json())`,
            'python');
    });

    curlCode.addEventListener('click', function () {
        setActiveTab(this,
            `curl -X GET 'https://fakestoreapi.com/products/1'`,
            'bash');
    });

    javaCode.addEventListener('click', function () {
        setActiveTab(this,
            `URL url = new URL("https://fakestoreapi.com/products/1");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.connect();
        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String line;
        while ((line = in.readLine()) != null) {
            System.out.println(line);
        }
        in.close();`,
            'java');
    });

    const highlightScript = document.createElement('script');
    highlightScript.src = '/js/highlight.min.js';
    document.body.appendChild(highlightScript);

    highlightScript.onload = function () {
        hljs.highlightAll();
        const activeTab = codeTabs.find(tab => tab.classList.contains('active'));
        if (activeTab) {
            activeTab.click();
        } else {
            jsCode.click();
        }
    };
</script>


<script>
    const swiper = new Swiper('.social-swiper', {
        loop: true,
        spaceBetween: 20,
        effect: 'slide',
        freeMode: false,
        speed: 10000,
        autoplay: {
            delay: 10,
            disableOnInteraction: false,
            pauseOnMouseEnter: false,
            stopOnLastSlide: false,
            waitForTransition: true,
        },
        breakpoints: {
            0: {
                slidesPerView: 1.2,
            },
            576: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1024: {
                slidesPerView: 4,
            }
        }
    });
    swiper.on('click', function () {
        swiper.slideNext();
    })
</script>


<script>(function(){function c(){var b=a.contentDocument||(a.contentWindow&&a.contentWindow.document);if(b){var d=b.createElement('script');d.innerHTML="window.__CF$cv$params={r:'a51dc1ad3f052520',t:'MTc5MzIzMDUyMg=='};var a=document.createElement('script');a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);";b.getElementsByTagName('head')[0].appendChild(d)}}if(document.body){var a=document.createElement('iframe');a.height=1;a.width=1;a.style.position='absolute';a.style.top=0;a.style.left=0;a.style.border='none';a.style.visibility='hidden';document.body.appendChild(a);if('loading'!==document.readyState)c();else if(window.addEventListener)document.addEventListener('DOMContentLoaded',c);else{var e=document.onreadystatechange||function(){};document.onreadystatechange=function(b){e(b);'loading'!==document.readyState&&(document.onreadystatechange=e,c())}}}})();</script></body>

</html>
