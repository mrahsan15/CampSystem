package mandays;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class initializedb {
    DBConnectivity connection = new DBConnectivity();
    
    public initializedb(){
        Connection connect = connection.ConnectSql();
        CheckTable(connect);
        
    }
    public void CheckTable(Connection connect){
        int x = 0;
        System.out.println(x++);
        String query = "select table_name from information_schema.tables where table_schema='campsystem'";
        try{
        ResultSet rs = connect.createStatement().executeQuery(query);
        String tripcompany = "roomlist";
        boolean found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripcompany)){
                found = true;
                break;
            }
        }
        if(!found){
            roomlist(connect);
        }
        
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripprices = "roomtype";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripprices)){
                found = true;
                break;
            }
        }
        if(!found){
            roomtype(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripdrinking = "foodtype";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripdrinking)){
                found = true;
                break;
            }
        }
        if(!found){
            foodtype(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String mandayscompanies = "mandayscompanies";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(mandayscompanies)){
                found = true;
                break;
            }
        }
        if(!found){
            mandayscompanies(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String companiesrates = "companiesrates";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(companiesrates)){
                found = true;
                break;
            }
        }
        if(!found){
            companiesrates(connect);
        }
        System.out.println(x++);
        }catch(Exception ex){
            System.out.println("Error in tripcompany.CheckTable: "+ex);
        }
        
    }
    public void roomlist(Connection connect){
        String query = "CREATE TABLE roomlist("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "roomno varchar(10) NOT NULL,"
                + "bathroom boolean NOT NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.roomlist: " +ex);
        }
    }
    public void roomtype(Connection connect){
        //Size and Price will contain Comma Separated Values for types
        String query = "CREATE TABLE roomtype ("
                + "ID int(5) NOT NULL AUTO_INCREMENT,"
                + "type varchar(6),"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.roomtype: " +ex);
        }
    }
    public void foodtype(Connection connect){
        String query = "CREATE TABLE foodtype("
                + "ID int(4) NOT NULL AUTO_INCREMENT,"
                + "type varchar(15),"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.foodtype: " +ex);
        }
    }
    public void mandayscompanies(Connection connect){
        String query = "CREATE TABLE mandayscompanies("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "companyname varchar(200),"
                + "registrationdate TIMESTAMP NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.mandayscompanies: " +ex);
        }
    }
    public void companiesrates(Connection connect){
        String query = "CREATE TABLE companiesrates("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "roomtypeID int(9),"
                + "foodtypeID int(9),"
                + "bathroom boolean,"
                + "price int(9),"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.mandayscompanies: " +ex);
        }
    }
}
