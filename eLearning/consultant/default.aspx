<%@ Page Title="" Language="C#" MasterPageFile="~/consultant/admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="eLearn.consultant._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="SideBar" ContentPlaceHolderID="sideBarContent" runat="server">
   <cc:csidebar runat="server" ID="SideBarCustomControl" active="item1" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-section">
                              <div class="panel panel-default">
                            <div class="media v-middle">
                                <div class="media-left">
                                    <div class="bg-green-400 text-white">
                                        <div class="panel-body">
                                            <i class="fa fa-credit-card fa-fw fa-2x"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="media-body">
                                    <h4 class="text-headline margin-none">Dashboard</h4>
                                </div>
                               
                            </div>
                        </div>
                        </div>
                     
                        <div class="row" data-toggle="isotope">
                            <div class="item col-xs-12 col-lg-6">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <h4 class="text-headline margin-none">Courses</h4>
                                        <p class="text-subhead text-light">Your recent courses</p>
                                    </div>
                                    <ul class="list-group">
                                        <li class="list-group-item media v-middle">
                                            <div class="media-body">
                                                <a href="app-take-course.html" class="text-subhead list-group-link">Basics of HTML</a>
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-green-300" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width:45%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item media v-middle">
                                            <div class="media-body">
                                                <a href="app-take-course.html" class="text-subhead list-group-link">Angular in Steps</a>
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-green-300" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item media v-middle">
                                            <div class="media-body">
                                                <a href="app-take-course.html" class="text-subhead list-group-link">Bootstrap Foundations</a>
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-green-300" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item media v-middle">
                                            <div class="media-body">
                                                <a href="app-take-course.html" class="text-subhead list-group-link">Cascading Style Sheet</a>
                                            </div>
                                            <div class="media-right">
                                                <div class="progress progress-mini width-100 margin-none">
                                                    <div class="progress-bar progress-bar-green-300" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="panel-footer text-right">
                                        <a href="app-student-courses.html" class="btn btn-white paper-shadow relative" data-z="0" data-hover-z="1" data-animated href="#"> View all</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-xs-12 col-lg-6">
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-body">
                                        <h4 class="text-headline margin-none">Rewards</h4>
                                        <p class="text-subhead text-light">Your latest achievements</p>
                                        <div class="icon-block half img-circle bg-purple-300">
                                            <i class="fa fa-star text-white"></i>
                                        </div>
                                        <div class="icon-block half img-circle bg-indigo-300">
                                            <i class="fa fa-trophy text-white"></i>
                                        </div>
                                        <div class="icon-block half img-circle bg-green-300">
                                            <i class="fa fa-mortar-board text-white"></i>
                                        </div>
                                        <div class="icon-block half img-circle bg-orange-300">
                                            <i class="fa fa-code-fork text-white"></i>
                                        </div>
                                        <div class="icon-block half img-circle bg-red-300">
                                            <i class="fa fa-diamond text-white"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default paper-shadow" data-z="0.5">
                                    <div class="panel-heading">
                                        <h4 class="text-headline">Certificates
                                            <small>(4)</small>
                                        </h4>
                                    </div>
                                    <div class="panel-body">
                                        <a class="btn btn-default text-grey-400 btn-lg btn-circle paper-shadow relative" data-hover-z="0.5" data-animated data-toggle="tooltip" data-title="Name of Certificate">
                                            <i class="fa fa-file-text"></i>
                                        </a>
                                        <a class="btn btn-default text-grey-400 btn-lg btn-circle paper-shadow relative" data-hover-z="0.5" data-animated data-toggle="tooltip" data-title="Name of Certificate">
                                            <i class="fa fa-file-text"></i>
                                        </a>
                                        <a class="btn btn-default text-grey-400 btn-lg btn-circle paper-shadow relative" data-hover-z="0.5" data-animated data-toggle="tooltip" data-title="Name of Certificate">
                                            <i class="fa fa-file-text"></i>
                                        </a>
                                        <a class="btn btn-default text-grey-400 btn-lg btn-circle paper-shadow relative" data-hover-z="0.5" data-animated data-toggle="tooltip" data-title="Name of Certificate">
                                            <i class="fa fa-file-text"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                         
                   
                        </div>
</asp:Content>
