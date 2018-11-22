<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
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

<!-- Mirrored from templatevisual.com/demo/kalista/shop-checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:11 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Shop Checkout</title>
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
    <%@include file="include/topnav.jsp" %>
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
    int prodid,qty,subTotal=0;
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
<img src="upload/xshop_01.jpg.pagespeed.ic.LYmoTWSSgg.jpg" alt="">
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
<div class="couponarea clearfix">
<form class="form-inline">
<div class="form-group">
<input type="email" class="form-control" placeholder="Coupon code">
</div>
<button type="submit" class="btn btn-primary">Apply Coupon</button>
<button type="submit" class="pull-right btn btn-primary">Update Cart</button>
</form>
</div>
<div class="totalarea margin-top row">
<div class="col-md-6">
<form class="shipping">
<h2>Calculate Shipping</h2>
<select class="form-control">
<option>-- Select Country --</option>
<option>United States</option>
<option>United Kingdom</option>
<option>Turkey</option>
<option>Germany</option>
<option>Greece</option>
<option>United States</option>
<option>United Kingdom</option>
<option>Turkey</option>
<option>Germany</option>
<option>Greece</option>
</select>
<input type="text" class="form-control" placeholder="State / City">
<input type="text" class="form-control" placeholder="Post Code">
<button type="submit" class="btn btn-primary">Update Total</button>
</form>
</div>
<div class="col-md-6">
<div class="totalprice">
<h2>Order Total</h2>
<p>Subtotal : $44.22</p>
<p>Shipping : Free Shipping</p>
<p>Total : $44.22</p>
</div>
</div>
</div>
<div class="totalarea margin-top row">
<form id="payment" class="clearfix">
<label class="checkbox payment-method inline">
<input type="checkbox" id="customCheck1" value="option1" class=""> Direct Bank Transfer
<span class="custom2">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</span>
</label>
<label class="checkbox payment-method inline">
<input type="checkbox" id="customCheck2" value="option2"> Cheque Payment
</label>
<label class="checkbox payment-method inline">
<input type="checkbox" id="customCheck4" value="option2"> PayPal Payment
</label>
<label class="checkbox payment-method inline">
<input type="checkbox" id="customCheck3" value="option3"> Google Checkout
</label>
<a class="btn btn-primary pull-right" href="#">PLACE AN ORDER</a>
</form>
</div>
</div>
</div>
</div>
</div>
<svg id="clouds" class="hidden-xs" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="120" viewBox="0 0 85 100" preserveAspectRatio="none">
<path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
</path>
</svg>
<div class="footer-bg text-center hidden-xs">
<img src="images/xfooter.png.pagespeed.ic.MTCwa0RhQZ.png" alt="" class="img-responsive">
</div>
<footer class="footer">
<div class="container">
<div class="row text-center">
<div class="col-md-6 col-sm-6 col-xs-12">
<div class="widget">
<div class="widget-title">
<h4>Payment Methods</h4>
</div>
<ul class="list-inline payments">
<li><a href="#"><i class="fa fa-cc-paypal fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-cc-mastercard fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-cc-visa fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-google-wallet fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-cc-stripe fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-cc-amex fa-2x"></i></a></li>
<li><a href="#"><i class="fa fa-cc-discover fa-2x"></i></a></li>
</ul>
</div>
</div>
<div class="col-md-6 col-sm-6 col-xs-12">
<div class="widget">
<div class="widget-title">
<h4>We're available 24/7</h4>
</div>
<div class="big-call">
<span><i class="fa fa-phone"></i> +90 123 45 67</span>
<span><i class="fa fa-fax"></i> +90 123 45 68</span>
</div>
</div>
</div>
</div>
<hr>
<div class="row">
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="widget">
<div class="widget-title">
<h4>We Are Kalista</h4>
</div>
<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also re..</p>
<a href="#" class="btn btn-primary">Read More</a>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12">
<div class="widget">
<div class="widget-title">
<h4>Useful Links</h4>
</div>
<ul>
<li><a href="#">Homepage</a></li>
<li><a href="#">About us</a></li>
<li><a href="#">Contact us</a></li>
<li><a href="#">Terms of usage</a></li>
<li><a href="#">Copyrights</a></li>
</ul>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12">
<div class="widget-title">
<h4>Get In Touch</h4>
</div>
<ul>
<li><i class="fa fa-envelope-o"></i> <a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
<li><i class="fa fa-phone"></i> +90 123 45 67</li>
<li><i class="fa fa-link"></i> <a href="#">www.yoursite.com</a></li>
</ul>
<div class="big-social">
<a href="#" title=""><i class="fa fa-facebook"></i></a>
<a href="#" title=""><i class="fa fa-twitter"></i></a>
<a href="#" title=""><i class="fa fa-google-plus"></i></a>
</div>
</div>
<div class="col-md-2 col-sm-6 col-xs-12">
<div class="widget">
<div class="widget-title">
<h4>Useful Links</h4>
</div>
<ul>
<li><a href="#">Delivery Time</a></li>
<li><a href="#">Order Tracking</a></li>
<li><a href="#">Shopping Cart</a></li>
<li><a href="#">My Account</a></li>
<li><a href="#">Secure Payment</a></li>
</ul>
</div>
</div>
</div>
</div>
</footer>
<div class="copyrights text-center">
<p>Powered by HTML5 CSS3 Bootstrap - Designed by TemplateVisual Pvt Ltd © 2015</p>
</div>
<div class="backtotop"><i class="fa fa-arrow-up"></i> </div>
</div>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js.pagespeed.jc.itpXMU277F.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/shop-checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:11 GMT -->
</html>
<%}%>