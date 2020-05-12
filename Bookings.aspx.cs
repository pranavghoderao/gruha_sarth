using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bookings : System.Web.UI.Page
{
    BookingDAL bobj = new BookingDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_VendorLogin vl = new tbl_VendorLogin();
        vl = (tbl_VendorLogin)Session["UserObj"];
        int id = vl.VendorID;
        List<Booking> book = bobj.showBooking(id);
        DataTable table = new DataTable();

        table.Columns.Add("Customer Name");
        table.Columns.Add("Email");
        table.Columns.Add("Contact");

        foreach (var obj in book)
        {
            table.Rows.Add( obj.CustName,obj.CustEmail,obj.CustContact);
        }
        DataGrid1.DataSource = table;
        DataGrid1.DataBind();
    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("Login.aspx");
    }

}