<%@ Page Title="" Language="C#" MasterPageFile="~/consultant/admin.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="eLearn.consultant.myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideBarContent" runat="server">
     <cc:csidebar runat="server" ID="SideBarCustomControl" active="item3" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
       <div class="row-flud">
                   
                   <div class="form-group col-md-9">
         <div id="success" class="alert alert-success" runat="server" visible="false">
          <strong>Success  ! </strong> Updated Successfully.
        </div>
                       </div></div>
       
         <div class="row-flud">
                   
                   <div class="form-group col-md-6">
                       <h2> Add / Edit  Item </h2>
                       </div>
   </div>
                 <div class="row-flud">
                  <div class="form-group col-md-9">
                    <label for="title" class="control-label">Full Name</label>
                    <asp:RequiredFieldValidator ID="v1" runat="server" ErrorMessage="Required" ControlToValidate="txtfullName" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtfullName" runat="server" CssClass="form-control" ValidationGroup="insert"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-3  pull-right"> <br />
                         <label class="control-label">Select File</label>
                         <asp:FileUpload ID="faProfile" runat="server" />
                       <br />
                      <asp:Image ID="Image1" runat="server" Width="100px" ImageUrl="~/images/nophoto.jpg"/>
                  </div>
                       
                  <div class="form-group col-md-9 ">
                    <label for="icon"  class="control-label">Password </label>
                    <asp:RequiredFieldValidator ID="v4" runat="server" ErrorMessage="Required"  ControlToValidate="txtPassword" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                  </div>
                  <div class="form-group col-md-9 ">
                    <label for="icon"  class="control-label">Confirm </label>
                    <asp:CompareValidator ID="v5" runat="server" ErrorMessage="Dont Match Password"  ControlToValidate="txtConfirm"  ControlToCompare="txtPassword"  ValidationGroup="insert" ForeColor="Red"></asp:CompareValidator>
                    <asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                  </div>
                  <div class="form-group col-md-9">
                    <label for="descr"  class="control-label">Description </label>
                    <asp:RequiredFieldValidator ID="v6" runat="server" ErrorMessage="Required" ControlToValidate="txtDescription" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" ValidationGroup="insert"></asp:TextBox>
                  </div> 
                 </div>
                 <div class="row-fluid">
                    <div class="form-group col-md-9"><br />
                    <asp:LinkButton ID="btnEdit" class="btn btn-primary pull-right" runat="server"   OnClick="btnsave_Click"  ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
               </div>
                </div>
</asp:Content>
