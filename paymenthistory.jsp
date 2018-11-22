<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.connect_db"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE jsp>
<!--[if lt IE 7 ]><jsp class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><jsp class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><jsp class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from templatevisual.com/demo/kalista/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:20:20 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Payment History</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
<link rel="apple-touch-icon" href="images/xapple-touch-icon.png.pagespeed.ic.bKAdLX25i8.png"/>
<link rel="apple-touch-icon" sizes="72x72" href="images/xapple-touch-icon-72x72.png.pagespeed.ic.KsgMxk_SF_.png"/>
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>
<link href="css/A.bootstrap.css%2bfont-awesome.css%2cMcc.uV77lltfjz.css.pagespeed.cf.6EbMV7Trs0.css" rel="stylesheet"/>
<link href="css/A.menu.css.pagespeed.cf.ZnuJ7uv_KF.css" rel="stylesheet">
<link href="css/A.animate.css%2bcarousel.css%2cMcc.8uxCfv0Rmb.css.pagespeed.cf.mY3cbwaVWe.css" rel="stylesheet"/>
<link href="A.style.css.pagespeed.cf.OXD_AjAnBP.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
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
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
            <%
        
         String emailag=(String)session.getAttribute("emailag");
   if(emailag==null){
       response.sendRedirect("agentlogin.jsp");
       
   }else{
    %>
   <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn=new connect_db().getConnection();
     
        %>
<div id="col-md-12">

<div class="container">
<jsp:include page="include/header.jsp"></jsp:include>
<div class="page-wrapper white-section clearfix">
<div class="row">
<div class="col-md-8">
<h2>Payment </h2>
</div>
<div class="col-md-4">
<ol class="breadcrumb text-right">
<li><a href="index-two.jsp">Home</a></li>
<li class="active">Payment</li>
</ol>
</div>
</div>
<hr>
<div id="single-shop" class="row">
<div class="col-lg-12">
<div class="row">
    <div class="col-md-12">
        <div class="col-md-4">
        <div class="menu_section">
              <h3>Agent</h3>
              <ul class="nav side-menu">
                
                
                
                   <li><a href="agentprofile.jsp"><i class="fa fa-bar-chart-o"></i>Profile Page
                           <span class="fa fa-w"></span></a>
                </li>
                <li><a href="bookingpage.jsp"><i class="fa fa-envelope"></i>Booking Page<span class="fa fa-envelope-o"></span></a>
                </li>
                <li><a href="paymenthistory.jsp"><i class="fa fa-check-square"></i>Payment History<span class="fa fa-check-square-o"></span></a>
                </li>
                 
                
                    <li><a href="offerview.jsp"><i class="fa fa-check-square"></i>Offer View</a>
                    </li>
                  
                <li><a href="membership.jsp"><i class="fa fa-bug"></i>Membership Page<span class="fa fa-bug"></span></a>
                </li>
              </ul>
            </div>
        </div><div class="col-md-8">
    
                  <br />
                    <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn2=new connect_db().getConnection();
       PreparedStatement ps2=cn2.prepareStatement("SELECT * FROM orders where email='"+emailag+"' and bookingstatus='Delivered' ");
       ResultSet rs2=ps2.executeQuery();

        
        %>
                    
                  <table class="table table-striped table-hover table-condensed">
                      <thead>
                      <tr>

                        <th>Services</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Booking Date</th>
                        
                        <th>Description</th>
                        <th>Payment</th>
                        <th>Order Status</th>
                      </tr></thead><tbody>
                      <%
                      while(rs2.next()){
                      %>
                      <tr>
                          <th><%=rs2.getString("name")%></th>
                          <th><%=rs2.getString("quantity")%></th>
                          <th><%=rs2.getString("price")%></th>
                          <th><%=rs2.getString("dateofbooking")%></th>
                          
                          <th><%=rs2.getString("description")%></th>
                     <th> <%=rs2.getString("status")%></th>
                     <th> <%=rs2.getString("bookingstatus")%></th>
                      </tr>
                      <%}%>
                      </tbody>
                  </table>
                
        </div>
</div>
</div>
<br>
</div>
</div>
</div>
</div>


<jsp:include page="include/footer.jsp"></jsp:include>

<div class="backtotop"><i class="fa fa-arrow-up"></i> </div>
</div><%}%>
<script src="js/jquery.min.js.pagespeed.jm.J-8M9bCq0j.js"></script>
<script src="js/bootstrap.min.js%2bretina.js.pagespeed.jc.ij7eiy9vSY.js"></script><script>eval(mod_pagespeed_w3wyRvi8ek);</script>
<script>eval(mod_pagespeed_kL$SS6E1Xy);</script>
<script src="js/carousel.js.pagespeed.jm.Q7bTgZe8yn.js"></script>
<script src="js/wow.js%2bscript.js.pagespeed.jc.itpXMU277F.js"></script><script>eval(mod_pagespeed_MiWQvrvY5x);</script>
<script>eval(mod_pagespeed_zEDxlXRV1D);</script>
</body>

<!-- Mirrored from templatevisual.com/demo/kalista/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 10:21:29 GMT -->
</html>