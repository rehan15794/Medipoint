<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.connect_db"%>
<%@page import="java.sql.Connection"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
 <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/jssor.slider-27.4.0.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/jssor.slider-27.4.0.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
 <script>
$(document).ready(function(){
    $("#testimonial-slider").owlCarousel({
        items:2,
        itemsDesktop:[1000,2],
        itemsDesktopSmall:[979,2],
        itemsTablet:[768,1],
        pagination:false,
        navigation:true,
        navigationText:["",""],
        autoPlay:true
    });
});
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans:400,700" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
   background-image: url("images/grey.png"); 
	
}
 
.testimonial{ margin: 0 20px 50px; }
.testimonial .pic{
    display: inline-block;
    width: 90px;
    height: 90px;
    border-radius: 50%;
    margin: 0 15px 15px 0;
}
.testimonial .pic img{
    width: 100%;
    height: auto;
    border-radius: 50%;
}
.testimonial .testimonial-profile{
    display: inline-block;
    position: relative;
    top: 15px;
}
.testimonial .title{
    display: block;
    font-size: 20px;
    font-weight: 600;
    color: #2f2f2f;
    text-transform: capitalize;
    margin: 0 0 7px 0;
}
.testimonial .post{
    display: block;
    font-size: 14px;
    color: #5d7aa7;
}
.testimonial .description{
    padding: 20px 22px;
    background: #1f487e;
    font-size: 15px;
    color: #fff;
    line-height: 25px;
    margin: 0;
    position: relative;
}
.testimonial .description:before,
.testimonial .description:after{
    content: "";
    border-width: 18px 0 0 18px;
    border-style: solid;
    border-color: #5d7aa7 transparent transparent;
    position: absolute;
    bottom: -18px;
    left: 0;
}
.testimonial .description:after{
    border-width: 18px 18px 0 0;
    left: auto;
    right: 0;
}
.owl-theme .owl-controls{
    margin-top: 10px;
    margin-left: 30px;
}
.owl-theme .owl-controls .owl-buttons div{
    opacity: 0.8;
    background: #fff;
}
.owl-prev:before,
.owl-next:before{
    content: "\f053";
    font-family: "Font Awesome 5 Free"; font-weight: 900;
    font-size: 20px;
    color: #1f487e;
}
.owl-next:before{ content: "\f054"; }
h2 {
	color: #333;
	text-align: center;
	text-transform: uppercase;
	font-family: "Roboto", sans-serif;
	font-weight: bold;
	position: relative;
	margin: 25px 0 50px;
        background: #fff;
}
h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 3px;
	background: #fff;
	left: 0;
	right: 0;
	bottom: -10px;
}
.carousel {
	width: 650px;
	margin: 0 auto;
	padding-bottom: 50px;
        
}
.carousel .item {
	color: #999;
	font-size: 14px;
    text-align: center;
	overflow: hidden;
    min-height: 340px;
}
.carousel .item a {
	color: #eb7245;
}
.carousel .img-box {
	width: 145px;
	height: 145px;
	margin: 0 auto;
	border-radius: 50%;
}
.carousel .img-box img {
	width: 100%;
	height: 100%;
	display: block;
	border-radius: 50%;
}
.carousel .testimonial {	
	padding: 30px 0 10px;
}
.carousel .overview {	
	text-align: center;
	padding-bottom: 5px;
}
.carousel .overview b {
	color: #333;
	font-size: 15px;
	text-transform: uppercase;
	display: block;	
	padding-bottom: 5px;
}
.carousel .star-rating i {
	font-size: 18px;
	color: #ffdc12;
}
.carousel .carousel-control {
	width: 30px;
	height: 30px;
	border-radius: 50%;
    background: #999;
    text-shadow: none;
	top: 4px;
}
.carousel-control i {
	font-size: 20px;
	margin-right: 2px;
}
.carousel-control.left {
	left: auto;
	right: 40px;
}
.carousel-control.right i {
	margin-right: -2px;
}
.carousel .carousel-indicators {
	bottom: 15px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 11px;
	height: 11px;
	margin: 1px 5px;
	border-radius: 50%;
}
.carousel-indicators li {	
	background: #e2e2e2;
	border-color: transparent;
}
.carousel-indicators li.active {
	border: none;
	background: #888;		
}
</style>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_options = {
              $AutoPlay: 1,
              $AutoPlaySteps: 5,
              $SlideDuration: 160,
              $SlideWidth: 200,
              $SlideSpacing: 3,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $Steps: 5
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        });
    </script>
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider bullet skin 057 css*/
        .jssorb057 .i {position:absolute;cursor:pointer;}
        .jssorb057 .i .b {fill:none;stroke:#fff;stroke-width:2000;stroke-miterlimit:10;stroke-opacity:0.4;}
        .jssorb057 .i:hover .b {stroke-opacity:.7;}
        .jssorb057 .iav .b {stroke-opacity: 1;}
        .jssorb057 .i.idn {opacity:.3;}

        /*jssor slider arrow skin 073 css*/
        .jssora073 {display:block;position:absolute;cursor:pointer;}
        .jssora073 .a {fill:#ddd;fill-opacity:.7;stroke:#000;stroke-width:160;stroke-miterlimit:10;stroke-opacity:.7;}
        .jssora073:hover {opacity:.8;}
        .jssora073.jssora073dn {opacity:.4;}
        .jssora073.jssora073ds {opacity:.3;pointer-events:none;}
    </style>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-image: url('images/debut_light.png')" >
    
<div id="loader">
<div class="loader-container">
<img src="images/loader.gif" alt="" class="loader-site">
</div>
</div>
    
    
    <div id="wrapper" >

<div class="container">

<jsp:include page="include/header.jsp"></jsp:include>


<div class="first-section clearfix">
<div class="row">
<div class="col-md-12">

<div id="slider-content">
<div class="slider">
<div id="owl-home">
       <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn=new connect_db().getConnection();
       PreparedStatement ps=cn.prepareStatement("SELECT * FROM banner where status='active' ;");
       ResultSet rs=ps.executeQuery();
      while(rs.next()){
        
        %>
<div class="owl-item-slider">
       
    <img src="adminpannel/Admin/images/<%=rs.getString("image")%>" height="500" width="100%" alt="" class="">

</div>
<%}%>
</div>
</div>
<hr>

<hr>
<div class="margin-top">
<div class="row">
<div class="col-md-12">
<div class="section-title bgcolor">
<h4>Price Under <span>399</span></h4>
</div>
</div>
</div>
<div id="owl-featured">
        <%

       PreparedStatement ps1=cn.prepareStatement("SELECT * FROM products where price<400 ;");
       ResultSet rs1=ps1.executeQuery();
      while(rs1.next()){
         int discount=Integer.parseInt(rs1.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs1.getString("pid")%>&&subcat=<%=rs1.getString("subcat")%>&&discount=<%=rs1.getString("discount")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs1.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs1.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
    <%
    if(discount==0){
    %>
    <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs1.getString("pid")%>&&subcat=<%=rs1.getString("subcat")%>&&discount=<%=rs1.getString("discount")%>"><%=rs1.getString("pname")%></a></h5>
      </div>
   <%}else{%>
   <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs1.getString("pid")%>&&subcat=<%=rs1.getString("subcat")%>&&discount=<%=rs1.getString("discount")%>"><%=rs1.getString("pname")%></a></h5>
    <div><button  class="btn btn-color" value=" " >Offer <%=rs1.getString("discount")%> %</button> </div>
    </div>
   <%}%>
    <div class="shopmeta" style="height: 50px;">
    <span class="pull-left" >Rs <%=rs1.getString("price")%></span>
    
</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs1.getString("pid")%>&&subcat=<%=rs1.getString("subcat")%>&&discount=<%=rs1.getString("discount")%>">Quick View</a>
</div>
</div>
</div>
<%}%>
</div>
</div>
<hr>
<div class="margin-top">
<div class="row">
<div class="col-md-12">
<div class="section-title bgcolor">
<h4>Price Under <span>699</span></h4>
</div>
</div>
</div>
<div id="owl-recent">
 <%

       PreparedStatement ps2=cn.prepareStatement("SELECT * FROM products where price<700 ;");
       ResultSet rs2=ps2.executeQuery();
      while(rs2.next()){
        int discount2=Integer.parseInt(rs2.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs2.getString("pid")%>&&discount=<%=rs2.getString("discount")%>&&subcat=<%=rs2.getString("subcat")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs2.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs2.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
    <%
    if(discount2==0){
    %>
    <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs2.getString("pid")%>&&discount=<%=rs2.getString("discount")%>&&subcat=<%=rs2.getString("subcat")%>"><%=rs2.getString("pname")%></a></h5>

</div>
<%}else{%>
 <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs2.getString("pid")%>&&discount=<%=rs2.getString("discount")%>&&subcat=<%=rs2.getString("subcat")%>"><%=rs2.getString("pname")%></a></h5>
<div><button  class="btn btn-color" value=" " >Offer <%=rs2.getString("discount")%> %</button> </div>
</div>
<%}%>
<div class="shopmeta" style="height: 50px;">
    <span class="pull-left">Rs <%=rs2.getString("price")%></span>

</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs2.getString("pid")%>&&discount=<%=rs2.getString("discount")%>&&subcat=<%=rs2.getString("subcat")%>">Quick View</a>
</div>
</div>
</div>
<%}%>

</div>
</div>
<hr>
<div class="margin-top">
<div class="row">
<div class="col-md-12">
<div class="section-title bgcolor">
<h4>Price Under <span>999</span></h4>
</div>
</div>
</div>
<div id="owl-recent2">
 <%

       PreparedStatement ps21=cn.prepareStatement("SELECT * FROM products where price<1000 ;");
       ResultSet rs21=ps21.executeQuery();
      while(rs21.next()){
        int discount3=Integer.parseInt(rs21.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs21.getString("pid")%>&&discount=<%=rs21.getString("discount")%>&&subcat=<%=rs21.getString("subcat")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs21.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs21.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
    <%
    if(discount3==0){
    %>
    <div style="height: 100px;" ><5><a href="shop-single.jsp?pid=<%=rs21.getString("pid")%>&&discount=<%=rs21.getString("discount")%>&&subcat=<%=rs21.getString("subcat")%>"><%=rs21.getString("pname")%></a></h5>
 
</div>
<%}else{%>
<div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs21.getString("pid")%>&&discount=<%=rs21.getString("discount")%>&&subcat=<%=rs21.getString("subcat")%>"><%=rs21.getString("pname")%></a></5>
        <div><button  class="btn" style="background-color: #2874f0;" value=" " >Offer <%=rs21.getString("discount")%> %</button> </div>
</div>
<%}%>
<div class="shopmeta" style="height: 50px;">
    <span class="pull-left">Rs <%=rs21.getString("price")%></span>

</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs21.getString("pid")%>&&discount=<%=rs21.getString("discount")%>&&subcat=<%=rs21.getString("subcat")%>">Quick View</a>
</div>
</div>
</div>
<%}%>

</div>
</div>
<hr>
<div class="margin-top">
<div class="row">
<div class="col-md-12">
<div class="section-title bgcolor">
<h4>New Arrival<span></span></h4>
</div>
</div>
</div>
<div id="owl-recent3">
 <%

       PreparedStatement ps211=cn.prepareStatement("SELECT * FROM products Order by pid desc ;");
       ResultSet rs211=ps211.executeQuery();
      while(rs211.next()){
                int discount4=Integer.parseInt(rs211.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs211.getString("pid")%>&&discount=<%=rs211.getString("discount")%>&&subcat=<%=rs211.getString("subcat")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs211.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs211.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
<%
if(discount4==0){
%>
    <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs211.getString("pid")%>&&discount=<%=rs211.getString("discount")%>&&subcat=<%=rs211.getString("subcat")%>"><%=rs211.getString("pname")%></a></h5>
</div>
<%}else{%>
<div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs211.getString("pid")%>&&discount=<%=rs211.getString("discount")%>&&subcat=<%=rs211.getString("subcat")%>"><%=rs211.getString("pname")%></a></h5>
 <div><button  class="btn btn-color" value=" " >Offer <%=rs211.getString("discount")%> %</button> </div>
</div>


<%}%>
<div class="shopmeta" style="height: 50px;">
    <span class="pull-left">Rs <%=rs211.getString("price")%></span>

</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs211.getString("pid")%>&&discount=<%=rs211.getString("discount")%>&&subcat=<%=rs211.getString("subcat")%>">Quick View</a>
</div>
</div>
</div>
<%}%>

</div>
</div>
<hr>
<div class="margin-top">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="section-title bgcolor">
                                        <h4>Hot <span>Seller</span></h4>
                                    </div>
                                </div>
                            </div>
                            <div id="owl-recent4">
                                <%

       PreparedStatement ps2111=cn.prepareStatement("SELECT * FROM orders group by pname Order by count(pid) desc ;");
       ResultSet rs2111=ps2111.executeQuery();
      while(rs2111.next()){
        int discount5=Integer.parseInt(rs2111.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs2111.getString("pid")%>&&discount=<%=rs2111.getString("discount")%>&&subcat=<%=rs2111.getString("subcat")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs2111.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs2111.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
<%
if(discount5==0){
%>
    <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs2111.getString("pid")%>&&discount=<%=rs2111.getString("discount")%>&&subcat=<%=rs2111.getString("subcat")%>"><%=rs2111.getString("pname")%></a></h5>
</div>
<%}else{%>
 <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs2111.getString("pid")%>&&discount=<%=rs2111.getString("discount")%>&&subcat=<%=rs2111.getString("subcat")%>"><%=rs2111.getString("pname")%></a></h5>
 <div><button  class="btn btn-color" value=" " >Offer <%=rs2111.getString("discount")%> %</button> </div>
</div>
<%}%>
<div class="shopmeta" style="height: 50px;">
    <span class="pull-left">Rs <%=rs2111.getString("price")%></span>

</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs2111.getString("pid")%>&&discount=<%=rs2111.getString("discount")%>&&subcat=<%=rs2111.getString("subcat")%>">Quick View</a>
</div>
</div>
</div>
       <%}%>                       
                            </div>
                        </div>
<hr>
<div class="margin-top">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="section-title bgcolor">
                                        <h4>Joy<span>Special for you</span></h4>
                                    </div>
                                </div>
                            </div>
                            <div id="owl-recent5">
                                <%

       PreparedStatement ps21111=cn.prepareStatement("SELECT * FROM products where cat='Special for You' ;");
       ResultSet rs21111=ps21111.executeQuery();
      while(rs21111.next()){
        int discount6=Integer.parseInt(rs21111.getString("discount"));
        %>
<div class="owl-featured">
<div class="shop-item-list entry">
<a class="hover-image" href="shop-single.jsp?pid=<%=rs21111.getString("pid")%>&&discount=<%=rs21111.getString("discount")%>&&subcat=<%=rs21111.getString("subcat")%>" title="">
<div class="img-rotate">
<span class="badge"></span>
<img src="adminpannel/Admin/images/<%=rs21111.getString("imagea")%>" height="250" width="200" alt="">
<img src="adminpannel/Admin/images/<%=rs21111.getString("imageb")%>" height="250" width="200" class="rotate-image" alt="">
</div>
</a>
<div class="shop-item-title clearfix" style="height: 200px;">
    <%
    if(discount6==0){
    %>
    <div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs21111.getString("pid")%>&&discount=<%=rs21111.getString("discount")%>&&subcat=<%=rs21111.getString("subcat")%>"><%=rs21111.getString("pname")%></a></h5>
</div>
<%}else{%>
<div style="height: 100px;" ><h5><a href="shop-single.jsp?pid=<%=rs21111.getString("pid")%>&&discount=<%=rs21111.getString("discount")%>&&subcat=<%=rs21111.getString("subcat")%>"><%=rs21111.getString("pname")%></a></h5>
<div><button  class="btn btn-color" value=" " >Offer <%=rs21111.getString("discount")%> %</button> </div>
</div>
<%}%>
<div class="shopmeta" style="height: 50px;">
    <span class="pull-left">Rs <%=rs21111.getString("price")%></span>

</div>
</div>
<div class="visible-buttons">
<a data-tooltip="tooltip" data-placement="top"  href="shop-single.jsp?pid=<%=rs21111.getString("pid")%>&&discount=<%=rs21111.getString("discount")%>&&subcat=<%=rs21111.getString("subcat")%>">Quick View</a>
</div>
</div>
</div>
       <%}%>                       
                            </div>
                        </div>
</div>
</div>
</div>
</div>
                          
                                <div class="row" style="background-color: #494949;">
                                
                                        <h1 style="color: white; text-align: center;">Testimonial</h1>
            <div id="testimonial-slider" class="owl-carousel">
     <%
    
       PreparedStatement ps14=cn.prepareStatement("SELECT * FROM testimonial where status='Active' ;");
       ResultSet rs14=ps14.executeQuery();
     
      while(rs14.next()){
       int rating= Integer.parseInt(rs14.getString("rating"));
        %>

                <div class="testimonial">
                    <div class="pic">
                        <img src="adminpannel/Admin/images/<%=rs14.getString("image")%>" >
                    </div>
                    <div class="testimonial-profile">
                        <h3 class="title"><b><%=rs14.getString("name")%></b></h3>
                        <span class="post"><%=rs14.getString("designation")%></span>
                    </div>
                    <blockquote class="normalquote"><%=rs14.getString("message")%></blockquote>
                    	<div class="list-inline-item">
                            <h>Review</h>
                            <%
                            if(rating==10){
                            %>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
				</ul>
                            <%}else if(rating==9){%>
                            
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-full"></i></li>
				</ul>
                            <%}else if(rating==8){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==7){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-full"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==6){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==5){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-full"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==4){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==3){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                            <%}else if(rating==2){%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                                                                       <%}else {%>
                                				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star-half-full"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
                                    <%}%>                           
			</div>
                </div>
              <%}%>
            </div>
       

</div>
        <div class="container-fluid" style="background-color: white; margin-bottom: 5px;">
    <h2>Associated Companies</h2>
<div class="container-body" style="margin-top: 15px;margin-bottom: 15px;">
    
    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1010px;height:250px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1010px;height:250px;overflow:hidden;">
                            <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn2=new connect_db().getConnection();
       PreparedStatement ps3=cn2.prepareStatement("SELECT * FROM associater ;");
       ResultSet rs31=ps3.executeQuery();
  while(rs31.next()){
        
        %>
            <div>
                <img data-u="image" src="adminpannel/Admin/images/<%=rs31.getString("image")%>" />
            </div>
   <%}%>
  
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb057" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5000"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora073" style="width:50px;height:50px;top:0px;left:30px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M4037.7,8357.3l5891.8,5891.8c100.6,100.6,219.7,150.9,357.3,150.9s256.7-50.3,357.3-150.9 l1318.1-1318.1c100.6-100.6,150.9-219.7,150.9-357.3c0-137.6-50.3-256.7-150.9-357.3L7745.9,8000l4216.4-4216.4 c100.6-100.6,150.9-219.7,150.9-357.3c0-137.6-50.3-256.7-150.9-357.3l-1318.1-1318.1c-100.6-100.6-219.7-150.9-357.3-150.9 s-256.7,50.3-357.3,150.9L4037.7,7642.7c-100.6,100.6-150.9,219.7-150.9,357.3C3886.8,8137.6,3937.1,8256.7,4037.7,8357.3 L4037.7,8357.3z"></path>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora073" style="width:50px;height:50px;top:0px;right:30px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M11962.3,8357.3l-5891.8,5891.8c-100.6,100.6-219.7,150.9-357.3,150.9s-256.7-50.3-357.3-150.9 L4037.7,12931c-100.6-100.6-150.9-219.7-150.9-357.3c0-137.6,50.3-256.7,150.9-357.3L8254.1,8000L4037.7,3783.6 c-100.6-100.6-150.9-219.7-150.9-357.3c0-137.6,50.3-256.7,150.9-357.3l1318.1-1318.1c100.6-100.6,219.7-150.9,357.3-150.9 s256.7,50.3,357.3,150.9l5891.8,5891.8c100.6,100.6,150.9,219.7,150.9,357.3C12113.2,8137.6,12062.9,8256.7,11962.3,8357.3 L11962.3,8357.3z"></path>
            </svg>
        </div>
    </div>
</div></div>
<jsp:include page="include/footer.jsp"></jsp:include>


</div></div>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js.pagespeed.jc.itpXMU277F.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/index-two.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:20 GMT -->
</html>