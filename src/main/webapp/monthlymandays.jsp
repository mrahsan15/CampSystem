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
        <script>  
      function printpage(){
          var pagelayout = window.open("");
          
          var tableborder = document.getElementById("printTableMandays");
          var border = document.createAttribute("border");
          border.value = "1";
          tableborder.setAttributeNode(border);
		  pagelayout.document.write(document.getElementById("printTableMandays").outerHTML);
                  pagelayout.document.getElementById()
		  pagelayout.print() ;
          
      }
  </script>
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
    
    
    <style id="AVANCEON_14758_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl1514758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6614758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6714758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl6914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7014758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7114758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7214758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7314758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7414758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7514758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl7614758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7714758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl7814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl8014758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8114758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl8214758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl8314758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl8414758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"\@";
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl8514758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	layout-flow:vertical;}
.xl8614758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl8714758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#FCE4D6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl8814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl8914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9014758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9114758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9214758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9314758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9414758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9514758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl9614758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9714758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	layout-flow:vertical;}
.xl9914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10014758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10114758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10214758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10314758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl10414758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10514758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl10614758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10714758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl10814758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl10914758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl11014758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:1.0pt solid windowtext;
	background:#00B0F0;
	mso-pattern:black none;
	mso-protection:unlocked visible;
	white-space:nowrap;}
.xl11114758
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"mmmm\\ \\-\\ yy";
	text-align:left;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11214758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl11314758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl11414758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl11514758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11614758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11714758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl11914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12014758
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:28.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12114758
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:28.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12214758
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:28.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12314758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12414758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl12514758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12614758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12714758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12814758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12914758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl13014758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl13114758
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
-->
</style>
    
    
    
    

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-sidebar-closed">
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
<!--                    <ul class="page-sidebar-menu  page-header-fixed " 
                        data-keep-expanded="false" 
                        data-auto-scroll="true" 
                        data-slide-speed="200" 
                        style="padding-top: 20px">-->
                    <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-closed " 
                        data-keep-expanded="false" 
                        data-auto-scroll="true" 
                        data-slide-speed="200" 
                        style="padding-top: 20px">
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
                    <button type="button" class="btn btn-default" onclick="printpage()">Default</button>
                    
                                
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
                    
      
                   
<div id="AVANCEON_14758" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1329 style='border-collapse:
       collapse;table-layout:fixed;width:1000pt' id="printTableMandays">
 <col class=xl9014758 width=34 style='mso-width-source:userset;mso-width-alt:
 1243;width:26pt'>
 <col width=189 style='mso-width-source:userset;mso-width-alt:6912;width:142pt'>
 <col width=68 style='mso-width-source:userset;mso-width-alt:2486;width:51pt'>
 <!--Column Set Properties-->
 <%
 for(int i = 0; i < 31;i++){
     out.println("<col class=xl1514758 width=27 style='mso-width-source:userset;mso-width-alt:"
             + "987;width:20pt'>");
 }
 %>
 
 
 
 <tr height=48 style='mso-height-source:userset;height:36.0pt'>
  <td colspan=36 height=48 class=xl12014758 width=1329 style='
      border-right:1.0pt solid black;
      border-bottom: 0.0 solid black;
      height:36.0pt;width:1000pt'><a name="RANGE!A1:AJ21">PIONEERS
  CATERING SERVICES<span style='mso-spacerun:yes'> </span></a></td>
 </tr>
 
 
 
 
 <tr height=21 style='mso-height-source:userset;height:15.75pt'>
  <td colspan=36 height=21 class=xl12314758 width=1329 style='border-right:
  1.0pt solid black;height:15.75pt;width:1000pt'>SUMMARY OF OCCUPANCY</td>
 </tr>
 <tr height=26 style='mso-height-source:userset;height:19.5pt'>
  <td colspan=36 height=26 class=xl12314758 width=1329 style='border-right:
  1.0pt solid black;height:19.5pt;width:1000pt'>AVANCEON</td>
 </tr>
 
 
 <!--Blank Row-->
 <tr height=26 style='mso-height-source:userset;height:19.5pt'>
  <td height=26 class=xl8814758 width=34 style='height:19.5pt;width:26pt'>&nbsp;</td>
  <td class=xl6814758 width=189 style='width:142pt'>&nbsp;</td>
  <td class=xl6814758 width=68 style='width:51pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=31 style='width:23pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=26 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=31 style='width:23pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl7914758 width=33 style='width:25pt'></td>
  <td class=xl7914758 width=64 style='width:48pt'></td>
  <td class=xl8114758 width=64 style='width:48pt'>&nbsp;</td>
 </tr>
 
 <!--Header Row-->
 <tr class=xl6714758 height=22 style='mso-height-source:userset;height:16.5pt'>
  <td rowspan=2 height=44 class=xl12514758 style='height:33.0pt;border-top:
  none'>S.n</td>
  <td rowspan=2 class=xl12814758 style='border-bottom:1.0pt solid black;
  border-top:none'>NAME</td>
  <td rowspan=2 class=xl12614758 style='border-bottom:1.0pt solid black;
  border-top:none'>RATE</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>1</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>2</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>3</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>4</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>5</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>6</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>7</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>8</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>9</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>10</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>11</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>12</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>13</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>14</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>15</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>16</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>17</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>18</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>19</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>20</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>21</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>22</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>23</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>24</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>25</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>26</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>27</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>28</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>29</td>
  <td rowspan=2 class=xl13014758 style='border-bottom:1.0pt solid black;
  border-top:none'>30</td>
  <td rowspan=2 class=xl11714758 style='border-bottom:1.0pt solid black'>31</td>
  <td class=xl10114758>&nbsp;</td>
  <td class=xl10614758 style='border-top:none'>&nbsp;</td>
 </tr>
 <tr class=xl6714758 height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl10214758 style='height:16.5pt;border-top:none'>&nbsp;</td>
  <td class=xl8614758 style='border-top:none'>6X1</td>
 </tr>
 
 <!--Category Row-->
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>&nbsp;</td>
  <td class=xl8714758 style='border-top:none'>SAMI<span
  style='mso-spacerun:yes'>  </span>(6X1 JUNIOR)</td>
  <td class=xl7614758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8314758 style='border-left:none'>&nbsp;</td>
  <td class=xl9714758 style='border-left:none'>&nbsp;</td>
  <td class=xl10714758 style='border-top:none'>&nbsp;</td>
 </tr>
 
 <!--Data Row--> 
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>1</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>January - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>9</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>2</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>February - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>29</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>3</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>March - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>31</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>4</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>April - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>30</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>5</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>May - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>31</td>
 </tr>
 

 <!--Blank Row-->
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>&nbsp;</td>
  <td class=xl9314758>&nbsp;</td>
  <td class=xl9414758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl10514758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10914758 style='border-top:none'>&nbsp;</td>
 </tr>
 
 
 <!--Total Row Section-->
 <tr class=xl1514758 height=44 style='mso-height-source:userset;height:33.0pt'>
  <td height=44 class=xl9914758 style='height:33.0pt;border-top:none'>&nbsp;</td>
  <td class=xl10014758>TOTAL</td>
  <td class=xl8414758 style='border-left:none'>&nbsp;</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>3</td>
  <td class=xl9814758 style='border-left:none'>&nbsp;</td>
  <td class=xl11014758>130</td>
 </tr>
 
 
 <tr height=55 style='mso-height-source:userset;height:20pt'>
  <td height=55 class=xl9214758 style='height:20pt;border-top:none'>&nbsp;</td>
  <td class=xl6614758 style='border-right:0.0pt solid white;'></td>
  <td class=xl6614758 ></td>
  <td colspan=33 class=xl11814758 width=1038 style='border-right:1.0pt solid black;
  width:781pt'></td>
 </tr>
 
  <!--Blank Row-->
 <tr height=26 style='mso-height-source:userset;height:19.5pt'>
  <td height=26 class=xl8814758 width=34 style='height:19.5pt;width:26pt'>&nbsp;</td>
  <td class=xl6814758 width=189 style='width:142pt'>&nbsp;</td>
  <td class=xl6814758 width=68 style='width:51pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=31 style='width:23pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=27 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=28 style='width:21pt'>&nbsp;</td>
  <td class=xl6814758 width=26 style='width:20pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=29 style='width:22pt'>&nbsp;</td>
  <td class=xl6814758 width=31 style='width:23pt'>&nbsp;</td>
  <td class=xl6814758 width=32 style='width:24pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl6814758 width=33 style='width:25pt'>&nbsp;</td>
  <td class=xl7914758 width=33 style='width:25pt'></td>
  <td class=xl7914758 width=64 style='width:48pt'></td>
  <td class=xl8114758 width=64 style='width:48pt'>&nbsp;</td>
 </tr>
 
 <!--Header Row-->
 <tr class=xl6714758 height=22 style='mso-height-source:userset;height:16.5pt'>
  <td rowspan=2 height=44 class=xl12514758 style='height:33.0pt;border-top:
  none'>S.n</td>
  <td rowspan=2 class=xl12814758 style='border-bottom:1.0pt solid black;
  border-top:none'>NAME</td>
  <td rowspan=2 class=xl12614758 style='border-bottom:1.0pt solid black;
  border-top:none'>RATE</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>1</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>2</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>3</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>4</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>5</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>6</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>7</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>8</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>9</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>10</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>11</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>12</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>13</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>14</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>15</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>16</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>17</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>18</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>19</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>20</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>21</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>22</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>23</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>24</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>25</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>26</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>27</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>28</td>
  <td rowspan=2 class=xl11514758 style='border-bottom:1.0pt solid black;
  border-top:none'>29</td>
  <td rowspan=2 class=xl13014758 style='border-bottom:1.0pt solid black;
  border-top:none'>30</td>
  <td rowspan=2 class=xl11714758 style='border-bottom:1.0pt solid black'>31</td>
  <td class=xl10114758>&nbsp;</td>
  <td class=xl10614758 style='border-top:none'>&nbsp;</td>
 </tr>
 <tr class=xl6714758 height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl10214758 style='height:16.5pt;border-top:none'>&nbsp;</td>
  <td class=xl8614758 style='border-top:none'>6X1</td>
 </tr>
 
 <!--Category Row-->
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>&nbsp;</td>
  <td class=xl8714758 style='border-top:none'>SAMI<span
  style='mso-spacerun:yes'>  </span>(6X1 JUNIOR)</td>
  <td class=xl7614758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7714758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl7814758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8314758 style='border-left:none'>&nbsp;</td>
  <td class=xl9714758 style='border-left:none'>&nbsp;</td>
  <td class=xl10714758 style='border-top:none'>&nbsp;</td>
 </tr>
 
 <!--Data Row--> 
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>1</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>January - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>9</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>2</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>February - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>29</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>3</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>March - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>31</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>4</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>April - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>30</td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>5</td>
  <td class=xl11114758 style='border-top:none;border-left:none'>May - 16</td>
  <td class=xl8014758 style='border-top:none;border-left:none'>40.00</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl8214758 style='border-top:none;border-left:none'>1</td>
  <td class=xl10314758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10814758 style='border-top:none'>31</td>
 </tr>
 

 <!--Blank Row-->
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl8914758 style='height:21.0pt;border-top:none'>&nbsp;</td>
  <td class=xl9314758>&nbsp;</td>
  <td class=xl9414758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl9514758 style='border-left:none'>&nbsp;</td>
  <td class=xl10514758 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl10914758 style='border-top:none'>&nbsp;</td>
 </tr>
 
 
 <!--Total Row Section-->
 <tr class=xl1514758 height=44 style='mso-height-source:userset;height:33.0pt'>
  <td height=44 class=xl9914758 style='height:33.0pt;border-top:none'>&nbsp;</td>
  <td class=xl10014758>TOTAL</td>
  <td class=xl8414758 style='border-left:none'>&nbsp;</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>5</td>
  <td class=xl8514758 style='border-left:none'>4</td>
  <td class=xl8514758 style='border-left:none'>3</td>
  <td class=xl9814758 style='border-left:none'>&nbsp;</td>
  <td class=xl11014758>130</td>
 </tr>
 
 
 <tr height=55 style='mso-height-source:userset;height:20pt'>
  <td height=55 class=xl9214758 style='height:20pt;border-top:none'>&nbsp;</td>
  <td class=xl6614758 style='border-right:0.0pt solid white;'></td>
  <td class=xl6614758 ></td>
  <td colspan=33 class=xl11814758 width=1038 style='border-right:1.0pt solid black;
  width:781pt'></td>
 </tr>
 
 
 
 
 
 
 <!--Footer Section-->
 <tr height=59 style='mso-height-source:userset;height:75.25pt'>
  <td colspan=15 height=59 class=xl11214758 width=291 style='height:44.25pt;
   border-bottom: 0.5pt solid black;'>PIONEERS CATERING SERVICES<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl7314758 width=28 style='width:21pt;border-bottom: 0.5pt solid black'>&nbsp;</td>
  <td colspan=20 class=xl11314758 width=662 style='border-right:1.0pt solid black;
  width:499pt;border-bottom: 0.5pt solid black;'>AVANCEON</td>
 </tr>
 
 
 
 
 
 
 
 
 
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=34 style='width:26pt'></td>
  <td width=189 style='width:142pt'></td>
  <td width=68 style='width:51pt'></td>
  <td width=27 style='width:20pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=32 style='width:24pt'></td>
  <td width=32 style='width:24pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=27 style='width:20pt'></td>
  <td width=31 style='width:23pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=27 style='width:20pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=28 style='width:21pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=29 style='width:22pt'></td>
  <td width=31 style='width:23pt'></td>
  <td width=32 style='width:24pt'></td>
  <td width=33 style='width:25pt'></td>
  <td width=33 style='width:25pt'></td>
  <td width=33 style='width:25pt'></td>
  <td width=33 style='width:25pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=64 style='width:48pt'></td>
 </tr>
 <![endif]>
</table>

</div>


                    
                    
                    
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <%@include file="footer.jsp" %>
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