package mandays;

import com.apisylux.trips.*;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.html.simpleparser.HTMLWorker;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.apache.poi.hssf.usermodel.HeaderFooter.file;
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
        
        try{
        
        String RESULT
        = System.getProperty("user.home")+"/Desktop/test.pdf";
        System.out.println(RESULT);
        File file = new File(RESULT);
        file.createNewFile();
        
        Document document = new Document(PageSize.LETTER.rotate());
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(RESULT));
        document.open();
 
        PdfContentByte canvas = writer.getDirectContent();
        Rectangle rect = new Rectangle(820, 570, 18, 500);
        Paragraph header = new Paragraph();
        header.setAlignment(Element.ALIGN_CENTER);
        
        
        header.setFont(new Font(FontFamily.HELVETICA, 46, Font.NORMAL, BaseColor.RED));
//        header.add("Pioneers Catering Services");
        document.add(header);
        rect.setBorder(Rectangle.BOX);
        rect.setBorderWidth(2);
//        canvas.rectangle(rect);
        
        
        Font red = new Font(FontFamily.HELVETICA, 46, Font.NORMAL, BaseColor.RED);
        Chunk redText = new Chunk("Pioneers Catering Services", red);
        Font blue = new Font(FontFamily.HELVETICA, 12, Font.BOLD, BaseColor.BLUE);
        Chunk blackText = new Chunk("Summary for XYZ Company");
        Font green = new Font(FontFamily.HELVETICA, 12, Font.ITALIC, BaseColor.GREEN);
        Chunk greenText = new Chunk("This text is green and italic. ", green);
        
        header.add(redText);
        
        Paragraph p1 = new Paragraph(redText);
        p1.setAlignment(Element.ALIGN_CENTER);
        Paragraph p2 = new Paragraph(blackText);
        p2.setAlignment(Element.ALIGN_CENTER);
        
//        document.add(p1);
        
        ColumnText ct = new ColumnText(writer.getDirectContent());
        
        ct.setSimpleColumn(820, 590, 20, 500);
        
        ct.addElement(p1);
        
        ct.addElement(p2);    
        
        PdfPTable table = new PdfPTable(40);
        table.setWidthPercentage(100);
        PdfPCell cell12 = new PdfPCell();
        cell12.setPhrase(new Phrase("Name Space"));
        cell12.setRight(520);
        cell12.setHorizontalAlignment(Element.PHRASE);
        ColumnText ctt = new ColumnText(writer.getDirectContent());
        ctt.setSimpleColumn(20, 25, 150, 250);
        
        cell12.setColumn(ctt);
        cell12.setFixedHeight(70);
        table.addCell(cell12);
        for(int aw = 0; aw < 1020; aw++){
//            table.addCell("This is Sparta!");
        }
        
        PdfPTable table1 = new PdfPTable(7);
        for(int aw = 0; aw < 40; aw++){
            PdfPCell cell11 = new PdfPCell(new Phrase(" "));
            cell11.setBorder(0); 
            table1.addCell(cell11);
        }
        
        ct.go();
        document.add(table1);
        document.add(table);
//        ct.addElement(table);
//        ct.addElement(p2);
        
        
        
        
//        String HTML = "<html><head></head><body>"
//                + "<table align=\"center\">\n" +
//"<tr><td align=\"center\" style=\"font-weight:700; font-size:28.0pt; color:red; font-family: Calibri, sans-serif;\">\n" +
//"			Pioneers Catering Services\n" +
//"	</td>\n" +
//"</tr>\n" +
//"<tr>\n" +
//"	<td align=\"center\">\n" +
//"		Summary for XYZ - April 2017\n" +
//"	</td>\n" +
//"</tr>\n" +
//"</table>"
//                + "<table border=\"1\" >\n" +
//"	<tr>\n" +
//"		<td style=\"width: 50px;\">Sr#</td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		<td></td>\n" +
//"		\n" +
//"	</tr>\n" +
//"</table>\n" +
//""
//                + "</body></html>";
//        
//        HTMLWorker htmlworker = new HTMLWorker(document);
//        htmlworker.parse(new StringReader(HTML));
//        htmlworker.endDocument();
        
        document.close();
        
        
        
        }catch(Exception ex){
            System.out.println(ex);
        }
        
    }
}
