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
    <%@include file="include/topnav.jsp"%>
<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2>Shop Filterable List</h2>
</div>
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="#">Home</a></li>
<li class="active">Shop Filterable List</li>
</ol>
</div>
</div>
<hr>
<div id="single-shop">
<div id="filters" class="filters-dropdown">
<ul class="option-set" data-option-key="filter">
<li><a href="#filter" class="selected" data-option-value="*"><i class="fa fa-filter"></i> All</a></li>
<li><a href="#filter" data-option-value=".cat1">Clothing</a></li>
<li><a href="#filter" data-option-value=".cat2">Shoes</a></li>
<li><a href="#filter" data-option-value=".cat3">Bags</a></li>
</ul>
</div>
<%
String query = request.getParameter("s");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/maa","root","");
PreparedStatement stmt=con.prepareStatement("select * from product where Pname like ? ");
stmt.setString(1, "%"+query+"%");
//out.print(stmt);
ResultSet rset=stmt.executeQuery();
while(rset.next())
{
%>
<div id="shoplist" class="portfolio">
<div class="item cat1">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.html" title="">
<div class="img-rotate">
<span class="badge">BEST SELLING</span>
<img src="Admin/subsubcat/<%=rset.getString("image")%>" alt="">
</div>
</a>
<div class="shop-item-title clearfix">
<h4><a href="shop-single.html"><%=rset.getString("Pname")%></a></h4>
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
<a data-tooltip="tooltip" data-placement="top" title="Wishlist" href="AddToWishlist?id=<%=rset.getString("Pid")%>"><span class="fa fa-heart-o"></span></a>
<a data-toggle="modal" data-tooltip="tooltip" data-target=".modalexample" data-placement="top" title="Quick View" href="#"><span class="fa fa-eye"></span></a>
</div>
</div>
</div>
<%}%>

</div>
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