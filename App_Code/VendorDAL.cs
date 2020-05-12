using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for VendorDAL
/// </summary>
public class VendorDAL
{
    VendorDBDataContext dbContext = new VendorDBDataContext();
    public bool RegisterVendor(string username, string password, string email, string contactNumber)
    {
        bool _isRegister = false;
        try
        {
            tbl_VendorLogin loginObj = new tbl_VendorLogin();
            loginObj.VendorName = username;
            loginObj.VendorPassword = password;
            loginObj.VendorEmail = email;
            loginObj.VendorContact = contactNumber;
            //   loginObj.VendorProfession= profession;
            //  loginObj.VisitingCharges = 100;
            //  loginObj.MaxServiceDistance = 20;

            dbContext.tbl_VendorLogins.InsertOnSubmit(loginObj);
            dbContext.SubmitChanges();
            _isRegister = true;
        }
        catch (Exception ex)
        {

        }
        return _isRegister;
    }



    public tbl_VendorLogin LoginVendor(string username, string password)
    {
        tbl_VendorLogin obj = null;
        try
        {
            tbl_VendorLogin loginObj = new tbl_VendorLogin();
            loginObj.VendorEmail = username;
            loginObj.VendorPassword = password;

            var query = from p in dbContext.tbl_VendorLogins
                        where p.VendorEmail == loginObj.VendorEmail && p.VendorPassword == loginObj.VendorPassword
                        select p;
            obj = query.FirstOrDefault();
        }
        catch (Exception ex)
        {

        }
        return obj;
    }

    

    public bool addExtraDetail(string profession, int maxD, int visitCharge, int id)
    {
        bool _isAdded = false;

        try
        {
            tbl_VendorLogin loginObj = new tbl_VendorLogin();
            loginObj.VendorProfession = profession;
            loginObj.MaxServiceDistance = maxD;
            loginObj.VisitingCharges = visitCharge;
            loginObj.VendorID = id;

            var query = from ord in dbContext.tbl_VendorLogins
                        where ord.VendorID == id
                        select ord;

            // Execute the query, and change the column values
            // you want to change.
            foreach (tbl_VendorLogin ord in query)
            {
                ord.VendorProfession = loginObj.VendorProfession;
                ord.MaxServiceDistance = loginObj.MaxServiceDistance;
                ord.VisitingCharges = loginObj.VisitingCharges;
                // Insert any additional changes to column values.
            }

            // Submit the changes to the database.


            dbContext.SubmitChanges();
            _isAdded = true;
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            // Provide for exceptions.
        }

            

        return _isAdded;
    }

}