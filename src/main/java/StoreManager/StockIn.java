package StoreManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StockIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String ProductId = request.getParameter("productid") ;
            
            //int productid = Integer.parseInt("ProductId");
            String Quantity = request.getParameter("entrancequantity");
            String Bill = request.getParameter("deliverynote");
            String Price = request.getParameter("priceperunit");
            
            String query = "INSERT INTO stock_entrance (ID, PRODUCT_CODE_ID, QUANTITY_ENTER, STOCK_DATE, PRICE_PER_UNIT, BillNo) "
                    + "VALUES (NULL, "+ProductId+" , '"+Quantity+"', CURRENT_TIMESTAMP, '"+Price+"', '"+Bill+"');";
            
            Connection connection = new DBConnectivity().ConnectSql();
            try{
            Statement stockstatement = connection.createStatement();
            int update = stockstatement.executeUpdate(query);
            if(update == 1){
                response.sendRedirect("stockin.jsp");
            }else{
                out.println("Failure");
            }
            
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
