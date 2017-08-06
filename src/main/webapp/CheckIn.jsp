<%-- 
    Document   : CheckIn
    Created on : Dec 19, 2016, 1:57:18 PM
    Author     : ahsan
--%>

<%@page import="mandays.menuoutput"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="cookies.jsp" %>
<%
Statement statement = connection.createStatement();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Camp System | Check In</title>
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
    
        <script type="text/javascript">
            
            
        /*--This JavaScript method for Print command--*/
            function PrintDoc() {
                
                
                
                var toPrint = document.getElementById('printarea');
                var popupWin = window.open('', '_blank', 'width=350,height=150,location=no,left=200px');
                popupWin.document.open();
                popupWin.document.write('<html><title>::Preview::</title><link rel="stylesheet" type="text/css" href="print.css" /></head><body onload="window.print()">')
                popupWin.document.write(toPrint.innerHTML);
                popupWin.document.write('</html>');
                popupWin.document.close();
            }
        /*--This JavaScript method for Print Preview command--*/
            function PrintPreview() {
                
//                var companyname = document.getElementById('companyname');
//                companyname = companyname[companyname.selectedIndex].text;
//                var personname = document.getElementsByName('fullname')[0].innerHTML;
//                var roomno = document.getElementById('roomno');
//                roomno = roomno[roomno.selectedIndex].text;
//                var roomcat = document.getElementById('roomcat');
//                roomcat = roomcat[roomcat.selectedIndex].text;
//                var foodcat =document.getElementById('foodcat');
//                foodcat = foodcat[foodcat.selectedIndex].text;
                var nationality = document.getElementById('nationality');
                nationality = nationality[nationality.selectedIndex].text;
//                var checkin = document.getElementById('checkindate').value;
                
                
                var toPrint = document.getElementById('printarea');
                var popupWin = window.open('', '_blank', 'width=350,height=150,location=no,left=200px');
                popupWin.document.open();
                popupWin.document.write('<html><title>::Print Preview::</title><link rel="stylesheet" type="text/css" href="Print.css" media="screen"/></head><body">')
                popupWin.document.write(nationality);
//                popupWin.document.write(toPrint.innerHTML);
                popupWin.document.write('</html>');
                popupWin.document.close();
            }
        </script>
    
    </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
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
                        <%@include file="menu.jsp" %>
                    </ul>
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
                                <a href="dashboard.jsp">Home</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <a href="#">Mandays System</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <span>Guest Check In</span>
                            </li>
                        </ul>
                    </div>
                    <!-- END PAGE BAR -->
                    <!-- BEGIN PAGE TITLE-->
                    <h3 class="page-title"> Guest Check In
                        <small> <!-- Insert small tagline here--> </small>
                    </h3>
                    <!-- END PAGE TITLE-->
                    <!-- END PAGE HEADER-->
                    
                    <div class="row">
                        <div class="col-md-12 ">
                            
                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption font-red-sunglo">
                                        <i class="icon-settings font-red-sunglo"></i>
                                        <span class="caption-subject bold uppercase">Check In</span>
                                    </div>
                                    
                                </div>
                                <div class="portlet-body form">
                                    <form  action="checkin" method="post" target="_blank">
                                        <div class="form-body">
                                            <!--Full Name text Field to the Person Check In-->
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="fullname" class="form-control" id="form_control_1" placeholder="Enter your name">
                                                <label for="form_control_1">Full Name</label>
                                                <span class="help-block">Enter the Full Name...</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 ">
                                                    <div class="form-group form-md-line-input has-info">
                                                        <!--Room List Selection field--> 
                                                        <select class="form-control" id="roomno" name="roomno">
                                                            <!--Room Number Drop Down List for Check In-->
                                                            <option value=""></option>
                                                            <%
                                                                try{
                                                                    Statement roomnumber = connection.createStatement();
                                                                    ResultSet roomnumberset = roomnumber.executeQuery("SELECT * from roomlist");
                                                                    while(roomnumberset.next()){
                                                                        int id = roomnumberset.getInt("ID");
                                                                        String number = roomnumberset.getString("RoomNo");
                                                                        out.println("<option value=\""+id+"\">"+number+"</option>");
                                                                    }
                                                                }catch(Exception ex){

                                                                }

                                                                %>
                                                        </select>
                                                        <label for="form_control_1">Select Room Number</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 ">
                                                    <div class="form-group form-md-line-input has-info" >
                                                        <!--Room Type Selection field--> 
                                                        <select class="form-control" id="roomcat" name="roomcat">
                                                            <!--Room Category Drop down list for Check in-->
                                                            <option value=""></option>
                                                                <%
                                                                    try{
                                                                        Statement roomcat = connection.createStatement();
                                                                        ResultSet roomcatset = roomcat.executeQuery("SELECT * from datatypes WHERE Type = 'RoomType'"); 
                                                                        while(roomcatset.next()){
                                                                            int id = roomcatset.getInt("ID");
                                                                            String number = roomcatset.getString("Value");
                                                                            out.println("<option value=\""+id+"\">"+number+"</option>");
                                                                        }
                                                                    }catch(Exception ex){

                                                                    }
                                                                %>
                                                        </select>
                                                        <label for="form_control_1">Select Room Category</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 ">
                                                    <div class="form-group form-md-line-input has-info">
                                                        <!--Food category Selection List-->
                                                        <select class="form-control" id="foodcat" name="foodcat">
                                                            <option value=""></option>
                                                            <!--Food Category Drop down list for Check In-->
                                                            <%
                                                                try{
                                                                    Statement foodcat = connection.createStatement();
                                                                    ResultSet foodcatset = foodcat.executeQuery("SELECT * from datatypes WHERE Type = 'FoodType'");
                                                                    while(foodcatset.next()){
                                                                        int id = foodcatset.getInt("ID");
                                                                        String number = foodcatset.getString("Value");
                                                                        out.println("<option value=\""+id+"\">"+number+"</option>");
                                                                    }
                                                                }catch(Exception ex){

                                                                }
                                                            %>
                                                            
                                                        </select>
                                                        <label for="form_control_1">Select Food Category</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 ">
                                                    <div class="form-group form-md-line-input has-info">   
                                                        <!--Nationality Selection List-->
                                                        <select class="form-control" id="nationality" name="nationality">
                                                            <!--Nationality Drop Down List for Check In-->
                                                            <option value=""></option>
                                                            <%
                                                                try{
                                                                    Statement nation = connection.createStatement();
                                                                    ResultSet nationset = nation.executeQuery("SELECT * from datatypes WHERE Type = 'Nationality'");
                                                                    while(nationset.next()){
                                                                        int id = nationset.getInt("ID");
                                                                        String number = nationset.getString("Value");
                                                                        out.println("<option value=\""+id+"\">"+number+"</option>");
                                                                    }
                                                                }catch(Exception ex){

                                                                }
                                                            %>
                                                            
                                                        </select>
                                                        <label for="form_control_1">Select Nationality</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <!--Employement Batch Number for Employee-->
                                                    <div class="form-group form-md-line-input">
                                                        <input type="text" class="form-control" name="fileno" id="fileno" placeholder="Employe ID">
                                                        <label for="form_control_1">Enter File#</label>
                                                        <span class="help-block"></span>
                                                    </div>
                                                </div>
                                                <!--Attached Bathroom value is 1;-->
                                                <!--Common Bathroom Value is 0;-->
                                                <div class="col-md-3">
                                                    <!--Bathroom Type Radio button-->
                                                    <div class="form-group form-md-radios">
                                                        <label>Bathroom Type</label>
                                                        <div class="md-radio-inline">
                                                            <div class="md-radio">
                                                                <input type="radio" id="radio6" name="bathroom" value="0" class="md-radiobtn">
                                                                <label for="radio6">
                                                                    <span></span>
                                                                    <span class="check"></span>
                                                                    <span class="box"></span> Attached </label>
                                                            </div>
                                                            <div class="md-radio">
                                                                <input type="radio" id="radio7" name="bathroom" value="1" class="md-radiobtn" checked>
                                                                <label for="radio7">
                                                                    <span></span>
                                                                    <span class="check"></span>
                                                                    <span class="box"></span> Common</label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 ">
                                                    <div class="form-group form-md-line-input has-info">
                                                        <!--Company Name Selection Field-->
                                                        <select class="form-control" id="companyname" name="companyname">
                                                            <option value=""></option>
                                                            <%
                                                                try{
                                                                    Statement companynamest = connection.createStatement();
                                                                    ResultSet companynameset = companynamest.executeQuery("SELECT * from guestcompanies ORDER BY guestcompanies.Name ASC");                                                                    while(companynameset.next()){
                                                                        int id = companynameset.getInt("ID");
                                                                        String number = companynameset.getString("Name");
                                                                        out.println("<option value=\""+id+"\">"+number+"</option>");
                                                                    }
                                                                }catch(Exception ex){

                                                                }
                                                            %>
                                                        </select>
                                                        <label for="form_control_1">Company Name</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <!--Check In Selection for Person Check In-->
                                                    <div class="form-group form-md-line-input">
                                                        <input type="date" class="form-control" id="checkindate" name="checkin" placeholder="Check In Date">
                                                        <label for="form_control_1">Check In Date</label>
                                                        <span class="help-block"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions noborder">
                                            <button type="submit" class="btn blue">Print & Add Guest</button>
                                            <button type="reset" class="btn default">Reset</button>
                                            <button type="button" class="btn default">Cancel</button>
                                            <button type="button" value="Print" class="btn" onclick="PrintDoc()">Print</button>
                                            <button type="button" value="Print Preview" class="btn" onclick="PrintPreview()">Print Preview</button>
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