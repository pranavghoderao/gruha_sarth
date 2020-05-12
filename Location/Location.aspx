<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location_Location" %>

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

        ::placeholder {
            color: lightsteelblue;
        }

        #lat {
            border: 2px solid #555;
            border-radius: 8px;
        }

        #lon {
            border: 2px solid #555;
            border-radius: 8px;
        }

        #pp {
            text-align: center;
            padding: 25px;
            border-radius: 12px;
            margin-right: 20%;
            margin-left: 20%;
            background-color: #DCDCDC;
        }

        #sp {
            text-align: center;
            width: 131px;
            margin-left: 385px;
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
    <div class="container-sm ,container-md,container-lg,container-xl">


        <form runat="server" id="form1" class="form-group">
            <br />
            <br />
            <div id="pp">
                <div>
                    <button type="button" class="btn btn-dark" onclick="getLocation(); return false;">Get My location</button>
                    <br />
                    <br />
                    <input type="text" id="lat" name="lat" align="center" runat="server" placeholder="  Latitude" />
                    <br />
                    <br />
                    <input type="text" id="lon" name="long" runat="server" placeholder="  Longitude" />
                    <br />
                    <br />
                    <asp:Button ID="Btn_getVendor" runat="server" class="btn btn-dark" Text="GetVendors" OnClick="getVendors" />
                </div>
                <div>
                    <div id="sp">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
                    </div>
                    <br />
                    <asp:Button ID="Button1" runat="server" class="btn btn-dark" Text="Generate Invoice" OnClick="updateCount" />
                </div>
            </div>
            <br/>
        </form>
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
