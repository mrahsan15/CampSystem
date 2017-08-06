<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<!-- 
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->

<%@include file="cookies.jsp" %>
<%
Statement statement = connection.createStatement();
%>

<%
String TripDate = "";
int datefound = 0;
try{
    TripDate = request.getParameter("tripmonth");
    System.out.println("Trip date is: "+TripDate);
}catch(Exception ex){
    System.out.println("Trip Date is not provided.");
}
if(TripDate != null){
    TripDate = new SimpleDateFormat("yyyy-MM").format(new SimpleDateFormat("MM/yyyy").parse(TripDate));
    datefound++;
}
System.out.println("Trip date is: "+TripDate);
%>

<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Total Trips | Camp System</title>
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
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
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
        <link rel="shortcut icon" href="favicon.ico" />
        
        
        
        
    </head>
        
        
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <%@include file="header.jsp" %>
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
                                
                                <!-- END RESPONSIVE QUICK SEARCH FORM -->
                            </li>
                            <%@include file="menu.jsp" %>                            
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
                                    <a href="#">Total Trips</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                
                            </ul>
                            
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="portlet green-sharp box">
                                    
                                    <div class="portlet-title">
                                        <p class="page-title" align="right">
                                            <a class="btn black btn-outline sbold uppercase" href="#TripDate" data-toggle="modal"> Select Month
                                                <i class="fa fa-share"></i>
                                            </a>
                                        </p>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </div>
                        
                        
                        
                        
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            
                                <!--Modal Code-->
                                <div id="TripDate" class="modal fade" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                <h4 class="modal-title">Select Month</h4>
                                            </div>
                                            <form action="triplist.jsp" class="form-horizontal form-bordered">
                                                
                                            
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label class="control-label col-md-4">Months Only</label>
                                                    <div class="col-md-8">
                                                        <div class="input-group input-medium date date-picker" data-date="10/2012" data-date-format="mm/yyyy" data-date-viewmode="years" data-date-minviewmode="months">
                                                            <input type="text" class="form-control" readonly name="tripmonth">
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                                <button type="submit" class="btn green">Get Data</button>
                                            </div>
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                        
                        
                        
                        
                        
                        <%
                        if(datefound == 1){
                            
                        
                        %>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-dark">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject bold uppercase">
                                                Trips for month of <% out.println(new SimpleDateFormat("MMM-yyyy").format(new SimpleDateFormat("yyyy-MM").parse(TripDate)));%>
                                            </span>
                                            
                                        </div>
                                        <div class="tools"> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>Sr#</th>
                                                    <th>Company Name</th>
                                                    <th>Trip Type</th>
                                                    <th>Trip Volume</th>
                                                    <th>Trip Count</th>
                                                    <th>Date</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                    <th>Sr#</th>
                                                    <th>Company Name</th>
                                                    <th>Trip Type</th>
                                                    <th>Trip Volume</th>
                                                    <th>Trip Count</th>
                                                    <th>Date</th>
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                                <%
                                                if(datefound == 1){
                                                    String TripQuery = "SELECT * FROM campsystem.trips WHERE dateofregister regexp '"+TripDate+"' ORDER BY dateofregister ASC";
                                                    Statement TripSt = connection.createStatement();
                                                    ResultSet TripRs = TripSt.executeQuery(TripQuery);
                                                    int counter = 0;
                                                    while(TripRs.next()){
                                                        counter++;
                                                        out.println("<tr>");
                                                        
                                                        out.println("<td>"+counter+"</td>");
                                                        
                                                        
                                                        Statement TripCompanyGet = connection.createStatement();
                                                        ResultSet TripCompanyRs = TripCompanyGet.executeQuery("SELECT CompanyName FROM campsystem.tripcompany WHERE ID = "+TripRs.getString("CompanyID"));
                                                        while(TripCompanyRs.next()){
                                                            out.println("<td>"+TripCompanyRs.getString("CompanyName") +"</td>");
                                                        }
                                                        
                                                        System.out.println("Trip Type Value: "+TripRs.getInt("triptype"));
                                                        Statement TripTypeGet = connection.createStatement();
                                                        ResultSet TripTypeRs = TripTypeGet.executeQuery("SELECT Value FROM campsystem.datatypes WHERE ID = "+TripRs.getInt("triptype"));
                                                        while(TripTypeRs.next()){
                                                            out.println("<td>"+TripTypeRs.getString("Value") +"</td>");
                                                        }
                                                        
                                                        out.println("<td>"+TripRs.getString("Size") +"</td>");
                                                        
                                                        
                                                        
                                                        out.println("<td>"+TripRs.getString("tripscount") +"</td>");
                                                        
                                                        
                                                        String DBDateTrip = new SimpleDateFormat("dd-MM-yyyy").format(TripRs.getTimestamp("dateofregister"));
                                                        out.println("<td>"+DBDateTrip +"</td>");
                                                        
                                                        out.println("</tr>");
                                                        

                                                    }

                                                }

                                                %>
                                                
                                                
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                        
                        <%
                        }
                        %>
                        
                        
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                
                <!-- END QUICK SIDEBAR -->
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <%@include file="footer.jsp" %>
            <!-- END FOOTER -->
        </div>
        <!--[if lt IE 9]>
<script src=" assets/global/plugins/respond.min.js"></script>
<script src=" assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        
        
        <!-- BEGIN CORE PLUGINS -->
        <script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <script src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/table-datatables-buttons.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        
        
        
    </body>
</html>