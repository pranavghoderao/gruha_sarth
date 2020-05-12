<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="VendorDetails.aspx.cs" Inherits="VendorDetails" %>



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

        #lat {
            border: 2px solid #555;
            border-radius: 8px;
        }

        #lon {
            border: 2px solid #555;
            border-radius: 8px;
        }

        ::placeholder {
            color: lightsteelblue;
        }

        #mm {
            text-align: center;
            padding: 25px;
            border-radius: 12px;
            margin-right: 29%;
            margin-left: 10%;
            background-color: #DCDCDC;
        }

        #btn123 {
            text-align: center;
        }
        #btn234 {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <!-- header -->
        <div class="header-w3l">

            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="index.html">Gruha Sarth</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="Login.aspx">Home </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="Gallary.aspx">Gallery </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- //header -->

            <!-- banner -->
            <!-- banner-slider -->
            <div class="w3l_banner_info">
                <div class="slider1">
                    <div class="callbacks_container">
                        <ul class="rslides" id="slider3">
                            <li>
                                <div class="slider1-img" style="height: 5%">
                                    <div class="slider_banner_info">
                                    </div>
                                </div>
                            </li>


                        </ul>
                    </div>
                </div>
            </div>
            <!-- //banner-slider -->
        </div>
    </header>
    <div class="container-sm ,container-md,container-lg,container-xl" style="padding-left: 25%">


        <form runat="server" id="form1" class="form-group">
            <br />
            <br />
            <div id="mm">

                <div class="font-weight-normal, f-color, text-xl-left">
                    <br />
                    <br />
                    <h3 style="text-align: center">Add Following Details</h3>
                    <br />
                    <div id="btn234">
                        <button class="btn btn-dark" onclick="getLocation(); return false;">Get My location</button>
                    </div>
                    <br />
            
                    <div id="btn234">
                        <input type="text" id="lat" name="lat" runat="server" placeholder="  Latitude" />
                    </div>
                    <br />
                  
                    <div id="btn234">
                        <input type="text" id="lon" name="long" runat="server" placeholder="  Longitude" />
                    </div>
                  
                   
                    <br />


                    <asp:Label ID="lbl_Message" runat="server" Text=""></asp:Label>
                    <br />
                    <label for="Profession" runat="server" style="text-align:center">Choose Profession:</label>
                    <br />
                    <input type="radio" name="Realm" id="Plumbing" value="Plumbing" runat="server" /><label> Plumbing </label>
                    <br />
                    <input type="radio" name="Realm" id="Electrical" value="Electrical" runat="server" /><label>Electrical</label>
                    <br />
                    <input type="radio" name="Realm" id="Carpentry" value="Carpentry" runat="server" />
                    <label>Carpentry</label><br />
                    <input type="radio" name="Realm" id="Painting" value="Painting" runat="server" />
                    <label>Painting</label><br />
                    <input type="radio" name="Realm" id="Interior_Design_Decorating" value="Interior Design & Decorating" runat="server" />
                    <label>Interior Design & Decorating</label><br />
                    <input type="radio" name="Realm" id="Pest_Control" value="Pest Control" runat="server" />
                    <label>Pest Control</label><br />

                    <br />
                    <label>Maximum Serviceable Distance:</label><br />
                    <input type="radio" name="MaxDist" id="One" value="20" runat="server" /><label> 0-20 </label>
                    <br />
                    <input type="radio" name="MaxDist" id="Two" value="25" runat="server" /><label>0-25</label>
                    <br />
                    <input type="radio" name="MaxDist" id="Three" value="30" runat="server" /><label> 0-30 </label>
                    <br />
                    <input type="radio" name="MaxDist" id="Four" value="35" runat="server" /><label> 0-35 </label>
                    <br />

                    <label>Basic Visiting Charges:  </label>

                    <input type="number" name="basic" id="Basic" runat="server" />
                    <br />
                    <br />



                    <br />
                    <div id="btn123">
                        <asp:Button ID="Btn_getVendor" runat="server" class="btn btn-dark" Text="Submit Details" OnClick="setVendorsDetail" />
                    </div>
                </div>
            </div>
        </form>

        <br />
        <br />
    </div>

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


    </script>

    <!-- Footer-->
    <section class="footer">
        <div class="container">
            <h3>Gruha Sarth</h3>
            <div class="wrapper">
                <ul class="social-icons icon-circle icon-zoom list-unstyled list-inline">
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                </ul>
            </div>
            <div class="copyright">
                <p>
                    © 2018 Gruha Sarth. All Rights Reserved | Design by <a href="https://w3layouts.com/">GruhaSarth
                    </a>
                </p>

            </div>
        </div>
    </section>
    <!-- /Footer-->

</body>
</html>


