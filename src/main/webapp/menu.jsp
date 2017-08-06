<%-- 
    Document   : menu
    Created on : Feb 21, 2017, 4:34:18 PM
    Author     : ahsan
--%>
<%          
            
            
            
            try{
                if(!request.getServletPath().equals("/404.jsp")){
                    String unAuthorizedAccessQuery = "SELECT * FROM menu WHERE MenuUrl LIKE '"+request.getServletPath().replace("/", "")+"'";
                    
                    Statement unAuthorizedAccessStatement = connection.createStatement();
                    ResultSet unAuthorizedSet = unAuthorizedAccessStatement.executeQuery(unAuthorizedAccessQuery);
                    unAuthorizedSet.next();
                    unAuthorizedSet.getString("ID");
                }
                
            }catch(Exception ex){
                response.sendRedirect("404.jsp");
            }
            
            String active = " start active open";
            active = " ";
            out.println("<li class=\"sidebar-search-wrapper\">" +
"                        </li>");
            
            
            
            
            String menugotten = "";
            int OperationsFound = 0;
            int AdministrationFound = 0;
            
            Statement menustatement = connection.createStatement();
            ResultSet menuSet = menustatement.executeQuery("SELECT * from menu WHERE roles REGEXP "+roles);
            while(menuSet.next()){
                menugotten += ","+menuSet.getInt("ID");
                if(menuSet.getString("MenuTitle").equals("Operations")){
                    OperationsFound++;
                }
                if(menuSet.getString("MenuTitle").equals("Administration")){
                    AdministrationFound++;
                }
            }
            String menusorted[] = menugotten.split(",");
            
            for(int i = 1; i < menusorted.length; i++){
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Home")){
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " start active open";
                    }
                    out.println(
"                        <li class=\"nav-item"+ activeMenu +"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            
            
            if(OperationsFound > 0){
                out.println(
"                        <li class=\"heading\">\n" +
"                            <h3 class=\"uppercase\">Operations</h3>\n" +
"                        </li>\n");
            }
            
            
            //Complain System
            int systemfound = 0;
            int activemenu= 0;
            String SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Complain System")){
                    
                    systemfound++;
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " active open";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item   "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-wrench\"></i>\n" +
"                                <span class=\"title\">Complain System</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
            
            //Mandays System
            systemfound = 0;
            activemenu= 0;
            SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Mandays System")){
                    systemfound++;
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " active open";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item   "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-book\"></i>\n" +
"                                <span class=\"title\">Mandays System</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
            
            systemfound = 0;
            activemenu= 0;
            SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Company Registration")){
                    systemfound++;
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " active open";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item   "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-bank\"></i>\n" +
"                                <span class=\"title\">Company Registration</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
            
            
            //Food Mandays Heading
            systemfound = 0;
            activemenu= 0;
            SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Food Mandays")){
                    systemfound++;
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " start active open";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item  "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-coffee\"></i>\n" +
"                                <span class=\"title\">Food Mandays</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
            
            
            //Transportation Heading
            systemfound = 0;
            activemenu= 0;
            SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Transportation")){
                    systemfound++;
                    String activeMenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " start active open";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+"\">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item  "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-bus\"></i>\n" +
"                                <span class=\"title\">Transportation</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
            
            
            
            //Administration Heading
            if(AdministrationFound > 0){
                out.println(
"                        <li class=\"heading\">\n" +
"                            <h3 class=\"uppercase\">Administration</h3>\n" +
"                        </li>\n");
            }
            
            //System Menu Part
            systemfound = 0;
            activemenu= 0;
            SystemMenu = "";
            for(int i = 1; i < menusorted.length; i++){
                
                menuSet = menustatement.executeQuery("SELECT * from menu WHERE ID = "+menusorted[i]);
                menuSet.next();
                if(menuSet.getString("MenuType").equals("Settings")){
                    systemfound++;
                    String activeMenu = "";
                    String activesubmenu = "";
                    if(request.getServletPath().equals("/"+menuSet.getString("MenuUrl"))){
                        activeMenu = " active open";
                        activesubmenu = "";
                        activemenu++;
                    }
                    SystemMenu += (
"                        <li class=\"nav-item "+activeMenu+" \">\n" +
"                            <a href=\""+menuSet.getString("MenuUrl")+"\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\""+menuSet.getString("MenuIcon")+"\"></i>\n" +
"                                <span class=\"title\">"+menuSet.getString("MenuName")+"</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
                }
            }
            
            if(systemfound > 0){
                String tempactive= "";
                String tempselected = "";
                String temparrow = "arrow ";
                if(activemenu > 0){
                    tempactive = "  active open";
                    tempselected = "<span class=\"selected\"></span>";
                    temparrow = "arrow open";
                }
                out.println("<li class=\"nav-item   "+ tempactive+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"icon-settings\"></i>\n" +
"                                <span class=\"title\">Settings</span>\n"
                        + tempselected +
"                                <span class=\""+temparrow+"\"></span>\n" +
"                            </a>");
                out.println("<ul class=\"sub-menu\">");
                out.println(SystemMenu);
                out.println("</ul>");
                out.println("</li>");
            }
            
%>