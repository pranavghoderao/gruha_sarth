using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookingDAL
/// </summary>
public class BookingDAL
{
    BookingDBDataContext dbContext = new BookingDBDataContext();
    VendorDBDataContext vbContext = new VendorDBDataContext();


    public BookingDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool BookingDetails(int selectedVendorId, string custname, string custemail, string custcontact)
    {
        bool _isBooked = false;
        try
        {
            tbl_BookingDetail BookingObj = new tbl_BookingDetail();
            BookingObj.VendorID = selectedVendorId;
            BookingObj.CustName = custname;
            BookingObj.CustEmail = custemail;
            BookingObj.CustContact = custcontact;
            dbContext.tbl_BookingDetails.InsertOnSubmit(BookingObj);
            dbContext.SubmitChanges();
            _isBooked = true;
        }
        catch (Exception ex)
        {

        }
        return _isBooked;
    }

    public List<Booking> vname = new List<Booking>();

    public List<Booking> showBooking(int vid)
    {


        tbl_BookingDetail BObj = new tbl_BookingDetail();

        var obj = (from r in dbContext.tbl_BookingDetails
                   where r.VendorID == vid
                   select r);
        foreach (var Booking in obj)
        {
            Booking b = new Booking();

            if (Booking != null)
            {
                b.CustName = Booking.CustName;
                b.CustEmail = Booking.CustEmail;
                b.CustContact = Booking.CustContact;
                b.VendorId = (int)Booking.VendorID;
                vname.Add(b);
            }
        }

        return vname;
    }

    public Inovice inc = new Inovice();
    public List<Inovice> incl = new List<Inovice>();
    public List<Inovice> GenerateInvoice(int selectedVendorId, string custname, string custcontact, string ServiceType)
    {

        bool _isinvoice = false;
        tbl_VendorLogin vObj = new tbl_VendorLogin();
        var obj = (from r in vbContext.tbl_VendorLogins
                   where r.VendorID == selectedVendorId
                   select r).FirstOrDefault();
        inc.VenName = obj.VendorName;
        inc.VenEmail = obj.VendorEmail;
        inc.VenContact = obj.VendorContact;
        inc.Basic = (int)obj.VisitingCharges;
        inc.CustName = custname;
        inc.CustContact = custcontact;
        inc.ServiceType = ServiceType;
        incl.Add(inc);
        _isinvoice = true;
        return incl;
    }



}