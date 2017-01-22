<%-- 
    Document   : index
    Created on : Aug 23, 2016, 11:35:00 AM
    Author     : Ahsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Setting Cookies</title>
</head>
<body>
<%
   Cookie cookie = null;
   Cookie[] cookies = null;
   // Get an array of Cookies associated with this domain
   cookies = request.getCookies();
   int found = 0;
   if( cookies != null ){
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         if(((cookie.getName()).equals("loggedin")) && (cookie.getValue().equals("true"))){
             found++;
         }
      }
      if(found == 1){
          response.sendRedirect("dashboard.jsp");
      }else{
          response.sendRedirect("login.jsp");
      }
  }else{
      response.sendRedirect("login.jsp");
  }
%>

</body>
</html>