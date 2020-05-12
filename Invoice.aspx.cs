using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Invoice : System.Web.UI.Page
{
    protected string Custname { get; set; }
    protected string Custph { get; set; }
    protected string Vname { get; set; }
    protected string Vemail { get; set; }
    protected string Vph { get; set; }

    protected int Basic { get; set; }

    protected string Service { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {



        List<Inovice> incl = new List<Inovice>();
        BookingDAL bd = new BookingDAL();

        Inovice inc = (Inovice)Session["Invoice"];



        Custname = inc.CustName;
        Custph = inc.CustContact;
        Vname = inc.VenName;
        Vemail = inc.VenEmail;
        Vph = inc.VenContact;
        Basic = inc.Basic;
        Service = inc.ServiceType;



    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("Login.aspx");
    }


}