<%@ Page Title="E- Learniing - Courses" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="eLearn.admin.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="SideBar" ContentPlaceHolderID="sideBarContent" runat="server">
    <cc:sidebar runat="server" ID="SideBarCustomControl" active="item3" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
        <div id="error" class="alert alert-danger" runat="server" visible="false">
          <strong>Error !</strong> Can't delete item , there are sub items associated with it.
        </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="select" runat="server">
                 <div class="row">
                         <div class="form-group col-md-6 text-right pull-right"><br />
                       <asp:LinkButton ID="btnAdd"  CssClass="btn btn-primary" runat="server" OnClick="btnAdd_Click">&nbsp; <i class="fa  fa-plus "></i> &nbsp;  Add Course &nbsp; &nbsp;</asp:LinkButton>
                      
                      </div>
                   <div class="form-group col-md-6">
                       <h3> <asp:Literal ID="headTitle" runat="server"></asp:Literal> </h3>
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
                       <ItemStyle Width="25" />
                     <HeaderTemplate>
                            
                     </HeaderTemplate>
                    <ItemTemplate>
                     <i class='fa <%# Eval("imageFile") %>  fa-lg text-primary'></i>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField >
                     <HeaderTemplate>
                            Name
                     </HeaderTemplate>
                    <ItemTemplate>
                    <a href="sections.aspx?id=<%# Eval("id") %>">   <strong>    <%# Eval("title") %></a> </strong> </a>
                    </ItemTemplate>
                </asp:TemplateField>
         
            
                 <asp:TemplateField >
                     <ItemStyle CssClass="text-right" />
                     <HeaderStyle CssClass="text-right" />
                     <HeaderTemplate>
                         Action 
                     </HeaderTemplate>
                    <ItemTemplate>
                        <a class="btn btn-primary btn-xs"  data-toggle="tooltip" href="courseusers?courseid=<%# Eval("id")%>" data-placement="top" title="Users" ><i class="fa fa-users"></i></a>
                        <asp:LinkButton ID="lnkEdit"  CssClass="btn btn-primary btn-xs" runat="server"   CommandArgument ='<%# Eval("id")%>' data-toggle="tooltip" data-placement="top" title="Edit" OnClick = "EditItem"><i class="fa fa-pencil"></i></asp:LinkButton>
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
                <div class="row">
                    <div class="form-group col-md-1 pull-right"><br />
                     <asp:LinkButton ID="btnsave" class="btn btn-primary pull-right" runat="server" OnClick="btnsave_Click" OnClientClick="ImgCheckExtension('#faProfile')" ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
                     <asp:LinkButton ID="btnEdit" class="btn btn-primary pull-right" runat="server" OnClick="btnEditsave_Click" ValidationGroup="insert">&nbsp; &nbsp; Save &nbsp; &nbsp;</asp:LinkButton>
                    </div>
                    <div class="form-group col-md-1 pull-right"><br />
                          <asp:LinkButton ID="btnBack" class="btn btn-inverse pull-right" runat="server" OnClick="btnBack_Click" >&nbsp; &nbsp; Back &nbsp; &nbsp;</asp:LinkButton>
                    
                    </div>
                     <div class="form-group col-md-6">
                       <h2> Add / Edit Course </h2>
                    </div>
   </div>
                
                <div class="row">
                  <div class="form-group col-md-9">

                                   
                      <div class="form-group">
                                             <label for="txtTitle" class="control-label">Title</label> 
                                             <asp:RequiredFieldValidator ID="v1" runat="server" ControlToValidate="txtTitle" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                             <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                                         </div> 
                      <div class="form-group">
                                             <label for="txtBrief" class="control-label">Summary</label>
                                             <asp:RequiredFieldValidator ID="v2" runat="server" ControlToValidate="txtBrief" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                             <asp:TextBox ID="txtBrief" runat="server" CssClass="form-control" ValidationGroup="insert" TextMode="MultiLine" Rows="3"></asp:TextBox>
                  </div>
                      <div class="form-group">
                                             <label for="txtIcon" class="control-label">Icon</label>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIcon" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                             <asp:TextBox ID="txtIcon" runat="server" CssClass="form-control" ValidationGroup="insert"></asp:TextBox>
                  </div>
                      <div class="row">
                                     <div class="form-group col-md-5">
                                             <label for="txtInstructor" class="control-label">Instructor</label>
                                             <asp:RequiredFieldValidator ID="v3" runat="server" ControlToValidate="txtInstructor" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                             <asp:TextBox ID="txtInstructor" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                                     </div>
                          <div class="form-group col-md-5 col-md-offset-2">
                              <div class="row">
                                     <div class="form-group col-md-6"> 

                                         
                                                               <label for="txtLectures" class="control-label">Lectures</label>
                                                               <asp:RequiredFieldValidator ID="v8" runat="server" ControlToValidate="txtLectures" Display="Dynamic" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                            
                                                               <asp:RegularExpressionValidator ID="v4" runat="server" ValidationExpression="^\d+$"  Display="Dynamic" ControlToValidate="txtLectures"  ValidationGroup="insert" ErrorMessage="Numbers Only"></asp:RegularExpressionValidator>
                                                               <asp:TextBox ID="txtLectures" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                                                           </div>
                                     <div class="form-group col-md-6">
                                                                 <label for="txtHours" class="control-label">Hours</label>
                                         <asp:RequiredFieldValidator ID="v9" runat="server" ControlToValidate="txtHours" CssClass="pull-right" Display="Dynamic" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                            
                                           <asp:RegularExpressionValidator ID="v5" runat="server" ValidationExpression="^\d+$" Display="Dynamic" ControlToValidate="txtHours"  ValidationGroup="insert" ErrorMessage="Numbers Only"></asp:RegularExpressionValidator>
                                                              
                                                                 <asp:TextBox ID="txtHours" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                 
                                  </div> </div>
                              </div>

                      </div>
                      <div class="row">
                          <div class="form-group col-md-5">
                                                     <label for="txtSkillLevel" class="control-label">Skill Level</label>
                              <asp:RequiredFieldValidator ID="v6" runat="server" ControlToValidate="txtSkillLevel" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                            
                                                     <asp:TextBox ID="txtSkillLevel" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                          </div>
                          <div class="form-group col-md-5  col-md-offset-2">
                                             <label for="txtLanguage" class="control-label">Language</label>
                               <asp:RequiredFieldValidator ID="v7" runat="server" ControlToValidate="txtLanguage" CssClass="pull-right" ErrorMessage="Required" ValidationGroup="insert"></asp:RequiredFieldValidator>
                             
                                             <asp:TextBox ID="txtLanguage" runat="server" CssClass="form-control" ValidationGroup="insert" ></asp:TextBox>
                  </div>
                     </div>
                  </div>                          
              </div>
               
                 <div class="form-group">
                                            <label for="description">Description</label>
                                            <CKEditor:CKEditorControl ID="CKEditor" runat="server"></CKEditor:CKEditorControl>
          
                                        </div>
               
                <div class="row-fluid">
                    <div class="form-group col-md-9"><br />
                   </div>
           </div>
            </asp:View>
        </asp:MultiView>

   
      
 
      
</asp:Content>
