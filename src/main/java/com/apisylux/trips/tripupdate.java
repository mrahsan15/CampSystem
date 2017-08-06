package com.apisylux.trips;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class tripupdate extends HttpServlet {

    private String TripVolume = "";
    private String TripCompanyID= "";
    private String TripType = "";
    private String TripCount = "";
    private String TripDate = "";
    private String SubmitType = "";
    private String TripCompanyName = "";
    private String TripTypes = "";
    private String measurement = "";
    private String price = "";
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Connection connection = new DBConnectivity().ConnectSql();
            
            String updatetype = request.getParameter("type");
            
            //Trip Prices Update
            if(updatetype.equals("price")){
                try{
                TripCompanyName = request.getParameterValues("TripCompanyName")[0];
                }catch(Exception ex){
                    System.out.println("Trip Company ID has Error.");
                }
                try{
                    TripTypes = request.getParameterValues("TripTypes")[0];
                }catch(Exception ex){
                    System.out.println("Trip types has Error.");
                }
                try{
                    measurement = request.getParameterValues("measurement")[0];
                }catch(Exception ex){
                    System.out.println("Trip measurement has Error.");
                }
                try{
                    price = request.getParameterValues("price")[0];
                }catch(Exception ex){
                    System.out.println("Trip price has Error.");
                }
                
                String UpdatePriceQuery;
                UpdatePriceQuery = "INSERT INTO campsystem.tripprices ("
                        + "CompanyID, "
                        + "Type, "
                        + "Size, "
                        + "Price, "
                        + "UpdateDate) "
                        + "VALUES ("
                        + "'"+TripCompanyName+"', "
                        + "'"+TripTypes+"', "
                        + "'"+measurement+"', "
                        + "'"+price+"', "
                        + "CURRENT_TIMESTAMP)";
                try{
                    Statement UpdatePriceSt = connection.createStatement();
                    UpdatePriceSt.executeUpdate(UpdatePriceQuery);
                    
                }catch(Exception ex){
                    System.out.println(ex);
                }
                
                String SubmitType = request.getParameter("submit");
                if(SubmitType.equals("addmore")){
                    response.sendRedirect("updatetripprices.jsp");
                }else if(SubmitType.equals("exit")){
                    response.sendRedirect("");
                }
            }
            
            //Daily Trip Counts Update Code
            if(updatetype.equals("trips")){
                try{
                    TripVolume = request.getParameterValues("selecttripvolume")[0];
                    if(TripVolume.equals("1")){
                        TripVolume = "5000";
                    }else if(TripVolume.equals("2")){
                        TripVolume = "10000";
                    }else if(TripVolume.equals("3")){
                        TripVolume = "15000";
                    }else{
                        TripVolume = "";
                    }
                    
                }catch(Exception ex){
                    System.out.println("Trip Volume has some Error.");
                }
                try{
                    TripCompanyID = request.getParameterValues("selecttripcompany")[0];
                }catch(Exception ex){
                    System.out.println("Trip Company ID has some Error.");
                }
                try{
                    TripType = request.getParameterValues("selecttriptypes")[0];
                }catch(Exception ex){
                    System.out.println("Trip Type has some errors.");
                }
                try{
                    TripCount= request.getParameter("tripcounts");
                }catch(Exception ex){
                    System.out.println("Trip Counts has some Error.");
                }
                try{
                    TripDate = request.getParameter("tripdate");
                    SimpleDateFormat htmltojava = new SimpleDateFormat("MM/dd/yyyy");
                    Date date = htmltojava.parse(TripDate);
                    SimpleDateFormat javatosql = new SimpleDateFormat("yyyy-MM-dd");
                    TripDate = javatosql.format(date);
                    
                }catch(Exception ex){
                    System.out.println("Trip Date has some Error.");
                }
                try{
                    SubmitType = request.getParameterValues("submit")[0];
                }catch(Exception ex){
                    System.out.println("Submit Type has some Error.");
                }
                
                String TripUpdateQuery = "INSERT INTO campsystem.trips "
                        + "(CompanyID, Size, tripscount, dateofregister, triptype) "
                        + "VALUES "
                        + "('"
                        +TripCompanyID+"', '"
                        +TripVolume+"', '"
                        +TripCount+"', '"
                        +TripDate+"', '"
                        +TripType+"')";
                
                try{
                    Statement TripUpdateSt = connection.createStatement();
                    TripUpdateSt.executeUpdate(TripUpdateQuery);
                }catch(Exception ex){
                    System.out.println(ex);
                }
                
                if(SubmitType.equals("addmore")){
                    response.sendRedirect("trips.jsp");
                }else if(SubmitType.equals("addmore")){
//                    response.sendRedirect("trips.jsp");
                }
            }
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
