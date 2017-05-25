<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<% 
    int campstaffid = 0;
    Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/campsystem", "root", "root");

    Statement cookiestatement = connection.createStatement();
        Cookie cookie = null;
        Cookie[] cookies = null;
        // Get an array of Cookies associated with this domain
        cookies = request.getCookies();
        int logged= 0;
    
        if( cookies != null ){
            
           for (int i = 0; i < cookies.length; i++){
              cookie = cookies[i];
              if((cookie.getName()).equals("loggedin")){
                  if(cookie.getValue().equals("true")){
                      for (int j = 0; j < cookies.length; j++){
                          cookie = cookies[j];
                          if((cookie.getName()).equals("campstaffid")){
                              campstaffid = Integer.parseInt(cookie.getValue());
                              logged++;
                          }
                      }
                  }
              }
           }
        }
        if(logged == 0){
            
            String username = request.getParameter("username");  
            String password = request.getParameter("password");
            int found = 0;
                ResultSet resultset = 
                cookiestatement.executeQuery("select * from login where username = '" + username + "'") ; 
            
            
            try{
            while(resultset.next()){
                String dbusername = resultset.getString("username");
                String dbpassword = resultset.getString("password");
                if(username.equals(dbusername ) && password.equals(dbpassword)){
                    campstaffid = resultset.getInt("campstaffID");
                    found++;
                    Cookie campstaffidcookie = new Cookie("campstaffid", ""+campstaffid);
                    Cookie loggedincookie = new Cookie("loggedin","true");

                    // Set expiry date after 24 Hrs for both the cookies.
                    campstaffidcookie.setMaxAge(60*60*24); 
                    loggedincookie.setMaxAge(60*60*24); 

                    // Add both the cookies in the response header.
                    response.addCookie( campstaffidcookie );
                    response.addCookie( loggedincookie );
                    }
                }
            }catch(Exception ex){
                System.out.println("Error Caught!");
//                response.sendRedirect("login.jsp");
            }
                if(found == 0){
//                    response.sendRedirect("login.jsp");
                }
        
    }
//        try{
//            ResultSet rs = cookiestatement.executeQuery("SELECT JobTitle from campstaff WHERE ID = "+campstaffid);
//            rs.next();
//            String JobTitle = rs.getString("JobTitle");
//            if(JobTitle.equals("Maintenance Incharge")){
//                response.sendRedirect("complainreview.jsp");
//            }else if(JobTitle.equals("Store Keeper")){
//                response.sendRedirect("inventory.jsp");
//            }
//        }catch(Exception ex){
//            System.out.println("Error Caught!");
//            response.sendRedirect("login.jsp");
//        }
//        try{
        Statement userdatastatement = connection.createStatement();
        ResultSet userdataresultset = userdatastatement.executeQuery("SELECT * from campstaff WHERE ID = "+campstaffid);
        userdataresultset.next();
        String ProfilePicture = userdataresultset.getString("profilepicture");
        String roles = userdataresultset.getString("Role").split(",")[1];
//        }catch(Exception ex){
//            
//        }
        
        %>
