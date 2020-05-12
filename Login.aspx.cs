using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    CustomerDAL obj = new CustomerDAL();
    VendorDAL vobj = new VendorDAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Username.Value;
        string password = Password.Value;
        string contact = Phone.Value;
        string email = Email.Value;
        bool crealm = CRealm.Checked;
        bool vrealm = VRealm.Checked;

        Console.WriteLine( "crealm: "+crealm);
        Console.WriteLine("vrealm: " + vrealm);
        if (crealm==true && CRealm.Value.Equals("customer"))
        {
            bool _isRegister = obj.RegisterCustomer(username, password, email, contact);
            if (_isRegister)
            {
                lbl_Message.Text = "Registered Successfully!!! :)";
                lbl_Message.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lbl_Message.Text = "Something Went Wrong!!! :)";
                lbl_Message.ForeColor = System.Drawing.Color.Red;
            }

        }
        else
        {
            bool _isRegister = vobj.RegisterVendor(username, password, email, contact);
            if (_isRegister)
            {
                lbl_Message.Text = "Registered Successfully!!! :)";
                lbl_Message.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lbl_Message.Text = "Something Went Wrong!!! :)";
                lbl_Message.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = Username1.Value;
        string password = Password1.Value;
        bool CLog = cLog.Checked;
        bool VLog = vLog.Checked;


        if (CLog == true && cLog.Value.Equals("customer"))
        {
            tbl_CustomerLogin _isLogin = obj.LoginCustomer(username, password);
            if (_isLogin != null)
            {
                Session["UserObj"] = _isLogin;
                if (CRealm.Checked)
                    Session["UserType"] = "Customer";
                
                Response.Redirect("CustomerHome.aspx");
              //  lbl_Message1.Text = _isLogin.CustomerID; //"Login Successfully!!! :)";
                lbl_Message1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {

                lbl_Message1.Text = "Login Failed. Please Verify Your Credentials!!! :)";
                lbl_Message1.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {

            tbl_VendorLogin _isLogin = vobj.LoginVendor(username, password);
            if (_isLogin != null)
            {
                Session["UserObj"] = _isLogin;
                if (VRealm.Checked)
                    Session["UserType"] = "Vendor";
                Response.Redirect("VendorHome.aspx");
                lbl_Message1.Text = "Vendor Logged in !!!";
                lbl_Message1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {

                lbl_Message1.Text = "Login Failed. Please Verify Your Credentials!!! :)";
                lbl_Message1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

}