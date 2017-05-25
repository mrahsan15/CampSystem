<%-- 
    Document   : index
    Created on : Aug 23, 2016, 11:35:00 AM
    Author     : Ahsan
--%>
<%@include file="cookies.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript">
        function login(){
            window.location.href = "login.jsp";
        }
    </script>
<title>Camp System</title>
</head>

    
    
    <%
        
//    if(roles.equals("")){
//        System.out.println("Role is: "+roles);
//        out.println("<body onload=\"login()\">");
//    }else{
//        out.println("<body>");
//    }
    %>
<%
//   Cookie cookie = null;
//   Cookie[] cookies = null;
//   // Get an array of Cookies associated with this domain
//   cookies = request.getCookies();
//   int found = 0;
//   if( cookies != null ){
//      for (int i = 0; i < cookies.length; i++){
//         cookie = cookies[i];
//         if(((cookie.getName()).equals("loggedin")) && (cookie.getValue().equals("true"))){
//             found++;
//         }
//      }
//      if(found == 1){
//          response.sendRedirect("dashboard.jsp");
//      }else{
//          response.sendRedirect("login.jsp");
//      }
//  }else{
//      response.sendRedirect("login.jsp");
//  }


    Statement redirectStatement = connection.createStatement();
    String redirectQuery = "SELECT * from roles WHERE roleID = "+roles;
    System.out.println(redirectQuery);
    ResultSet redirectSet = redirectStatement.executeQuery(redirectQuery);
    redirectSet.next();
    System.out.println(redirectSet.getString("LandingPage"));
    response.sendRedirect(redirectSet.getString("LandingPage"));

//    if(roles.equals("1")){
//        response.sendRedirect("dashboard.jsp");
//    }else if(roles.equals("2")){
//        response.sendRedirect("CheckIn.jsp");
//    }else if(roles.equals("3")){
//        response.sendRedirect("CheckIn.jsp");
//    }
//}
%>

</body>
</html>