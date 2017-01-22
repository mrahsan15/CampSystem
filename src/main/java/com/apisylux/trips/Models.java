package com.apisylux.trips;

public class Models {
        int ID ;
        String CompanyName ;
        String Sizes ;
        String Prices ;
    public Models(){
        
    }
    public Models(int id, String companyname, String sizes,String prices){
        this.ID = id;
        this.CompanyName = companyname;
        this.Sizes = sizes;
        this.Prices = prices;
    }
}
