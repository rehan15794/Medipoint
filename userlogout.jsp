<%-- 
    Document   : userlogout
    Created on : Jul 6, 2018, 10:32:08 AM
    Author     : Amjad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atul Movers and Packers</title>
    </head>
    <body>
     
            
   
    %>
       <%
       session.invalidate();
       response.sendRedirect("index-two.jsp");
       
       %>
       
    </body>
</html>
