
package com.apisylux.trips;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnectivity {
    
        Connection con = null;
    Statement st;
    ResultSet rs;
    public DBConnectivity(){
        
    }
    public Connection ConnectSql(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String URL = "jdbc:mysql://localhost:3306/campsystem";
            con = DriverManager.getConnection(URL,"root","root");
            System.out.println("DB Connected!");
        }catch(Exception ex){
            System.out.println(ex);
        }
        return con;
    }
}