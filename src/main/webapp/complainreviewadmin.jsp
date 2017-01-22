<%@page import="mandays.menuoutput"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");

    int campstaffid = 0;        
    Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/campsystem", "root", "root");
    Statement statement = connection.createStatement();
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
 %>
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Camp System | Complain Review</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
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
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
                <div class="page-logo">
                    <a href="dashboard.jsp">
                        <img src="assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                    <div class="menu-toggler sidebar-toggler"> </div>
                </div>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <!-- BEGIN NOTIFICATION DROPDOWN -->
                        
                         <!--END NOTIFICATION DROPDOWN--> 
                         <!--BEGIN INBOX DROPDOWN--> 
                         <!--END INBOX DROPDOWN--> 
                         <!--BEGIN TODO DROPDOWN--> 
                        <!-- END TODO DROPDOWN -->
                        <!-- BEGIN USER LOGIN DROPDOWN -->
                        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                        <li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <img alt="" class="img-circle" src="assets/layouts/layout/img/avatar_small.jpg" />
                                <span class="username username-hide-on-mobile">
                                    
                                    <% 
                                        ResultSet staffdetails = statement.executeQuery("SELECT * from campstaff WHERE ID =" + campstaffid);
                                        staffdetails.next();
                                        String Name[] = staffdetails.getString("Name").split(" ");
                                        out.println(Name[0]);
                                    %></span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default">
                                <!--<li>
                                    <a href="page_user_profile_1.html">
                                        <i class="icon-user"></i> My Profile </a>
                                </li>
                                <li>
                                    <a href="app_calendar.html">
                                        <i class="icon-calendar"></i> My Calendar </a>
                                </li>
                                <li>
                                    <a href="app_inbox.html">
                                        <i class="icon-envelope-open"></i> My Inbox
                                        <span class="badge badge-danger"> 3 </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="app_todo.html">
                                        <i class="icon-rocket"></i> My Tasks
                                        <span class="badge badge-success"> 7 </span>
                                    </a>
                                </li>
                                <li class="divider"> </li>-->
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
                        <li class="dropdown dropdown-quick-sidebar-toggler">
                            <a href="javascript:;" class="dropdown-toggle">
                                <i class="icon-logout"></i>
                            </a>
                        </li>
                        <!-- END QUICK SIDEBAR TOGGLER -->
                    </ul>
                </div>
                <!-- END TOP NAVIGATION MENU -->
            </div>
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
                        <li class="sidebar-toggler-wrapper hide">
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <div class="sidebar-toggler"> </div>
                            <!-- END SIDEBAR TOGGLER BUTTON -->
                        </li>
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
                        new menuoutput(campstaffid, out);
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
                    <div class="theme-panel hidden-xs hidden-sm">
                        <div class="toggler"> </div>
                        <div class="toggler-close"> </div>
                        <div class="theme-options">
                            <div class="theme-option theme-colors clearfix">
                                <span> THEME COLOR </span>
                                <ul>
                                    <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default"> </li>
                                    <li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="Dark Blue"> </li>
                                    <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue"> </li>
                                    <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey"> </li>
                                    <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light"> </li>
                                    <li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="Light 2"> </li>
                                </ul>
                            </div>
                            <div class="theme-option">
                                <span> Theme Style </span>
                                <select class="layout-style-option form-control input-sm">
                                    <option value="square" selected="selected">Square corners</option>
                                    <option value="rounded">Rounded corners</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Layout </span>
                                <select class="layout-option form-control input-sm">
                                    <option value="fluid" selected="selected">Fluid</option>
                                    <option value="boxed">Boxed</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Header </span>
                                <select class="page-header-option form-control input-sm">
                                    <option value="fixed" selected="selected">Fixed</option>
                                    <option value="default">Default</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Top Menu Dropdown</span>
                                <select class="page-header-top-dropdown-style-option form-control input-sm">
                                    <option value="light" selected="selected">Light</option>
                                    <option value="dark">Dark</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Sidebar Mode</span>
                                <select class="sidebar-option form-control input-sm">
                                    <option value="fixed">Fixed</option>
                                    <option value="default" selected="selected">Default</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Sidebar Menu </span>
                                <select class="sidebar-menu-option form-control input-sm">
                                    <option value="accordion" selected="selected">Accordion</option>
                                    <option value="hover">Hover</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Sidebar Style </span>
                                <select class="sidebar-style-option form-control input-sm">
                                    <option value="default" selected="selected">Default</option>
                                    <option value="light">Light</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Sidebar Position </span>
                                <select class="sidebar-pos-option form-control input-sm">
                                    <option value="left" selected="selected">Left</option>
                                    <option value="right">Right</option>
                                </select>
                            </div>
                            <div class="theme-option">
                                <span> Footer </span>
                                <select class="page-footer-option form-control input-sm">
                                    <option value="fixed">Fixed</option>
                                    <option value="default" selected="selected">Default</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END THEME PANEL -->
                    <!-- BEGIN PAGE BAR -->
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <a href="dashboard.jsp">Home</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <a href="#">Tables</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <span>Datatables</span>
                            </li>
                        </ul>
                        <div class="page-toolbar">
                            <div class="btn-group pull-right">
                                <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown"> Actions
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                
                            </div>
                        </div>
                    </div>
                    <!-- END PAGE BAR -->
                    <!-- BEGIN PAGE TITLE-->
                    <h3 class="page-title"> Managed Datatables
                        <small>managed datatable samples</small>
                    </h3>
                    <!-- END PAGE TITLE-->
                    <!-- END PAGE HEADER-->
                    
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                                <table class="table table-striped table-bordered table-hover table-header-fixed" id="sample_1">
                                        <thead>
                                            <tr>
                                                <th> Comp# </th>
                                                <th> Area </th>
                                                <th> Submitted By</th>
                                                <th> Submitted Time </th>
                                                <th> Resolved By </th>
                                                <th> Resolving Time </th>
                                                <th> Status </th>
                                                <th> Detail </th>
                                            </tr>
                                        </thead>
                                        <tbody>
            <%
            try{
                ResultSet complainrecords=  connection.createStatement().executeQuery("SELECT * from complainbook ORDER BY DateTime DESC");
                while(complainrecords.next()){
                    System.out.println("ResultSet CAlled");
                int id = complainrecords.getInt("ID");
                
                String Description = complainrecords.getString("Description");
                String roomno = complainrecords.getString("Area");
                Timestamp date = complainrecords.getTimestamp("DateTime");
                Timestamp checkedat =complainrecords.getTimestamp("checkedat");
                Timestamp solvedat =complainrecords.getTimestamp("solvedat");
                
                
                String ResolvedBy = "";
                String ResolvedAt = "";
                int solved = complainrecords.getInt("solved");
                int forwardedto = complainrecords.getInt("ForwardedTo");;
                int checked = complainrecords.getInt("checked");
                int submittedby = complainrecords.getInt("SubmittedBy");
                int solvedby = complainrecords.getInt("solvedby");
                String SubmissionBy = "";
                String status = "";
                
                if(solved == 1){
                    ResolvedAt = ""+complainrecords.getTimestamp("solvedat");
                    status = "<button type=\"button\" class=\"btn green-meadow\">Solved</button>";
                
                }else{
                    if(checked == 0){
                        status = "<button type=\"button\" class=\"btn red-sunglo\">Not Checked</button>";
                    }else{
                        checkedat = complainrecords.getTimestamp("checkedat");
                        status =  "<button type=\"button\" class=\"btn yellow-crusta\">Pending</button>";
                    }
                }
                
                ResultSet staffname = connection.createStatement()
                        .executeQuery("SELECT Name from campstaff WHERE ID = "+ submittedby);
                staffname.next();
                SubmissionBy = staffname.getString("Name");
                
                staffname = connection.createStatement()
                        .executeQuery("SELECT Name from campstaff WHERE ID = "+ forwardedto);
                staffname.next();
                String forwardto = staffname.getString("Name");
                try{
                if(solved == 1){
                    staffname = connection.createStatement()
                        .executeQuery("SELECT Name from campstaff WHERE ID = "+ solvedby);
                    staffname.next();
                    ResolvedBy = staffname.getString("Name");
                }}catch(Exception ex){
                    
                }
                
                out.println(
"<form action=\"complainreview\" method=\"post\">\n" +
"<tr>\n"
        + "<td class=\"center\">"+id+"<input type=\"hidden\" name=\"compainID\" value=\""+id+"\" /></td>"
        + "<td>"+roomno+"</td>"
        + "<td class=\"center\"> "+SubmissionBy+"</td>"
        + "<td class=\"center\"> "+date+"</td>"
        + "<td class=\"center\"> "+ResolvedBy+" </td>"
        + "<td class=\"center\"> "+ResolvedAt+"</td>"
        + "<td align=\"center\">"
        + status
        + "</td>"
        + "<td>"
        + "<a class=\"btn red\" data-toggle=\"modal\" href=\"#basic"+id+"\">View</a>"
        + "");
                out.println(""
        + "<div class=\"modal fade\" id=\"basic"+id+"\" tabindex=\"-1\" role=\"basic\" aria-hidden=\"true\">\n" +
"                                        <div class=\"modal-dialog\">\n" +
"                                            <div class=\"modal-content\">\n" +
"                                                <div class=\"modal-header\">\n" +
"                                                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"></button>\n" +
                        "<h4 class=\"modal-title\">Details "+roomno+"</h4>"+

"                                                </div>\n" +
"                                                <div class=\"modal-body\">\n" +
"                                                    <div id=\"blockui_sample_3_1_element\">");
                
                //Rows for Text Columns
                out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\""+roomno+"\" disabled id=\"form_control_1\" placeholder=\"Ahsane\">\n" +
"                                                <label for=\"form_control_1\">Effective Area</label>\n"
                            + "</div>"
                        + "</div>"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" disabled id=\"form_control_1\" value=\""+forwardto+"\">\n" +
"                                                <label for=\"form_control_1\">Forwarded To</label>\n"
                        + "</div>"
        + "</div></div>");
                //Rows for Text Columns
                out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\""+SubmissionBy+"\" disabled id=\"form_control_1\" placeholder=\"Ahsane\">\n" +
"                                                <label for=\"form_control_1\">Submitted By</label>\n"
                            + "</div>"
                        + "</div>"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" disabled id=\"form_control_1\" value=\""+date+"\">\n" +
"                                                <label for=\"form_control_1\">Submission Time</label>\n"
                        + "</div>"
        + "</div>"
                        +"</div>");
                //Rows for Text Columns
                out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-12 \">"
                            + "<div class=\"form-group form-md-line-input form-md-floating-label\">"
                        + "<textarea class=\"form-control\" disabled rows=\"3\">"+Description+"</textarea>"
                        + "<label for=\"form_control_1\">Description</label>"
                        + "</div>"
        + "</div>"
                        +"</div>");
                
                if(checked == 0){
                    out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-12 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\"Not Checked\" disabled id=\"form_control_1\" placeholder=\"Ahsane\">\n" +
"                                                <label for=\"form_control_1\">Status</label>\n"
                            + "</div>"
                        + "</div>"
                        
                        +"</div>");
                    
                }else{
                    if(solved==0){
                        out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\"Pending\" disabled id=\"form_control_1\">\n" +
"                                                <label for=\"form_control_1\">Status</label>\n"
                            + "</div>"
                        + "</div>"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" disabled id=\"form_control_1\" value=\""+checkedat+"\">\n" +
"                                                <label for=\"form_control_1\">Checked At</label>\n"
                        + "</div>"
        + "</div>"
                        +"</div>");
                    }else{
                        out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\"Solved\" disabled id=\"form_control_1\">\n" +
"                                                <label for=\"form_control_1\">Status</label>\n"
                            + "</div>"
                        + "</div>"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" disabled id=\"form_control_1\" value=\""+checkedat+"\">\n" +
"                                                <label for=\"form_control_1\">Checked At</label>\n"
                        + "</div>"
        + "</div>"
                        +"</div>");
                        out.println(""
        + "<div class=\"row\">"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" value=\""+ResolvedBy+"\" disabled id=\"form_control_1\">\n" +
"                                                <label for=\"form_control_1\">Solved By</label>\n"
                            + "</div>"
                        + "</div>"
                        + "<div class=\"col-md-6 \">"
                            + "<div class=\"form-group form-md-line-input has-error\">\n" +
"                                                <input type=\"text\" class=\"form-control\" disabled id=\"form_control_1\" value=\""+solvedat+"\">\n" +
"                                                <label for=\"form_control_1\">Solved At</label>\n"
                        + "</div>"
        + "</div>"
                        +"</div>");
                    }
                }
                
                
        out.println(""
     
                        + "</div>\n" +
"                                                </div>\n" +
"                                                <div class=\"modal-footer\">\n" +
"                                                    <button type=\"button\" class=\"btn btn-outline sbold red\" data-dismiss=\"modal\">Close</button>\n" +
"                                                </div>\n" +
"                                            </div>\n" +
"                                            <!-- /.modal-content -->\n" +
"                                        </div>"
        + ""
        + "</td>" +
        
"</tr>\n" +
"</form>\n");
                }
                    }catch(Exception ex){
                        System.out.println(ex);
                    }
                                            %>
 
                                        </tbody>
                                    </table>

                            <!-- END EXAMPLE TABLE PORTLET-->
                        </div>
                    </div>
                    
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
            
            
            
            <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
        </div>
        <!-- BEGIN FOOTER -->
        <div class="page-footer">
            <div class="page-footer-inner"> 2016 &copy; Developed by Ahsan Mahmood.
                <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
            </div>
            <div class="scroll-to-top">
                <i class="icon-arrow-up"></i>
            </div>
        </div>
        <!-- END FOOTER -->
        <!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        
        </body>

</html>