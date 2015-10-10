<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Home | Advanced Informatics</title>
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
    <link href="css/hover-min.css" rel="stylesheet"/>
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
    <link href="plugins/owl/owl.carousel.css" rel="stylesheet"/>
    <link href="plugins/owl/owl.theme.css" rel="stylesheet"/>
</head>
<body class="homepage">
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
        
    </header><!--/header-->

    <!--Start Main Slider -->
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
                <li data-target="#main-slider" data-slide-to="3"></li>
                <li data-target="#main-slider" data-slide-to="4"></li>
                <li data-target="#main-slider" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">

              

                <div id="slide-1" class="item b-bg active" style="background-image: url(images/slide1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Reduce your SAP support costs by 50%</h1>
                                    <h2 class="animation animated-item-2">Advanced Informatics helps you Reducing SAP Support Costs without Sacrificing Quality that help you improve business performance. Advanced Informatics provides SAP support for all SAP Modules both in English and Arabic.</h2>
                                    
                                    <a class="btn-slide animation animated-item-3" href="sap-support-services.html">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->


                <div id="slide-2" class="item w-bg" style="background-image: url(images/slide2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">SAP Solution Implementation Services </h1>
                                    <h2 class="animation animated-item-2">Advanced Informatics delivers end-to-end SAP implementation services, covering full integration based on SAP implementation methodologies that provide advanced industry knowledge using highly qualified resources for SAP applications implementations.</h2>
                                    <a class="btn-slide animation animated-item-3" href="sap-implementation.html">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img2.png" class="img-responsive"> -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div id="slide-3" class="item w-bg" style="background-image: url(images/slide3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">SAP Consulting Services</h1>
                                    <h2 class="animation animated-item-2">Advanced Informatics brings you new technology implementation on a whole new level. Whether you’re looking to start utilizing the cloud, trying to streamline your business analytics or deploy new technology across your business, we use SAP software to make your transition and business transformation as seamless as possible. With real-time insights across your business.</h2>
                                    
                                    <a class="btn-slide animation animated-item-3" href="sap-consultancy.html">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img1.png" class="img-responsive"> -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div id="slide-4" class="item w-bg" style="background-image: url(images/slide4.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6 pull-right">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Mobile App Intelligence, Right at Your Fingertips</h1>
                                    <h2 class="animation animated-item-2">Advanced Informatics helps you create compelling and profitable user experiences in your business critical mobile apps.</h2>
                                    <a class="btn-slide animation animated-item-3" href="mobile-development.html">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img2.png" class="img-responsive"> -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div id="slide-5" class="item w-bg" style="background-image: url(images/slide5.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Web Development</h1>
                                    <h2 class="animation animated-item-2">Is not only a combination of contents and images put together and hosted online as a lot of people believe. We work closely with our clients and understand their needs, consider their existing branding and study the market they are into for developing a website. We also see to it that our clients never face issues with navigation, usability thus we test and re-test to assure that the site works without any glitch this forms a part of our after sales services.</h2>
                                    <a class="btn-slide animation animated-item-3" href="web-development.html">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img2.png" class="img-responsive"> -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div id="slide-6" class="item b-bg" style="background-image: url(images/slide6.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6 pull-right">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">IT Outsourcing Services </h1>
                                    <h2 class="animation animated-item-2">We are here to help you succeed in all areas of your business. Though not the core of your business, IT functions play a significant role and are ultimately a large factor in your success. However, we don’t just offer IT outsourcing to help you run smoothly and efficiently. We first assess performance and process to determine what parts of your business need a boost, and then customize a plan for outsourcing where you need it most.</h2>
                                    <a class="btn-slide animation animated-item-3" href="it-outsourcing.html">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img2.png" class="img-responsive"> -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!--End Main Slider -->

    <!-- Start Section About -->
    <section id="about" class="text-center wow bounceIn" data-wow-duration="2s" data-wow-offset="200">
        <div class="container">
            <h1>About Us</h1>
            <p class="lead"> We are a leading company in the IT field, we have our philosophy in the management of our resources which enable us to provides a high quality services in competitive price. That helping our customers innovate and compete in today’s changing economy. We provide proven enterprise software solutions and services to keep your business on the pathway to long-term success.</p>
        </div>
    </section>
    <!-- End Section About -->

    
    <!-- Start Section Our Team -->
    <section id="our-team" class="our-team text-center">
        <div class="team wow fadeInDown" data-wow-duration="2s" data-wow-offset="400">
            <div class="container">
                <h2 class="h1">SAP Services</h2> <br /><br /><br />
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <a href="sap-consultancy.html">
                            <div class="person hvr-pulse">
                                <i class="fa fa-cubes fa-5x"></i>
                                <h2>Consultancy</h2>
                                <p class="lead">We help businesses think ahead,and tap the maximum potential of SAP applications</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <a href="sap-support-services.html">
                            <div class="person hvr-pulse">
                                <i class="fa fa-life-ring fa-5x"></i>
                                <h2>Support</h2>
                                <p class="lead">Once an IT solution is in place, you need to continuously improve your IT solution landscape</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <a href="sap-implementation.html">
                            <div class="person hvr-pulse">
                                <i class="fa fa-pie-chart fa-5x"></i>
                                <h2>Implementation</h2>
                                <p class="lead">We provide a complete package of services for full cycle SAP implementation projects.</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <a href="sap-training.html">
                            <div class="person hvr-pulse">
                                <i class="fa fa-users fa-5x"></i>
                                <h2>Training</h2>
                                <p class="lead">For SAP end-user and project teams, we offer corporate training on standard courses.</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section Our Team -->
    
    <!-- Start Section Testimonials -->
    <!--<section id="testimonials" class="testimonials text-center wow flipInY" data-wow-duration="2s" data-wow-offset="300">
        <div class="container">
            <h2 class="h1"> What Our Clients Say </h2>
            <div id="mytestimonials" class="carousel slide" data-ride="carousel">-->


                <!-- Wrapper for slides -->
                <!--<div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <p class="lead">Transition animations not supported in Internet Explorer 8 & 9Bootstrap exclusively uses CSS3 for its animations, but Internet Explorer 8 & 9 don't support the necessary CSS properties. Thus, there are no slide transition animations when using these browsers. We have intentionally decided not to include jQuery-based fallbacks for the transitions.</p>
                        <span>Ahmed Ali</span>
                    </div>
                    <div class="item">
                        <p class="lead">Transition animations not supported in Internet Explorer 8 & 9Bootstrap exclusively uses CSS3 for its animations, but Internet Explorer 8 & 9 don't support the necessary CSS properties. Thus, there are no slide transition animations when using these browsers. We have intentionally decided not to include jQuery-based fallbacks for the transitions.</p>
                        <span>Mostafa Said</span>
                    </div>
                    <div class="item">
                        <p class="lead">Transition animations not supported in Internet Explorer 8 & 9Bootstrap exclusively uses CSS3 for its animations, but Internet Explorer 8 & 9 don't support the necessary CSS properties. Thus, there are no slide transition animations when using these browsers. We have intentionally decided not to include jQuery-based fallbacks for the transitions.</p>
                        <span>Hala Mohammed</span>
                    </div>
                    <div class="item">
                        <p class="lead">Transition animations not supported in Internet Explorer 8 & 9Bootstrap exclusively uses CSS3 for its animations, but Internet Explorer 8 & 9 don't support the necessary CSS properties. Thus, there are no slide transition animations when using these browsers. We have intentionally decided not to include jQuery-based fallbacks for the transitions.</p>
                        <span>Eman Ismail</span>
                    </div>
                </div>-->


                <!-- Indicators -->
                <!--<ol class="carousel-indicators">
                    <li data-target="#mytestimonials" data-slide-to="0" class="active"><img class="circle" src="images/avatar_01.jpg" width="74" height="74" alt="Ibrahim" /></li>
                    <li data-target="#mytestimonials" data-slide-to="1"><img src="images/avatar_02.jpg" width="74" height="74" alt="Khaled" /></li>
                    <li data-target="#mytestimonials" data-slide-to="2"><img src="images/avatar_03.jpg" width="74" height="74" alt="Osama" /></li>
                    <li data-target="#mytestimonials" data-slide-to="3"><img src="images/avatar_04.jpg" width="74" height="74" alt="Mohammed" /></li>
                </ol>
            </div>
        </div>
    </section>-->
    <!-- End Section Testimonials -->


    <!-- Start Section Statistics -->
    <!--<section id="statistics" class="statistics text-center">
        <div class="data">
            <div class="container">
                <h2 class="h1">Our Statistics</h2>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="stats">
                            <i class="fa fa-users fa-5x"></i>
                            <p>9,550</p>
                            <span> Satisfied Users </span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stats">
                            <i class="fa fa-comments fa-5x"></i>
                            <p>25,600</p>
                            <span> Posted Comments </span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stats">
                            <i class="fa fa-suitcase fa-5x"></i>
                            <p>3,250</p>
                            <span> Project Done </span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stats">
                            <i class="fa fa-ticket fa-5x"></i>
                            <p>95,487</p>
                            <span> Tickets Archieved </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- END Section Statistics -->

    <!-- Start Section Our Skills -->
    <section id="our-skills" class="our-skills">
        <div class="container">
            <h2 class="h1 text-center">Our Skills</h2>
            <div class="row">
                <div class="col-md-5">
                    <div class="skills-progress wow fadeInDown">
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%;">FICO –MM –SD –QM –PP –CRM –PS –PM –HR </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%;">BASIS –HANA –SolMan –ABAP –Adobe Forms</div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%;">Asp.net –MVC –JQuery –WCF –BootStrap </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%;">Android –IOS –Windows mobile </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="skills-info wow fadeInDown">
                        <h2>About The Team</h2>
                        <p class="lead">Our team consists of senior, focused and very skilled consultants. With this level of talent we have developed a track record of delivering projects on time and on budget while providing superior solutions that exceed our client’s expectations.</p>
                        <a href="about.html" class="btn btn-primary">Talk With A Professional</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section Our Skills -->

    <!-- Start Section Services -->
    <section id="services" class="service-item ">
        <div class="container">
            <div class="center  wow zoomInDown">
                <h2> IT Services </h2>
                <p class="lead">Offers a wide range of information Technology services using various platforms and technologies.</p>
            </div>

            <div class="row">
                <a href="it-outsourcing.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <i class="fa fa-cogs"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">IT Outsourcing</h3>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="web-development.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <i class="fa fa-code"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">Web Development</h3>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="systems-integration.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                
                                <i class="fa fa-recycle"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">System Integration</h3>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="web-design.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <i class="fa fa-paint-brush"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">Web design</h3>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="mobile-development.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                
                                <i class="fa fa-mobile"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">Mobile Applications</h3>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="web-hosting.html">
                    <div class="col-sm-6 col-md-4">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <i class="fa fa-database"></i>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">Web Hosting</h3>
                            </div>
                        </div>
                    </div>
                </a>
</div><!--/.row-->
        </div><!--/.container-->
    </section>
    <!-- End Section Services -->


    <!-- Start Section Subscribe -->
    <section id="subscribe" class="subscribe text-center">
        <div class="container wow fadeInUp" data-wow-duration="1s" data-wow-offset="200">
            <h2 class="h1">Keep In Touch</h2>
            <p class="lead">Sign Up For Newsletter Dont Worry About Spam We Hate It Too.</p>
            <div class="form-inline">
                <input type="text" class="form-control input-lg" placeholder="Write Your Email" required="required" />
                <button class="btn btn-primary btn-lg"> <i class="fa fa-edit fa-lg"></i>  Subscribe </button>
            </div>
        </div>
        <br />
    </section>
    <!-- END Section Subscribe -->


    <contact:contactus runat="server" id="maincontact" />



    <!-- Start Section Our Clients -->
    <!--<section class="our-clients">
        <div class="container">
            <div class="row">
                <ul class="list-unstyled">
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/bbc.png" alt="BBC"></li>
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/cnn.png" alt="CNN"></li>
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/forbes.png" alt="FORBES"></li>
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/wired.png" alt="WIRED"></li>
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/wsj.png" alt="WSJ"></li>
                    <li class="col-md-2 col-xs-4"><img class="img-responsive center-block" src="images/clients/techradar.png" alt="TECHRADAR"></li>
                </ul>
            </div>
        </div>
    </section>-->
    <!-- End Section Our Clients -->

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
    <script>
        new WOW().init();
    </script>

<!-- plugins -->
<!-- owl -->
<script src="plugins/owl/owl.carousel.js"></script>
<script type="text/javascript">
    $('.news').owlCarousel({
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true,
        pagination: true,
        autoPlay: true,
    });
</script>
</body>
</html>

