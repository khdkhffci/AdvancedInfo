<%@ Page Title="" Language="C#" MasterPageFile="~/consultant/admin.Master" AutoEventWireup="true" CodeBehind="mycourse.aspx.cs" Inherits="eLearn.consultant.mycourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideBarContent" runat="server">
     <cc:csidebar runat="server" ID="SideBarCustomControl" active="item2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="media media-grid media-clearfix-xs">
            <asp:GridView ID="gv" runat="server" GridLines="None" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                   <div class="media-body">
                                <div class="page-section">
                                    <div class="media">
                                        <div class="media-left">
                                            <span class="icon-block s60 bg-lightred"><i class='<%# "fa " +  Eval("imageFile") %>'></i></span>
                                        </div>
                                        <div class="media-body">
                                            <h1 class="text-display-1 margin-none"> <%# Eval("title") %></h1>
                                            <p class="small margin-none">
                                                <span class="fa fa-fw fa-star text-yellow-800"></span>
                                                <span class="fa fa-fw fa-star text-yellow-800"></span>
                                                <span class="fa fa-fw fa-star text-yellow-800"></span>
                                                <span class="fa fa-fw fa-star-o text-yellow-800"></span>
                                                <span class="fa fa-fw fa-star-o text-yellow-800"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="page-section">
                               
                                     <%# Eval("description") %>
                                </div>
                               
                               

                                
                               
                            </div>
                            <div class="media-right">
                                <div class="page-section width-270 width-auto-xs">
                                    <!-- .panel -->
                                    <div class="panel panel-default paper-shadow" data-z="0.5" data-hover-z="1" data-animated>
                                        <div class="panel-heading">
                                            <h4 class="text-headline">Course</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p class="text-caption margin-none">
                                                <i class="fa fa-clock-o fa-fw"></i>  <%# Eval("hours") %> hrs &nbsp;
                                                <i class="fa fa-calendar fa-fw"></i>  <%# string.Format("{0:d}",Eval("creationDate")) %>
                                                <br/>
                                                <i class="fa fa-user fa-fw"></i> Instructor : <%# Eval("instructor") %>
                                                <br/>
                                                <i class="fa fa-mortar-board fa-fw"></i> Lectures : <%# Eval("lectures") %>
                                                <br/>
                                                <i class="fa fa-check fa-fw"></i> Skill Level : <%# Eval("skilllevel") %> 
                                                <br/>
                                                <i class="fa  fa-language  fa-fw"></i> Language : <%# Eval("language") %> 
                                            </p>
                                        </div>
                                        <div class="panel-body">
                                            <p><a class="btn btn-success btn-md paper-shadow relative" data-z="1" data-hover-z="2" data-animated href='takecourse?id=<%# Eval("id") %>'>Start Course</a></p>
                                        </div>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <a href="#" class="text-light"><i class="fa fa-facebook fa-fw"></i> Share on facebook</a>
                                            </li>
                                            <li class="list-group-item">
                                                <a href="#" class="text-light"><i class="fa fa-twitter fa-fw"></i> Tweet this course</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- // END .panel -->
                                </div>
                                <!-- // END .page-section -->
                            </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
       </div>

     
            <div class="row">
                <div class="col-md-9">
                   <asp:GridView ID="gvsections" runat="server" AutoGenerateColumns="False" GridLines="None">
                       <Columns>
                           <asp:TemplateField>
                               <ItemTemplate>
                                     <div class="panel panel-default curriculum  open paper-shadow" data-z="0.5">
                        <div class="panel-heading panel-heading-gray" data-toggle="collapse" data-target="#<%# Eval("id") %>">
                            <div class="media">
                                <div class="media-left">
                                    <span class="icon-block img-circle bg-indigo-300 half text-white"><i class="fa fa-graduation-cap"></i></span>
                                </div>
                                <div class="media-body">
                                    <h4 class="text-headline"><%# Eval("title") %></h4>
                                    <p><%# Eval("brief") %></p>
                                </div>
                            </div>
                            <span class="collapse-status collapse-open">Open</span>
                            <span class="collapse-status collapse-close">Close</span>
                        </div>
                                            <div class="list-group collapse in" id='<%# Eval("id") %>'>
                                                <%# GetSectionLessons(Eval("id").ToString()) %>  
                                            </div>
                    </div>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                   </asp:GridView>
                   


                         <%--   <div class="list-group-item media active" data-target="website-take-course.html">
                                <div class="media-left">
                                    <div class="text-crt">2.</div>
                                </div>
                                <div class="media-body">
                                    <i class="fa fa-fw fa-circle text-blue-300"></i> The MVC architectural pattern
                                </div>
                                <div class="media-right">
                                    <div class="width-100 text-right text-caption">25:01 min</div>
                                </div>
                            </div>
                            <div class="list-group-item media" data-target="website-take-course.html">
                                <div class="media-left">
                                    <div class="text-crt">3.</div>
                                </div>
                                <div class="media-body">
                                    <i class="fa fa-fw fa-circle text-grey-200"></i> Database Models
                                </div>
                                <div class="media-right">
                                    <div class="width-100 text-right text-caption">12:10 min</div>
                                </div>
                            </div>
                            <div class="list-group-item media" data-target="website-take-course.html">
                                <div class="media-left">
                                    <div class="text-crt">4.</div>
                                </div>
                                <div class="media-body">
                                    <i class="fa fa-fw fa-circle text-grey-200"></i> Database Access
                                </div>
                                <div class="media-right">
                                    <div class="width-100 text-right text-caption">1:25 min</div>
                                </div>
                            </div>
                            <div class="list-group-item media" data-target="website-take-course.html">
                                <div class="media-left">
                                    <div class="text-crt">5.</div>
                                </div>
                                <div class="media-body">
                                    <i class="fa fa-fw fa-circle text-grey-200"></i> Eloquent Basics
                                </div>
                                <div class="media-right">
                                    <div class="width-100 text-right text-caption">22:30 min</div>
                                </div>
                            </div>
                            <div class="list-group-item media" data-target="website-take-quiz.html">
                                <div class="media-left">
                                    <div class="text-crt">6.</div>
                                </div>
                                <div class="media-body">
                                    <i class="fa fa-fw fa-circle text-grey-200"></i> Take Quiz
                                </div>
                                <div class="media-right">
                                    <div class="width-100 text-right text-caption">10:00 min</div>
                                </div>
                            </div>--%>
                    
                   
                    <br/>
                    <br/>
                </div>
            </div>
      
    
</asp:Content>
