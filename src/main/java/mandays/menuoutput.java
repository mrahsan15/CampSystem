/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mandays;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author ahsan
 */
public class menuoutput {
    
    public String DashboardMenu;
    public String ComplainSystemMenu;
    public String ComplainRegisterNewComplain;
    public String ComplainReviewComplain;
    public String ComplainPreviousRecords;
    public String MandaysSystemMenu;
    public String MandaysCompleteList;
    public String MandaysCheckIn;
    public String MandaysCheckOut;
    public String MandaysGuestCompanies;
    public String MandaysCompanyRegistration;
    public String MandaysCompanyNewCompany;
    public String MandaysCompanyPricingUpdate;
    public String FoodMandaysMenu;
    public String SettingsMenu;
//    public String DashboardText = "";
//    String ComplainSystem = "";
    
    public menuoutput(int id, JspWriter out){
        String active = " start active open";
        
        dashboardmenu(id,active, out);
        
        
    }
    private void dashboardmenu(int id,String active, JspWriter out){
        active= "";
        try {
            DashboardMenu = (
"                        <li class=\"nav-item"+ active +"\">\n" +
"                            <a href=\"dashboard.jsp\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"icon-home\"></i>\n" +
"                                <span class=\"title\">Dashboard</span>\n" +
"                                <span class=\"selected\"></span>\n" +
"                            </a>\n" +
"                        </li>\n");
            ComplainSystemMenu = (
"                        <li class=\"nav-item "+ active+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-wrench\"></i>\n" +
"                                <span class=\"title\">Complain System</span>\n" +
"                                <span class=\"arrow\"></span>\n" +
"                            </a><!--\n" +
"-->                            <ul class=\"sub-menu\">\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"registercomplain.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Register new Complain</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"complainreviewadmin.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Review Complains</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"#\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Archieved Items</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                            </ul>\n" +
"                        </li>\n");
            MandaysSystemMenu =(
"                        <li class=\"nav-item \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-book\"></i>\n" +
"                                <span class=\"title\">Mandays System</span>\n" +
"                                <span class=\"arrow\"></span>\n" +
"                            </a><!--\n" +
"-->                            <ul class=\"sub-menu\">\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"mandaysdata.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Complete List</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"companydetails.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Company Details</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"CheckIn.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Guest Check In</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"checkout.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Guest Check Out</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"guestcompanies.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Guest Companies</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"monthlymandays.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Monthly Mandays Reports</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
                    
                    
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                        <span class=\"title\">Company Registration</span>\n" +
"                                        <span class=\"arrow\"></span>\n" +
"                                    </a>\n" +
"                                    <ul class=\"sub-menu\">\n" +
"                                        <li class=\"nav-item \">\n" +
"                                            <a href=\"registercompany.jsp\" class=\"nav-link \">New Company</a>\n" +
"                                        </li>\n" +
"                                        <li class=\"nav-item \">\n" +
"                                            <a href=\"pricingupdate.jsp\" class=\"nav-link \">Pricing Update</a>\n" +
"                                        </li>\n" +
"                                    </ul>\n" +
"                                </li>\n" +
"                                \n" +
"                            </ul>\n"+
"                        </li>\n");
            FoodMandaysMenu = (
                        "<li class=\"nav-item "+ active+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"fa fa-coffee\"></i>\n" +
"                                <span class=\"title\">Food Mandays</span>\n" +
"                                <span class=\"arrow\"></span>\n" +
"                            </a><!--\n" +
"-->                            <ul class=\"sub-menu\">\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"FoodOrder.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Food Order</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"foodreports.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">Monthly Report</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                            </ul>\n" +
"                        </li>\n" +
"                        ");
            SettingsMenu = (
                        "<li class=\"nav-item "+ active+" \">\n" +
"                            <a href=\"javascript:;\" class=\"nav-link nav-toggle\">\n" +
"                                <i class=\"icon-settings\"></i>" +
"                                <span class=\"title\">Settings</span>\n" +
"                                <span class=\"arrow\"></span>\n" +
"                            </a><!--\n" +
"-->                            <ul class=\"sub-menu\">\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"signupadmin.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">New Login Account</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                                <li class=\"nav-item  \">\n" +
"                                    <a href=\"users.jsp\" class=\"nav-link \">\n" +
"                                        <span class=\"title\">User Accounts</span>\n" +
"                                    </a>\n" +
"                                </li>\n" +
"                            </ul>\n" +
"                        </li>\n" +
"                        </li>");
        } catch (Exception ex) {
            Logger.getLogger(menuoutput.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
