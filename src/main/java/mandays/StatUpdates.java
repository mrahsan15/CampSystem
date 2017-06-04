package mandays;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author Ahsan Mahmood
 */
public class StatUpdates {
    Connection connection = new DBConnectivity().ConnectSql();
    public StatUpdates(){
        this.UpdateActiveCompanies();
        this.UpdateRevenue();
    }
    
    
    public void UpdateActiveCompanies(){
        String GuestCompaniesQuery = "SELECT * FROM guestcompanies";
        try{
            Statement guestCompaniesStatement = connection.createStatement();
            ResultSet guestCompaniesSet = guestCompaniesStatement.executeQuery(GuestCompaniesQuery);
            
            while(guestCompaniesSet.next()){
                int CompanyID = guestCompaniesSet.getInt("ID") ;
                String CompanyDataQuery = "SELECT * FROM campsystem.datarecord WHERE CompanyName = "+CompanyID+" AND CheckOut is Null";
                Statement CompanyDataStatement = connection.createStatement();
                ResultSet CompanyDataSet = CompanyDataStatement.executeQuery(CompanyDataQuery);
                int active = 0;
                while(CompanyDataSet.next()){
                    active++;
                    break;
                }
                if(active != 0){
                    String ActiveCompanyQuery = "UPDATE guestcompanies SET active = 1 WHERE ID = "+CompanyID ;
                    Statement ActiveCompanyStatement = connection.createStatement();
                    ActiveCompanyStatement.executeUpdate(ActiveCompanyQuery);
                }else if(active == 0){
                    String ActiveCompanyQuery = "UPDATE guestcompanies SET active = 0 WHERE ID = "+CompanyID ;
                    Statement ActiveCompanyStatement = connection.createStatement();
                    ActiveCompanyStatement.executeUpdate(ActiveCompanyQuery);
                }
            }
            GuestCompaniesQuery = "SELECT * FROM guestcompanies WHERE active = 1";
            guestCompaniesSet = guestCompaniesStatement.executeQuery(GuestCompaniesQuery);
            int ActiveCompanyCount = 0;
            while(guestCompaniesSet.next()){
                ActiveCompanyCount++;
            }
            
            String StatTableUpdate = "UPDATE campsystem.stats SET Value = "+ActiveCompanyCount+" WHERE Type = 'ActiveCompany'";
            connection.createStatement().executeUpdate(StatTableUpdate);
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        
        
    }
    public void UpdateRevenue(){
        float price = 0;
        
        String OccupancyPresentQuery = "SELECT * FROM campsystem.datarecord WHERE CheckOut is null;";
        
        
        try{
            Statement OccupancyPresentStatement = connection.createStatement();
            ResultSet OccupancyPresentSet = OccupancyPresentStatement.executeQuery(OccupancyPresentQuery);
            
            while(OccupancyPresentSet.next()){
                
                int CompanyNameID = OccupancyPresentSet.getInt("CompanyName");
                int RoomCategoryID = OccupancyPresentSet.getInt("RoomCategory");
                int FoodCategoryID = OccupancyPresentSet.getInt("FoodCategory");
                int BathroomID = OccupancyPresentSet.getInt("bathroom");
                
                String PriceQuery = "SELECT * FROM campsystem.companiesrates WHERE "
                        + "CompanyID = "+CompanyNameID+" AND "
                        + "roomTypeID = "+RoomCategoryID+" AND "
                        + "foodtypeID = "+FoodCategoryID+" and "
                        + "bathroom = "+BathroomID;
//                System.out.println(PriceQuery);
                Statement PriceStatement = connection.createStatement();
                ResultSet PriceSet = PriceStatement.executeQuery(PriceQuery);
                try{
                    while(PriceSet.next()){
                        price += PriceSet.getFloat("price");
//                        System.out.println(price);
                    }
                }catch(Exception ex){
                    System.out.println("PriceSet Error - StatUpdates: "+ex);
                }
            }
            
            String UpdateRevenueQuery = "UPDATE campsystem.stats SET Value = "+price+" WHERE Type = 'Revenue'";
            connection.createStatement().executeUpdate(UpdateRevenueQuery);
            
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        
    }
    
    
}
