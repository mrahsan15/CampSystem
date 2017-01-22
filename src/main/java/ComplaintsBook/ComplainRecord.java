package ComplaintsBook;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ComplainRecord extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection connect = new DBConnectivity().ConnectSql();
            
                    
            String resolvedby = request.getParameter("resolvedby");
            String complainid = request.getParameter("complainid");
            try{
            if(resolvedby != null){
                connect.createStatement().executeUpdate("UPDATE complainbook SET solved = 1 WHERE ID = "+complainid);
                connect.createStatement().executeUpdate("UPDATE complainbook SET solvedat = CURRENT_TIMESTAMP WHERE ID = "+complainid);
                connect.createStatement().executeUpdate("UPDATE complainbook SET solvedby = "+resolvedby+" WHERE ID = "+complainid);
                
                    
            }
            }catch(Exception ex){
                System.out.println(ex);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ComplainRecord</title>");            
            out.println("</head>");
            out.println("<body>");
            
            out.println("<table align=\"center\" border=\"3\">\n" +
"<tr>\n" +
"<th>Sr#</th>\n" +
"<th>Effective Area</th>\n" +
"<th>Registered By</th>\n" +
"<th>Submission Time</th>\n" +
"</tr>\n");
            try{
            ResultSet complainrecords = connect.createStatement()
                    .executeQuery("SELECT * from complainbook WHERE solved = 0");
            int counter = 0;
            while(complainrecords.next()){
                int id = complainrecords.getInt("ID");
                
                counter++;
                
                String roomno = complainrecords.getString("Area");
                
                
                ResultSet staffname = connect.createStatement()
                        .executeQuery("SELECT Name from campstaff WHERE ID = "+complainrecords.getInt("SubmittedBy"));
                staffname.next();
                System.out.println("Working 1 ");
                
                String SubmissionBy = staffname.getString("Name");
                Timestamp date = complainrecords.getTimestamp("DateTime");
                
                out.println(
"<form action=\"complainreview\" method=\"post\">\n" +
"<tr>\n" +
"<td align=\"center\"><input type=\"hidden\" name=\"compainID\" value=\""+id+"\" />"+(counter)+"</td>\n" +
"<td align=\"center\">"+roomno+"</td>\n" +
"<td>"+SubmissionBy+"</td>\n" +
"<td align=\"center\">"+date+"</td>\n" +
"<td><input type=\"submit\" name=\"submit\" value=\"Review\" /></td>\n" +
"</tr>\n" +
"</form>\n");

            }
            out.println("</table>");
            
            }catch(Exception ex){
                System.out.println(ex);
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
