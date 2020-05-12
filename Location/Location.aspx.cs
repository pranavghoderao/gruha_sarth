using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Location_Location : System.Web.UI.Page
{
    LocationDAL obj = new LocationDAL();
    Vendor vobj = new Vendor();
    BookingDAL bobj = new BookingDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void getVendors(object sender, EventArgs e)
    {
        string latitude = lat.Value;
        string longitude = lon.Value;
        string ServiceType = Request.QueryString["ServiceType"];
        List<Vendor> vends = obj.getVendor(latitude, longitude,ServiceType);
        foreach (Vendor item in vends)
        {  
            
            ListItem litem = new ListItem(item.VendorName,Convert.ToString( item.VendorId));
            RadioButtonList1.Items.Add(litem);

        }
         
    }


    protected void updateCount(object sender, EventArgs e)
      {

        tbl_CustomerLogin cust = new tbl_CustomerLogin();
        int selectedVendorId = int.Parse(RadioButtonList1.SelectedItem.Value);
        Session["selectedVendor"]= selectedVendorId;
        cust =(tbl_CustomerLogin)Session["UserObj"];
        string custname = cust.CustomerName;
        string custemail = cust.CustomerEmail;
        string custcontact = cust.ContactNumber;
        string ServiceType = Request.QueryString["ServiceType"];
        bool _isBooked = bobj.BookingDetails( selectedVendorId,  custname,  custemail,  custcontact);
        List<Inovice> incl = bobj.GenerateInvoice(selectedVendorId, custname, custcontact, ServiceType);
        Inovice inc = incl.First();
        Session["Invoice"] = inc;
        Response.Redirect("../Invoice.aspx");

    }

    
}