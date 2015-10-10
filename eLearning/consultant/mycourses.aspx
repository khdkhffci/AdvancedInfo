<%@ Page Title="" Language="C#" MasterPageFile="~/consultant/admin.Master" AutoEventWireup="true" CodeBehind="mycourses.aspx.cs" Inherits="eLearn.consultant.mycourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideBarContent" runat="server">
    <cc:csidebar runat="server" ID="SideBarCustomControl" active="item2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-section">
                            <div class="media v-middle">
                                <div class="media-body">
                                    <h1 class="text-display-1 margin-none">My Courses</h1>
                                </div>
                                <div class="media-right">
                                    <a class="btn btn-white paper-shadow relative" data-z="0.5" data-hover-z="1" data-animated href="app-directory-list.html">All Courses</a>
                                </div>
                            </div>
                        </div>
                        <div class="row" data-toggle="isotope">
                          


                            <asp:ListView ID="lv" runat="server" GroupItemCount="3" GroupPlaceholderID="gph"
    ItemPlaceholderID="iph" OnPagePropertiesChanging="lv_PagePropertiesChanging" OnPreRender="lv_PreRender" OnSelectedIndexChanged="lv_SelectedIndexChanged">

                                   <ItemTemplate>
                                           <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                <%# GetAllLessons(Eval("id").ToString()) %>
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                          <%# CreateProgress(Eval("id").ToString()) %>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-default"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-primary">
                                            <span class="v-center ">
                                                <i class="fa <%# Eval("imageFile") %>"></i>
                                           </span>
                                        </a>
                                        <a href="mycourse?id=<%# Eval("id") %>" class="overlay overlay-full bg-primary overlay-hover overlay-bg-white">
                                            <span class="v-center">
                                                 <span class="btn btn-circle btn-primary btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-0"><a href="mycourse?id=<%# Eval("id") %>"><%# Eval("title") %></a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-success btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="mycourse?id=<%# Eval("id") %>">View Details</a>
                                    </div>
                                </div>
                            </div>
                                   </ItemTemplate>
                                   <LayoutTemplate >
                                       
                                      
                                           
                                                <asp:PlaceHolder runat="server" ID="gph"></asp:PlaceHolder>
         
                                                    
                                                   <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="<i class='fa fa-angle-double-left fa-2x'></i>"  ButtonCssClass="btn" ShowNextPageButton="False" PreviousPageText="<i class='fa fa-angle-left fa-2x'></i>"/>
                                                            <asp:NumericPagerField  ButtonCount="10" CurrentPageLabelCssClass="btn btn-default active"   NumericButtonCssClass="btn btn-primary"/>
                                                            <asp:NextPreviousPagerField ShowLastPageButton="true" LastPageText="<i class='fa fa-angle-double-right fa-2x'></i>" ButtonCssClass="btn"  ShowPreviousPageButton="false"  NextPageText="<i class='fa fa-angle-right fa-2x'></i>"  />
                                                        </Fields>
                                                    </asp:DataPager>
                                              
                                         
                                      
                                               

   </LayoutTemplate>
                                   <GroupTemplate >
        <tr>
            <div class="row-flud ">
                 <div class="form-group">
                       <asp:PlaceHolder runat="server" ID="iph"></asp:PlaceHolder>
                 </div>
            </div>
        </tr>
    </GroupTemplate>
                                
                            </asp:ListView>
                           <%-- <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                Lessons 1 of 6
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-blue-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-primary"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-primary">
                                            <span class="v-center">
                <i class="fa fa-css3"></i>
            </span>
                                        </a>
                                        <a href="app-take-course.html" class="overlay overlay-full overlay-hover overlay-bg-white">
                                            <span class="v-center">
                <span class="btn btn-circle btn-primary btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-10"><a href="app-take-course.html">Awesome CSS with LESS Processing</a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-white btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="app-take-course.html">Go to course</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                Lessons 2 of 11
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-red-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-lightred"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-lightred">
                                            <span class="v-center">
                <i class="fa fa-windows"></i>
            </span>
                                        </a>
                                        <a href="app-take-course.html" class="overlay overlay-full overlay-hover overlay-bg-white">
                                            <span class="v-center">
                <span class="btn btn-circle btn-red-500 btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-10"><a href="app-take-course.html">Vagrant Portable Environments</a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-white btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="app-take-course.html">Go to course</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                Lessons 3 of 10
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-orange-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-brown"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-brown">
                                            <span class="v-center">
                <i class="fa fa-wordpress"></i>
            </span>
                                        </a>
                                        <a href="app-take-course.html" class="overlay overlay-full overlay-hover overlay-bg-white">
                                            <span class="v-center">
                <span class="btn btn-circle btn-orange-500 btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-10"><a href="app-take-course.html">WordPress Theme Development</a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-white btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="app-take-course.html">Go to course</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                Lessons 3 of 6
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-deep-purple-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-purple"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-purple">
                                            <span class="v-center">
                <i class="fa fa-jsfiddle"></i>
            </span>
                                        </a>
                                        <a href="app-take-course.html" class="overlay overlay-full overlay-hover overlay-bg-white">
                                            <span class="v-center">
                <span class="btn btn-circle btn-purple-500 btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-10"><a href="app-take-course.html">Browserify: Writing Modular JavaScript</a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-white btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="app-take-course.html">Go to course</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-xs-12 col-sm-6 col-lg-4">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <div class="media media-clearfix-xs-min v-middle">
                                            <div class="media-body text-caption text-light">
                                                Lessons 5 of 19
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-pink-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cover overlay cover-image-full hover">
                                        <span class="img icon-block height-100 bg-pink-400 text-white"></span>
                                        <a href="app-take-course.html" class="padding-none overlay overlay-full icon-block bg-pink-400 text-white">
                                            <span class="v-center">
                <i class="fa fa-cc-visa"></i>
            </span>
                                        </a>
                                        <a href="app-take-course.html" class="overlay overlay-full overlay-hover overlay-bg-white">
                                            <span class="v-center">
                <span class="btn btn-circle btn-pink-500 btn-lg"><i class="fa fa-graduation-cap"></i></span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-v-0-10"><a href="app-take-course.html">Online Payments with Stripe</a></h4>
                                    </div>
                                    <hr class="margin-none" />
                                    <div class="panel-body">
                                        <a class="btn btn-white btn-flat paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="app-take-course.html">Go to course</a>
                                    </div>
                                </div>
                            </div>--%>
                        </div>

     
    <br /> <br /> <br />
</asp:Content>
