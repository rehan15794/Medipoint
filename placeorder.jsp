<%-- 
    Document   : placeorder
    Created on : Aug 6, 2018, 12:16:06 PM
    Author     : Amjad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                  String name=request.getParameter("name");
         String mobile=request.getParameter("emobile");
                
              String zip=request.getParameter("zip");
              String city=request.getParameter("city");
              String address=request.getParameter("address");
              String imagea=request.getParameter("imagea");
        
        
        %>
    </body>
</html>
