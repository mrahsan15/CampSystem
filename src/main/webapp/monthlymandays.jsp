<%-- 
    Document   : monthlymandays
    Created on : Jan 29, 2017, 1:46:01 PM
    Author     : ahsan
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mandays.menuoutput"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="cookies.jsp" %>

<%
Statement statement = connection.createStatement();
%>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Camp System | Monthly Reports</title>
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
        <link href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/clockface/css/clockface.css" rel="stylesheet" type="text/css" />
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
        <%@include  file="header.jsp" %>
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
                            <form class="sidebar-search  sidebar-search-bordered" action="page_general_search_3.html" method="POST">
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
                    <!-- BEGIN PAGE BAR -->
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <a href="dashboard.jsp">Home</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <a href="#">Monthly Mandays Reports</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <span></span>
                            </li>
                        </ul>
                        
                    </div>
                    <!-- END PAGE BAR -->
                    <!-- BEGIN PAGE TITLE-->
                    <h3 class="page-title"> Mandays Reports
                        <a class="btn green btn-outline sbold uppercase" href="#form_modal2" id="jajaja" data-toggle="modal"> Select Month for Report
                            <i class="fa fa-share"></i>
                        </a>
                    </h3>
                    
                    <div class="portlet-body form">
                                    <!-- BEGIN FORM-->
                                    
                                    <div id="form_modal2" class="modal fade" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                    <h4 class="modal-title">Report Month</h4>
                                                </div>
                                                <form action="monthlymandays.jsp" method="get" class="form-horizontal">
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">Select Month</label>
                                                        <div class="col-md-8">
                                                            <div class="input-group input-medium date date-picker" data-date="<% new SimpleDateFormat("mm/yyyy").format(new java.util.Date()); %>" data-date-format="mm/yyyy" data-date-viewmode="years" data-date-minviewmode="months">
                                                                <input type="text" name="reportdate" class="form-control" readonly>
                                                                <span class="input-group-btn">
                                                                    <button class="btn default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                            <!-- /input-group -->
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                                    <input type="submit" class="btn green" value="Get Report" />
                                                </div>
                                                    </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END FORM-->
                                </div>
                    <!-- END PAGE TITLE-->
                    <!-- END PAGE HEADER-->
                    <!--New Row Insert Here-->
                    <% 
                        String reportdate = request.getParameter("reportdate");
                        if(reportdate != null){
                            
                        
                    %>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet box red">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-cogs"></i>Monthly Report For the Month of -- DATE</div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                        <a href="javascript:;" class="remove"> </a>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th> Date </th>
                                                    <%
                            
                            String MandaysQuery = "SELECT * from datarecord WHERE CheckIn <= '2016-11-10 00:00:00' AND CheckOut < '2016-12-01 00:00:00' or CheckOut is Null";
                            
                            
                            
                                                        String nationalityQuery = "SELECT * FROM datatypes WHERE Type LIKE 'FoodType' ORDER BY datatypes.Value DESC";
                                                        String NationalityHeader= "";
                                                        Statement nationalitySt = connection.createStatement();
                                                        ResultSet nationalityRs = nationalitySt.executeQuery(nationalityQuery);
                                                        
                                                        
                                                        while(nationalityRs.next()){
                                                            NationalityHeader = NationalityHeader+ nationalityRs.getInt("ID") + ",";
                                                            out.println("<th>"+nationalityRs.getString("Value")+"</th>");
                                                        }
                                                        String[] NationalityHeaders = NationalityHeader.split(",");
//                                                          for(int i = 0; i < NationalityHeaders.length; i++){
////                                                            
////                                                        }
                                                    %>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    
                                                    int day = 0;
                                                    int Month = Integer.parseInt(reportdate.split("/")[0]);
                                                    int Year = Integer.parseInt(reportdate.split("/")[1]);
                                                    SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
                                                    Month++;
                                                    Date date = dateformat.parse(day+"/"+Month+"/"+Year);
                                                    int days = Integer.parseInt(new SimpleDateFormat("dd").format(date));
                                                    String FoodReportQuery = "SELECT * FROM datarecord WHERE FoodCategory = 2 AND CheckIn <= '2017-01-08 00:00:00' AND CheckOut IS NULL ORDER BY CheckOut DESC";
                                                    
                                                    Month--;
                                                    
                                                    for(int i = 0; i < days; i++){
                                                        out.println("<tr>");
                                                        date = dateformat.parse((i+1)+"/"+Month+"/"+Year);
                                                        out.println("<td>"+new SimpleDateFormat("dd-MMM-yyyy").format(date)+"</td>");
                                                        for(int j = 0; j < NationalityHeaders.length; j++){
                                                            int count = 0;
                                                            FoodReportQuery = "SELECT * FROM datarecord WHERE FoodCategory = "+NationalityHeaders[j]+" AND CheckIn <= '"+new SimpleDateFormat("yyyy-MM-dd").format(date)+" 00:00:00' AND CheckOut IS NULL ORDER BY CheckOut DESC";
                                                            System.out.println(FoodReportQuery);
                                                            Statement FoodReportSt = connection.createStatement();
                                                            ResultSet FoodReportRs = FoodReportSt.executeQuery(FoodReportQuery);
                                                            while(FoodReportRs.next()){
                                                                count++;
                                                            }
                                                            FoodReportQuery = "SELECT * FROM datarecord WHERE FoodCategory = "+NationalityHeaders[j]+" AND CheckIn <= '"+new SimpleDateFormat("yyyy-MM-dd").format(date)+" 00:00:00' AND CheckOut >= '"+new SimpleDateFormat("yyyy-MM-dd").format(date)+" 00:00:00' ORDER BY CheckOut DESC";
                                                            FoodReportSt = connection.createStatement();
                                                            FoodReportRs = FoodReportSt.executeQuery(FoodReportQuery);
                                                            while(FoodReportRs.next()){
                                                                count++;
                                                            }
                                                            out.println("<td>"+count+"</td>");
                                                            
                                                        }
                                                        
                                                        
                                                        
                                                        
                                                        out.println("</tr>");
                                                    }
                                                
                                                %>
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }%>
                    
                    
                    
                    
                    
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER --><div class="page-footer">
            <div class="page-footer-inner"> 2016 &copy; Camp System by Ahsan Mahmood.                
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
        <script src="assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>