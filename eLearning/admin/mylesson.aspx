<%@ Page Title="E- Learniing - Lesson" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="mylesson.aspx.cs" Inherits="eLearn.admin.mylesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideBarContent" runat="server">
     <cc:sidebar runat="server" ID="SideBarCustomControl" active="item3" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
   
    <div class="row">
         <div class="form-group col-xs-9">
                 <h4>   <asp:Literal ID="headTitle" runat="server"></asp:Literal></h4>   
             </div>
       <div class="form-group col-xs-9">
            <a id="myvideo" runat="server" class="player embed-responsive-item"  style="height:450px; width:100%; display: block; overflow:hidden" href="4-Introduction to our SharePoint Site.mp4"> </a>
       </div>
       
            <cc:LessonSideBar runat="server" id="LessonSideBar1"  />
       
    </div>
   
    <script src="../FlowPlayer/flowplayer-3.2.12.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        flowplayer("a.player", "../FlowPlayer/flowplayer-3.2.16.swf", {
            plugins: {
                pseudo: { url: "../FlowPlayer/flowplayer.pseudostreaming-3.2.12.swf" }
            },
            clip: { provider: 'pseudo', autoPlay: false },
        });
    </script>




</asp:Content>
