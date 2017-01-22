package com.apisylux.trips;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class tripupdate extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Connection connect = new DBConnectivity().ConnectSql();
            
            
            String updatecheck = request.getParameter("check");
            String updatetype = request.getParameter("type");
            
            
            
            if(!(updatecheck == null)){
                if(updatetype.equals("drinking")){
                    int company = Integer.parseInt(request.getParameter("company"));
                    String size = request.getParameter("size");
                    int tripscount = Integer.parseInt(request.getParameter("tripscount"));
                    String tripdate = request.getParameter("tripdate");
                    String query = "INSERT INTO tripdrinking (ID, CompanyID, Size, tripscount, dateofregister) VALUES (NULL, "+company+", '"+size+"', "+tripscount+", '"+tripdate+" 00:00:00')";
                    try{
                        connect.createStatement().executeUpdate(query);
                        out.println("Updated!");
                    }catch(Exception ex){
                        System.out.println(ex);
                    }
                    
                }else if(updatetype.equals("sewage")){
                    int company = Integer.parseInt(request.getParameter("company"));
                    String size = request.getParameter("size");
                    int tripscount = Integer.parseInt(request.getParameter("tripscount"));
                    String tripdate = request.getParameter("tripdate");
                    String query = "INSERT INTO tripsewage (ID, CompanyID, Size, tripscount, dateofregister) VALUES (NULL, "+company+", '"+size+"', "+tripscount+", '"+tripdate+" 00:00:00')";
                    try{
                        connect.createStatement().executeUpdate(query);
                        out.println("Updated!");
                    }catch(Exception ex){
                        System.out.println(ex);
                    }
                    
                }else if(updatetype.equals("skip")){
                    int company = Integer.parseInt(request.getParameter("company"));
                    String size = request.getParameter("size");
                    int tripscount = Integer.parseInt(request.getParameter("tripscount"));
                    String tripdate = request.getParameter("tripdate");
                    String query = "INSERT INTO tripskip (ID, CompanyID, Size, tripscount, dateofregister) VALUES (NULL, "+company+", '"+size+"', "+tripscount+", '"+tripdate+" 00:00:00')";
                    try{
                        connect.createStatement().executeUpdate(query);
                        out.println("Updated!");
                    }catch(Exception ex){
                        System.out.println(ex);
                    }
                }else if(updatetype.equals("company")){
                    String companyname = request.getParameter("companyname");
                    String companytype = request.getParameter("companytype");
                    String tripsize = request.getParameter("tripsize");
                    int tripprice = Integer.parseInt(request.getParameter("tripprice"));
                    try{
                        ResultSet company = connect.createStatement().executeQuery("SELECT * from tripcompany WHERE CompanyName = '"+companyname+"'");
                        try{
                            if(!company.next()){
                                String Query = "INSERT INTO tripcompany (ID, CompanyName) VALUES (NULL, '"+companyname+"');";
                                connect.createStatement().executeUpdate(Query);
                                ResultSet comid = connect.createStatement().executeQuery("SELECT * from tripcompany WHERE CompanyName = '"+companyname+"'");
                                comid.next();
                                int id = comid.getInt("ID");
                                String update = "INSERT INTO tripprices (ID, CompanyID, Type, Size, Price) VALUES (NULL, "+id+" , '"+companytype+"', '"+tripsize+"', '"+tripprice+"');";
                                connect.createStatement().executeUpdate(update);
                            }else{
                                
                                ResultSet comid = connect.createStatement().executeQuery("SELECT * from tripcompany WHERE CompanyName = '"+companyname+"'");
                                comid.next();
                                int id = comid.getInt("ID");
                                String query = "SELECT * from tripprices WHERE CompanyID = "+id + " AND Type = '"+companytype+"'" ;
                                comid = connect.createStatement().executeQuery(query);
                                
                                if(!comid.next()){
                                    String update = "INSERT INTO tripprices (ID, CompanyID, Type, Size, Price) VALUES (NULL, "+id+" , '"+companytype+"', '"+tripsize+"', '"+tripprice+"');";
                                    connect.createStatement().executeUpdate(update);
                                }else{
                                    int aid =comid.getInt("ID");
                                    String tempsize = comid.getString("Size");
                                    tempsize = tempsize+ (","+tripsize);
                                    String tempprice = comid.getString("Price");
                                    tempprice = tempprice+ (","+tripprice);
                                    String update1 = "UPDATE tripprices SET Price = '"+tempprice+"' WHERE tripprices.ID = "+aid;
                                    String update2 = "UPDATE tripprices SET Size = '"+tempsize+"' WHERE tripprices.ID = "+aid;
                                    try{
                                        connect.createStatement().executeUpdate(update1);
                                        connect.createStatement().executeUpdate(update2);
                                        
                                    }catch(Exception ex){
                                        System.out.println(ex);
                                    }
                                }
                                
                                
                                
                                
                                
                            }
                        
                        }catch(NullPointerException ex){
                            String Query = "INSERT INTO tripcompany (ID, CompanyName) VALUES (NULL, '"+companyname+"');";
                            connect.createStatement().executeUpdate(Query);
                            int id = connect.createStatement().executeQuery("SELECT * from tripcompany WHERE CompanyName = '"+companyname+"'").getInt("ID");
                            String update = "INSERT INTO tripprices (ID, CompanyID, Type, Size, Price) VALUES (NULL, "+id+" , '"+companytype+"', '"+tripsize+"', '"+tripprice+"');";
                            
                            connect.createStatement().executeUpdate(update);
                        }
                        
                        
                    }catch(Exception ex){
                        System.out.println(ex);
                    }
                    
                    
                }
            }
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tripupdate</title>");            
            out.println("</head>");
            out.println("<body>");
            
            response.sendRedirect("index.html");
            
            
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
