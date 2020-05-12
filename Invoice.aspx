<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>


<!DOCTYPE html>
<html>
<head>
    <title>Gruha Sarth a Home Service  Website Template </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Gruha Sarth a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="../css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="../css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
    <style>
        .mar {
            margin-left: 5px;
            margin-right: 5px;
            margin-top: 5px;
        }
        #logout_button {
            text-align: center;        
        }
    </style>
</head>
<body style="height: 573px; width: 1407px; margin-bottom: 15px">

    <div style="padding-left: 10%">

        <br />
        <br />
        <form id="form1" class="form-group" runat="server">
            <div class="form-group">
                <div style="border: double">
                    <h2 style="text-align: left; background-color: #FF9224;">Invoice</h2>
                <div>
                    <div style="float: left; width: 623px; height: 223px;">
                        <table class="table table-borderless">
                            <tr>
                                <th style="background-color: #FFD6C1">Bill To: </th>
                            </tr>
                            <tr>
                                <td style="background-color: #FFD6C1">Customer Name: <% =Custname %></td>
                            </tr>
                            <tr>
                                <td style="background-color: #FFD6C1">Customer Contact:  <% =Custph %>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div style="margin-left: 50%">

                        <table class="table table-borderless">
                            <tr>
                                <th style="background-color: #FFD6C1">Vendor Details</th>
                            </tr>
                            <tr>
                                <td style="background-color: #FFD6C1">Vendor Name: <% =Vname %></td>
                            </tr>
                            <tr>
                                <td style="background-color: #FFD6C1">Vendor Contact:  <% =Vph %></td>
                            </tr>
                            <tr>

                                <td style="background-color: #FFD6C1">Vendor Email: <% =Vemail %></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <table class="table table-borderless">
                    <tr>
                        <td>Selected Service: <% =Service %></td>
                    </tr>

                    <tr>
                        <td>Visiting Charges: <% =Basic %></td>
                    </tr>
                </table>
                <br />
                <p>This is Computer Generated Bill and Do Not Require Signature.</p>
            </div>
            <br />
            <br />

            <script>
                var lat = document.getElementById("lat");
                var longs = document.getElementById("lon");

                function getLocation() {
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(showPosition);
                    } else {
                        lat.innerHTML = "Geolocation is not supported by this browser.";
                    }
                }

                             
                function showPosition(position) {
                    lat.value = position.coords.latitude;

                    longs.value = position.coords.longitude;
                }

                function getbill() {
                    window.print();
                }
            </script>
            <div id="logout_button">
            <asp:Button ID="Button1" runat="server" Text="Log Out." class="btn btn-outline-danger" OnClick="Logout" Height="39px" Width="163px" />
                 <button class="btn btn-outline-info" onclick="getbill(); return false;" >Print Invoice</button>
                 <a class="btn btn-outline-info" href="CustomerHome.aspx">Choose Another Service</a>
            </div>
            </div>
        </form>
        

    </div>

</body>
</html>
