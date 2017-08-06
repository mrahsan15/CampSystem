package mandays;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahsan
 */
public class checkin extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String fullname = request.getParameter("fullname");
            System.out.println("Done " + fullname);
            int roomno = Integer.parseInt(request.getParameter("roomno"));
            System.out.println("Done " + roomno);
            System.out.println("Done " + request.getParameter("roomcat"));
            int roomcat = Integer.parseInt(request.getParameter("roomcat"));
            System.out.println("Done " + roomcat);
            int foodcat = Integer.parseInt(request.getParameter("foodcat"));
            System.out.println("Done " + foodcat);
            int bathroom = Integer.parseInt(request.getParameter("bathroom"));
            
            int nationality = Integer.parseInt(request.getParameter("nationality"));
            
            String fileno = request.getParameter("fileno");
            System.out.println("Done " + fileno);
            int companyname = Integer.parseInt(request.getParameter("companyname"));
            System.out.println("Done " + companyname);
            String checkin = request.getParameter("checkin");
            System.out.println("Done " + checkin);
            
            String UpdateQuery = "";
            
            String updatequery = "INSERT INTO datarecord "
                    + "(ID, FullName, RoomNo, RoomCategory, FoodCategory, Nationality ,bathroom , File, "
                    + "CompanyName, CheckIn, CheckOut) "
                    + "VALUES (NULL, '"
                    +fullname+"', "
                    +roomno+", "
                    +roomcat+", "
                    +foodcat+","
                    +nationality+","
                    +bathroom+", '"
                    +fileno+"', "
                    +companyname+", '"
                    +checkin+" 00:00:00', NULL)";
            System.out.println(updatequery);
            
            Connection con = new DBConnectivity().ConnectSql();
            try{
                int updated = con.createStatement().executeUpdate(updatequery);
                out.println("<script type=\"text/javascript\">"
                        + "window.print();"
                        + "</script>");
                response.sendRedirect("mandaysdata.jsp");
            }catch(Exception ex){
                System.out.println(ex);
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
