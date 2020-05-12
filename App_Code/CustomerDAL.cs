using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerDAL
/// </summary>
public class CustomerDAL
{
    DataClassesDataContext dbContext = new DataClassesDataContext();
    public bool RegisterCustomer(string username, string password, string email, string contactNumber)
    {
        bool _isRegister = false;
        try
        {
            tbl_CustomerLogin loginObj = new tbl_CustomerLogin();
            loginObj.CustomerName = username;
            loginObj.Password = password;
            loginObj.CustomerEmail = email;
            loginObj.ContactNumber = contactNumber;
            dbContext.tbl_CustomerLogins.InsertOnSubmit(loginObj);
            dbContext.SubmitChanges();
            _isRegister = true;
        }
        catch (Exception ex)
        {

        }
        return _isRegister;
    }

    public tbl_CustomerLogin LoginCustomer(string username, string password)
    {
        tbl_CustomerLogin obj = null;
        try
        {
            tbl_CustomerLogin loginObj = new tbl_CustomerLogin();
            loginObj.CustomerEmail = username;
            loginObj.Password = password;

            var query = from p in dbContext.tbl_CustomerLogins
                        where p.CustomerEmail == loginObj.CustomerEmail && p.Password == loginObj.Password
                        select p;
            obj = query.FirstOrDefault();
        }
        catch(Exception ex)
        {

        }
        return obj;
    }


}