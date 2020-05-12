﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Services_Carpainter : System.Web.UI.Page
{
    QuesionDAL qd = new QuesionDAL();

    string ServiceType = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        ServiceType = Request.QueryString["Servicetype"];
        IEnumerable<string> data = qd.getList(3);

        DataTable table = new DataTable();

        table.Columns.Add("Pick Service");
        table.Columns.Add("Services");

        foreach (var obj in data)
        {
            table.Rows.Add("<input type='checkbox' name='"+obj+"' >",obj) ;
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