package mandays;

import com.apisylux.trips.*;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Main {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        
//        Connection connection = new DBConnectivity().ConnectSql();
//        try{
//            String query = "SELECT * FROM datarecord WHERE Nationality = 12 AND CheckIn <= CURRENT_TIMESTAMP AND CheckOut IS NULL";
//            Statement st = connection.createStatement();
//            ResultSet rs = st.executeQuery(query);
//            int count = 0;
//            while(rs.next()){
//                count++;
//            }
//            System.out.println(count);
//        }catch(Exception ex){
//            
//        }
        Scanner s = new Scanner(System.in);
        String ss = s.nextLine();
        while(true){
            System.out.println(ss);
            if(ss.contains("end-of-file")){
               break; 
            }else{
                ss = s.nextLine();            
            }
        }
        
    }
}
