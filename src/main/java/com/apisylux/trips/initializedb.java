package com.apisylux.trips;

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
        String tripcompany = "tripcompany";
        boolean found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripcompany)){
                found = true;
                break;
            }
        }
        if(!found){
            TripCompany(connect);
        }
        System.out.println(x++);
        //
//        rs = connect.createStatement().executeQuery(query);
//        String tripupdate = "tripupdate";
//        found = false;
//        while(rs.next()){
//            if(rs.getString(1).equals(tripupdate)){
//                found = true;
//                break;
//            }
//        }
//        if(!found){
//            TripUpdate(connect);
//        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripprices = "tripprices";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripprices)){
                found = true;
                break;
            }
        }
        if(!found){
            TripPrices(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripdrinking = "tripdrinking";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripdrinking)){
                found = true;
                break;
            }
        }
        if(!found){
            TripDrinking(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripsewage = "tripsewage";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripsewage)){
                found = true;
                break;
            }
        }
        if(!found){
            TripSewage(connect);
        }
        System.out.println(x++);
        rs = connect.createStatement().executeQuery(query);
        String tripskip = "tripskip";
        found = false;
        while(rs.next()){
            if(rs.getString(1).equals(tripskip)){
                found = true;
                break;
            }
        }
        if(!found){
            TripSkip(connect);
        }
        System.out.println(x++);
        }catch(Exception ex){
            System.out.println("Error in tripcompany.CheckTable: "+ex);
        }
        
    }
    public void TripCompany(Connection connect){
        String query = "CREATE TABLE tripcompany ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyName varchar(100),"
                + "dateofregister TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripCompany: " +ex);
        }
    }
    public void TripPrices(Connection connect){
        //Size and Price will contain Comma Separated Values for types
        String query = "CREATE TABLE tripprices ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyID int(9) null,"
                + "Type varchar(25),"
                + "Size varchar(50),"
                + "Price varchar(50),"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripPrices: " +ex);
        }
    }
    public void TripUpdate(Connection connect){
        String query = "CREATE TABLE tripupdate ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyID int(9),"
                + "Size varchar(50),"
                + "tripscount int(9),"
                + "dateofregister TIMESTAMP NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripUpdate: " +ex);
        }
    }
    public void TripDrinking(Connection connect){
        String query = "CREATE TABLE tripdrinking ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyID int(9),"
                + "Size varchar(50),"
                + "tripscount int(9),"
                + "dateofregister TIMESTAMP NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripUpdate: " +ex);
        }
    }
    public void TripSewage(Connection connect){
        String query = "CREATE TABLE tripsewage ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyID int(9),"
                + "Size varchar(50),"
                + "tripscount int(9),"
                + "dateofregister TIMESTAMP NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripUpdate: " +ex);
        }
    }
    public void TripSkip(Connection connect){
        String query = "CREATE TABLE tripskip ("
                + "ID int(9) NOT NULL AUTO_INCREMENT,"
                + "CompanyID int(9),"
                + "Size varchar(50),"
                + "tripscount int(9),"
                + "dateofregister TIMESTAMP NULL,"
                + "PRIMARY KEY (ID)"
                + ")";
        try {
            System.out.println(connect.createStatement().executeUpdate(query));
            
        } catch (Exception ex) {
            System.out.println("Error in initializedb.TripUpdate: " +ex);
        }
    }
    
    
}
