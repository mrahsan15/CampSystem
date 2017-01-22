package com.apisylux.trips;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class tripcompany extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Register a Company</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            out.println("<form action=\"tripupdate\" method=\"post\" >\n" +
"\n" +
"<input type=\"hidden\" name=\"check\" value=\"update\" />\n" +
"<input type=\"hidden\" name=\"type\" value=\"company\" />\n" +
"<input type=\"text\" name=\"companyname\" />\n" +
"<select name=\"companytype\" >\n" +
"<option value=\"Drinking\">Drinking Water</option>\n" +
"<option value=\"Sewage\">Sewage Water</option>\n" +
"<option value=\"Skip\">Waste Skip</option>\n" +
"</select><br />\n" +
"\n" +
"<select name=\"tripsize\" >\n" +
"<option value=\"5000\">5000 Gallons </option>\n" +
"<option value=\"10000\">10000 Gallons </option>\n" +
"<option value=\"15000\">15000 Gallons </option>\n" +
"</select><br />\n" +
"<label>Trip Price</label>\n" +
"<input type=\"number\" name=\"tripprice\" /><br />\n" +
"<input type=\"submit\" name=\"submit\" value=\"Add Company\" />\n" +
"\n" +
"</form>");
            
            
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
