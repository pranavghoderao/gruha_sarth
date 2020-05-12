using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserObj"] != null)
        {
            string userType = Convert.ToString(Session["UserType"]);
            if (!userType.Equals("Customer"))
            {
                Response.Redirect("UnAuthorized.aspx");
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}
