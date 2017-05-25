<%-- 
    Document   : update
    Created on : Feb 7, 2017, 7:29:13 PM
    Author     : ahsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String Update1 = "ALTER TABLE campsystem.guestcompanies ADD COLUMN 'active' TINYINT NOT NULL DEFAULT 0 AFTER 'joinedsince'";
            
        %>
        
    </body>
</html>
