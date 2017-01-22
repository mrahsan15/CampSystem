package com.apisylux.trips;

import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Main {

    public static void main(String[] args) {
//        Connection connect = new DBConnectivity().ConnectSql();
//            String query = "SELECT * from tripcompany";
//            try{
//                ResultSet companydata = connect.createStatement().executeQuery(query);
//                ArrayList CompanyArray = new ArrayList();
//                while(companydata.next()){
//                    
//                    String data = companydata.getInt("ID")+","+companydata.getString("CompanyName");
//                    CompanyArray.add(data);
//                    data = "";
//                }
//                
//                int ID = 0;
//                String sizes = "";
//                String prices = "";
//                String[] Sizes = {""};
//                String[] Prices = {""};
//                ArrayList companySet = new ArrayList();
//                for(int i = 0; i < CompanyArray.size(); i++){
//                    String data = (String)CompanyArray.get(i);
//                    String[] DATA = data.split(",");
//                    int id = Integer.parseInt(DATA[0]);
//                    String CompanyName = DATA[1];
//                    ResultSet CompanyDetails = connect.createStatement()
//                            .executeQuery("SELECT * from tripprices WHERE CompanyID = "+id +" AND Type LIKE 'Drinking'");
//                    
//                    CompanyDetails.next();
//                    
//                    ID = CompanyDetails.getInt("ID");
//                    sizes = CompanyDetails.getString("Size");
//                    prices = CompanyDetails.getString("Price");
//                    
//                    companySet.add(new Models(ID, CompanyName, sizes, prices));
//                    System.out.println(ID+","+CompanyName+","+sizes+","+prices);
//                }
//        
//    }catch(Exception ex){
//        System.out.println(ex);
//    }
//
        SimpleDateFormat sdf = new SimpleDateFormat("MMM, yy");
        
        int month = 0;
        java.sql.Date datee = new java.sql.Date(116, month, 1);
        System.out.println(datee);
//        for(int i = 0 ; i < 12; i++){
//            sdf.format(datee);
//            System.out.println(sdf.format(datee));
//            month++;
//            datee = new java.sql.Date(116, month, 1);
//        }
        
        Date date = new Date();
        
        
        
}}
