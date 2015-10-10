<%@ Page Title="E- Learniing - Course Sections" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="sections.aspx.cs" Inherits="eLearn.admin.sections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="SideBar" ContentPlaceHolderID="sideBarContent" runat="server">
    <cc:sidebar runat="server" ID="SideBarCustomControl" active="item3" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
              <div id="error" class="alert alert-danger " runat="server" visible="false">
          <strong>Error !</strong> Can't delete item , there are sub items associated with it.
        </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="select" runat="server">
                 <div class="row">
                   <div class="form-group col-md-6 text-right pull-right"><br />
                       <asp:LinkButton ID="btnAdd"  CssClass="btn btn-primary" runat="server" OnClick="btnAdd_Click">&nbsp; <i class="fa  fa-plus "></i> &nbsp;  Add Section &nbsp; &nbsp;</asp:LinkButton>
                      
                      </div>
                   <div class="form-group col-md-6">
                       <h3> Course :  <asp:Literal ID="catName" runat="server"></asp:Literal> </h3>
                    </div>
   </div>
        <!-- Progress table -->
     <div class="table-responsive">       
               <asp:GridView ID="gv" runat="server" CssClass="table v-middle" PageSize="10" AutoGenerateColumns="False" GridLines="None" Width="100%" BorderWidth="0px" AllowPaging="True" OnPageIndexChanging="gvCategories_PageIndexChanging"  OnRowDeleting="gvCategories_RowDeleting" OnRowEditing="gvCategories_RowEditing">
            <Columns>
              
                 <asp:TemplateField >
                     <HeaderStyle Width="80" />
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
                         <i class='fa fa-folder fa-lg text-warning'></i> &nbsp; <a href='lessons.aspx?id=<%# Eval("id") %>'>   <strong>    <%# Eval("title") %> </strong> </a>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <HeaderTemplate>Description </HeaderTemplate>
                    <ItemTemplate>
                        <%# Eval("description") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Progress</HeaderTemplate>
                    <ItemTemplate>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow='<%#Eval("completed") %>' aria-valuemin="0" aria-valuemax="100">
                        </div>
                        </div>
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
                        <asp:LinkButton ID="lnkRemove" runat="server" CssClass="btn btn-danger btn-xs" OnClientClick="return confirm('Are you sure you want to delete this Record ?');"  CommandArgument ='<%# Eval("id")%>' data-toggle="tooltip" data-placement="top" title="Delete" OnClick = "DeleteItem"><i class="fa fa-times"></i></asp:LinkButton>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
                  <PagerStyle CssClass="pagination-ys"  />
                  <pagersettings mode="NumericFirstLast" FirstPageText="<<" LastPageText=">>" pagebuttoncount="5"/>
                   <EmptyDataTemplate>
                       <strong> No Items Found   </strong>
                   </EmptyDataTemplate>
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
                    <label for="title" class="control-label">Title</label>
                    <asp:RequiredFieldValidator ID="txtTitleValidator" runat="server" ErrorMessage="Required" CssClass="pull-right" ControlToValidate="txtTitle" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" ValidationGroup="insert"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-9">
                    <label for="descr"  class="control-label">Description </label>
                    <asp:RequiredFieldValidator ID="txtDescriptionValidator" runat="server" CssClass="pull-right" ErrorMessage="Required" ControlToValidate="txtDescription" ValidationGroup="insert" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" ValidationGroup="insert"></asp:TextBox>
                  </div> 
                 </div>
                <div class="row-fluid">
                    <div class="form-group col-md-9"><br />
                    <asp:LinkButton ID="btnsave" CssClass="btn btn-primary pull-right" runat="server" OnClick="btnsave_Click" ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
                    <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary pull-right" runat="server" OnClick="btnEditsave_Click" ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
               </div>
                </div>
            </asp:View>
         

        </asp:MultiView>    
   
   
</asp:Content>
