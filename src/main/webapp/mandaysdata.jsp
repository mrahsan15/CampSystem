<%-- 
    Document   : mandaysdata
    Created on : Dec 27, 2016, 4:08:38 PM
    Author     : ahsan
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.apache.poi.xssf.usermodel.XSSFCell"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFRow"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="mandays.menuoutput"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>

<%@include file="cookies.jsp" %>
<%
Statement statement = connection.createStatement();
%>
<% 
        int IDCell = 0;
        int NameCell = 1;
        int RoomnoCell = 2 ;
        int RoomTypeCell = 3;
        int FoodTypeCell = 4;
        int NationalityCell = 5;
        int BathroomCell = 6;
        int FileNoCell = 7;
        int CompanyCell = 8;
        int CheckInCell = 9;        
        int CheckOutCell = 10;
%>




<!--Begin Importing Data to DB-->
<%
        try{
            if(request.getParameter("type").equals("imported")){
                
                //Getting Parameters for FileName
                String importingFileName = request.getParameter("file");
                String filePath = getServletContext().getRealPath("")+File.separator+"uploadedcontent"+File.separator;
//                System.out.println(filePath+importingFileName+".xlsx");
                
                //OpenFileStream
                FileInputStream file = new FileInputStream(filePath+importingFileName+".xlsx");
                
                //WorkBook Loading
                XSSFWorkbook workbook = new XSSFWorkbook(file);
                XSSFSheet sheet = workbook.getSheet("mandays");
                int rowcount = 0;
                XSSFRow row = sheet.getRow(rowcount);
                XSSFCell importid = row.getCell(IDCell);
                XSSFCell importname= row.getCell(NameCell);
                XSSFCell importroomno = row.getCell(RoomnoCell);
                XSSFCell importroomtype = row.getCell(RoomTypeCell);
                XSSFCell importfoodtype = row.getCell(FoodTypeCell);
                XSSFCell importnationality = row.getCell(NationalityCell);
                XSSFCell importbathroom = row.getCell(BathroomCell);
                XSSFCell importfileno = row.getCell(FileNoCell);
                XSSFCell importcompany= row.getCell(CompanyCell);
                XSSFCell importcheckin = row.getCell(CheckInCell);
                XSSFCell importcheckout = row.getCell(CheckOutCell);
                rowcount++;
                try{
                    while(!sheet.getRow(rowcount).getCell(IDCell).getRawValue().isEmpty()){
                    row = sheet.getRow(rowcount);
                    importid = row.getCell(IDCell);
                    importname= row.getCell(NameCell);
                    
                    importroomno = row.getCell(RoomnoCell);
                    String roomnostring = "";
                    String importroomnoquery = "";
                    try{
//                        System.out.println("Before RoomNo Worked");
                        try{
                        roomnostring = ""+(int)importroomno.getNumericCellValue();
                        
                        }catch(Exception ex){
                            System.out.println("Exception Log: #5219");
                            roomnostring = ""+importroomno.getStringCellValue();
                            importroomnoquery = "SELECT * from roomlist WHERE RoomNo LIKE '"+ roomnostring+"'";
                            System.out.println("Exception Log: #5220");
                        }
                        importroomnoquery = "SELECT * from roomlist WHERE RoomNo LIKE '"+ roomnostring+"'";
                        System.out.println("After RoomNo Worked" + roomnostring);
                    }catch(Exception ex){
//                        System.out.println("Exception RoomNo Worked. ");
                        System.out.println("Exception Log: #5222");
                        roomnostring = ""+importroomno.getStringCellValue();
                        System.out.println("Exception Log: #5221");
                        importroomnoquery = "SELECT * from roomlist WHERE RoomNo LIKE '"+ roomnostring+"'";
//                        System.out.println(importroomno.getStringCellValue());
                    }
                    int roomnoid = 0;
                    try{
                    roomnoid = 0;
                    //importroomnoquery = "SELECT * from roomlist WHERE RoomNo = '"+roomnostring+"'";
                    Statement importroomnost = connection.createStatement();
                    ResultSet importroomnors = importroomnost.executeQuery(importroomnoquery);
                    while(importroomnors.next()){
                        
                        roomnoid = importroomnors.getInt("ID");
                        System.out.println("RoomNo Worked! : "+roomnoid);
                        
                    }
                    }catch(Exception ex){
                        System.out.println("Exception# 5315 - RoomNo Getter DB");
                    }
                    
                    importroomtype = row.getCell(RoomTypeCell);
                    int roomtypeid = 0;
                    String roomtypestring = "";
                    try{
//                        System.out.println("Before RoomType Worked");
//                        System.out.println("Before RoomType Worked");
                        roomtypestring = importroomtype.getStringCellValue();
                        if(roomtypestring.equals("")){
                                System.out.println("Empty Room Type String!");
                        }
//                        System.out.println("After RoomType Worked");
                    }catch(Exception ex){
                        System.out.println("Exception Roomtype Worked");
                        System.out.println("Exception Roomtype Worked");
                    }
                    
                    String importroomtypequery = "SELECT * from datatypes WHERE Type = 'RoomType' AND Value = '"+roomtypestring+"'";
                    Statement importroomtypest = connection.createStatement();
                    ResultSet importroomtypers = importroomtypest.executeQuery(importroomtypequery);
                    while(importroomtypers.next()){
                        roomtypeid = importroomtypers.getInt("ID");
                    }
                    
                    
                    
                    importfoodtype = row.getCell(FoodTypeCell);
                    int foodtypeid = 0;
                    String foodtypestring = "";
                    try{
                        System.out.println("Before FoodType Worked");
                        foodtypestring = importfoodtype.getStringCellValue();
                        System.out.println("After FoodType Worked");
                    }catch(Exception ex){
                        System.out.println("Exception FoodType Worked");
                    }
                    String importfoodtypequery = "SELECT * from datatypes WHERE Type = 'FoodType' AND Value = '"+importfoodtype.getStringCellValue()+"'";
                    
                    Statement importfoodtypest = connection.createStatement();
                    ResultSet importfoodtypers = importfoodtypest.executeQuery(importfoodtypequery);
                    while(importfoodtypers.next()){
                        foodtypeid = importfoodtypers.getInt("ID");
                    }
                    
                    importnationality = row.getCell(NationalityCell);
                    int nationalityid = 0;
                    String nationalitystring = "";
                    try{
//                        System.out.println("Before FoodType Worked");
                        nationalitystring = importnationality.getStringCellValue();
                        System.out.println(nationalitystring);
//                        System.out.println("After FoodType Worked");
                    }catch(Exception ex){
                        System.out.println("Exception FoodType Worked");
                    }
                    String importnationalityquery = "SELECT * from datatypes WHERE Type = 'Nationality' AND Value = '"+nationalitystring+"'";
                    System.out.println("Nationality Query: "+importnationalityquery);
                    Statement importnationalityst = connection.createStatement();
                    ResultSet importnationalityrs = importnationalityst.executeQuery(importnationalityquery);
                    while(importnationalityrs.next()){
                        nationalityid = importnationalityrs.getInt("ID");
                        System.out.println("NationalityID: "+nationalityid);
                    }
                    
                    
                    
                    
                    
                    int bathroomid = 0; 
                    importbathroom = row.getCell(BathroomCell);
                    if(importbathroom.getStringCellValue().equals("no")){
                        bathroomid = 1;
                    }
                    
                    
                    importfileno = row.getCell(FileNoCell);
                    String filenostring = "";
                    try{
                        filenostring = "'"+importfileno.getRawValue()+"'";
                        if(filenostring.equals("'null'")){
                            filenostring = "NULL";
                        }
                    }catch(Exception ex){
                        filenostring = "NULL";
                    }
                    
                    
                    int companyid = 0;
                    importcompany= row.getCell(CompanyCell);
                    
                    String importcompanyquery = "SELECT * from guestcompanies WHERE Name = '"+importcompany.getStringCellValue()+"'";
                    Statement importcompanyst = connection.createStatement();
                    ResultSet importcompanyrs = importcompanyst.executeQuery(importcompanyquery);
                    while(importcompanyrs.next()){
                        System.out.println("Before Company Worked");
                        companyid = importcompanyrs.getInt("ID");
                    }
                    SimpleDateFormat sqltableformat = new SimpleDateFormat("yyyy-MM-dd");
                    String importedcheckin = " "; 
                    try{
                        System.out.println("Before Checkin Worked");
                        importcheckin = row.getCell(CheckInCell);
                        importedcheckin = sqltableformat.format(importcheckin.getDateCellValue())
                                + " 00:00:00 ";
                        System.out.println("After Checkin Worked");
                    }catch(Exception ex){
                        System.out.println("Exception Checkin Worked");
                    }
                    
                    importcheckout = row.getCell(CheckOutCell);
                    String importedcheckout = "";
                    
                    String updatequery = "";
                    try{
                        System.out.println("Before Checkout Worked");
                        if(importcheckout.getDateCellValue() != null){
                            importedcheckout = sqltableformat.format(importcheckout.getDateCellValue())
                            + " 00:00:00 ";
                            
                            updatequery = "INSERT INTO datarecord "
                    + "(ID, FullName, RoomNo, RoomCategory, FoodCategory, Nationality , bathroom , File, "
                    + "CompanyName, CheckIn, CheckOut) "
                    + "VALUES (NULL, '"+importname.getStringCellValue()+"', "+roomnoid+", "
                            +roomtypeid+", "+foodtypeid+","+nationalityid+","+bathroomid
                    +", "+filenostring+", "
                            +companyid+", '"+importedcheckin+"', '"+importedcheckout+"')";
                            
                        }else{
                            importedcheckout = "NULL";
                            updatequery = "INSERT INTO datarecord "
                    + "(ID, FullName, RoomNo, RoomCategory, FoodCategory,Nationality, bathroom , File, "
                    + "CompanyName, CheckIn, CheckOut) "
                    + "VALUES (NULL, '"+importname.getStringCellValue()+"', "+roomnoid+", "
                            +roomtypeid+", "+foodtypeid+","+nationalityid+","+bathroomid
                    +", "+filenostring+", "
                            +companyid+", '"+importedcheckin+"', NULL)";
                    
                        }
                        System.out.println("After Checkout Worked");
                    }catch(Exception ex){
                        System.out.println("Exception Checkout Worked");
                         importedcheckout = "NULL";
                         updatequery = "INSERT INTO datarecord "
                    + "(ID, FullName, RoomNo, RoomCategory, FoodCategory ,Nationality, bathroom , File, "
                    + "CompanyName, CheckIn, CheckOut) "
                    + "VALUES (NULL, '"+importname.getStringCellValue()+"', "+roomnoid+", "
                            +roomtypeid+", "+foodtypeid+","+nationalityid+" ,"+bathroomid
                    +", "+filenostring+", "
                            +companyid+", '"+importedcheckin+"', NULL)";
                    }
                    
                    System.out.println("Before Checkin Worked");
                    System.out.println(updatequery);
                    connection.createStatement().executeUpdate(updatequery);
                    rowcount++;
                    }
        
                }catch(Exception ex){
                    System.out.println("Error #5200");
                }
            }
        }catch(Exception ex){
            System.out.println("Error #5201");
        }
%>
<!--End Importing Data to DB-->
<html>
    <head>
        <meta charset="utf-8" />
        <title>Camp System | Man-days Data</title>
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
        <link href="assets/global/plugins/bootstrap-table-master/bootstrap-table.css" rel="stylesheet" type="text/css" />
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
                
                <div class="page-sidebar navbar-collapse collapse">
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
                        %><%@include file="menu.jsp" %><%
                        %>
                    </ul>
                </div>  
                
            </div>
                    <div class="page-content-wrapper">
                        <div class="page-content">
                            <div class="page-bar">
                                <div class="page-toolbar">
                                    <div class="btn-group pull-right">
                                        <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown"> Actions
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li>
                                                <a class="" data-toggle="modal" href="#basic"><i class="fa fa-arrow-circle-up"></i> Import </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-arrow-circle-down"></i> Export Data</a>
                                            </li>
                                            <li>
                                                <a href="uploadedcontent/template.xlsx" downloaded >
                                                    <i class="fa fa-drupal"></i> Get Template</a>
                                            </li>
                                            <li class="divider"> </li>
                                            <li>
                                                <a href="#">
                                                    <i class="icon-bag"></i> Unused Yet</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="basic" tabindex="-1" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                            <h4 class="modal-title">Select Date File To Upload</h4>
                                        </div>
                                        <form action="uploadfile" method="post" name="mandaysform" enctype="multipart/form-data">
                                            <div class="modal-body">
                                                <p>
                                                    <input type="hidden" name="source" value="mandaysexceldata">
                                                    <input type="file" class="btn btn-outline sbold blue" name="file" />
                                                </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline sbold red" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-outline sbold blue">Upload File</button>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                            </div>
                            
                    <!-- BEGIN PAGE TITLE-->
                    <h3 class="page-title"> Mandays List
                        <small><!-- Insert any Small Content here --></small>
                    </h3>
                    <!-- END PAGE HEADER-->
                    
                    <!--Begin Imported Table Display-->
                    <%
                        try{
                            if(request.getParameter("type").equals("import")){
                                String filename = request.getParameter("file");
                    %>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet box red">
                                <div class="portlet-title">
                                    <div class="caption">
                                            <i class="fa fa-cogs"></i>Imported Data
                                            <% String Uri = request.getRequestURL()+"?"; %>
                                            <button type="button" class="btn grey-mint" onclick="myFunction()">Click here to Import to System</button>
                                            <script>
                                                function myFunction() {
                                                    window.location= <% out.println("\""+Uri+"type=imported&file="+filename+"\""); %>;
                                                }
                                            </script>
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config1" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                        <a href="javascript:;" class="remove"> </a>
                                    </div>
                                </div>
                                <div class="portlet-body flip-scroll">
                                    <table class="table table-bordered table-striped table-condensed flip-content">
                                        <thead class="flip-content">
                                            <tr>
                                                <th> ID </th>
                                                <th class=""> Full Name </th>
                                                <th class=""> Room# </th>
                                                <th class=""> Room Category </th>
                                                <th class=""> Food Category</th>
                                                <th class=""> Nationality</th>
                                                <th class=""> File#</th>
                                                <th class=""> Company Name</th>
                                                <th class="numeric"> Check In</th>
                                                <th class="numeric"> Check Out</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                    <!--Begin Imported Table Display First-->
                                        <%
                                            String filePath = getServletContext().getRealPath("")+File.separator+"uploadedcontent"+File.separator;
//                                            System.out.println(filePath+filename+".xlsx");
                                            
                                            FileInputStream file = new FileInputStream(filePath+filename+".xlsx");
                                            XSSFWorkbook workbook = new XSSFWorkbook(file);
                                            XSSFSheet sheet = workbook.getSheet("mandays");
                                            int rowcount = 0;
                                            XSSFRow row = sheet.getRow(rowcount);
                                            XSSFCell importid = row.getCell(IDCell);
                                            XSSFCell importname= row.getCell(NameCell);
                                            XSSFCell importroomno = row.getCell(RoomnoCell);
                                            XSSFCell importroomtype = row.getCell(RoomTypeCell);
                                            XSSFCell importfoodtype = row.getCell(FoodTypeCell);
                                            XSSFCell importnationality = row.getCell(NationalityCell);
                                            XSSFCell importbathroom = row.getCell(BathroomCell);
                                            XSSFCell importfileno = row.getCell(FileNoCell);
                                            XSSFCell importcompany= row.getCell(CompanyCell);
                                            XSSFCell importcheckin = row.getCell(CheckInCell);
                                            XSSFCell importcheckout = row.getCell(CheckOutCell);
                                            rowcount++;
                                            try{
                                                
                                            while(!sheet.getRow(rowcount).getCell(IDCell).getRawValue().isEmpty()){
                                                row = sheet.getRow(rowcount);
                                                importid = row.getCell(IDCell);
                                                importname= row.getCell(NameCell);
                                                importroomno = row.getCell(RoomnoCell);
                                                importroomtype = row.getCell(RoomTypeCell);
                                                importfoodtype = row.getCell(FoodTypeCell);
                                                importnationality = row.getCell(NationalityCell);
                                                importbathroom = row.getCell(BathroomCell);
                                                importfileno = row.getCell(FileNoCell);
                                                importcompany= row.getCell(CompanyCell);
                                                importcheckin = row.getCell(CheckInCell);
                                                importcheckout = row.getCell(CheckOutCell);
                                                
                                                
                                                out.println("<tr>");
                                                out.println("<td>");
                                                try{
                                                    
                                                    out.println((int)importid.getNumericCellValue());
                                                
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"25%\" >");
                                                try{
                                                    
                                                    out.println(importname.getStringCellValue());
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"10%\" align=\"center\">");
                                                try{
                                                    String roomno = "";
                                                    importroomno = row.getCell(2);
                                                    try{
                                                    roomno = ""+(int)importroomno.getNumericCellValue();
                                                    
                                                    }catch(Exception ex){
                                                        roomno = importroomno.getStringCellValue();
                                                        
                                                    }
                                                    out.println(roomno);
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"5%\" align=\"center\">");
                                                try{
                                                    
                                                    out.println(importroomtype.getStringCellValue());
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"8%\" align=\"center\">");
                                                try{
                                                    
                                                    out.println(importfoodtype.getStringCellValue());
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"8%\" align=\"center\">");
                                                try{
                                                    
                                                    out.println(importnationality.getStringCellValue());
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                
                                                
                                                out.println("<td>");
                                                try{
//                                                    System.out.println(importbathroom.getStringCellValue());
                                                    
                                                }catch(Exception ex){
                                                }
                                                
                                                try{
                                                    
                                                    out.println((int)importfileno.getNumericCellValue());
                                                }catch(Exception ex){
                                                    out.println(importfileno.getStringCellValue());
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"15%\" align=\"center\">");
                                                try{
                                                    
                                                    out.println(importcompany.getStringCellValue());
                                                }catch(Exception ex){
                                                }
                                                out.println("</td>");
                                                out.println("<td width=\"10%\">");
                                                try{
                                                    
                                                    java.util.Date date = importcheckin.getDateCellValue();
                                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yy");
                                                    out.println(sdf.format(date));
                                                }catch(Exception ex){
                                                }
                                                
                                                out.println("</td>");
                                                out.println("<td width=\"10%\">");
                                                
                                                try{
                                                    
                                                    java.util.Date date = importcheckout.getDateCellValue();
                                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yy");
                                                    out.println(sdf.format(date));
                                                }catch(Exception ex){
//                                                    System.out.println("Error# 5203");
                                                }
                                                out.println("</td>");
                                                out.println("</tr>");
                                                rowcount++;
                                            }
}catch(Exception ex){
                                                
                                            }
                                            
                                            
                                        %>
                                    <!--End Imported Table Display First-->
                                        </tbody></table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }
                        }catch(Exception ex){
                        
                    }
                    
                    %>        
                    <!--End Imported Table Display-->    
                        
                    <!--Begin Database Data Table Display-->
                        <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN SAMPLE TABLE PORTLET-->
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption">
                                            <i class="fa fa-cogs"></i>All Companies Data</div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                        <a href="javascript:;" class="remove"> </a>
                                    </div>
                                </div>
                                <div class="portlet-body flip-scroll">
                                    <table class="table table-bordered table-striped table-condensed flip-content">
                                        <thead class="flip-content">
                                            <tr>
                                                <th> ID </th>
                                                <th class=""> Full Name </th>
                                                <th class=""> Room# </th>
                                                <th class=""> Room Category </th>
                                                <th class=""> Food Category</th>
                                                <th class=""> Nationality</th>
                                                <th class=""> File#</th>
                                                <th class=""> Company Name</th>
                                                <th class="numeric"> Check In</th>
                                                <th class="numeric"> Check Out</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                            
                                            <%String Companyid = request.getParameter("companyid");
                                            
                                            %>
                                        <div class="row">
                                            <form action="mandaysdata.jsp" method="post">
                                                <div class="col-md-10">
                                                    <div class="form-group form-md-line-input form-md-floating-label has-info">
                                                        <%
                                                        try{
                                                            if(Companyid == null){
                                                                %>
                                                        <select class="form-control edited" name="companyid" id="form_control_1">
                                                            <option value="0" selected>All</option>
                                                            <%
                                                                try {
                                                                Statement companynamest = connection.createStatement();
                                                                ResultSet companynameset = companynamest.executeQuery("SELECT * from guestcompanies ORDER BY guestcompanies.Name ASC");
                                                                while (companynameset.next()) {
                                                                    int id = companynameset.getInt("ID");
                                                                    String number = companynameset.getString("Name");
                                                                    out.println("<option value=\"" + id + "\">" + number + "</option>");
                                                                }
                                                                } catch (Exception ex) {

                                                                }
                                                            %>
                                                        
                                                        </select>
                                                            <label for="form_control_1">Company Names</label>
                                                    </div>
                                                </div>
                                                            <div class="col-md-2">
                                                                <div class="form-actions noborder">
                                                                    <button type="submit" class="btn blue">Fetch</button>
                                                                </div>
                                                            </div>
                                                        
                                                        <%
                                                            }else{%>
                                                <select class="form-control edited" name="companyid" id="form_control_1">
                                                                    
                                                <%
                                                                try {
                                                                    Statement companynamest = connection.createStatement();
                                                                    ResultSet companynameset = companynamest.executeQuery("SELECT * from guestcompanies ORDER BY guestcompanies.Name ASC");
                                                                    while (companynameset.next()) {
                                                                        int id = companynameset.getInt("ID");
                                                                        String number = companynameset.getString("Name");
                                                                        if (Companyid.equals(id+"")) {
                                                                            Statement companyactivest = connection.createStatement();
                                                                            ResultSet companyactiveset = companyactivest.executeQuery("SELECT * from guestcompanies ORDER BY guestcompanies.Name ASC"); 
                                                                            while(companyactiveset.next()){
                                                                                out.println("<option value=\"" + id + "\" selected>" + number + "</option>");
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            Statement companyactivest = connection.createStatement();
                                                                            ResultSet companyactiveset = companyactivest.executeQuery("SELECT * from guestcompanies ORDER BY guestcompanies.Name ASC"); 
                                                                            while(companyactiveset.next()){
                                                                                out.println("<option value=\"" + id + "\">" + number + "</option>");
                                                                                break;
                                                                            }
//                                                                            out.println("<option value=\"" + id + "\">" + number + "</option>");
                                                                        }
                                                                    }
                                                                } catch (Exception ex) {

                                                                }
                                                                
                                                                %>
                                                </select>
                                                            <label for="form_control_1">Company Names</label>
                                                    </div>
                                                </div>
                                                            <div class="col-md-2">
                                                                <div class="form-actions noborder">
                                                                    <button type="submit" class="btn blue">Fetch</button>
                                                                </div>
                                                            </div>
                                <%
                                                            }
                                                        }catch(Exception ex){

                                                        }

                                                        %>
                                                        
                                                        
                                            </form>
                                        </div>
                    
                                            
                                            
                                        <%
                                        
                                        
//                                      
                                        String query = "";
                                        if(Companyid == null){
//                                            companyidparameter = "all";
                                            query= "SELECT * from datarecord WHERE CompanyName = 1";
                                        }else{
                                            query = "SELECT * from datarecord WHERE CompanyName = "+Companyid;
                                        }
                                        
                                        try{
                                            
                                            Statement st = connection.createStatement() ;
                                            ResultSet rs = st.executeQuery(query);
                                            while (rs.next()){
                                                int id = rs.getInt("ID");
                                                String GuestName = rs.getString("FullName");

                                                String RoomNo = "";
                                                int roomno  =rs.getInt("RoomNo");
                                                Statement roomnostatement = connection.createStatement();
                                                ResultSet roomnoset = roomnostatement.executeQuery("SELECT * from roomlist WHERE ID = "+roomno);
                                                while(roomnoset.next()){
                                                    RoomNo = roomnoset.getString("RoomNo");
                                                }

                                                String RoomCategory = "";
                                                int roomcategory = rs.getInt("RoomCategory");
                                                Statement roomcategorystatement = connection.createStatement();
                                                ResultSet roomcategoryset = roomcategorystatement.executeQuery("SELECT * from datatypes WHERE ID = " + roomcategory);
                                                while(roomcategoryset.next()){
                                                    RoomCategory = roomcategoryset.getString("Value");
                                                }

                                                int foodcategory = rs.getInt("FoodCategory");
                                                String FoodCategory = "";
                                                Statement foodcategorystatement = connection.createStatement();
                                                ResultSet foodcategoryset = roomcategorystatement.executeQuery("SELECT * from datatypes WHERE ID = " + foodcategory);
                                                while(foodcategoryset.next()){
                                                    FoodCategory = foodcategoryset.getString("Value");
                                                }
                                                
                                                int nationality = rs.getInt("Nationality");
                                                String Nationality = "";
                                                Statement nationalitystatement = connection.createStatement();
                                                ResultSet nationalityset = nationalitystatement.executeQuery("SELECT * from datatypes WHERE ID = " + nationality);
                                                while(nationalityset.next()){
                                                    Nationality = nationalityset.getString("Value");
                                                }
                                                

                                                String FileNo = "";
                                                try{
                                                    FileNo = rs.getString("File");
                                                    if(FileNo.equals("null")){
                                                        FileNo = "";
                                                    }
                                                }catch(Exception ex){
                                                    FileNo = "";
                                                }

                                                String CompanyName ="";
                                                int companyname = rs.getInt("CompanyName");
                                                Statement companystatement = connection.createStatement();
                                                ResultSet companyset = companystatement.executeQuery("SELECT * from guestcompanies WHERE ID = " + companyname);
                                                while(companyset.next()){
                                                    CompanyName = companyset.getString("Name");
                                                }

                                                Timestamp checkin = rs.getTimestamp("CheckIn");
                                                SimpleDateFormat standard = new SimpleDateFormat("dd-MMM-yy");
                                                String CheckIn = standard.format(checkin);
                                                String CheckOut = "";
                                                try{
                                                    Timestamp checkout = rs.getTimestamp("CheckOut");
                                                    CheckOut = standard.format(checkout);
                                                }catch(Exception ex){
//                                                    System.out.println("Error# 5204");
                                                }
                                                
                                                Statement RoomNoStatement = connection.createStatement();
                                                ResultSet RoomNoResultSet;
                                                out.println("<tr>");
                                                out.println("<td>");
                                                out.println(id);
                                                out.println("</td>");
                                                out.println("<td width=\"25%\" >");
                                                out.println(GuestName);
                                                out.println("</td>");
                                                out.println("<td width=\"10%\" align=\"center\">");
                                                out.println(RoomNo);
                                                out.println("</td>");
                                                out.println("<td width=\"5%\" align=\"center\">");
                                                out.println(RoomCategory);
                                                out.println("</td>");
                                                out.println("<td width=\"8%\" align=\"center\">");
                                                out.println(FoodCategory);
                                                out.println("</td>");
                                                out.println("<td width=\"8%\" align=\"center\">");
                                                out.println(Nationality);
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println(FileNo);
                                                out.println("</td>");
                                                out.println("<td width=\"15%\" align=\"center\">");
                                                out.println(CompanyName);
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println(CheckIn);
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println(CheckOut);
                                                out.println("</td>");

                                                out.println("</tr>");
                                            }
                                        }catch(Exception ex){
                                        }
                                            
                                        %>  
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END SAMPLE TABLE PORTLET-->
                        </div>
                    </div>
                    <!--End Database Data Table Display-->
                    
                    
                    </div>
                </div>        
                    
            <!-- BEGIN QUICK SIDEBAR -->
            <a href="javascript:;" class="page-quick-sidebar-toggler">
                <i class="icon-login"></i>
            </a>
            <div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
                <div class="page-quick-sidebar">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab"> Users
                                <span class="badge badge-danger">2</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab"> Alerts
                                <span class="badge badge-success">7</span>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> More
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li>
                                    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                        <i class="icon-bell"></i> Alerts </a>
                                </li>
                                <li>
                                    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                        <i class="icon-info"></i> Notifications </a>
                                </li>
                                <li>
                                    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                        <i class="icon-speech"></i> Activities </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                        <i class="icon-settings"></i> Settings </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
                            <div class="page-quick-sidebar-chat-users" data-rail-color="#ddd" data-wrapper-class="page-quick-sidebar-list">
                                <h3 class="list-heading">Staff</h3>
                                <ul class="media-list list-items">
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="badge badge-success">8</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Bob Nilson</h4>
                                            <div class="media-heading-sub"> Project Manager </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="media-object" src="assets/layouts/layout/img/avatar1.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading"><span class="username username-hide-on-mobile">
                                    
                                    Nick Larson</h4>
                                            <div class="media-heading-sub"> Art Director </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="badge badge-danger">3</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar4.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Deon Hubert</h4>
                                            <div class="media-heading-sub"> CTO </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="media-object" src="assets/layouts/layout/img/avatar2.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Ella Wong</h4>
                                            <div class="media-heading-sub"> CEO </div>
                                        </div>
                                    </li>
                                </ul>
                                <h3 class="list-heading">Customers</h3>
                                <ul class="media-list list-items">
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="badge badge-warning">2</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar6.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Lara Kunis</h4>
                                            <div class="media-heading-sub"> CEO, Loop Inc </div>
                                            <div class="media-heading-small"> Last seen 03:10 AM </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="label label-sm label-success">new</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar7.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Ernie Kyllonen</h4>
                                            <div class="media-heading-sub"> Project Manager,
                                                <br> SmartBizz PTL </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="media-object" src="assets/layouts/layout/img/avatar8.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Lisa Stone</h4>
                                            <div class="media-heading-sub"> CTO, Keort Inc </div>
                                            <div class="media-heading-small"> Last seen 13:10 PM </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="badge badge-success">7</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar9.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Deon Portalatin</h4>
                                            <div class="media-heading-sub"> CFO, H&D LTD </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="media-object" src="assets/layouts/layout/img/avatar10.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Irina Savikova</h4>
                                            <div class="media-heading-sub"> CEO, Tizda Motors Inc </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <div class="media-status">
                                            <span class="badge badge-danger">4</span>
                                        </div>
                                        <img class="media-object" src="assets/layouts/layout/img/avatar11.jpg" alt="...">
                                        <div class="media-body">
                                            <h4 class="media-heading">Maria Gomez</h4>
                                            <div class="media-heading-sub"> Manager, Infomatic Inc </div>
                                            <div class="media-heading-small"> Last seen 03:10 AM </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="page-quick-sidebar-item">
                                <div class="page-quick-sidebar-chat-user">
                                    <div class="page-quick-sidebar-nav">
                                        <a href="javascript:;" class="page-quick-sidebar-back-to-list">
                                            <i class="icon-arrow-left"></i>Back</a>
                                    </div>
                                    <div class="page-quick-sidebar-chat-user-messages">
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Bob Nilson</a>
                                                <span class="datetime">20:15</span>
                                                <span class="body"> When could you send me the report ? </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar2.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Ella Wong</a>
                                                <span class="datetime">20:15</span>
                                                <span class="body"> Its almost done. I will be sending it shortly </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Bob Nilson</a>
                                                <span class="datetime">20:15</span>
                                                <span class="body"> Alright. Thanks! :) </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar2.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Ella Wong</a>
                                                <span class="datetime">20:16</span>
                                                <span class="body"> You are most welcome. Sorry for the delay. </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Bob Nilson</a>
                                                <span class="datetime">20:17</span>
                                                <span class="body"> No probs. Just take your time :) </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar2.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Ella Wong</a>
                                                <span class="datetime">20:40</span>
                                                <span class="body"> Alright. I just emailed it to you. </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Bob Nilson</a>
                                                <span class="datetime">20:17</span>
                                                <span class="body"> Great! Thanks. Will check it right away. </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar2.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Ella Wong</a>
                                                <span class="datetime">20:40</span>
                                                <span class="body"> Please let me know if you have any comment. </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/layouts/layout/img/avatar.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span>
                                                <a href="javascript:;" class="name">Bob Nilson</a>
                                                <span class="datetime">20:17</span>
                                                <span class="body"> Sure. I will check and buzz you if anything needs to be corrected. </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page-quick-sidebar-chat-user-form">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Type a message here...">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn green">
                                                    <i class="icon-paper-clip"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
                            <div class="page-quick-sidebar-alerts-list">
                                <h3 class="list-heading">General</h3>
                                <ul class="feeds list-items">
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-info">
                                                        <i class="fa fa-check"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 4 pending tasks.
                                                        <span class="label label-sm label-warning "> Take action
                                                            <i class="fa fa-share"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> Just now </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-success">
                                                            <i class="fa fa-bar-chart-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Finance Report for year 2013 has been released. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 20 mins </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-danger">
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 24 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-info">
                                                        <i class="fa fa-shopping-cart"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> New order received with
                                                        <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 30 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-success">
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 24 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-info">
                                                        <i class="fa fa-bell-o"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> Web server hardware needs to be upgraded.
                                                        <span class="label label-sm label-warning"> Overdue </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 2 hours </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-default">
                                                            <i class="fa fa-briefcase"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> IPO Report for year 2013 has been released. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 20 mins </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <h3 class="list-heading">System</h3>
                                <ul class="feeds list-items">
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-info">
                                                        <i class="fa fa-check"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 4 pending tasks.
                                                        <span class="label label-sm label-warning "> Take action
                                                            <i class="fa fa-share"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> Just now </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-danger">
                                                            <i class="fa fa-bar-chart-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Finance Report for year 2013 has been released. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 20 mins </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-default">
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 24 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-info">
                                                        <i class="fa fa-shopping-cart"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> New order received with
                                                        <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 30 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-success">
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 24 mins </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col1">
                                            <div class="cont">
                                                <div class="cont-col1">
                                                    <div class="label label-sm label-warning">
                                                        <i class="fa fa-bell-o"></i>
                                                    </div>
                                                </div>
                                                <div class="cont-col2">
                                                    <div class="desc"> Web server hardware needs to be upgraded.
                                                        <span class="label label-sm label-default "> Overdue </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col2">
                                            <div class="date"> 2 hours </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-briefcase"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> IPO Report for year 2013 has been released. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 20 mins </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
                            <div class="page-quick-sidebar-settings-list">
                                <h3 class="list-heading">General Settings</h3>
                                <ul class="list-items borderless">
                                    <li> Enable Notifications
                                        <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    <li> Allow Tracking
                                        <input type="checkbox" class="make-switch" data-size="small" data-on-color="info" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    <li> Log Errors
                                        <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    <li> Auto Sumbit Issues
                                        <input type="checkbox" class="make-switch" data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    <li> Enable SMS Alerts
                                        <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                </ul>
                                <h3 class="list-heading">System Settings</h3>
                                <ul class="list-items borderless">
                                    <li> Security Level
                                        <select class="form-control input-inline input-sm input-small">
                                            <option value="1">Normal</option>
                                            <option value="2" selected>Medium</option>
                                            <option value="e">High</option>
                                        </select>
                                    </li>
                                    <li> Failed Email Attempts
                                        <input class="form-control input-inline input-sm input-small" value="5" /> </li>
                                    <li> Secondary SMTP Port
                                        <input class="form-control input-inline input-sm input-small" value="3560" /> </li>
                                    <li> Notify On System Error
                                        <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    <li> Notify On SMTP Error
                                        <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                </ul>
                                <div class="inner-content">
                                    <button class="btn btn-success">
                                        <i class="icon-settings"></i> Save Changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END QUICK SIDEBAR -->
        </div>
        
                                        
        <!-- BEGIN FOOTER -->
        <div class="page-footer">
            <div class="page-footer-inner"> 2016 &copy; Camp System by Ahsan Mahmood.</div>
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
        <script src="assets/global/plugins/bootstrap-table-master/bootstrap-table.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="assets/pages/scripts/table-bootstrap-master.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>
</html>