<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE jsp>
<!--[if lt IE 7 ]><jsp class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><jsp class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><jsp class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from templatevisual.com/demo/kalista/index-two.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:20 GMT -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Home</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
<link rel="apple-touch-icon" href="images/xapple-touch-icon.png.pagespeed.ic.bKAdLX25i8.png"/>
<link rel="apple-touch-icon" sizes="72x72" href="images/xapple-touch-icon-72x72.png.pagespeed.ic.KsgMxk_SF_.png"/>
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>
<link href="css/A.bootstrap.css%2bfont-awesome.css%2cMcc.uV77lltfjz.css.pagespeed.cf.6EbMV7Trs0.css" rel="stylesheet"/>
<link href="css/A.menu.css.pagespeed.cf.ZnuJ7uv_KF.css" rel="stylesheet">
<link href="css/A.animate.css%2bcarousel.css%2cMcc.8uxCfv0Rmb.css.pagespeed.cf.mY3cbwaVWe.css" rel="stylesheet"/>
<link href="A.style.css.pagespeed.cf.OXD_AjAnBP.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet"><link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Lato:300,500,700,900%7CSource+Sans+Pro:300,400,600,700,900%7CRaleway:300,700,900%7CMontserrat%7CAlegreya:300,700,900'>
<link href="../../maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/stroke-gap.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/animate.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/owl.theme.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="screen">
<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<link rel="stylesheet" type="text/css" href="flaticon/flaticon.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">

<script>
    $(document).ready(function() {
  //carousel options
  $('#quote-carousel').carousel({
    pause: true, interval: 10000,
  });
});
</script>
<style type="text/css">
#quote-carousel {
  padding: 0 10px 30px 10px;
  margin-top: 30px;
  text-align:center;
}
/* indicator position */
#quote-carousel .carousel-indicators {
  right: 50%;
  top: auto;
  bottom: -10px;
  margin-right: -19px;
}
/* indicator color */
#quote-carousel .carousel-indicators li {
  background: #c0c0c0;
}
/* active indicator */

/* typography */
h1 {
  text-align:center;
  margin-bottom:-20px !important;
}
p {
  font-style:italic;
}
</style>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"> 

$(document).ready(function(){
   
	$(".qty").change(function(){

		var qty = this.value;
		var prodid = $(this).attr('id');
	
		$.ajax({url: "AddToCart?id="+prodid+"&qty="+qty+"", success: function(result){
                        location.reload();
    }});
});

});
</script>

</head>

<body>
<div class="col-md-12" >
<div class="container">
<jsp:include page="include/header.jsp"></jsp:include>
    <div class="container">
<div class="topbar">
<div class="topbar-wrapper">
<div class="text-left">
<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cart-plus"></i> Cart: (2 items) <span class="dropme"></span></button>
<ul class="dropdown-menu cartdrop" role="menu">
    <%
        int prodid,qty;
Map<Integer,Integer> cartItems = (Map)session.getAttribute("cart");
for (Map.Entry<Integer,Integer> entry : cartItems.entrySet()) {
                             prodid=entry.getKey();
                             qty=entry.getValue();
                             Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/maa","root","");
                PreparedStatement stmt = con.prepareStatement("select * from product where Pid = ?");
                stmt.setInt(1,prodid);
                ResultSet rset = stmt.executeQuery();
                while(rset.next())
                {
                    String prodimg = rset.getString("image");
                    String prodname = rset.getString("Pname");
                    int prodprice = rset.getInt("price");
    %>
<li>
<a href="#">
<img title="product" alt="product" class="alingleft" src="Admin/subsubcat/<%=prodimg%>">
<h4><%=prodname%>  <small>Quantity : 1 - Price : <%=prodprice%></small></h4>
</a>
</li>


<%}}%>
<li>
<a href="shop-checkout.jsp" class="btn btn-primary">Checkout</a>
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
</div>
<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2>Shop Checkout</h2>
</div>
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="#">Home</a></li>
<li class="active">Shop Checkout</li>
</ol>
</div>
</div>
<hr>
<div id="single-shop" class="row">
<div class="col-md-12">
<form method="post" class="shopform">
<div class="row">
<div class="col-md-6">
<h2>Billing Details</h2>
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<label>First Name *</label>
<input type="text" name="name" id="name" class="form-control" placeholder="First Name">
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<label>Last Name *</label>
<input type="text" name="name" id="name1" class="form-control" placeholder="Last Name">
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<label>Company Name</label>
<input type="text" name="name" id="name2" class="form-control" placeholder="Company Name">
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<label>Address *</label>
<input type="text" name="name" id="name3" class="form-control" placeholder="Address Line 1">
<label>Address Line 2</label>
<input type="text" name="name" id="name4" class="form-control" placeholder="Address Line 2">
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<label>Town / City *</label>
<input type="text" name="name" id="name5" class="form-control" placeholder="Town / City">
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<label>County *</label>
<input type="text" name="name" id="name6" class="form-control" placeholder="County">
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<label>Zip Code *</label>
<input type="text" name="name" id="name7" class="form-control" placeholder="Zip Code">
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<label>Email *</label>
<input type="text" name="name" id="name8" class="form-control" placeholder="Email Address">
<label>Phone Number *</label>
<input type="text" name="name" id="name9" class="form-control" placeholder="Phone Number">
</div>
</div>
</div>
<div class="col-md-6">
<h2>Shipping to another address</h2>
<label>Other Notes</label>
<textarea rows="6" class="form-control" placeholder="Add extra notes..."></textarea>
</div>
</div>
</form>
<br><br>
<div class="table-responsive margin-top">
<table id="cart-table" class="table table-condensed">
<thead>
<tr>
<th>Action</th>
<th>Image</th>
<th>Product</th>
<th>Price</th>
<th>Quanity</th>
<th>Total</th>
</tr>
</thead>
<%
    int subTotal=0;
//Map<Integer,Integer> cartItems = (Map)session.getAttribute("cart");
for (Map.Entry<Integer,Integer> entry : cartItems.entrySet()) {
                             prodid=entry.getKey();
                             qty=entry.getValue();
                             Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/maa","root","");
                PreparedStatement stmt = con.prepareStatement("select * from product where Pid = ?");
                stmt.setInt(1,prodid);
                ResultSet rset = stmt.executeQuery();
                while(rset.next())
                {
                    String prodimg = rset.getString("image");
                    String prodname = rset.getString("Pname");
                    int prodprice = rset.getInt("price");
                    int total = qty*prodprice;
                    subTotal+=total;
                %>
<tbody>
<tr>
<th class="product-remove">
    <a class="remove" title="Remove this product" href="removeFromCart?id=<%=prodid%>">×</a>
</th>
<th>
<div class="media">
<div class="relative">
<a href="shop-single.html" title="">
<img src="Admin/subsubcat/<%=prodimg%>" alt="">
</a>
</div>
</div>
</th>
<th>
<a href="shop-single.html"><%=prodname%></a>
</th>
<td><%=prodprice%></td>
<td>
<%=qty%>
</td>
<td>
<%=total%>
</td>
</tr>

</tbody>
<%
}
}
%>
</table>
</div>

<div class="totalarea margin-top row">
<div class="col-md-6">

</div>
<div class="col-md-6">
<div class="totalprice">
<h2>Order Total</h2>
<p>Subtotal : <%=subTotal%></p>
<p>Shipping : Free Shipping</p>
<p>Total : <%=subTotal%></p>
</div>
</div>
</div>
<div class="totalarea margin-top row">

</div>
</div>
</div>
</div>
</div>
    
    
    
    
    
    
<jsp:include page="include/footer.jsp"></jsp:include>
<div class="backtotop"><i class="fa fa-arrow-up"></i> </div>
</div>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js.pagespeed.jc.itpXMU277F.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/index-two.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:20 GMT -->
</html> 