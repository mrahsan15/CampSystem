package com.apisylux.trips;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class tripview extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tripview</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            out.println("<form action=\"tripview\" method=\"get\" >");
            out.println("<table align=\"center\">"
                    + "<tr><td><label>Type</label></td><td align=\"center\" colspan=\"2\">");
            
            out.println("<select name=\"previewtype\">");
            out.println("<option value=\"\"></option>");
            out.println("<option value=\"drinking\">Drinking Water</option>");
            out.println("<option value=\"sewage\">Sewage Water</option>");
            out.println("<option value=\"skip\">Waste Material</option>");
            out.println("</select></td></tr>");
            
            
            out.println("<tr><td><label>Month</label></td><td>");
            out.println("<select name=\"previewmonth\">");
            out.println("<option value=\"\"></option>");
            SimpleDateFormat forinput = new SimpleDateFormat("MMM, yy");
            SimpleDateFormat forcounting = new SimpleDateFormat("MM");
            java.util.Date currentdate = new java.util.Date();
            int currentmonth = Integer.parseInt(forcounting.format(currentdate));
            int month = 0;
            for(int i = 0; i < currentmonth; i++){
                java.sql.Date temp = new java.sql.Date(116, month, 1);
                out.println("<option value=\""+month+"\">"+forinput.format(temp)+"</option>");
                month++;
            }
            out.println("</select>");
            
            out.println("</td><td>"
                    + "<input type=\"submit\" name=\"submit\" value=\"Show Report\">"
                    + "</td></tr>"
                    + "</table>");
            out.println("</form>");
            
            
            String getReport = request.getParameter("submit");
            
            if(!(getReport == null)){
                String previewtype = request.getParameter("previewtype");
                String previewmonth = request.getParameter("previewmonth");
                String query = "";
                if(previewtype.equals("drinking")){
                    int monthshow = Integer.parseInt(previewmonth) ;
                    monthshow++;
                    int daystart = 1;
                    int dayend = 0;
                    query = "SELECT * FROM tripdrinking WHERE dateofregister "
                            + "BETWEEN '2016-"+monthshow+"-"+daystart+"' "
                            + "AND '2016-"+(monthshow+1)+"-"+dayend+"' "
                            + "ORDER BY dateofregister ASC";
                }else if(previewtype.equals("sewage")){
                    int monthshow = Integer.parseInt(previewmonth) ;
                    monthshow++;
                    int daystart = 1;
                    int dayend = 0;
                    query = "SELECT * FROM tripsewage WHERE dateofregister "
                            + "BETWEEN '2016-"+monthshow+"-"+daystart+"' "
                            + "AND '2016-"+(monthshow+1)+"-"+dayend+"' "
                            + "ORDER BY dateofregister ASC";
                }else if(previewtype.equals("skip")){
                    int monthshow = Integer.parseInt(previewmonth) ;
                    monthshow++;
                    int daystart = 1;
                    int dayend = 0;
                    query = "SELECT * FROM tripskip WHERE dateofregister "
                            + "BETWEEN '2016-"+monthshow+"-"+daystart+"' "
                            + "AND '2016-"+(monthshow+1)+"-"+dayend+"' "
                            + "ORDER BY dateofregister ASC";
                }
                
                System.out.println(query);
                out.println("<table align='center' border='3'>");
                Connection connection = new DBConnectivity().ConnectSql();
            
                try{
                    ResultSet rs = connection.createStatement().executeQuery(query);
                    out.println("<tr>"
                            + "<th>Company Names</th>"
                            + "<th>Veh. Size</th>"
                            + "<th>Trips</th>"
                            + "<th>Date of Trip</th>"
                            + "</tr>");
                    while(rs.next()){
                        out.println("<tr>");
                        
                        int companyid = rs.getInt("CompanyID");
                        ResultSet companynameset = (connection.createStatement()
                                .executeQuery("SELECT * from tripprices WHERE ID = "+ companyid));
                        companynameset.next();
                        ResultSet CompanyNameSet = (connection.createStatement()
                                .executeQuery("SELECT * from tripcompany WHERE ID = "+ companynameset.getInt("CompanyID")));
                        
                        CompanyNameSet.next();
                        String companyname = CompanyNameSet.getString("CompanyName");
                        
                        
                        out.println("<td>" +companyname + "</td>");
                        
                        
                        
                        String size = rs.getString("Size");
                        out.println("<td>" +size + "</td>");
                        
                        int tripscount = rs.getInt("tripscount");
                        out.println("<td>" +tripscount + "</td>");
                        
                        String companydata= "SELECT * from tripprices WHERE ID = "+companyid; 
                        ResultSet companydataset = connection.createStatement().executeQuery(companydata);
                        companydataset.next();
                        SimpleDateFormat previewformat = new SimpleDateFormat("dd-MMM-yyyy");
                        out.println("<td>"+previewformat.format(rs.getTimestamp("dateofregister"))+"</td>");


                        out.println("</tr>");
                    }


                }catch(Exception ex){
                    System.out.println(ex);
                }

                
            }
            
            
            
            
            
            out.println("</table>");
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
    public void getTripsData(Connection connect){
        String trips = "SELECT * FROM tripupdate WHERE dateofregister BETWEEN '2016-07-01' AND '2016-07-31'";
            
        try{
            ResultSet rs = connect.createStatement().executeQuery(trips);
            
            
            ArrayList tripscount = new ArrayList();
            while(rs.next()){
                int companyid = rs.getInt("CompanyID");
                String size = rs.getString("Size");
                int tripcount = rs.getInt("tripscount");
                Timestamp date = rs.getTimestamp("dateofregister");
                
                SimpleDateFormat sdf = new SimpleDateFormat("dd-mmm-yyyy");
                
                String data = companyid +","+size+","+tripcount+","+sdf.format(date);
                tripscount.add(data);
                data = "";
                }
            
            ArrayList TripData = new ArrayList();
            for (int z = 0; z < tripscount.size(); z++){
                String data = (String)tripscount.get(z);
                String[] DATA = data.split(",");
                
                int companyid = Integer.parseInt(DATA[0]);
                String size = DATA[1];
                int tripcount = Integer.parseInt(DATA[2]);
                String date = DATA[3];
                
                
                String price = "SELECT * from tripprices WHERE ID = "+companyid;
                ResultSet priceset = connect.createStatement().executeQuery(price);
                priceset.next();
                int CompanyId = priceset.getInt("CompanyID");
                String TripType = priceset.getString("Type");

                String TripSize = priceset.getString("Size");
                String[] Sizes = TripSize.split(",");

                String TripPrice = priceset.getString("Price");
                String[] Prices = TripPrice.split(",");

                for(int i = 0; i < Sizes.length; i++){
                    if(Sizes[i].equals(size)){
                        TripPrice = Prices[i];
                    }

                }
                
                data = CompanyId+","+TripType+","+size+","+TripPrice+","+tripcount+","+date;
                TripData.add(data);
                data = "";
            }
            
            for (int i = 0; i < TripData.size(); i++){
                String data = (String)TripData.get(i);
                String[] DATA = data.split(",");
                int CompanyId = Integer.parseInt(DATA[0]);
                
                
                
            }
            
            }catch(Exception ex){
                System.out.println(ex);
            }
    }
}
