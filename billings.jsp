<%-- 
    Document   : billings
    Created on : Aug 7, 2018, 1:42:39 PM
    Author     : Amjad
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.connect_db"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <style>
            .invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
        </style>
    </head>
    <body>
        <%
            String trackid=request.getParameter("trackid");
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn=new connect_db().getConnection();
       PreparedStatement ps=cn.prepareStatement("SELECT * FROM orders where trackid='"+trackid+"' ;");
       ResultSet rs=ps.executeQuery();
       if(rs.next()){
        
        %> 
<!------ Include the above in your HEAD tag ---------->
<br>
<div class="container" style="border: solid;">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right"><%=rs.getString("trackid")%></h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					<%=rs.getString("name")%><br>
    					<%=rs.getString("address")%><br>
    					<%=rs.getString("city")%><br>
    					<%=rs.getString("zip")%>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					<%=rs.getString("name")%><br>
    					<%=rs.getString("address")%><br>
    					<%=rs.getString("city")%><br>
    					<%=rs.getString("zip")%>
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					COD<br>
    					<%=rs.getString("email")%><br>
    					
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					<%=rs.getString("dateofbooking")%><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    						
    <%
           
       PreparedStatement ps1=cn.prepareStatement("SELECT * FROM orders where trackid='"+trackid+"' ;");
       ResultSet rs1=ps1.executeQuery();
              int totals=0;
       int subtotals=0;
      while(rs1.next()){
          int price=rs1.getInt("price");
          int quantitys=rs1.getInt("quantity");
           totals=price*quantitys;
         
          subtotals+=totals;
    %>
            
    <tr>
    								<td><%=rs.getString("pname")%></td>
    								<td class="text-center">Rs <%=rs1.getString("price")%></td>
    								<td class="text-center"><%=rs1.getString("quantity")%></td>
    								<td class="text-right"> Rs<%=totals%> </td>
    </tr><br>
                                <%}%>
                                

    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right"> Rs <%=subtotals%></td>
    							</tr>
                                                          <%
                                                            int shiping=40;
                                                            
                                                        int ttotal=subtotals+shiping;
                                                        %>  
                                                        <tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">Rs 40</td>
    							</tr>

    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right"> Rs <%=ttotal%> </td>
    							</tr>
    						</tbody>
    					</table>
                                                        <input type="submmit" class="btn btn-success" name="print" value="print" onclick="window.print();" >
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
<%}%>
    </body>
</html>
