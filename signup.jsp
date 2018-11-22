<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from templatevisual.com/demo/kalista/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:38 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Register</title>
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

            <%@include file="include/topnav.jsp" %>

<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2>Sign Up</h2>
</div>
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="#">Home</a></li>
<li class="active">Contact</li>
</ol>
</div>
</div>
<hr>
<!--<div id="single-shop" class="row">
<div class="col-lg-12">
<div class="contact_list clearfix">
<div class="col-sm-4 wow fadeInUp">
<h6>Melbourne Headquarters</h6>
<ul>
<li><i class="fa fa-map-marker"></i> 125/68 North 38th Str, Melbourne, VIC</li>
<li><i class="fa fa-envelope-square"></i> melbourne@construction.com</li>
<li><i class="fa fa-phone"></i> (+0641)-283-1769</li>
<li><i class="fa fa-fax"></i> (+0641)-283-68272</li>
</ul>
</div>
<div class="col-sm-8 wow fadeInUp">
<div class="contact_form row wow fadeIn">
<div id="message"></div>-->
<form action="enjoyregister" method="post" onsubmit="return validation()">
		     
            <div>
                <input type="text" class="form-control" name="name"  placeholder="Name" id="name" pattern="([A-Za-z ]{1,32})" required="required"/>
                <span id="name" class="text-danger font-weight-bold"></span>
              
            </div><br>
            <div>
                <input type="email" class="form-control" name="email" placeholder="Email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="" />
                                <span id="email" class="text-danger font-weight-bold"></span>

            </div><br>
        
            <div>
                <input type="text" class="form-control" name="password" placeholder="Password" id="pass" required="" />
                                <span id="pass" class="text-danger font-weight-bold"></span>

            </div><br>
              <div>
                <input type="text" class="form-control" name="" placeholder="Password" id="pass" required="" />
                                <span id="pass" class="text-danger font-weight-bold"></span>

            </div><br>
             
             <div>
                 <div>
            <input type="submit" class="btn btn-info btn-lg" style="background-color:#000033;" value="Sign up" />
            </div>
<!--    <div class="clearfix"></div>-->
<!--            <div class="separator">
            </div>-->
            </div>
            </form>

</div>
</div>
<hr>
</div>
</div>
</div>
</div>

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
<script src="js/wow.js%2bscript.js%2bcontact.js.pagespeed.jc.Zgp2lwyZpK.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>eval(mod_pagespeed_QeahOp1tfC);</script>
<script type="text/javascript">(function($){"use strict";var locations=[['<div class="infobox"><h3 class="title"><a href="about1.html">OUR USA OFFICE</a></h3><span>NEW YORK CITY 2045 / 65</span><br>+90 555 666 77 88</p></div></div></div>',-37.801578,145.060508,2]];var map=new google.maps.Map(document.getElementById('map'),{zoom:13,scrollwheel:false,navigationControl:true,mapTypeControl:false,scaleControl:false,draggable:true,center:new google.maps.LatLng(-37.801578,145.060508),mapTypeId:google.maps.MapTypeId.ROADMAP});var infowindow=new google.maps.InfoWindow();var marker,i;for(i=0;i<locations.length;i++){marker=new google.maps.Marker({position:new google.maps.LatLng(locations[i][1],locations[i][2]),map:map,icon:'images/marker.png'});google.maps.event.addListener(marker,'click',(function(marker,i){return function(){infowindow.setContent(locations[i][0]);infowindow.open(map,marker);}})(marker,i));}})(jQuery);</script>
<script type="text/javascript">
function validation(){
    var name=document.getElementById('name').value;
    var email=document.getElementById('email').value;
    var mobile=document.getElementById('mobile').value;
    var password=document.getElementById('pass').value;
    var conpass=document.getElementById('conpass').value;
    
    if(name==""){
        document.getElementById('name').innerHTML="**please enter valid name";
        return false;
    }
     if(email==""){
        document.getElementById('name').innerHTML="**please enter valid name";
        return false;
    }
     if(mobile==""){
        document.getElementById('name').innerHTML="**please enter valid name";
        return false;
    }
     
     if(pass==""){
        document.getElementById('name').innerHTML="**please enter valid name";
        return false;
    }
     if(conpass==""){
        document.getElementById('name').innerHTML="**please enter valid name";
        return false;
    }
}    





</script>
</body>

</html>