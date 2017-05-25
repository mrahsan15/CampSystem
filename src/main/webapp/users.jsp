<%-- 
    Document   : users
    Created on : Feb 19, 2017, 3:03:19 PM
    Author     : ahsan
--%>
<%@include file="cookies.jsp" %>
<%
Statement statement = connection.createStatement();
%>
<%@page import="mandays.menuoutput"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Users | Camp System</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <%@include file="header.jsp" %>
            <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                <div class="page-sidebar-wrapper">
                    <!-- BEGIN SIDEBAR -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <div class="page-sidebar navbar-collapse collapse">
                        <!-- BEGIN SIDEBAR MENU -->
                        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>
                            <!-- END SIDEBAR TOGGLER BUTTON -->
                            <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
                            <li class="sidebar-search-wrapper">
                                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                                <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
                                <!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
                                <form class="sidebar-search  " action="page_general_search_3.html" method="POST">
                                    <a href="javascript:;" class="remove">
                                        <i class="icon-close"></i>
                                    </a>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <a href="javascript:;" class="btn submit">
                                                <i class="icon-magnifier"></i>
                                            </a>
                                        </span>
                                    </div>
                                </form>
                                <!-- END RESPONSIVE QUICK SEARCH FORM -->
                            </li>
                            <%
                            %><%@include file="menu.jsp" %><%
                            %>
                        </ul>
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN THEME PANEL -->
                        <!-- END THEME PANEL -->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>Users</span>
                                </li>
                            </ul>
                            
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- BEGIN : USER CARDS -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green bold uppercase">Registered Users</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="mt-element-card mt-element-overlay">
                                            <div class="row">
                                                
                                                <%
                                                String useraccountsquery = "SELECT * from campstaff";
                                                Statement useraccountsstatement = connection.createStatement();
                                                ResultSet useraccountsset = useraccountsstatement.executeQuery(useraccountsquery);
                                                while(useraccountsset.next()){
                                                    String UserProfilePicture = useraccountsset.getString("ProfilePicture");
                                                    if(UserProfilePicture == null){
                                                        UserProfilePicture = "assets/pages/media/profile/people19.png";
                                                    }
                                                    int UserID = useraccountsset.getInt("ID");
                                                    String UserFirstName = useraccountsset.getString("FirstName");
                                                    String UserLastName = useraccountsset.getString("LastName");
                                                    String UserJobTitle = useraccountsset.getString("JobTitle");
                                                    
                                                    out.println("<div class=\"col-lg-3 col-md-4 col-sm-6 col-xs-12\">");
                                                    out.println("<div class=\"mt-card-item\">");
                                                    out.println("<div class=\"mt-card-avatar mt-overlay-1 mt-scroll-left\">"
                                                            + "<img src=\""+UserProfilePicture+"\" />"
                                                            + "<div class=\"mt-overlay\">"
                                                            + "<ul class=\"mt-info\">"
                                                            + "<li>"
                                                            + "<a class=\"btn default btn-outline\" href=\"javascript:;\">"
                                                            + "<i class=\"icon-magnifier\"></i>"
                                                            + "</a>"
                                                            + "</li>"
                                                            + "<li>"
                                                            + "<a class=\"btn default btn-outline\" href=\"javascript:;\">"
                                                            + "<i class=\"icon-link\"></i>"
                                                            + "</a>"
                                                            + "</li>"
                                                            + "</ul>"
                                                            + "</div>"
                                                            + "</div>");
                                                    out.println("<div class=\"mt-card-content\">"
                                                    + "<h3 class=\"mt-card-name\">"
                                                            +"<a href=\"profile.jsp?a="+UserID+"\">"
                                                            +UserFirstName+ " " 
                                                            +UserLastName+"</h3>"
                                                            +"</a>"
                                                    + "<p class=\"mt-card-desc font-grey-mint\">"+UserJobTitle+"</p>"
                                                    + "<div class=\"mt-card-social\">"
                                                    + "<ul>"
                                                    + "<li>"
                                                    + "<a href=\"javascript:;\">"
                                                    + "<i class=\"icon-social-facebook\"></i>"
                                                    + "</a>"
                                                    + "</li>"
                                                    + "<li>"
                                                    + "<a href=\"javascript:;\">"
                                                    + "<i class=\"icon-social-twitter\"></i>"
                                                    + "</a>"
                                                    + "</li>"
                                                    + "<li>"
                                                    + "<a href=\"javascript:;\">"
                                                    + "<i class=\"icon-social-dribbble\"></i>"
                                                    + "</a>"
                                                    + "</li>"
                                                    + "</ul>"
                                                    + "</div>"
                                                    + "</div>");
                                                    out.println("</div></div>");
                                                }
                                                
                                                %>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- END : USER CARDS -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
                    
                <!-- END QUICK SIDEBAR -->
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <%@include  file="footer.jsp" %>
            <!-- END FOOTER -->
        
        <!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>