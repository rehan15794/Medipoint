<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    session = request.getSession();
    if(session.getAttribute("email")==null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
    %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from templatevisual.com/demo/kalista/shop-filterable-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:37 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Parent's Day</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
<link rel="apple-touch-icon" href="images/xapple-touch-icon.png.pagespeed.ic.bKAdLX25i8.png"/>
<link rel="apple-touch-icon" sizes="72x72" href="images/xapple-touch-icon-72x72.png.pagespeed.ic.KsgMxk_SF_.png"/>
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>
<link href="css/A.bootstrap.css%2bfont-awesome.css%2cMcc.uV77lltfjz.css.pagespeed.cf.6EbMV7Trs0.css" rel="stylesheet"/>
<link href="css/A.menu.css.pagespeed.cf.ZnuJ7uv_KF.css" rel="stylesheet">
<link href="css/A.carousel.css.pagespeed.cf.VktteGiLwl.css" rel="stylesheet">
<link href="A.style.css.pagespeed.cf.OXD_AjAnBP.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--<div id="loader">
<div class="loader-container">
<img src="images/loader.gif" alt="" class="loader-site">
</div>
</div>
<div id="wrapper">
<div class="modal fade modalexample" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-body row">
<div class="col-md-6">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="upload/xshop_single_01.png.pagespeed.ic.4WMn2OFNTI.png" class="img-responsive" alt="">
</div>
<div class="item">
<img src="upload/xshop_single_02.png.pagespeed.ic.XD_J9xTQ03.png" class="img-responsive" alt="">
</div>
</div>
<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
<i class="fa fa-angle-left"></i>
<i class="sr-only">Previous</i>
</a>
<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
<i class="fa fa-angle-right"></i>
<i class="sr-only">Next</i>
</a>
</div>
</div>
<div class="col-md-6">
<div class="pull-left">
<h4>Advanced Classic Pants</h4>
</div>
<div class="pull-right">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
</div>
<div class="clearfix"></div>
<hr>
<span>$31.12</span>
<div class="rating">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-o"></i>
</div>
<p>Lorem ipsum dolor sit amet isse potenti. Vesquam ante aliquet lacusemper elit. Cras neque nulla, convallis non commodo et, euismod nonsese. At vero.</p>
<div class="btn-group">
<a href="shop-cart.html" class="btn btn-primary" title="">ADD TO CART</a>
</div>
<div class="addw">
<a href="shop-wishlist.html"><i class="fa fa-heart-o"></i> Add to Wishlist</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="container">
<div class="topbar">
<div class="topbar-wrapper">
<div class="text-left">
<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cart-plus"></i> Cart: (2 items) <span class="dropme"></span></button>
<ul class="dropdown-menu cartdrop" role="menu">
<li>
<a href="#">
<img title="product" alt="product" class="alingleft" src="upload/xshop_menu_01.jpg.pagespeed.ic.pBnxQwBQrX.jpg">
<h4>Custom Boxer Item <small>Quantity : 1 - Price : $23.12</small></h4>
</a>
</li>
<li>
<a href="#">
<img title="product" alt="product" class="alingleft" src="upload/xshop_menu_02.jpg.pagespeed.ic.MOUnOrCe6y.jpg">
<h4>A Man Shoe <small>Quantity : 1 - Price : $23.12</small></h4>
</a>
</li>
<li>
<a href="shop-checkout.html" class="btn btn-primary">Checkout</a>
</li>
</ul>
</div>
<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">En <span class="dropme"></span></button>
<ul class="dropdown-menu" role="menu">
<li><a href="#">GR</a></li>
<li><a href="#">TR</a></li>
<li><a href="#">AB</a></li>
<li><a href="#">SP</a></li>
<li><a href="#">IT</a></li>
</ul>
</div>
<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-dollar"></i> Euro <span class="dropme"></span></button>
<ul class="dropdown-menu" role="menu">
<li><a href="#"><i class="fa fa-euro"></i> Dollar</a></li>
<li><a href="#"><i class="fa fa-turkish-lira"></i> YTL</a></li>
<li><a href="#"><i class="fa fa-yen"></i> Yen</a></li>
</ul>
</div>
</div>
</div>
</div>
<header class="header">
<div class="container-wrapper">
<div class="hovermenu ttmenu">
<div class="headerbg hidden-xs hidden-sm"></div>
<div class="navbar navbar-default" role="navigation">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="fa fa-bars"></span>
</button>
<div class="logo">
<a class="navbar-brand" href="index-2.html"><img src="images/xlogo.png.pagespeed.ic.8i9N2PpXAS.png" alt=""></a>
</div>
</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Home <b class="fa fa-angle-down"></b></a>
<ul class="dropdown-menu" role="menu">
<li><a href="index-default.html">Default Version</a></li>
<li><a href="index-one.html">Version One</a></li>
<li><a href="index-two.html">Version Two</a></li>
<li><a href="index-three.html">Version Three</a></li>
<li><a href="index-four.html">Version Four</a></li>
</ul>
</li>
<li><a href="about.html">About</a></li>
<li class="dropdown ttmenu-half"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Shopping <b class="fa fa-angle-down"></b></a>
<ul class="dropdown-menu pink">
<li>
<div class="ttmenu-content">
<div class="row">
<div class="col-md-6">
<div class="box">
<ul>
<li><a href="shop-single.html">Shop Single</a></li>
<li><a href="shop-single-alt.html">Shop Single Alt</a></li>
<li><a href="shop-product-list.html">Shop Product List</a></li>
<li><a href="shop-filterable-category.html">Shop Filterable</a></li>
<li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
<li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
<li><a href="shop-tag-index.html">Tag Index <span class="badge">NEW</span></a></li>
<li><a href="shop-cart.html">Shopping Cart</a></li>
</ul>
</div>
</div>
<div class="col-md-6">
<div class="box">
<ul>
<li><a href="shop-wishlist.html">Wishlist</a></li>
<li><a href="shop-checkout.html">Checkout</a></li>
<li><a href="shop-account.html">My Account</a></li>
<li><a href="shop-track.html">Order Tracking</a></li>
<li><a href="page-not-found.html">404 Not Found</a></li>
<li><a href="page-delivery.html">Delivery Time</a></li>
<li><a href="typography.html">Typography</a></li>
<li><a href="shortcodes.html">Shortcodes</a></li>
</ul>
</div>
</div>
</div>
</div>
</li>
</ul>
</li>
<li class="dropdown ttmenu-half"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Boutiques <b class="fa fa-angle-down"></b></a>
<ul class="dropdown-menu blue">
<li>
<div class="ttmenu-content">
<div class="row">
<div class="col-md-12">
<div class="box">
<ul>
<li><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested, 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also re. Sections 1.10.32 and 1.10.33 from.</p></li>
</ul>
</div>
</div>
</div>
<hr>
<div class="row">
<div class="col-md-4">
<div class="box">
<ul>
<li><a href="shop-product-list.html">Toys and Stationery</a></li>
<li><a href="shop-product-list.html">Baby Safety Products</a></li>
<li><a href="shop-product-list.html">Gift Items</a></li>
</ul>
</div>
</div>
<div class="col-md-4">
<div class="box">
<ul>
<li><a href="shop-product-list.html">Organic Materials</a></li>
<li><a href="shop-product-list.html">Pregnant Products</a></li>
<li><a href="shop-product-list.html">Diapers and Wipes</a></li>
</ul>
</div>
</div>
<div class="col-md-4">
<div class="box">
<ul>
<li><a href="shop-product-list.html">Diapers and Wipes</a></li>
<li><a href="shop-product-list.html">Diapers and Wipes</a></li>
<li><a href="shop-product-list.html">Others</a></li>
</ul>
</div>
</div>
</div>
</div>
</li>
</ul>
</li>
<li><a href="testimonials.html">Testimonials</a></li>
<li><a href="blog.html">Blog</a></li>
<li><a href="contact.html">Contact</a></li>
</ul>
</div>
</div>
</div>
</div>
</header>
<div class="header-bottom">
<div class="row">
<div class="col-md-9">
<div class="custom-menu">
<p>Dear customer, welcome to the Kalista, please <a href="#">login</a> or <a href="#">create an account</a></p>
</div>
</div>
<div class="col-md-3">
<div class="input-group">
<input type="text" class="form-control" placeholder="Search for products..."/>
<span class="input-group-btn">
<button class="btn btn-primary" type="button">
<span class="fa fa-search"></span>
</button>
</span>
</div>
</div>
</div>
</div>-->
<%@include file="include/topnav.jsp"%>
 
<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2> Parent's Day Gifts</h2>
</div>
    
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="#">Home</a></li>
<li class="active">Parent's Day Gifts</li>
</ol>
</div>
     
</div>
  

<div id="single-shop">
<div id="filters" class="filters-dropdown">
<ul class="option-set" data-option-key="filter">
<li><a href="#filter" class="selected" data-option-value="*"><i class="fa fa-filter"></i> All</a></li>
<li><a href="#filter" data-option-value=".cat1">Clothing</a></li>
<li><a href="#filter" data-option-value=".cat2">Shoes</a></li>
<li><a href="#filter" data-option-value=".cat3">Bags</a></li>
</ul>
</div>
     
<div id="shoplist" class="portfolio">
    <%
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/maa","root","");
        PreparedStatement stmt = con.prepareStatement("select * from product where occasions='ParentsDay'");
        ResultSet rset = stmt.executeQuery();
        while(rset.next())
        {
    %>
<div class="item cat1">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.html" title="">
<div class="img-rotate">
<span class="badge">BEST SELLING</span>
<img src="subsubcat/<%=rset.getString("image")%>" alt="">
<img src="upload/xshop_07_bg.jpg.pagespeed.ic.l63dMxjMel.jpg" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix">
<h4><a href="shop-single.html"><%=rset.getString("pname")%></a></h4>
<div class="shopmeta">
<span class="pull-left"><%=rset.getString("price")%></span>
<div class="rating pull-right">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-o"></i>
</div>
</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top" title="Add to Cart" href="AddToCart?id=<%=rset.getString("Pid")%>&qty=1"><span class="fa fa-cart-arrow-down"></span></a>
<a data-tooltip="tooltip" data-placement="top" title="Wishlist" href="AddToWishlist?id=<%=rset.getString("Pid")%>&qty=1"><span class="fa fa-heart-o"></span></a>
<a data-toggle="modal" data-tooltip="tooltip" data-target=".modalexample" data-placement="top" title="Quick View" href="#"><span class="fa fa-eye"></span></a>
</div>
</div>
</div>
<%}%>

</div>
</div>
</div>

<%@include file="include/footer.jsp"%>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js%2bisotope.js.pagespeed.jc.HV4f_6jOP3.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
<script>eval(mod_pagespeed_ZTVjnmSaMV);</script>
<script type="text/javascript">(function($){"use strict";$(window).load(function(){$('.portfolio').isotope({itemSelector:'.item',layoutMode:'fitRows'});$('#filters a.selected').trigger("click");});$('#filters a').click(function(e){e.preventDefault();var selector=$(this).attr('data-option-value');$('.portfolio').isotope({filter:selector});$(this).parents('ul').find('a').removeClass('selected');$(this).addClass('selected');});jQuery(document).ready(function($){$(window).resize();$Filter.find('a').click(function(){$Filter.find('ul li').not($(this)).removeClass('active');$(this).parent('li').addClass('active');});});jQuery('a[data-gal]').each(function(){jQuery(this).attr('rel',jQuery(this).data('gal'));});jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({animationSpeed:'slow',theme:'dark_square',slideshow:false,overlay_gallery:false,social_tools:false,deeplinking:false});})(jQuery);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/shop-filterable-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:38 GMT -->
</html>
<%}%>