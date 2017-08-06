<%-- 
    Document   : test
    Created on : Aug 25, 2016, 5:04:20 PM
    Author     : Ahsan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="mandays.menuoutput"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
    
out.println(sdf.format(new Date()));
%>
<!DOCTYPE html>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel=File-List href="AVANCEON_files/filelist.xml">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
x\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style id="AVANCEON_14758_Styles" media="print">
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
</head>

<body>
<!--[if !excel]>&nbsp;&nbsp;<![endif]-->
<!--The following information was generated by Microsoft Excel's Publish as Web
Page wizard.-->
<!--If the same item is republished from Excel, all information between the DIV
tags will be replaced.-->
<!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

<div id="AVANCEON_14758" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1329 style='border-collapse:
 collapse;table-layout:fixed;width:1000pt'>
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


<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
</body>

</html>
