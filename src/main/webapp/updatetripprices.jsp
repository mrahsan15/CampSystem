<%-- 
    Document   : registertripcompany
    Created on : Jul 10, 2017, 2:13:13 PM
    Author     : ahsan
--%>
<%@page import="java.util.ArrayList"%>
<%@include file="cookies.jsp" %>
<%
Statement statement = connection.createStatement();
%>

<%
    String SelectedCompany = request.getParameter("company");

%>

<%
    String TripCompanyQuery = "SELECT * FROM campsystem.tripcompany;";
    Statement TripCompanyStatement = connection.createStatement();
    ResultSet TripCompanySet = TripCompanyStatement.executeQuery(TripCompanyQuery);
    String CompanySelectionBox = "";
    int CompanyCounts = 0;
    String[] TripTypesSplitted =  {"2"};

%>

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
        <title>Camp System | Update Trip Price</title>
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
    
    <script type="text/javascript">
        function SelectionBox(){
            
//            Getting HTML Tag Values in JavaScripts to edit
            var CompanySelectionBox= document.getElementById("TripCompanyName");
            var TripTypesSelection = document.getElementById("TripTypes");
            var selectcounter = TripTypesSelection.length;
            
//            Removing Elements from the Trip Type selection Box
            for(i = 0; i < TripTypesSelection.length;){
                TripTypesSelection.remove(0);
            }
            
            
//            Generating HTML to use in HTML Selection Tags
            <%
            ArrayList TripTypeList = new ArrayList();
            String JavaScriptCode = "";
            while(TripCompanySet.next()){
                CompanyCounts++;
                String TripCompanyName = TripCompanySet.getString("CompanyName");
                CompanySelectionBox += "<option value=\""+TripCompanySet.getInt("ID")+"\">"
                        + TripCompanyName
                        + "</option>";
                TripTypesSplitted = TripCompanySet.getString("TripTypes").split(",");
                JavaScriptCode = "";
                
                for(int x = 0; x < TripTypesSplitted.length; x++){
                    JavaScriptCode += "var selectionvalue = document.createElement(\"option\");\n";
                    JavaScriptCode += "selectionvalue.setAttribute(\"value\","
                                    + (TripTypesSplitted[x])+");\n";
                    if(TripTypesSplitted[x].equals("1")){
                        JavaScriptCode += ""
                            + "selectionvalue.text= \"Drinking Water\";\n"
                            + "TripTypesSelection.add(selectionvalue);\n";
                    }else if(TripTypesSplitted[x].equals("2")){
                        JavaScriptCode += ""
                            + "selectionvalue.text= \"Sewage Water\";\n"
                            + "TripTypesSelection.add(selectionvalue);\n";
                    }else if(TripTypesSplitted[x].equals("3")){
                    JavaScriptCode += ""
                            + "selectionvalue.text= \"Waste Skip\"; \n"
                            + "TripTypesSelection.add(selectionvalue);\n";
                    
                    }
                }
                
//                Adding HTML Generated code in Arraylist
                TripTypeList.add(JavaScriptCode);
            }
            
//            Flushing Javascript in HTML Page
            for(int z = 0; z < CompanyCounts; z++){
                out.print("if(CompanySelectionBox.selectedIndex == "+(z+1)+"){"
                        + (String)TripTypeList.get(z)
                        + "}");
                
            }
            %>
                    }
	
        
    </script>
    
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
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
                                    <span>Register Trip Company</span>
                                </li>
                            </ul>
                            
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Register Transportation Company
                            <small></small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-sm-6 ">
                                <!-- BEGIN SAMPLE FORM PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-red-sunglo">
                                            <i class="icon-settings font-red-sunglo"></i>
                                            <span class="caption-subject bold uppercase">Enter Company Information</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body form">
                                        <form role="form" action="tripupdate" method="post">
                                            <div class="form-body">
                                                <input type="hidden" name="type" value="price">
                                                
                                                <!--Company Selection DropDown-->
                                                <div class="form-group">
                                                    <label>Select Company</label>
                                                    <select class="form-control" 
                                                            onchange="SelectionBox();" 
                                                            id="TripCompanyName"
                                                            name="TripCompanyName">
                                                        <option>Select Company</option>
                                                        <% out.println(CompanySelectionBox); %>
                                                    </select>
                                                </div>
                                                    
                                                <!--Trip Type Selection-->
                                                <div class="form-group">
                                                    <label>Select Trip Type</label>
                                                    <select class="form-control" 
                                                            id="TripTypes"
                                                            name="TripTypes">
                                                        
                                                    </select>
                                                </div>
                                                
                                                <div class="row">
                                                        <div class="col-sm-6 ">
                                                            <!--Input for Gallons-->
                                                            <div class="form-group">
                                                                <label>Enter Measurement</label>
                                                                <div class="input-icon right">
                                                                    <i class="fa fa-wheelchair fa-spin font-blue"></i>
                                                                    <input type="text" 
                                                                           class="form-control" 
                                                                           placeholder="Measurement"
                                                                           name="measurement"
                                                                           > 
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 ">
                                                            <!--Input for Price-->
                                                            <div class="form-group">
                                                                <label>Price Per Trip</label>
                                                                <div class="input-icon right">
                                                                    <i class="fa fa fa-dollar fa-spin font-blue"></i>
                                                                    <input type="text" 
                                                                           class="form-control" 
                                                                           placeholder="Price"
                                                                           name="price"
                                                                           > 
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <button type="submit" name="submit" value="addmore" class="btn blue">Update & Add more</button>
                                                <button type="submit" name="submit" value="exit" class="btn blue">Update & Exit</button>
                                                <button type="button" class="btn default">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- END SAMPLE FORM PORTLET-->
                            </div>
                        </div>
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
</html>