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
public class checkin1 extends HttpServlet {

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
            String fullname = request.getParameter("fullname");
            
            int roomno = Integer.parseInt(request.getParameter("roomno"));
            int roomcat = Integer.parseInt(request.getParameter("roomcat"));
            int foodcat = Integer.parseInt(request.getParameter("foodcat"));
            
            String fileno = request.getParameter("fileno");
            
            int companyname = Integer.parseInt(request.getParameter("companyname"));
            
            String checkin = request.getParameter("checkin");
            
            String UpdateQuery = "";
            
            String updatequery = "INSERT INTO datarecord "
                    + "(ID, FullName, RoomNo, RoomCategory, FoodCategory, File, "
                    + "CompanyName, CheckIn, CheckOut) "
                    + "VALUES (NULL, '"+fullname+"', "+roomno+", "+roomcat+", "+foodcat
                    +", '"+fileno+"', "+companyname+", '"+checkin+" 00:00:00', NULL)";
            System.out.println(updatequery);
            
            Connection con = new DBConnectivity().ConnectSql();
            try{
                int updated = con.createStatement().executeUpdate(updatequery);
                System.out.println("Update: "+updated);
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
