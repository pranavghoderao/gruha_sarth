<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="PestControl.aspx.cs" Inherits="Services_PestControl" %>

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
<link href="../css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
    <style>
        .mar
        {
            margin-left:5px;
            margin-right:5px;
            margin-top:5px;
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
						<div class="slider1-img" style="height:5%">
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

    <form id="form1" runat="server">  
  <div class="table-responsive ,m-lg-4,m-sm-4,m,font-weight-bold,fa-2x,font">
            
            <asp:DataGrid ID="DataGrid1" class="table ,table table-hover"  runat="server" Font-Size="16pt" BackColor="#DEBA84" BorderColor="Maroon" BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"> 
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" Font-Size="18pt" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>  
            <div class="card-body"> 
                <asp:LinkButton ID="LinkButton2" class="btn btn-outline-info" OnClick="LinkButton2_Click " runat="server">Get Your Location</asp:LinkButton>

                
            </div>
             
        </div>  
    </form>
        </div>
    <!-- Footer-->
<section class="footer">
<div class="container">
<h3>Gruha Sarth</h3>
     <div class="wrapper">
<ul class="social-icons icon-circle icon-zoom list-unstyled list-inline"> 
<li> <a href="#"><i class="fab fa-facebook-f"></i></a></li> 
<li> <a href="#"><i class="fab fa-twitter"></i></a></li> 
<li> <a href="#"><i class="fab fa-linkedin-in"></i></a></li>
</ul>
</div>
<div class="copyright">
			<p>© 2018 Gruha Sarth. All Rights Reserved | Design by <a href="https://w3layouts.com/">GruhaSarth
			                                                       </a></p>
			
		</div>
	</div>
</section>
<!-- /Footer-->

</body>  
    </html>