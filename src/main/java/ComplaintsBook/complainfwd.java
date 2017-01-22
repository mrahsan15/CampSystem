package ComplaintsBook;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class complainfwd extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Cookie cookie = null;
            Cookie[] cookies = null;
            // Get an array of Cookies associated with this domain
            cookies = request.getCookies();
            int campstaffid = 0;
            int logged = 0;
            if( cookies != null ){
                for (int i = 0; i < cookies.length; i++){
                   cookie = cookies[i];
                   if((cookie.getName()).equals("loggedin")){
                       if(cookie.getValue().equals("true")){
                           for (int j = 0; j < cookies.length; j++){
                             cookie = cookies[j];
                             if((cookie.getName()).equals("campstaffid")){
                                 campstaffid = Integer.parseInt(cookie.getValue());
                                 logged++;
                             }
                           }
                       }
                   }
                }
            }

            if(logged == 0){
                response.sendRedirect("login.jsp");
            }else{
                
            }
            
            int submittedby = campstaffid;
            String area = request.getParameter("area");
            String complaindescription = request.getParameter("complaindescription");
            int forwardedto = Integer.parseInt(request.getParameter("forwardedto"));
            
            String query = "INSERT INTO complainbook (ID, Description, Area, DateTime,SubmittedBy,"
                    + " ForwardedTo, checked, checkedat,solved, solvedat, solvedby) "
                    + "VALUES (NULL, '"+complaindescription+"', '"+area+"', "
                    + "CURRENT_TIMESTAMP, "+submittedby+" , "+forwardedto+", 0 , NULL, 0, NULL, NULL)"
                    + "";
            
            Connection connect = new DBConnectivity().ConnectSql();
            try{
                connect.createStatement().executeUpdate(query);
                response.sendRedirect("complainreviewadmin.jsp");
                
            }catch(Exception ex){
                System.out.println(ex);
                response.sendRedirect("complainreviewadmin.jsp");
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
