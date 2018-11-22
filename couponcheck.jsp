
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.connect_db"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE jsp>
<!--[if lt IE 7 ]><jsp class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><jsp class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><jsp class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from templatevisual.com/demo/kalista/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:38 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cart</title>
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
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%
        String emailu=(String)session.getAttribute("emailu");
        if(emailu==null)
        {
            response.sendRedirect("login.jsp");
        }else
        {
            
   
    %>
<div id="wrapper">

<div class="container">

<jsp:include page="include/header.jsp"></jsp:include>
<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2>Checkout Order</h2>
</div>
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="index-two.jsp">Home</a></li>
<li class="active">Cart</li>
</ol>
</div>
</div>
<hr>
<div id="single-shop" class="row">
<div class="col-md-12">
<div class="table-responsive">
<table id="cart-table" class="table table-condensed">
<thead>
<tr>
<th>Action</th>
<th>Image</th>
<th>Product</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th>
</tr>
</thead>
<tbody>
    <%
        int subtotal=0,total=0;
  String pid=request.getParameter("pid");
                            
                Connection cn=new connect_db().getConnection();
                PreparedStatement ps = cn.prepareStatement("select * from cart where email ='"+emailu+"' ;");
             
                ResultSet rset = ps.executeQuery();
                while(rset.next())
                {
                    String imagea = rset.getString("imagea");
                    String oid = rset.getString("oid");
                    String pname = rset.getString("pname");
                    int price = rset.getInt("price");
                    int qty = rset.getInt("quantity");
                     total = qty*price;
                    subtotal+=total;
                %>

<tr>
<th class="product-remove">
    <a class="remove" title="Remove this product" href="removeFromCart?oid=<%=oid%>">×</a>
</th>
<th>
<div class="media">
<div class="relative">
<a href="shop-single.jsp" title="">
<img src="adminpannel/Admin/images/<%=imagea%>" alt="">
</a>
</div>
</div>
</th>
<th>
<a href="shop-single.jsp"><%=pname%></a>
</th>
<td><%=price%></td>
<td>
    <form method="post" action="productqty?oid=<%=rset.getString("oid")%>&&email=<%=emailu%>">
        <input type="number"  value="<%=qty%>" name="quantity"  ><br> <input type="submit" value="Update Cart" class="btn btn-success" >
    </form>
</td>
<td>
<%=total%>
</td>
</tr>
<%

}
%>
</tbody>
</table>
</div>


<div class="couponarea clearfix" style="margin-top: 50px;">
    <%  int flag=1;
          String cname=request.getParameter("cname");

             
         
            PreparedStatement ps3=cn.prepareStatement("SELECT * FROM coupon WHERE cname='"+cname+"';");
            
        

            ResultSet rs3=ps3.executeQuery();
            
            if(rs3.next()){
                if(rs3.getString("cname").equals(cname)){
                    String e=rs3.getString("discount");
                  HttpSession sessiona=request.getSession(true);
                  sessiona.setAttribute("discount",e);
                    int discount=rs3.getInt("discount");
            int count=rs3.getInt("count");
             count=count-1;
             PreparedStatement ps5=cn.prepareStatement("UPDATE coupon SET count=? where cname='"+cname+"';");
              ps5.setInt(1, count);
           

              ps5.executeUpdate();
                   
%>
    
       
          <div class="col-md-8"></div>
          <div class="col-md-4">
        <form class="form-inline" method="post" action="couponcheck.jsp">      
 

<div class="form-group">
    <input type="text" class="" placeholder="Coupon code" value="<%=cname%>" name="cname">
</div>
<div class="form-group">
    <input type="submit" class="btn btn-primary" value="Apply Coupon" >
</div>
        
</form>
<div class="alert alert-success alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">
									&times;
								</button>
								<div> <h>Coupon Applied.</h></div>
							</div>
   
          </div>
<div class="col-md-6">
<div class="totalprice">
<h2>Order Total</h2>
<p>Subtotal : Rs <%=subtotal%></p>
<%

int totala=subtotal-subtotal*discount/100;
%>
<p>Discount : <%=discount%> %</p>
<p>Total : Rs <%=totala%></p>
</div>
<a  class="btn btn-primary" href="shop-checkout.jsp">Proceed to Checkout</a>
</div>
        
        <%
}

}
 else if(flag==1){
               %>
               <div class="col-md-8"></div>
     <div class="col-md-4">          
   <form class="form-inline" method="post" action="couponcheck.jsp">      
 

<div class="form-group">
    <input type="text"  placeholder="Coupon code" value="<%=cname%>" name="cname">
</div>
<div class="form-group">
    <input type="submit" class="btn btn-primary" value="Apply Coupon" >
</div>
     </form>
 <div class="alert alert-danger alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">
									&times;
								</button>
								<div> <h>This Coupon is not valid.</h></div>
							</div>
     </div>
        

        <div class="col-md-6">
<div class="totalprice">
<h2>Order Total</h2>
<p>Subtotal : Rs <%=subtotal%></p>
<%
int discount=0;

int totala=subtotal-subtotal*discount/100;
%>
<p>Discount : <%=discount%> %</p>
<p>Total : Rs <%=totala%></p>
</div>
<a  class="btn btn-primary" href="shop-checkout.jsp">Proceed to Checkout</a>
</div>
        <%}%>
</div>



</div>
</div>
</div>
</div>


<jsp:include page="include/footer.jsp"></jsp:include>

<div class="backtotop"><i class="fa fa-arrow-up"></i> </div>
</div>
<%}%>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js%2bcontact.js.pagespeed.jc.Zgp2lwyZpK.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>eval(mod_pagespeed_QeahOp1tfC);</script>
<script type="text/javascript">(function($){"use strict";var locations=[['<div class="infobox"><h3 class="title"><a href="about1.jsp">OUR USA OFFICE</a></h3><span>NEW YORK CITY 2045 / 65</span><br>+90 555 666 77 88</p></div></div></div>',-37.801578,145.060508,2]];var map=new google.maps.Map(document.getElementById('map'),{zoom:13,scrollwheel:false,navigationControl:true,mapTypeControl:false,scaleControl:false,draggable:true,center:new google.maps.LatLng(-37.801578,145.060508),mapTypeId:google.maps.MapTypeId.ROADMAP});var infowindow=new google.maps.InfoWindow();var marker,i;for(i=0;i<locations.length;i++){marker=new google.maps.Marker({position:new google.maps.LatLng(locations[i][1],locations[i][2]),map:map,icon:'images/marker.png'});google.maps.event.addListener(marker,'click',(function(marker,i){return function(){infowindow.setContent(locations[i][0]);infowindow.open(map,marker);}})(marker,i));}})(jQuery);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:39 GMT -->
</html>