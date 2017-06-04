<%-- 
    Document   : header
    Created on : Feb 7, 2017, 5:20:17 PM
    Author     : ahsan
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.File"%>
<%--<%@include file="cookies.jsp" %>--%>
<% 
Statement UserDataStatement = connection.createStatement();
%>

<div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
                <div class="page-logo">
                    <a href="dashboard.jsp">
                        <% 
                            String path  = (getServletContext().getRealPath("")+File.separator+"uploadedcontent"+File.separator+"logo.png");
                            
                        %>
                        <img src="<% out.println(path); %>" alt="logo" class="logo-default" /> </a>
                        
                        
                    <div class="menu-toggler sidebar-toggler"> </div>
                </div>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <% 
                                        ResultSet staffdetails = UserDataStatement.executeQuery("SELECT * from campstaff WHERE ID =" + campstaffid);
                                        staffdetails.next();
                                        
                                        String Name = staffdetails.getString("FirstName");
                                        out.println("<img alt=\"\" class=\"img-circle\" src=\""+staffdetails.getString("ProfilePicture")+"\" />");
                                        
                                    %>
                                
                                <span class="username username-hide-on-mobile">
                                    <%out.println(Name);%>
                                </span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default">
                                <li>
                                        <a href="myprofile.jsp">
                                            <i class="icon-user"></i> My Profile </a>
                                </li>
                                <li class="divider"> </li>
                                <li>
                                    <a href="lockscreen.jsp">
                                        <i class="icon-lock"></i> Lock Screen </a>
                                </li>
                                <li>
                                    <a href="login.jsp">
                                        <i class="icon-key"></i> Log Out </a>
                                </li>
                            </ul>
                        </li>
                        <!-- END USER LOGIN DROPDOWN -->
                        <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                        
                        <!-- END QUICK SIDEBAR TOGGLER -->
                    </ul>
                </div>
                <!-- END TOP NAVIGATION MENU -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        