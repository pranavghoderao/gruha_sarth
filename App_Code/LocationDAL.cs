using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for LocationDAL
/// </summary>
public class LocationDAL
{
    LocationDBDataContext dbContext = new LocationDBDataContext();
    VendorDBDataContext vendorcontext = new VendorDBDataContext();
   
    CustomerLocation cloc = new CustomerLocation();
    static double toRadians(
           double angleIn10thofaDegree)
    {
        // Angle in 10th 
        // of a degree 
        return (angleIn10thofaDegree *
                       Math.PI) / 180;
    }

    static double distance(double lat1,
                           double lat2,
                           double lon1,
                           double lon2)
    {
        lon1 = toRadians(lon1);
        lon2 = toRadians(lon2);
        lat1 = toRadians(lat1);
        lat2 = toRadians(lat2);
        // Haversine formula  
        double dlon = lon2 - lon1;
        double dlat = lat2 - lat1;
        double a = Math.Pow(Math.Sin(dlat / 2), 2) +
                   Math.Cos(lat1) * Math.Cos(lat2) *
                   Math.Pow(Math.Sin(dlon / 2), 2);
        double c = 2 * Math.Asin(Math.Sqrt(a));
        // Radius of earth in  
        // kilometers. Use 3956  
        // for miles 
        double r = 6371;
        // calculate the result 
        return (c * r);
    }

   


   
   public List<Vendor> vname = new List<Vendor>();

    public List<Vendor>  getVendor(string lat, string lon,string ServiceType)
    {
        double custlat = Convert.ToDouble(lat);
        double custlon = Convert.ToDouble(lon);
       
        tbl_Location LocObj = new tbl_Location();
          
        var query = from l in dbContext.tbl_Locations
                  orderby l.VendorID
                      select l ;
        foreach(var vendor in query)
        {

            Vendor ven = new Vendor();
            //var v=vendor.Latitude;
            double venlat = Convert.ToDouble(vendor.Latitude);
            double venlon = Convert.ToDouble(vendor.Longitude);

            double dist = distance(venlon, custlon, venlat, custlat);

            var obj = (from r in vendorcontext.tbl_VendorLogins
                        where r.VendorID == vendor.VendorID
                        where r.MaxServiceDistance > dist
                        where r.VendorProfession.Equals(ServiceType)
                       
                        select r ).FirstOrDefault();
            
            if (obj != null)
            {
                ven.VendorName = obj.VendorName;
                ven.VendorProfesssion = obj.VendorProfession;
                ven.VendorId = obj.VendorID;
                ven.Basic =(int) obj.VisitingCharges;
                vname.Add(ven);
            }
        }
        
        return vname;    
    }
    
    public bool addLocationDetails(string lat, string lon,int id)
    {
        bool _isLocated = false;
        try  
        {
            tbl_Location locObj = new tbl_Location();
            locObj.Latitude = lat;
            locObj.Longitude = lon;
            locObj.VendorID = id;
            locObj.CustomerID = 0;
            
            dbContext.tbl_Locations.InsertOnSubmit(locObj);
            dbContext.SubmitChanges();
            _isLocated= true;
        }
        catch (Exception ex)
        {

        }
        return _isLocated;
    }
 
}