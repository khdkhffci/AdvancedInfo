<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectusers.aspx.cs" Inherits="eLearn.admin.selectusers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.css"/>
    <link rel="stylesheet" type="text/css" href="dualList/bootstrap-duallistbox.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/run_prettify.min.js"></script>
    <script src="dualList/jquery.bootstrap-duallistbox.js"></script>
    <title></title>
</head>
<body style="background:none; background-color:none;">
    <form id="form1" runat="server">
  <br />
      
       
             <div class="row">
             <div class="form-group col-md-6">
                       <h3> <asp:Literal ID="courseTitle" runat="server"></asp:Literal> </h3>
                   </div>
             <div class="form-group col-md-3"><br />
                       <a href="javascript:history.back()" class="btn btn-primary pull-right" >Back</a>
                      </div>
         </div>
            <br />
             <div class="row">
            <div class="form-group col-md-9">
             
            
                <asp:ListBox ID="duallistbox" runat="server" multiple="multiple" size="10" SelectionMode="Multiple">
              
                </asp:ListBox>

                <br /><br />
           

              
        <asp:Button ID="btnSave" CssClass="btn btn-primary btn-block" runat="server" Text="Save Changes" OnClick="btnSave_Click" />
  
            </div>
        </div>
       
       
  
 
  
  <script>
      var demo = $('#duallistbox').bootstrapDualListbox();
  </script>
    
    </form>
</body>
</html>
