﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Contact US | Advanced Informatics</title>
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="favicons/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="favicons/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="favicons/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="favicons/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="favicons/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="favicons/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="favicons/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="favicons/apple-touch-icon-152x152.png" />
    <link rel="icon" type="image/png" href="favicons/favicon-196x196.png" sizes="196x196" />
    <link rel="icon" type="image/png" href="favicons/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="favicons/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicons/favicon-16x16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="favicons/favicon-128.png" sizes="128x128" />
    <meta name="application-name" content="&nbsp;"/>
    <meta name="msapplication-TileColor" content="#FFFFFF" />
    <meta name="msapplication-TileImage" content="mstile-144x144.png" />
    <meta name="msapplication-square70x70logo" content="mstile-70x70.png" />
    <meta name="msapplication-square150x150logo" content="mstile-150x150.png" />
    <meta name="msapplication-wide310x150logo" content="mstile-310x150.png" />
    <meta name="msapplication-square310x310logo" content="mstile-310x310.png" />
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/home.css" rel="stylesheet"/>
    <link href="css/responsive.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
<!-- plugins -->
<!-- owl -->
    <link href="plugins/owl/owl.carousel.css" rel="stylesheet">
    <link href="plugins/owl/owl.theme.css" rel="stylesheet">
</head>
<body>
   <header id="header">

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../"><img src="images/logo.png" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="../">Home</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sap Services <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="sap-consultancy.html">SAP Consultancy</a></li>
                                <li><a href="sap-support-services.html">SAP Support</a></li>
                                <li><a href="sap-implementation.html">SAP Implementation</a></li>
                                <li><a href="sap-training.html">SAP Training</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IT Services <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="it-outsourcing.html">IT Outsourcing</a></li>
                                <li><a href="web-development.html">Web Development</a></li>
                                <li><a href="mobile-development.html">Mobile Development</a></li>
                                <li><a href="web-design.html">Web Design</a></li>
                                <li><a href="systems-integration.html">Systems Integration</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Solutions <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="AI-sms.html">AI SMS</a></li>
                                <li><a href="AI-ess.html">AI ESS</a></li>
                                <li><a href="AI-pos.html">AI POS</a></li>
                            </ul>
                        </li>
                        <li><a href="carrers.aspx">Careers</a></li> 
                        <li><a href="contactus.aspx">Contact Us</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header>

    <section id="contact-info" class="contact-section top-space-inner ">
        <div class="center">
            <h2>Get in Touch</h2>
            <p class="lead">
                Tell Us What You Feel ,

                Feel Free To Contact Us Anytime
            </p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                               <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1855.2330664907515!2d39.1762712!3d21.5677207!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x98f3075cac8d73f5!2z2LPZiNio2LEg2YXYp9ix2YPYqiDZiNmD2KfZgdmK2Ycg2KjYsdmK2YXZiA!5e0!3m2!1sen!2ssa!4v1443687255133"></iframe>
                            
                             </div>
                    </div>
                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li>
                                <img class="pull-left" src="images/flags/Saudi-Arabia-Flag-icon.png" alt="Saudi Arabia" />
                                <address>
                                    <h4>Saudi Arabia</h4>
                                    <p>Alfisaliah Districts, Emam Mohamed Bin Abdulaziz St., Building 90, office 106</p>
                                    <p> <strong>Phone: </strong> +966 12 2256256 <strong> Ext : 1126</strong></p>
                                </address>
                             </li>
                            <li>
                                <img class="pull-left" src="images/flags/Egypt-Flag-icon.png" alt="Egypt" />
                                <address>
                                    <h4>Egypt</h4>
                                    <p>Jeddah Al-Andalus - Prince Mohammed bin abdulaziz Street </p>
                                    <p>Phone: +966-553370180</p>
                                    <p>Mobile: +966-553370180 </p>
                                </address>
                            </li>
                           <%-- <li>
                                
                                <img class="pull-left" src="images/flags/Germany-Flag-icon.png" alt="Germany" />
                                <address>
                                    <h4>Germany</h4>
                                    <p>Jeddah Al-Andalus - Prince Mohammed bin abdulaziz Street </p>
                                    <p>Phone: +966-553370180</p>
                                    <p>Mobile: +966-553370180 </p>
                                </address>
                            </li>--%>
                          <%--  <li>
                               
                                <img class="pull-left" src="images/flags/Italy-Flag-icon.png" alt="Italy" />
                                <address>
                                    <h4>Italy</h4>
                                    <p>Jeddah Al-Andalus - Prince Mohammed bin abdulaziz Street </p>
                                    <p>Phone: +966-553370180</p>
                                </address>
                            </li>--%>
                            <%--<li>
                                
                                <img class="pull-left" src="images/flags/Netherlands-Flag-icon.png" alt="Netherlands" />
                                <address>
                                    <h4>Holland</h4>
                                    <p>Jeddah Al-Andalus - Prince Mohammed bin abdulaziz Street </p>
                                    <p>Phone: +966-553370180</p>
                                </address>
                            </li>--%>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->
   


        <contact:contactus runat="server" id="contactform" />



    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                     &copy; 2015 Advanced Informatics. All Rights Reserved
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right social-share">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
<!-- plugins -->
<!-- owl -->
<script src="plugins/owl/owl.carousel.js"></script>

</body>
</html>
