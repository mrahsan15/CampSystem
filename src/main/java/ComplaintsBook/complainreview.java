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

public class complainreview extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String ComplainID = request.getParameter("compainID");
            
            try{
                Connection connect = new DBConnectivity().ConnectSql();
                ResultSet temp = connect.createStatement()
                        .executeQuery("SELECT checked from complainbook WHERE ID = "+ComplainID);
                temp.next();
                if(temp.getInt("checked") == 0){
                    connect.createStatement().executeUpdate("UPDATE complainbook SET checked = 1 WHERE ID = "+ComplainID);
                    connect.createStatement().executeUpdate("UPDATE complainbook SET checkedat = CURRENT_TIMESTAMP WHERE ID = "+ComplainID);
                }
            ResultSet complainDetail = connect.createStatement()
                    .executeQuery("SELECT * from complainbook WHERE ID = "+ComplainID);
            complainDetail.next();
            
            String Area = complainDetail.getString("Area");
            String SubmittedTime  = ""+complainDetail.getTimestamp("DateTime");
            int SubmittedByNumber = complainDetail.getInt("SubmittedBy");
            int ForwardedToNumber = complainDetail.getInt("ForwardedTo");
            int Status = complainDetail.getInt("solved");
            String status = "InActive";
            if(Status == 0){
                status = "Active";
            }
            String Description = complainDetail.getString("Description");
            
            ResultSet submittedByset = connect.createStatement().executeQuery("SELECT FirstName from campstaff WHERE ID = "+SubmittedByNumber);
            submittedByset.next();
            String SubmittedByName = submittedByset.getString("FirstName");
            
            ResultSet ForwardedToset = connect.createStatement().executeQuery("SELECT FirstName from campstaff WHERE ID = "+ForwardedToNumber);
            ForwardedToset.next();
            String ForwardedToName = ForwardedToset.getString("FirstName");
            
            String ResolvedByHTML = "";
            ResultSet ResolvedByset = connect.createStatement().executeQuery("SELECT * from campstaff WHERE Role = 4");
            while(ResolvedByset.next()){
                ResolvedByHTML = ResolvedByHTML+ "<option value=\""
                        +ResolvedByset.getString("ID")+"\">"
                        +ResolvedByset.getString("FirstName")+"</option>";
                
            }
            
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n" +
"<html xmlns=\"http://www.w3.org/1999/xhtml\">\n" +
"<head>\n" +
"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n" +
"<title>Complain Review</title>\n" +
"</head>\n" +
"<script type=\"text/javascript\">\n" +
"function resolvation(){\n" +
"	var row = document.getElementById('resolvingrow');\n" +
"	var cell = row.insertCell(0);\n" +
"	cell.setAttribute('colspan',3);\n" +
"	cell.setAttribute('align','right');\n" +                    
"	cell.innerHTML = '<label>Resolved By: </label>';\n" +
"	var cell1 = row.insertCell(1);\n" +
"	cell1.innerHTML =  '<select name=\"resolvedby\">"+ResolvedByHTML+"</select>';\n" +
"	var row1 = document.getElementById('submitbutton');\n" +
"	var cell2 = row1.insertCell(0);\n" +
"	cell2.setAttribute('colspan',4);\n" +
"	cell2.setAttribute('align','right');\n" +
"	cell2.innerHTML = '<input type=\"submit\" name=\"submit\" value=\"Submit\">';\n" +
"	\n" +
"}\n" +
"\n" +
"</script>\n" +
"\n" +
"<body>\n" +
"<table align=\"center\" border=\"3\">\n" +
"\n" +
"<tr height=\"30\">\n" +
"<td><label>Complaint ID#</label></td>\n" +
"<td><input type=\"text\" name=\"compainid\" value=\""+ComplainID+"\" disabled=\"disabled\" size=\"\" align=\"middle\" /></td>\n" +
"\n" +
"<td><label>RoomNo#</label></td>\n" +
"<td><input type=\"text\" name=\"roomno\" value=\""+Area+"\" disabled=\"disabled\"/>\n" +
"</td>\n" +
"</tr>\n" +
"<tr height=\"30\">\n" +
"<td><label>Complaint Submitted</label></td>\n" +
"<td>"+SubmittedTime+"</td>\n" +
"<td><label>Submitted By:</label></td>\n" +
"<td>"+SubmittedByName+"</td>\n" +
"</tr>\n" +
"<tr>\n" +
"<td><label>Forwarded to:</label></td>\n" +
"<td>"+ForwardedToName+"</td>\n" +
"</tr>\n" +
"\n" +
"<tr>\n" +
"<td colspan=\"2\"><label>Description</label></td>\n" +
"<td><label>Status:</label></td><td><b>Active</b></td>\n" +
"</tr>\n" +
"<tr>\n" +
"<td colspan=\"4\" align=\"center\"><textarea cols=\"100\" rows=\"10\" disabled=\"disabled\">"+Description+"</textarea></td>\n" +
"</tr>\n" +
"\n" +

                    "<form action=\"ComplainRecord\" method=\"post\" >\n" +
"<input type=\"hidden\" name=\"complainid\" value=\""+ComplainID+"\""
                    + "<tr id=\"resolvingrow\">\n" +
"<td colspan=\"3\" align=\"right\"><label>Resolved By:</label></td>\n" +
"<td><select name=\"resolvedby\">\n" +
ResolvedByHTML+
"</select></td>\n" +
"</tr>" +
"<tr id=\"submitbutton\"><td colspan=\"4\" align=\"right\"><input type=\"submit\" name=\"submit\" value=\"Submit\" /></td></tr>" +
"\n" +
"</form>\n" +
"</table>\n" +
"\n" +
"</body>\n" +
"</html>");
            
            out.println("");
            
            
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
