/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mandays;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahsan
 */
public class guestcompany extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con = new DBConnectivity().ConnectSql();
            String requestType = request.getParameter("requestType");
            if(requestType.equals("pricingupdate")){
                int companyname = Integer.parseInt(request.getParameter("companyname"));
                int roomcat = Integer.parseInt(request.getParameter("roomcat"));
                int foodcat = Integer.parseInt(request.getParameter("foodcat"));
                int bathroom = Integer.parseInt(request.getParameter("bathroom"));
                int priceperson = Integer.parseInt(request.getParameter("priceperson"));
                out.println(companyname+" And "+ roomcat+ " And " + foodcat+ " And "+ bathroom+ " And " + priceperson);
                String updatepricequery = "INSERT INTO companiesrates (ID, CompanyID, roomtypeID, foodtypeID, bathroom, price) "
                        + "VALUES (NULL, '"+companyname+"', '"+roomcat+"', '"+foodcat+"', '"+bathroom+"', '"+priceperson+"');";
                
                try{
                    Statement updatepricest = con.createStatement();
                    updatepricest.executeUpdate(updatepricequery);
                    response.sendRedirect("dashboard.jsp");
                }catch(Exception ex){
                    System.out.println(ex);
                }
            }else{
                String CompanyName = request.getParameter("companyname");
                String joinedsince = request.getParameter("joinedsince");
                String updatequery = "INSERT INTO guestcompanies (ID, Name, joinedsince) VALUES (NULL, '"+CompanyName+"' , '"+joinedsince+" 00:00:00')";
                
                try{
                    Statement updatestatement  = con.createStatement();
                    int updateSet = updatestatement.executeUpdate(updatequery);
                    response.sendRedirect("guestcompanies.jsp");
                }catch(Exception ex){
                    System.out.println("Error in guestCompany"+ex);
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
