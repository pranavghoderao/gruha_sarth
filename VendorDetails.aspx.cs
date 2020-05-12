using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorDetails : System.Web.UI.Page
{

    VendorDAL vd = new VendorDAL();
    LocationDAL ld = new LocationDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void setVendorsDetail(object sender, EventArgs e)
    {

        tbl_VendorLogin vl = new tbl_VendorLogin();
        vl = (tbl_VendorLogin)Session["UserObj"];
        int id = vl.VendorID;
        // string profession = Realm.Value;
        int msd=0;
        String Profession = null;
        string latitude = lat.Value;
        string longitude = lon.Value;

        int basic = 0;
        bool plumbing = Plumbing.Checked;
        if (plumbing)
        {
             Profession = Plumbing.Value;
        }

        bool electical = Electrical.Checked;
        if (electical)
        {
             Profession = Electrical.Value;
        }

        bool carpentry = Carpentry.Checked;
        if (carpentry)
        {
             Profession = Carpentry.Value;
        }


        bool painting = Painting.Checked;
        if (painting)
        {
            Profession = Painting.Value;
        }


        bool interior = Interior_Design_Decorating.Checked;
        if (interior)
        {
            Profession = Interior_Design_Decorating.Value;
        }

        bool one = One.Checked;
        if (one)
        {
            msd = int.Parse(One.Value);
        }

        bool two = Two.Checked;
        if (two)
        {
            msd = int.Parse(Two.Value);
        }
        bool three = Three.Checked;
        if (three)
        {
            msd = int.Parse(Three.Value);
        }
        bool four = Four.Checked;
        if (four)
        {
            msd = int.Parse(Four.Value);
        }

        basic = int.Parse(Basic.Value);

     bool   is_feed = vd.addExtraDetail(Profession, msd, basic, id);
        bool is_located = ld.addLocationDetails(latitude,longitude,id);

        Response.Redirect("VendorHome.aspx");

    }
}