package com.apisylux.trips;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class tripdrinking extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n" +
"<html xmlns=\"http://www.w3.org/1999/xhtml\">");
            out.println("<head>");
            out.println("<title>Servlet tripdrinking</title>");            
            out.println("</head>");
            out.println("<body>");
            
            Connection connect = new DBConnectivity().ConnectSql();
            String query = "SELECT * from tripcompany";
            try{
                ResultSet companydata = connect.createStatement().executeQuery(query);
                ArrayList CompanyArray = new ArrayList();
                while(companydata.next()){
                    String data = companydata.getInt("ID")+","+companydata.getString("CompanyName");
                    CompanyArray.add(data);
                    data = "";
                }
                
                int ID = 0;
                String sizes = "";
                String prices = "";
                String[] Sizes = {""};
                String[] Prices = {""};
                ArrayList<Models> companySet = new ArrayList<Models>();
                for(int i = 0; i < CompanyArray.size(); i++){
                    String data = (String)CompanyArray.get(i);
                    String[] DATA = data.split(",");
                    int id = Integer.parseInt(DATA[0]);
                    String CompanyName = DATA[1];
                    ResultSet CompanyDetails = connect.createStatement()
                            .executeQuery("SELECT * from tripprices WHERE CompanyID = "+id +" AND Type LIKE 'Drinking'");
                    
                    CompanyDetails.next();
                    
                    ID = CompanyDetails.getInt("ID");
                    sizes = CompanyDetails.getString("Size");
                    prices = CompanyDetails.getString("Price");
                    
                    companySet.add(new Models(ID, CompanyName, sizes, prices));
                }
                
                    //Script to give the Gallons
                    out.println("<script type=\"text/javascript\">\n" +
"function text(){\n" +
"	var x = document.getElementById(\"company\");\n" +
"	var y = x.options[x.selectedIndex].text;\n" +
"	\n" );
                    if(companySet.size() == 1){
                        System.out.println(((Models)(companySet.get(0))).CompanyName);
                        System.out.println(((Models)(companySet.get(0))).Sizes);
                        out.println(
"	if(y === \""+((Models)(companySet.get(0))).CompanyName+"\"){\n" +
"		var a = document.getElementById(\"size\");\n" +
"		for(var i = 0; i < a.length;){\n" +
"			a.removeChild(a.options[i]);\n" +
"		}\n" );
                        Sizes = ((Models)(companySet.get(0))).Sizes.split(",");
                        for(int i = 0; i < Sizes.length; i++){
                            out.print(
"		a.appendChild(new Option(\""+Sizes[i]+"\",\""+Sizes[i]+"\",true,true));\n" +
"		}");
                            System.out.println("a.appendChild(new Option(\""+Sizes[i]+"\",\""+Sizes[i]+"\",true,true));\n");
                        }
                    }else if(companySet.size() > 1){
                        for(int j = 0; j < companySet.size(); j++){
                            System.out.println(((Models)(companySet.get(j))).CompanyName);
                            out.println(
"	if(y === \""+((Models)(companySet.get(j))).CompanyName+"\"){\n" +
"		var a = document.getElementById(\"size\");\n" +
"		for(var i = 0; i < a.length;){\n" +
"			a.removeChild(a.options[i]);\n" +
"		}\n" );
                        Sizes = ((Models)(companySet.get(j))).Sizes.split(",");
                        for(int i = 0; i < Sizes.length; i++){
                            out.print(
"		a.appendChild(new Option(\""+Sizes[i]+"\",\""+Sizes[i]+"\",true,true));\n" +
"		}");
                        
                        }
                        }
                    }
                    out.println(
"}\n" +
"</script>");
                    
                    
                    out.println("<form action=\"tripupdate\" method=\"post\">\n" +
"<input type=\"hidden\" name=\"check\" value=\"update\" />\n" +
"\n" );
                    out.println("<table align=\"center\" border=\"+3\">"
                            + "<tr><td>"+
"<select id=\"company\" name=\"company\" onchange=\"text();\">" );
                    out.println("<option value=\"\">Select Company</option>");
                    for(int i = 0; i < companySet.size(); i++){
                        out.println(
"  <option value=\""+((Models)(companySet.get(i))).ID+"\">"+((Models)(companySet.get(i))).CompanyName+"</option>\n" );

                    }
                    out.println(
"</select></td>\n" +
"<td>" +
"<select id=\"size\" name=\"size\">\n" );
                    
                    out.println(
"  <option value=\"5000\">5000</option>\n" );
                    out.println(
"  <option value=\"10000\">10000</option>\n" );
                    out.println(
"  <option value=\"15000\">15000</option>\n" );
                    
                    out.println(
"</select></td></tr>" +
"" +
"<input type=\"hidden\" name=\"type\" value=\"drinking\"  />\n" +
"\n" +
"<br />\n"
        + "<tr><td>" +
        
"<label>Total Trips</label>\n</td>" +
"<td><input type=\"number\" name=\"tripscount\" /></td></tr>" +
"<br />\n" +
"<tr><td><label>Date of Trips</label></td>" +
"<td><input type=\"date\" name=\"tripdate\" placeholder=\"dd/mm/yyyy\" /></td></tr>" +
"<br />\n" +
"<tr><td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"submit\" value=\"Update\" /></td></tr>" +
"</table>" +
"</form>");
            
            }catch(Exception ex){
                System.out.println("Error in tripdrinking: "+ ex);
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
