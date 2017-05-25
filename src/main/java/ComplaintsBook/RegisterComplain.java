package ComplaintsBook;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterComplain extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterComplain</title>");            
            out.println("</head>");
            out.println("<body>");
            
            out.println("<form action=\"complainfwd\" method=\"post\">");
            out.println("<table align=\"center\" border=\"3\">");
            out.println("<tr><td><label>Effective Area: </label></td>" +
"<td><input type=\"text\" name=\"area\" /></td>\n" +
"</tr>\n" +
"<tr><td><label>Description:</label>\n" +
"<td><input type=\"text\" name=\"complaindescription\" size=\"50\"/></td>\n" +
"</tr>\n" +
"<tr><td><label>Forwarded To:</label></td>");

            out.println("<td>\n" +
"<select name=\"forwardedto\">");
            try{
            ResultSet MaintenanceStaffs = new DBConnectivity().ConnectSql().createStatement()
                    .executeQuery("SELECT * from campstaff WHERE JobTitle = 'Maintenance Incharge'");
            
            while(MaintenanceStaffs.next()){
                int id = MaintenanceStaffs.getInt("ID");
                String StaffName = MaintenanceStaffs.getString("FirstName");
                out.println("<option value=\""+id+"\">"+StaffName+"</option>" );
            }
            }catch(Exception ex){
                
            }
            
            out.println(
"</select>\n" +
"</td>" +
                    
"</tr>\n" +
"<tr><td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"submit\" value=\"Register\" /></td>\n" +
"</tr>\n" +
"\n" +
"</table>" +
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
