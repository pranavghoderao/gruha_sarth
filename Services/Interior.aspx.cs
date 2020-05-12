using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Interior : System.Web.UI.Page
{
    QuesionDAL qd = new QuesionDAL();

    string ServiceType = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        IEnumerable<string> data = qd.getList(5);
        ServiceType = Request.QueryString["Servicetype"];
        DataTable table = new DataTable();

        table.Columns.Add("Pick Service");
        table.Columns.Add("Services");

        foreach (var obj in data)
        {
            table.Rows.Add("<input type='checkbox' name='" + obj + "' >", obj);
        }

        DataGrid1.DataSource = table;
        DataGrid1.DataBind();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Session["ServiceType"] = "ServiceType";
        Response.Redirect("../Location/Location.aspx?ServiceType=" + ServiceType);
    }
}