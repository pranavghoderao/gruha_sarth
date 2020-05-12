<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Bookings" %>

<!DOCTYPE html>
<html>
<head>
    <title>Gruha Sarth a Home Website | About :: GruhaSarth</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Gruha Sarth a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
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
    </br>
    <h2 style="text-align: center;">Booking List </h2>
    </br>
    <div class="container-sm ,container-md,container-lg,container-xl">

        <form id="form1" runat="server">

            <div class="table-responsive">
                <asp:DataGrid ID="DataGrid1" class="table ,table table-hover" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Maroon" BorderWidth="2px" CellPadding="2" ForeColor="Black">
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:DataGrid>
            </div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Log Out." class="btn btn-outline-danger" OnClick="Logout" />
        </form>
    </div>

    <script src="js/jquery.min.v3.js"></script>
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <!-- Team -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script src="js/SmoothScroll.min.js"></script>

    <script src="js/easy-responsive-tabs.js"></script>
    <script>
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion           
                width: 'auto', //auto or any width like 600px
                fit: true,   // 100% fit in a container
                closed: 'accordion', // Start closed if in accordion view
                activate: function (event) { // Callback function if tab is switched
                    var $tab = $(this);
                    var $info = $('#tabInfo');
                    var $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();
                }
            });
            $('#verticalTab').easyResponsiveTabs({
                type: 'vertical',
                width: 'auto',
                fit: true
            });
        });
    </script>
    <!--//tabs-->
    <!--team-->
    <script type="text/javascript">
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 4,
                animationSpeed: 1000,
                autoPlay: false,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 3
                    }
                }
            });

        });
    </script>
    <script type="text/javascript" src="js/jquery.flexisel.js"></script>

    <!--team-->

    <!-- sign in and signup pop up toggle script -->
    <script>
        $('.toggle').click(function () {
            // Switches the Icon
            $(this).children('i').toggleClass('fa-pencil');
            // Switches the forms  
            $('.form').animate({
                height: "toggle",
                'padding-top': 'toggle',
                'padding-bottom': 'toggle',
                opacity: "toggle"
            }, "slow");
        });
    </script>
    <!-- sign in and signup pop up toggle script -->

    <!-- start-smoth-scrolling -->
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

            $().UItoTop({ easingType: 'easeOutQuart' });

        });
    </script>
    <!-- //here ends scrolling icon -->
    <!-- scrolling script -->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
    <!-- //scrolling script -->
    <!--//start-smoth-scrolling -->
</body>

</html>
