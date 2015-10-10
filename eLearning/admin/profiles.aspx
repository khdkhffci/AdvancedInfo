<%@ Page Title="E- Learniing - Profiles" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="profiles.aspx.cs" Inherits="eLearn.admin.profiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script>
          function CheckFileExistence() {

              var filePath = document.getElementById('<%= this.faProfile.ClientID %>').value;
              if (filePath.length < 1)
              {
                  alert("File Name Can not be empty"); return false;
              }

              var validExtensions = new Array(); var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();

              validExtensions[0] = 'jpg';
              validExtensions[1] = 'jpeg';

              validExtensions[2] = 'bmp';
              validExtensions[3] = 'png';

              validExtensions[4] = 'gif';
              validExtensions[5] = 'tif';
              validExtensions[6] = 'eps';

              for (var i = 0; i < validExtensions.length; i++) {
                  if (ext == validExtensions[i]) return true;
              }

              alert('The file extension ' + ext.toUpperCase() + ' is not allowed !');
              return false;

          }
      </script>
</asp:Content>
<asp:Content ID="SideBar" ContentPlaceHolderID="sideBarContent" runat="server">
    <cc:sidebar runat="server" ID="SideBarCustomControl" active="item4" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div id="error" class="alert alert-danger " runat="server" visible="false">
          <strong>Error !</strong> Can't delete item , there are sub items associated with it.
        </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="select" runat="server">
                 <div class="row">
                   <div class="form-group col-md-6 text-right pull-right"><br />
                       <asp:LinkButton ID="btnAdd"  CssClass="btn btn-primary" runat="server" OnClick="btnAdd_Click">&nbsp; <i class="fa  fa-plus "></i> &nbsp;  Add New &nbsp; &nbsp;</asp:LinkButton>
                      
                      </div>
                   <div class="form-group col-md-6">
                       <h2> Profiles </h2>
                       </div>
   </div>
        <!-- Progress table -->
     <div class="table-responsive">       
               <asp:GridView ID="gv" runat="server" CssClass="table v-middle" PageSize="10" AutoGenerateColumns="False" GridLines="None" Width="100%" BorderWidth="0px" AllowPaging="True" OnPageIndexChanging="gvCategories_PageIndexChanging"  OnRowDeleting="gvCategories_RowDeleting" OnRowEditing="gvCategories_RowEditing">
            <Columns>
              
                 <asp:TemplateField >
                     <HeaderTemplate>
                           ID
                     </HeaderTemplate>
                    <ItemTemplate>
                        <%# Eval("id") %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <HeaderTemplate>
                            Name
                     </HeaderTemplate>
                    <ItemTemplate>
                       <i class='fa fa-user'></i> &nbsp;  <strong><%# Eval("fullName") %></strong>  </a>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <HeaderTemplate>Email </HeaderTemplate>
                    <ItemTemplate>
                        <%# Eval("email") %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <HeaderTemplate>Active </HeaderTemplate>
                    <ItemTemplate>
                         <%# (Boolean.Parse(Eval("active").ToString())) ? "<span class='glyphicon glyphicon-ok text-success'></span>" : "<span class='glyphicon glyphicon-remove text-danger'></span>" %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >
                     <HeaderTemplate>Admin </HeaderTemplate>
                    <ItemTemplate>
                         <%# (Boolean.Parse(Eval("admin").ToString())) ? "<span class='glyphicon glyphicon-ok text-success'></span>" : "<span class='glyphicon glyphicon-remove text-danger'></span>" %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <ItemStyle CssClass="text-right" />
                     <HeaderStyle CssClass="text-right" />
                     <HeaderTemplate>
                         Action 
                     </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit"  CssClass="btn btn-primary btn-xs" runat="server"  CommandArgument ='<%# Eval("id")%>' data-toggle="tooltip" data-placement="top" title="Edit" OnClick = "EditItem"><i class="fa fa-pencil"></i></asp:LinkButton>
                        <asp:LinkButton ID="lnkRemove"  CssClass="btn btn-danger btn-xs" runat="server"  OnClientClick="return confirm('Are you sure you want to delete this Record ?');"  CommandArgument ='<%# Eval("id")%>' data-toggle="tooltip" data-placement="top" title="Delete" OnClick = "DeleteItem"><i class="fa fa-times"></i></asp:LinkButton>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
                  <PagerStyle CssClass="pagination-ys"  />
                  <pagersettings mode="NumericFirstLast" FirstPageText="<<" LastPageText=">>" pagebuttoncount="5"/>
        </asp:GridView>                        
      </div>


                   
                           
                     
            </asp:View>
            <asp:View ID="insert" runat="server">
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
                    <label for="icon"  class="control-label">Email </label>
                      <asp:RegularExpressionValidator ID="v3" runat="server"  ErrorMessage="Invalid Email Format" ValidationGroup="insert" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="v33" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txtEmail" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ValidationGroup="insert" TextMode="Email"></asp:TextBox>
                  </div>

                       
                  <div class="form-group col-md-9 ">
                    <label for="icon"  class="control-label">Password </label>
                    <asp:RequiredFieldValidator ID="v4" runat="server" ErrorMessage="Required"  ControlToValidate="txtPassword" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                  </div><div class="form-group col-md-3  pull-right">
                               <br />
                               <label class="checkbox-inline"><input type="checkbox" id="cbxactive" runat="server" checked><strong>Activate Account </strong> </label><br /><br />
                               <label class="checkbox-inline"><input type="checkbox" id="cbxadmin" runat="server" > <strong>Set  Account as Administrator </strong></label>
                              
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
                    <asp:LinkButton ID="btnsave" class="btn btn-primary pull-right" runat="server"   OnClick="btnsave_Click"  ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
                    <asp:LinkButton ID="btnEdit" class="btn btn-primary pull-right" runat="server"   OnClick="btnEditsave_Click"  ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
               </div>
                </div>
            </asp:View>
         

        </asp:MultiView>
       
   
</asp:Content>
