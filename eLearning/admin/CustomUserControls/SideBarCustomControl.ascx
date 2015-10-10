<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBarCustomControl.ascx.cs" Inherits="eLearn.admin.CustomUserControls.SideBarCustomControl" %>

 <div class="sidebar left sidebar-size-3 sidebar-offset-0 sidebar-visible-desktop sidebar-visible-mobile sidebar-skin-dark" id="sidebar-menu" data-type="collapse">
            <div class="data-scrollable">
                <div class="sidebar-block">
                    <div class="profile">
                        <a  href="person">
                            <asp:Image ID="imguser" runat="server" ImageUrl="~/images/people/110/guy-6.jpg" CssClass="img-circle width-80" AlternateText="people" />
                        </a>
                        <h4 class="text-display-1 margin-none">
                            <asp:Literal ID="lbluser" runat="server"></asp:Literal></h4>
                    </div>
                </div>
                <ul runat="server" id="menuItems" class="sidebar-menu">
                    <li runat="server" id="item1"><a href="dashboard"><i class="fa fa-home"></i><span>Dashboard</span></a></li>
                    <li runat="server" id="item2"><a href="categories"><i class="fa fa-sitemap"></i><span>Categories</span></a></li>
                    <li runat="server" id="item3"><a href="courses"><i class="fa fa-mortar-board"></i><span>Courses</span></a></li>
                    <li runat="server" id="item4"><a href="profiles"><i class="fa fa-users"></i><span>Profiles</span></a></li>
                    <li runat="server" id="item7"><a href="person"><i class="fa fa-user"></i><span>My Profile</span></a></li>
                    <li runat="server" id="item5"><a href="icons" target="_blank"><i class="fa fa-folder"></i><span>Icons</span></a></li>
                    <li runat="server" id="item6">
                        <asp:LinkButton ID="btnLogOut" runat="server" OnClick="btnLogOut_Click"><i class="fa fa-sign-out"></i><span>Logout</span></asp:LinkButton>

                    </li>
                </ul>
            </div>
        </div>
        <!-- sidebar effects OUTSIDE of st-pusher: -->
        <!-- st-effect-1, st-effect-2, st-effect-4, st-effect-5, st-effect-9, st-effect-10, st-effect-11, st-effect-12, st-effect-13 -->