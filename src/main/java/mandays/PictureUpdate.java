package mandays;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ahsan
 */
public class PictureUpdate extends HttpServlet {
    private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 5000 * 1024;
   private int maxMemSize = 40 * 1024;
   private int THRESHOLD_SIZE = 40 * 1024;
   String WebDirectory = "uploadedcontent"+File.separator+"usersdata"+File.separator;
   private File file ;
   int temp = 0;
   
   public void init( ){
      // Get the file location where it would be stored.
      //filePath = getServletContext().getInitParameter("file-upload"); 
      filePath = "/home/ahsan/temp/";
      
      filePath = getServletContext().getRealPath("")+File.separator+WebDirectory;
      try{
            new File(filePath).mkdir();
            new File(filePath).mkdirs();
      }catch(Exception ex){
          System.out.println(ex);
      }
            System.out.println(filePath);
    
   }
   

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
            
            int campstaffid = 0;
            Connection connection = new DBConnectivity().ConnectSql();
            try{
                
                Statement statement = connection.createStatement();
                Cookie cookie = null;
                Cookie[] cookies = null;
                // Get an array of Cookies associated with this domain
                cookies = request.getCookies();
                int logged= 0;

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
                    System.out.println("Credentials Verification!");
                    String username = request.getParameter("username");  
                    String password = request.getParameter("password");
                    ResultSet resultset = 
                        statement.executeQuery("select * from login where username = '" + username + "'") ; 
                    int found = 0;
                    System.out.println("Result Set Called!");
                    while(resultset.next()){
                        String dbusername = resultset.getString("username");
                        String dbpassword = resultset.getString("password");
                        if(username.equals(dbusername ) && password.equals(dbpassword)){
                            campstaffid = resultset.getInt("campstaffID");
                            System.out.println("ResultSet Staff ID: "+resultset.getInt("campstaffID"));
                            found++;
                            Cookie campstaffidcookie = new Cookie("campstaffid", ""+campstaffid);
                            Cookie loggedincookie = new Cookie("loggedin","true");

                            // Set expiry date after 24 Hrs for both the cookies.
                            campstaffidcookie.setMaxAge(60*60*24); 
                            loggedincookie.setMaxAge(60*60*24); 

                            // Add both the cookies in the response header.
                            response.addCookie( campstaffidcookie );
                            response.addCookie( loggedincookie );
                            }
                        }
                        if(found == 0){
                            response.sendRedirect("login.jsp");
                        }

            }

                ResultSet staffidset = statement.executeQuery("SELECT JobTitle from campstaff WHERE ID = "+campstaffid);
                staffidset.next();
                String JobTitle = staffidset.getString("JobTitle");
                if(JobTitle.equals("Maintenance Incharge")){
                    response.sendRedirect("complainreview.jsp");
                }else if(JobTitle.equals("Store Keeper")){
                    response.sendRedirect("inventory.jsp");
                }


                    }catch(Exception ex){

                    }



            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            if (!ServletFileUpload.isMultipartContent(request)) {
                out.println("Request does not contain upload data");
                out.flush();
                return;
            }
            String source = "mandaysexceldata";
            try{
                source = request.getParameter("source");
                
            }catch(Exception ex){
                System.out.println(ex);
            }
            source = "mandaysexceldata";
            if(source.equals("mandaysexceldata")){
                isMultipart = ServletFileUpload.isMultipartContent(request);
                if( !isMultipart ){
                   out.println("<html>");
                   out.println("<head>");
                   out.println("<title>Servlet upload</title>");  
                   out.println("</head>");
                   out.println("<body>");
                   out.println("<p>No file uploaded</p>"); 
                   out.println("</body>");
                   out.println("</html>");
                   return;
                }
            
                DiskFileItemFactory factory = new DiskFileItemFactory();
                System.out.println(filePath);
                // maximum size that will be stored in memory
                factory.setSizeThreshold(THRESHOLD_SIZE);
                String currentUsersHomeDir = System.getProperty("user.home");
                factory.setRepository(new File(currentUsersHomeDir+"/temp"));
                // Location to save data that is larger than maxMemSize.
                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);
                // maximum file size to be uploaded.
                upload.setSizeMax( maxFileSize );
            
                try{ 
                // Parse the request to get file items.
                 List fileItems = upload.parseRequest(request);
                // Process the uploaded file items
                Iterator i = fileItems.iterator();
                
                
                
                while ( i.hasNext () ) 
                {
                    FileItem fi = (FileItem)i.next();
                   if ( !fi.isFormField () )	
                   {
                      // Get the uploaded file parameters
                      String fieldName = fi.getFieldName();
                      System.out.println("FieldName: "+ fieldName);
                      String fileName = fi.getName();
                      System.out.println("FileName: "+fileName);
                      String newFileName = ""+new java.util.Date().getTime();
                      
                      String contentType = fi.getContentType();
                      boolean isInMemory = fi.isInMemory();
                      long sizeInBytes = fi.getSize();
                      // Write the file
                      if( fileName.lastIndexOf("\\") >= 0 ){
                          file = new File( filePath + 
                         newFileName+".jpg") ;
                          
//                         file = new File( filePath +
//                         fileName.substring( fileName.lastIndexOf("\\"))) ;
                         System.out.println(file.getName());
                      }else{
                         
//                         file = new File( filePath +
//                         fileName.substring( fileName.lastIndexOf("\\")+1)) ;
                         file = new File( filePath + 
                         newFileName+".jpg") ;
                         System.out.println(file.getName());
                         
                         
                      }
                      
                      fi.write( file );
                      String UserUpdateQuery = "";
                      UserUpdateQuery = "UPDATE campstaff SET ProfilePicture= '"+WebDirectory+newFileName+".jpg' WHERE ID = "+campstaffid;
                      Statement fileuploadst = connection.createStatement();  
                      fileuploadst.executeUpdate(UserUpdateQuery);
//                      
//                      String query = "INSERT INTO UploadedData (ID, FileName, "
//                              + "FileNameOnDisk, DateUpload, UploadedBy, Category) "
//                              + "VALUES (NULL, '"+fileName+"', '"+newFileName+".xlsx', "
//                              + "CURRENT_TIMESTAMP,"+ campstaffid +", 'mandays')";
                      
//                      fileuploadst.executeUpdate(query);
                      System.out.println(request.getRequestURI());
                      System.out.println(request.getRequestURL());
                      System.out.println(request.getServletPath());
                      System.out.println();
                      
                      response.sendRedirect(request.getParameter("url")+"?a="+request.getParameter("a")+"");
                      
                   }
                }
                }catch(Exception ex) {
                    System.out.println(ex);
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
