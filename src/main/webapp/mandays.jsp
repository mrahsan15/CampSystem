<%-- 
    Document   : mandays
    Created on : Jul 3, 2017, 6:57:09 PM
    Author     : ahsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>  
      function printpage(){
          var pagelayout = window.open("");
		  pagelayout.document.write(document.getElementById("printTableMandays").outerHTML);
		  pagelayout.print() ;
          
      }
  </script>
  <link href="mandaystablestyle.css" rel="stylesheet" type="text/css" media="print">
    
    
    <body>
        
        
        <!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

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

<button type="button" onclick="printpage()">Test</button>
<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
        
        
        
        
        
    </body>
</html>
